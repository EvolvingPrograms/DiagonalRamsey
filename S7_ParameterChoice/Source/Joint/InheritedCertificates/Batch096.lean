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

-- Control857
namespace DiagonalRamsey.JointInheritedCertificate857
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(157597552457/1000000000000 : ℚ), (1337146727033/5000000000 : ℚ), (-21133720558727/500000000000 : ℚ), 12⟩,
    ⟨(79205168619/500000000000 : ℚ), (283624624509/10000000000 : ℚ), (-1138812211923/250000000000 : ℚ), 9⟩,
    ⟨(2500072999/15625000000 : ℚ), (93792537041/10000000000 : ℚ), (-1537922533887/1000000000000 : ℚ), 8⟩,
    ⟨(40579821791/250000000000 : ℚ), (21051541211/5000000000 : ℚ), (-44136375549/62500000000 : ℚ), 7⟩,
    ⟨(33053046711/200000000000 : ℚ), (21146967539/10000000000 : ℚ), (-36343095859/100000000000 : ℚ), 6⟩,
    ⟨(84364650021/500000000000 : ℚ), (2143185219/2000000000 : ℚ), (-94730253863/500000000000 : ℚ), 6⟩,
    ⟨(86289182247/500000000000 : ℚ), (2410188669/5000000000 : ℚ), (-88963866931/1000000000000 : ℚ), 5⟩,
    ⟨(176664509521/1000000000000 : ℚ), (592435603/5000000000 : ℚ), (-798129271/31250000000 : ℚ), 5⟩,
    ⟨(180830706861/1000000000000 : ℚ), (-601597039/5000000000 : ℚ), (17113396751/1000000000000 : ℚ), 5⟩,
    ⟨(11557303243/62500000000 : ℚ), (-2846056859/10000000000 : ℚ), (47139397267/1000000000000 : ℚ), 5⟩,
    ⟨(188765916339/1000000000000 : ℚ), (-1003140247/2500000000 : ℚ), (68925190249/1000000000000 : ℚ), 5⟩,
    ⟨(192229982827/1000000000000 : ℚ), (-4854353367/10000000000 : ℚ), (84956488317/1000000000000 : ℚ), 5⟩,
    ⟨(97587964609/500000000000 : ℚ), (-34123561/62500000 : ℚ), (9668145483/100000000000 : ℚ), 4⟩,
    ⟨(98745272223/500000000000 : ℚ), (-5880907657/10000000000 : ℚ), (13118621593/125000000000 : ℚ), 4⟩,
    ⟨(24885609893/125000000000 : ℚ), (-6148115187/10000000000 : ℚ), (22049428567/200000000000 : ℚ), 4⟩,
    ⟨(7995906557/40000000000 : ℚ), (-6278045411/10000000000 : ℚ), (22567822031/200000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-196691363/312500000 : ℚ), (5658029597/50000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (167378669469/250000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control857.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control857.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate857

-- Control858
namespace DiagonalRamsey.JointInheritedCertificate858
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4860886621/40000000000 : ℚ), (373606559137/5000000000 : ℚ), (-9144536966887/1000000000000 : ℚ), 10⟩,
    ⟨(24733776651/200000000000 : ℚ), (6970444159/1000000000 : ℚ), (-110532490929/125000000000 : ℚ), 7⟩,
    ⟨(127635500401/1000000000000 : ℚ), (4186519029/2500000000 : ℚ), (-44431064159/200000000000 : ℚ), 6⟩,
    ⟨(132818135459/1000000000000 : ℚ), (1287670127/5000000000 : ℚ), (-19171020119/500000000000 : ℚ), 5⟩,
    ⟨(138427779223/1000000000000 : ℚ), (-386726697/1250000000 : ℚ), (1198067111/31250000000 : ℚ), 5⟩,
    ⟨(143610414281/1000000000000 : ℚ), (-1171633969/2000000000 : ℚ), (77261953151/1000000000000 : ℚ), 5⟩,
    ⟨(147577031427/1000000000000 : ℚ), (-56994233/78125000 : ℚ), (19634342817/200000000000 : ℚ), 5⟩,
    ⟨(149723749157/1000000000000 : ℚ), (-7930793123/10000000000 : ℚ), (2152349719/20000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-400354829/500000000 : ℚ), (10876098123/100000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (685535131577/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control858.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control858.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate858

-- Control859
namespace DiagonalRamsey.JointInheritedCertificate859
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(128369962893/1000000000000 : ℚ), (966378084899/10000000000 : ℚ), (-3117027625839/250000000000 : ℚ), 11⟩,
    ⟨(65000239787/500000000000 : ℚ), (89504437211/10000000000 : ℚ), (-592534523379/500000000000 : ℚ), 8⟩,
    ⟨(8313330097/62500000000 : ℚ), (20501874407/10000000000 : ℚ), (-140459968639/500000000000 : ℚ), 6⟩,
    ⟨(68474848519/500000000000 : ℚ), (935909403/5000000000 : ℚ), (-3771251211/125000000000 : ℚ), 6⟩,
    ⟨(141210442457/1000000000000 : ℚ), (-1129919757/2000000000 : ℚ), (18558005479/250000000000 : ℚ), 5⟩,
    ⟨(72573428971/500000000000 : ℚ), (-4673809729/5000000000 : ℚ), (25424172923/200000000000 : ℚ), 5⟩,
    ⟨(148159659921/1000000000000 : ℚ), (-2256812721/2000000000 : ℚ), (155506055519/1000000000000 : ℚ), 5⟩,
    ⟨(74895088301/500000000000 : ℚ), (-6072551213/5000000000 : ℚ), (84165977199/500000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6124363199/5000000000 : ℚ), (2123565303/12500000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (80195172207/125000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control859.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control859.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate859

-- Control860
namespace DiagonalRamsey.JointInheritedCertificate860
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21934834579/250000000000 : ℚ), (1165368234843/10000000000 : ℚ), (-5133820007867/500000000000 : ℚ), 11⟩,
    ⟨(88663572209/1000000000000 : ℚ), (107014022613/10000000000 : ℚ), (-963489946831/1000000000000 : ℚ), 8⟩,
    ⟨(90371333763/1000000000000 : ℚ), (4692666659/2000000000 : ℚ), (-108906864949/500000000000 : ℚ), 7⟩,
    ⟨(46301315881/500000000000 : ℚ), (158367771/2000000000 : ℚ), (-5447174423/500000000000 : ℚ), 6⟩,
    ⟨(95017771313/1000000000000 : ℚ), (-4209660657/5000000000 : ℚ), (75374018787/1000000000000 : ℚ), 6⟩,
    ⟨(379879177/3906250000 : ℚ), (-12979624883/10000000000 : ℚ), (119173169921/1000000000000 : ℚ), 5⟩,
    ⟨(19791366173/200000000000 : ℚ), (-3076639039/2000000000 : ℚ), (71371839823/500000000000 : ℚ), 5⟩,
    ⟨(49940532379/500000000000 : ℚ), (-16457043033/10000000000 : ℚ), (15341878639/100000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16586535537/10000000000 : ℚ), (154712939593/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (668202358011/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control860.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control860.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate860

-- Control861
namespace DiagonalRamsey.JointInheritedCertificate861
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46119430977/1000000000000 : ℚ), (193502075877/1000000000 : ℚ), (-4473498162713/500000000000 : ℚ), 12⟩,
    ⟨(46411956251/1000000000000 : ℚ), (87040034381/5000000000 : ℚ), (-816033223969/1000000000000 : ℚ), 9⟩,
    ⟨(46952472477/1000000000000 : ℚ), (17120962023/5000000000 : ℚ), (-164424688051/1000000000000 : ℚ), 7⟩,
    ⟨(595733637/12500000000 : ℚ), (-125882263/312500000 : ℚ), (4087969087/250000000000 : ℚ), 7⟩,
    ⟨(24211548169/500000000000 : ℚ), (-19729076641/10000000000 : ℚ), (18340929407/200000000000 : ℚ), 6⟩,
    ⟨(49129314821/1000000000000 : ℚ), (-27580330077/10000000000 : ℚ), (32494601057/250000000000 : ℚ), 6⟩,
    ⟨(49669831047/1000000000000 : ℚ), (-31757724283/10000000000 : ℚ), (75304821359/500000000000 : ℚ), 6⟩,
    ⟨(49962356321/1000000000000 : ℚ), (-33637720097/10000000000 : ℚ), (159974531819/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-423314341/125000000 : ℚ), (161111238737/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (676793855509/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control861.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control861.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate861

-- Control862
namespace DiagonalRamsey.JointInheritedCertificate862
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46100722691/500000000000 : ℚ), (962262428723/5000000000 : ℚ), (-17788943962533/1000000000000 : ℚ), 12⟩,
    ⟨(23197329117/250000000000 : ℚ), (172779398349/10000000000 : ℚ), (-1618396470879/1000000000000 : ℚ), 9⟩,
    ⟨(18775112119/200000000000 : ℚ), (33694813547/10000000000 : ℚ), (-64531770389/200000000000 : ℚ), 7⟩,
    ⟨(95294806943/1000000000000 : ℚ), (-1087399139/2500000000 : ℚ), (18329947299/500000000000 : ℚ), 6⟩,
    ⟨(2420774703/25000000000 : ℚ), (-1246504459/625000000 : ℚ), (363894669/1953125000 : ℚ), 6⟩,
    ⟨(98250234467/1000000000000 : ℚ), (-6933740023/2500000000 : ℚ), (131131787973/500000000000 : ℚ), 6⟩,
    ⟨(19867295719/200000000000 : ℚ), (-31878062711/10000000000 : ℚ), (151592440423/500000000000 : ℚ), 6⟩,
    ⟨(1249054371/12500000000 : ℚ), (-6748497651/2000000000 : ℚ), (40219900327/125000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-8492011081/2500000000 : ℚ), (32401390827/100000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (54051349437/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control862.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control862.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate862

-- Control863
namespace DiagonalRamsey.JointInheritedCertificate863
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38192153283/250000000000 : ℚ), (540028005027/2500000000 : ℚ), (-33108911293493/1000000000000 : ℚ), 12⟩,
    ⟨(38418490173/250000000000 : ℚ), (2861004099/125000000 : ℚ), (-3573512144229/1000000000000 : ℚ), 9⟩,
    ⟨(155449863813/1000000000000 : ℚ), (75700860133/10000000000 : ℚ), (-75649169623/62500000000 : ℚ), 8⟩,
    ⟨(79014037767/500000000000 : ℚ), (17032526227/5000000000 : ℚ), (-139739184843/250000000000 : ℚ), 7⟩,
    ⟨(1290476133/8000000000 : ℚ), (3444599681/2000000000 : ℚ), (-290484913493/1000000000000 : ℚ), 6⟩,
    ⟨(165168083143/1000000000000 : ℚ), (1107666743/1250000000 : ℚ), (-77095896267/500000000000 : ℚ), 6⟩,
    ⟨(2647742071/15625000000 : ℚ), (1037052659/2500000000 : ℚ), (-15087380237/200000000000 : ℚ), 5⟩,
    ⟨(87003491043/500000000000 : ℚ), (1249700131/10000000000 : ℚ), (-25713994429/1000000000000 : ℚ), 5⟩,
    ⟨(8932382029/50000000000 : ℚ), (-64935039/1000000000 : ℚ), (967803567/125000000000 : ℚ), 5⟩,
    ⟨(91599565061/500000000000 : ℚ), (-976340557/5000000000 : ℚ), (15653509323/500000000000 : ℚ), 5⟩,
    ⟨(187486539523/1000000000000 : ℚ), (-575218789/2000000000 : ℚ), (48413517941/1000000000000 : ℚ), 5⟩,
    ⟨(191345106041/1000000000000 : ℚ), (-3541163551/10000000000 : ℚ), (61006836043/1000000000000 : ℚ), 5⟩,
    ⟨(48656636783/250000000000 : ℚ), (-4018661227/10000000000 : ℚ), (17554993571/250000000000 : ℚ), 4⟩,
    ⟨(197204758853/1000000000000 : ℚ), (-217516917/500000000 : ℚ), (76717320709/1000000000000 : ℚ), 4⟩,
    ⟨(99490330987/500000000000 : ℚ), (-2280275747/5000000000 : ℚ), (80881288393/1000000000000 : ℚ), 4⟩,
    ⟨(99943004767/500000000000 : ℚ), (-466269657/1000000000 : ℚ), (41459188759/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-2337666543/5000000000 : ℚ), (41585517881/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (713263917213/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control863.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control863.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate863

-- Control864
namespace DiagonalRamsey.JointInheritedCertificate864
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5958782671/50000000000 : ℚ), (628220693653/10000000000 : ℚ), (-7545412687009/1000000000000 : ℚ), 10⟩,
    ⟨(60749628029/500000000000 : ℚ), (29339949493/5000000000 : ℚ), (-183318869569/250000000000 : ℚ), 7⟩,
    ⟨(125792713897/1000000000000 : ℚ), (2854281137/2000000000 : ℚ), (-187207936067/1000000000000 : ℚ), 6⟩,
    ⟨(131402386899/1000000000000 : ℚ), (485614991/2000000000 : ℚ), (-444571209/12500000000 : ℚ), 5⟩,
    ⟨(34368563301/250000000000 : ℚ), (-1147000841/5000000000 : ℚ), (13865075877/500000000000 : ℚ), 5⟩,
    ⟨(143083926207/1000000000000 : ℚ), (-2294899219/5000000000 : ℚ), (59882157079/1000000000000 : ℚ), 5⟩,
    ⟨(29475476809/200000000000 : ℚ), (-5780490011/10000000000 : ℚ), (38581274543/500000000000 : ℚ), 5⟩,
    ⟨(149700986683/1000000000000 : ℚ), (-630619519/1000000000 : ℚ), (42485021309/500000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6369269757/10000000000 : ℚ), (85915215739/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (180157422839/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control864.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control864.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate864
