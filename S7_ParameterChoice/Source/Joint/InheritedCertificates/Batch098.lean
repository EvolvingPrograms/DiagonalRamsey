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

-- Control873
namespace DiagonalRamsey.JointInheritedCertificate873
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(548446169/781250000 : ℚ), (4430224504589/10000000000 : ℚ), (-7787272292061/25000000000 : ℚ), 12⟩,
    ⟨(351944690759/500000000000 : ℚ), (119035066631/2500000000 : ℚ), (-16886368001973/500000000000 : ℚ), 9⟩,
    ⟨(176893442617/250000000000 : ℚ), (161119662213/10000000000 : ℚ), (-11559658811629/1000000000000 : ℚ), 8⟩,
    ⟨(89115334271/125000000000 : ℚ), (1874025629/250000000 : ℚ), (-2722618394121/500000000000 : ℚ), 7⟩,
    ⟨(2878922149/4000000000 : ℚ), (1246648607/312500000 : ℚ), (-91722113303/31250000000 : ℚ), 6⟩,
    ⟨(90966967169/125000000000 : ℚ), (22412297413/10000000000 : ℚ), (-835430692233/500000000000 : ℚ), 6⟩,
    ⟨(184157659781/250000000000 : ℚ), (12563633269/10000000000 : ℚ), (-237550019697/250000000000 : ℚ), 5⟩,
    ⟨(746073416479/1000000000000 : ℚ), (818530649/1250000000 : ℚ), (-12612093503/25000000000 : ℚ), 5⟩,
    ⟨(755701188779/1000000000000 : ℚ), (2663776477/10000000000 : ℚ), (-106466413463/500000000000 : ℚ), 5⟩,
    ⟨(382571983067/500000000000 : ℚ), (224973/40000000 : ℚ), (-14720576563/1000000000000 : ℚ), 5⟩,
    ⟨(387019433953/500000000000 : ℚ), (-347885389/2000000000 : ℚ), (12343510461/100000000000 : ℚ), 4⟩,
    ⟨(97755508501/125000000000 : ℚ), (-23935849/80000000 : ℚ), (220870063529/1000000000000 : ℚ), 4⟩,
    ⟨(78885193109/100000000000 : ℚ), (-3862865027/10000000000 : ℚ), (57852957593/200000000000 : ℚ), 4⟩,
    ⟨(79420083479/100000000000 : ℚ), (-2225357357/5000000000 : ℚ), (335791290661/1000000000000 : ℚ), 4⟩,
    ⟨(39894261187/50000000000 : ℚ), (-4815079771/10000000000 : ℚ), (36479538679/100000000000 : ℚ), 4⟩,
    ⟨(399881754469/500000000000 : ℚ), (-997933487/2000000000 : ℚ), (94685440789/250000000000 : ℚ), 4⟩,
    ⟨(4/5 : ℚ), (-5011150551/10000000000 : ℚ), (380460158149/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (34413249359/200000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control873.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control873.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate873

-- Control874
namespace DiagonalRamsey.JointInheritedCertificate874
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(86886891913/1000000000000 : ℚ), (913085050211/10000000000 : ℚ), (-7969610148041/1000000000000 : ℚ), 11⟩,
    ⟨(87875384969/1000000000000 : ℚ), (84214668481/10000000000 : ℚ), (-94069313839/125000000000 : ℚ), 8⟩,
    ⟨(89701881973/1000000000000 : ℚ), (9429536379/5000000000 : ℚ), (-174153375177/1000000000000 : ℚ), 7⟩,
    ⟨(18417663063/200000000000 : ℚ), (578177159/5000000000 : ℚ), (-3414653973/250000000000 : ℚ), 6⟩,
    ⟨(94671372151/1000000000000 : ℚ), (-1505290809/2500000000 : ℚ), (53246510579/1000000000000 : ℚ), 6⟩,
    ⟨(97057805493/1000000000000 : ℚ), (-4783568331/5000000000 : ℚ), (43602963047/500000000000 : ℚ), 5⟩,
    ⟨(49442151249/500000000000 : ℚ), (-2286499381/2000000000 : ℚ), (52736675903/500000000000 : ℚ), 5⟩,
    ⟨(49936397777/500000000000 : ℚ), (-6132354433/5000000000 : ℚ), (14217867243/125000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-12365002931/10000000000 : ℚ), (28686309803/250000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (181834870181/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control874.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control874.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate874

-- Control875
namespace DiagonalRamsey.JointInheritedCertificate875
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17804193541/200000000000 : ℚ), (1117462559397/10000000000 : ℚ), (-9984524537333/1000000000000 : ℚ), 11⟩,
    ⟨(89848589739/1000000000000 : ℚ), (25557983649/2500000000 : ℚ), (-931187836433/1000000000000 : ℚ), 8⟩,
    ⟨(45688917927/500000000000 : ℚ), (10976485739/5000000000 : ℚ), (-102843495891/500000000000 : ℚ), 7⟩,
    ⟨(2917996631/31250000000 : ℚ), (24311277/2000000000 : ℚ), (-4441529701/1000000000000 : ℚ), 6⟩,
    ⟨(95538572789/1000000000000 : ℚ), (-8768215113/10000000000 : ℚ), (4962916333/62500000000 : ℚ), 6⟩,
    ⟨(97536629127/1000000000000 : ℚ), (-3294765987/2500000000 : ℚ), (24390585281/200000000000 : ℚ), 6⟩,
    ⟨(99065875243/1000000000000 : ℚ), (-15508967689/10000000000 : ℚ), (579392913/4000000000 : ℚ), 6⟩,
    ⟨(99893497277/1000000000000 : ℚ), (-517244549/312500000 : ℚ), (9701356731/62500000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16677687921/10000000000 : ℚ), (156479659469/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (689670181327/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control875.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control875.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate875

-- Control876
namespace DiagonalRamsey.JointInheritedCertificate876
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46626587877/1000000000000 : ℚ), (1904871270849/10000000000 : ℚ), (-1780359878719/200000000000 : ℚ), 12⟩,
    ⟨(46880882621/1000000000000 : ℚ), (171310042299/10000000000 : ℚ), (-810573438267/1000000000000 : ℚ), 9⟩,
    ⟨(23675379019/500000000000 : ℚ), (16743731491/5000000000 : ℚ), (-5069603531/31250000000 : ℚ), 8⟩,
    ⟨(47964679857/1000000000000 : ℚ), (-4284038009/10000000000 : ℚ), (17557948607/1000000000000 : ℚ), 7⟩,
    ⟨(9725836809/200000000000 : ℚ), (-4949620827/2500000000 : ℚ), (23105798867/250000000000 : ℚ), 7⟩,
    ⟨(6155388233/125000000000 : ℚ), (-27562747501/10000000000 : ℚ), (1043199209/8000000000 : ℚ), 6⟩,
    ⟨(49712981281/1000000000000 : ℚ), (-3962056073/1250000000 : ℚ), (37712107753/250000000000 : ℚ), 6⟩,
    ⟨(1998691041/40000000000 : ℚ), (-335577993/100000000 : ℚ), (160124984889/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-3378303273/1000000000 : ℚ), (20156347839/125000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (697811008839/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control876.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control876.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate876

-- Control877
namespace DiagonalRamsey.JointInheritedCertificate877
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(93083228179/1000000000000 : ℚ), (185322005629/1000000000 : ℚ), (-4322122853887/250000000000 : ℚ), 12⟩,
    ⟨(11700578583/125000000000 : ℚ), (10340616127/625000000 : ℚ), (-1561770399979/1000000000000 : ℚ), 9⟩,
    ⟨(1477625799/15625000000 : ℚ), (78257731/25000000 : ℚ), (-301661082907/1000000000000 : ℚ), 8⟩,
    ⟨(47913411629/500000000000 : ℚ), (-5444734413/10000000000 : ℚ), (47719614353/1000000000000 : ℚ), 7⟩,
    ⟨(19437861677/200000000000 : ℚ), (-20533215417/10000000000 : ℚ), (193206456887/1000000000000 : ℚ), 6⟩,
    ⟨(98448080507/1000000000000 : ℚ), (-14042956513/5000000000 : ℚ), (133524446297/500000000000 : ℚ), 6⟩,
    ⟨(99411502979/1000000000000 : ℚ), (-8027775347/2500000000 : ℚ), (306861626259/1000000000000 : ℚ), 6⟩,
    ⟨(12491612933/125000000000 : ℚ), (-33925942919/10000000000 : ℚ), (5077338699/15625000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-34145696809/10000000000 : ℚ), (327146476811/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (558038124927/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control877.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control877.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate877

-- Control878
namespace DiagonalRamsey.JointInheritedCertificate878
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12193095397/100000000000 : ℚ), (298874277789/5000000000 : ℚ), (-1467820898379/200000000000 : ℚ), 11⟩,
    ⟨(62023428193/500000000000 : ℚ), (6972198857/1250000000 : ℚ), (-44342215579/62500000000 : ℚ), 8⟩,
    ⟨(7997283391/62500000000 : ℚ), (2679853003/2000000000 : ℚ), (-178126537899/1000000000000 : ℚ), 6⟩,
    ⟨(133064774567/1000000000000 : ℚ), (128531829/625000000 : ℚ), (-6133108633/200000000000 : ℚ), 6⟩,
    ⟨(27718778807/200000000000 : ℚ), (-496296363/2000000000 : ℚ), (7702677781/250000000000 : ℚ), 5⟩,
    ⟨(28740426869/200000000000 : ℚ), (-586773287/1250000000 : ℚ), (61996130743/1000000000000 : ℚ), 5⟩,
    ⟨(18451476527/125000000000 : ℚ), (-5844643241/10000000000 : ℚ), (78742777279/1000000000000 : ℚ), 5⟩,
    ⟨(18715964329/125000000000 : ℚ), (-6353555733/10000000000 : ℚ), (86307644399/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-1282933459/2000000000 : ℚ), (681433467/7812500000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (186056374413/250000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control878.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control878.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate878

-- Control879
namespace DiagonalRamsey.JointInheritedCertificate879
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62614233783/500000000000 : ℚ), (696181975973/10000000000 : ℚ), (-1096268734767/125000000000 : ℚ), 11⟩,
    ⟨(63547898313/500000000000 : ℚ), (4048653931/625000000 : ℚ), (-210310506017/250000000000 : ℚ), 8⟩,
    ⟨(130546170823/1000000000000 : ℚ), (1524381903/1000000000 : ℚ), (-25729358049/125000000000 : ℚ), 7⟩,
    ⟨(27010860393/200000000000 : ℚ), (15052537/78125000 : ℚ), (-7394044141/250000000000 : ℚ), 6⟩,
    ⟨(2798677359/20000000000 : ℚ), (-53520191/156250000 : ℚ), (43842166273/1000000000000 : ℚ), 5⟩,
    ⟨(36110499773/250000000000 : ℚ), (-3022775271/5000000000 : ℚ), (81050884343/1000000000000 : ℚ), 5⟩,
    ⟨(147892373289/1000000000000 : ℚ), (-1482533223/2000000000 : ℚ), (101022674039/1000000000000 : ℚ), 5⟩,
    ⟨(149759702349/1000000000000 : ℚ), (-501185871/625000000 : ℚ), (110044950297/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-2022965383/2500000000 : ℚ), (55568693187/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (359948807437/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control879.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control879.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate879

-- Control880
namespace DiagonalRamsey.JointInheritedCertificate880
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17531852293/200000000000 : ℚ), (444992662721/5000000000 : ℚ), (-7834648034439/1000000000000 : ℚ), 11⟩,
    ⟨(22147382929/250000000000 : ℚ), (8191669733/1000000000 : ℚ), (-368588092963/500000000000 : ℚ), 8⟩,
    ⟨(22577111751/250000000000 : ℚ), (4533991633/2500000000 : ℚ), (-168391718583/1000000000000 : ℚ), 7⟩,
    ⟨(4627715903/50000000000 : ℚ), (836273161/10000000000 : ℚ), (-1324849941/125000000000 : ℚ), 6⟩,
    ⟨(94985231373/1000000000000 : ℚ), (-1546920573/2500000000 : ℚ), (6894475021/125000000000 : ℚ), 6⟩,
    ⟨(97231102429/1000000000000 : ℚ), (-2415626753/2500000000 : ℚ), (5532532177/62500000000 : ℚ), 6⟩,
    ⟨(49475008859/500000000000 : ℚ), (-11492871063/10000000000 : ℚ), (106467576331/1000000000000 : ℚ), 6⟩,
    ⟨(3121258999/31250000000 : ℚ), (-2462073049/2000000000 : ℚ), (114593958599/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-6204467403/5000000000 : ℚ), (115579062843/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (184663983421/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control880.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control880.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate880
