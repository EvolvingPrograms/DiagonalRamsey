import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control794
namespace DiagonalRamsey.JointInheritedCertificate794
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(89479296809/1000000000000 : ℚ), (532582080511/2500000000 : ℚ), (-4782125925247/250000000000 : ℚ), 11⟩,
    ⟨(22568092263/250000000000 : ℚ), (193743727903/10000000000 : ℚ), (-885730514671/500000000000 : ℚ), 8⟩,
    ⟨(91737775479/1000000000000 : ℚ), (5061694499/1250000000 : ℚ), (-2377126793/6250000000 : ℚ), 6⟩,
    ⟨(18730484249/200000000000 : ℚ), (-1239619571/10000000000 : ℚ), (5725938871/1000000000000 : ℚ), 5⟩,
    ⟨(11965602361/125000000000 : ℚ), (-3652813219/2000000000 : ℚ), (20838058881/125000000000 : ℚ), 5⟩,
    ⟨(48819732327/500000000000 : ℚ), (-13362348011/5000000000 : ℚ), (124219733559/500000000000 : ℚ), 5⟩,
    ⟨(99104871081/1000000000000 : ℚ), (-6239508931/2000000000 : ℚ), (146212628359/500000000000 : ℚ), 5⟩,
    ⟨(24974485831/250000000000 : ℚ), (-518747547/156250000 : ℚ), (312346864351/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-33441484097/10000000000 : ℚ), (314762039363/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (59965500521/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control794.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control794.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate794

-- Control795
namespace DiagonalRamsey.JointInheritedCertificate795
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(26877602491/200000000000 : ℚ), (269568748473/1250000000 : ℚ), (-29080904081841/1000000000000 : ℚ), 11⟩,
    ⟨(135564876183/1000000000000 : ℚ), (39290863243/2000000000 : ℚ), (-2696581973411/1000000000000 : ℚ), 7⟩,
    ⟨(68869718403/500000000000 : ℚ), (66165269/16000000 : ℚ), (-582400631071/1000000000000 : ℚ), 6⟩,
    ⟨(140580637181/1000000000000 : ℚ), (-171531333/2000000000 : ℚ), (3835588191/1000000000000 : ℚ), 5⟩,
    ⟨(71827965153/500000000000 : ℚ), (-3610254699/2000000000 : ℚ), (247852385389/1000000000000 : ℚ), 5⟩,
    ⟨(146497130681/1000000000000 : ℚ), (-26577784103/10000000000 : ℚ), (371455610709/1000000000000 : ℚ), 5⟩,
    ⟨(18583961413/125000000000 : ℚ), (-15538128701/5000000000 : ℚ), (437824144831/1000000000000 : ℚ), 5⟩,
    ⟨(18731069379/125000000000 : ℚ), (-16543670563/5000000000 : ℚ), (467839288589/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6665984487/2000000000 : ℚ), (117869041779/250000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (94037295239/250000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control795.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control795.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate795

-- Control796
namespace DiagonalRamsey.JointInheritedCertificate796
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22879667997/125000000000 : ℚ), (70166461129/250000000 : ℚ), (-12893376678183/250000000000 : ℚ), 11⟩,
    ⟨(2880014177/15625000000 : ℚ), (296979726331/10000000000 : ℚ), (-139440743513/25000000000 : ℚ), 8⟩,
    ⟨(46709676853/250000000000 : ℚ), (98233473353/10000000000 : ℚ), (-948743021599/500000000000 : ℚ), 7⟩,
    ⟨(190493986583/1000000000000 : ℚ), (22173743773/5000000000 : ℚ), (-882981678537/1000000000000 : ℚ), 6⟩,
    ⟨(12196642157/62500000000 : ℚ), (22620701687/10000000000 : ℚ), (-464859019857/1000000000000 : ℚ), 5⟩,
    ⟨(200616786383/1000000000000 : ℚ), (11874428093/10000000000 : ℚ), (-126289747249/500000000000 : ℚ), 5⟩,
    ⟨(206695293493/1000000000000 : ℚ), (182560119/312500000 : ℚ), (-3247720877/25000000000 : ℚ), 4⟩,
    ⟨(213148202223/1000000000000 : ℚ), (2147782579/10000000000 : ℚ), (-52458423851/1000000000000 : ℚ), 4⟩,
    ⟨(54931882727/250000000000 : ℚ), (-26209613/1000000000 : ℚ), (-176154777/500000000000 : ℚ), 4⟩,
    ⟨(226180439637/1000000000000 : ℚ), (-477214963/2500000000 : ℚ), (726688423/20000000000 : ℚ), 4⟩,
    ⟨(232258946747/1000000000000 : ℚ), (-3070615211/10000000000 : ℚ), (62949097239/1000000000000 : ℚ), 4⟩,
    ⟨(118864729309/500000000000 : ℚ), (-487987489/1250000000 : ℚ), (41261638283/500000000000 : ℚ), 4⟩,
    ⟨(242381746547/1000000000000 : ℚ), (-4499886641/10000000000 : ℚ), (96826843991/1000000000000 : ℚ), 4⟩,
    ⟨(123018512859/500000000000 : ℚ), (-1228124239/2500000000 : ℚ), (21380370953/200000000000 : ℚ), 4⟩,
    ⟨(124277412901/500000000000 : ℚ), (-2586664871/5000000000 : ℚ), (28337944203/250000000000 : ℚ), 4⟩,
    ⟨(124919194577/500000000000 : ℚ), (-5299863061/10000000000 : ℚ), (7281556261/62500000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5315506717/10000000000 : ℚ), (29223966271/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (290649882071/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control796.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control796.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate796

-- Control797
namespace DiagonalRamsey.JointInheritedCertificate797
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30833129563/200000000000 : ℚ), (3456239831479/10000000000 : ℚ), (-53452554673213/1000000000000 : ℚ), 12⟩,
    ⟨(155044216531/1000000000000 : ℚ), (366254501813/10000000000 : ℚ), (-5765533728853/1000000000000 : ℚ), 8⟩,
    ⟨(7838379553/50000000000 : ℚ), (15135276257/1250000000 : ℚ), (-487514170801/250000000000 : ℚ), 7⟩,
    ⟨(31853908617/200000000000 : ℚ), (2720157787/500000000 : ℚ), (-112276755989/125000000000 : ℚ), 6⟩,
    ⟨(162453923993/1000000000000 : ℚ), (13704429491/5000000000 : ℚ), (-464667845419/1000000000000 : ℚ), 5⟩,
    ⟨(41549589953/250000000000 : ℚ), (6996403589/5000000000 : ℚ), (-61130148889/250000000000 : ℚ), 5⟩,
    ⟨(170358953973/1000000000000 : ℚ), (3210614579/5000000000 : ℚ), (-58632272023/500000000000 : ℚ), 5⟩,
    ⟨(6991032687/40000000000 : ℚ), (1758212809/10000000000 : ℚ), (-921986929/25000000000 : ℚ), 4⟩,
    ⟨(179279211843/1000000000000 : ℚ), (-1301472749/10000000000 : ℚ), (8620083299/500000000000 : ℚ), 4⟩,
    ⟨(91848037523/500000000000 : ℚ), (-3404437249/10000000000 : ℚ), (27690941477/500000000000 : ℚ), 4⟩,
    ⟨(93928334603/500000000000 : ℚ), (-244819137/500000000 : ℚ), (10385720197/125000000000 : ℚ), 4⟩,
    ⟨(7664044201/40000000000 : ℚ), (-1493032457/2500000000 : ℚ), (10348930641/100000000000 : ℚ), 4⟩,
    ⟨(194785485933/1000000000000 : ℚ), (-6745144853/10000000000 : ℚ), (118420483821/1000000000000 : ℚ), 4⟩,
    ⟨(98643718979/500000000000 : ℚ), (-7282416519/10000000000 : ℚ), (402974467/3125000000 : ℚ), 4⟩,
    ⟨(199010812487/1000000000000 : ℚ), (-1905765583/2500000000 : ℚ), (135701380683/1000000000000 : ℚ), 4⟩,
    ⟨(199889381203/1000000000000 : ℚ), (-389430983/500000000 : ℚ), (17375423159/125000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7809102437/10000000000 : ℚ), (34853231863/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (114819170079/200000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control797.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control797.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate797

-- Control798
namespace DiagonalRamsey.JointInheritedCertificate798
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38764837207/200000000000 : ℚ), (3545948165409/10000000000 : ℚ), (-34471166737643/500000000000 : ℚ), 12⟩,
    ⟨(48725245867/250000000000 : ℚ), (188025497463/5000000000 : ℚ), (-7439113450253/1000000000000 : ℚ), 8⟩,
    ⟨(197013197611/1000000000000 : ℚ), (124491886951/10000000000 : ℚ), (-2518315340323/1000000000000 : ℚ), 7⟩,
    ⟨(10003982863/50000000000 : ℚ), (5606067931/1000000000 : ℚ), (-1161914799751/1000000000000 : ℚ), 6⟩,
    ⟨(20398252009/100000000000 : ℚ), (14176615533/5000000000 : ℚ), (-150751150663/250000000000 : ℚ), 5⟩,
    ⟨(26071475159/125000000000 : ℚ), (14583949433/10000000000 : ℚ), (-159685159933/500000000000 : ℚ), 5⟩,
    ⟨(213671137303/1000000000000 : ℚ), (6816488047/10000000000 : ℚ), (-15558071497/100000000000 : ℚ), 5⟩,
    ⟨(219084563559/1000000000000 : ℚ), (1018564599/5000000000 : ℚ), (-26135485759/500000000000 : ℚ), 4⟩,
    ⟨(112302022553/500000000000 : ℚ), (-273651233/2500000000 : ℚ), (17147823917/1000000000000 : ℚ), 4⟩,
    ⟨(115008735681/500000000000 : ℚ), (-162164189/500000000 : ℚ), (13191750139/200000000000 : ℚ), 4⟩,
    ⟨(235116807393/1000000000000 : ℚ), (-1191147239/2500000000 : ℚ), (101323000077/1000000000000 : ℚ), 4⟩,
    ⟨(9588243543/40000000000 : ℚ), (-5859242301/10000000000 : ℚ), (31825787871/250000000000 : ℚ), 4⟩,
    ⟨(48721790281/200000000000 : ℚ), (-6644339761/10000000000 : ℚ), (73135949439/500000000000 : ℚ), 4⟩,
    ⟨(123337705527/500000000000 : ℚ), (-1797284117/2500000000 : ℚ), (79812865163/500000000000 : ℚ), 4⟩,
    ⟨(248787625197/1000000000000 : ℚ), (-3767071947/5000000000 : ℚ), (168172253909/1000000000000 : ℚ), 4⟩,
    ⟨(24986442263/100000000000 : ℚ), (-7701699941/10000000000 : ℚ), (172349814457/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7722424363/10000000000 : ℚ), (17286778441/100000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (53075798359/100000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control798.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control798.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate798

-- Control800
namespace DiagonalRamsey.JointInheritedCertificate800
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1287619171/6250000000 : ℚ), (2288537651551/5000000000 : ℚ), (-94511490710381/1000000000000 : ℚ), 12⟩,
    ⟨(206862109089/1000000000000 : ℚ), (48607010953/1000000000 : ℚ), (-10165358857027/1000000000000 : ℚ), 9⟩,
    ⟨(104257897463/500000000000 : ℚ), (16072398887/1000000000 : ℚ), (-3417058524061/1000000000000 : ℚ), 7⟩,
    ⟨(52729143663/250000000000 : ℚ), (71923507469/10000000000 : ℚ), (-1557075217911/1000000000000 : ℚ), 6⟩,
    ⟨(213972187649/1000000000000 : ℚ), (35814225691/10000000000 : ℚ), (-790833703813/1000000000000 : ℚ), 6⟩,
    ⟨(108782604211/500000000000 : ℚ), (889090429/500000000 : ℚ), (-402152455719/1000000000000 : ℚ), 5⟩,
    ⟨(110778779599/500000000000 : ℚ), (7556996359/10000000000 : ℚ), (-35571516203/200000000000 : ℚ), 5⟩,
    ⟨(14112238511/62500000000 : ℚ), (1233322139/10000000000 : ℚ), (-7303877137/200000000000 : ℚ), 5⟩,
    ⟨(230117105517/1000000000000 : ℚ), (-293071/1000000 : ℚ), (58343846609/1000000000000 : ℚ), 5⟩,
    ⟨(46871072499/200000000000 : ℚ), (-5800791857/10000000000 : ℚ), (12496572411/100000000000 : ℚ), 4⟩,
    ⟨(29793464159/125000000000 : ℚ), (-784152839/1000000000 : ℚ), (173181992573/1000000000000 : ℚ), 4⟩,
    ⟨(48388146809/200000000000 : ℚ), (-9315698443/10000000000 : ℚ), (20857488279/100000000000 : ℚ), 4⟩,
    ⟨(244996347041/1000000000000 : ℚ), (-5188366487/5000000000 : ℚ), (234403885559/1000000000000 : ℚ), 4⟩,
    ⟨(247397126767/1000000000000 : ℚ), (-11115252117/10000000000 : ℚ), (252584504579/1000000000000 : ℚ), 4⟩,
    ⟨(49810162521/200000000000 : ℚ), (-5792026633/5000000000 : ℚ), (52844172489/200000000000 : ℚ), 4⟩,
    ⟨(124946927167/500000000000 : ℚ), (-5906039249/5000000000 : ℚ), (134954705951/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-11840298883/10000000000 : ℚ), (135307385829/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (466339423869/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control800.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control800.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate800

-- Control801
namespace DiagonalRamsey.JointInheritedCertificate801
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6780004243/40000000000 : ℚ), (5431278873801/10000000000 : ℚ), (-92236107386213/1000000000000 : ℚ), 12⟩,
    ⟨(5315148081/31250000000 : ℚ), (576374134473/10000000000 : ℚ), (-494652561609/50000000000 : ℚ), 9⟩,
    ⟨(42807884131/250000000000 : ℚ), (4747705759/250000000 : ℚ), (-3304923870653/1000000000000 : ℚ), 8⟩,
    ⟨(10806026817/62500000000 : ℚ), (84258789469/10000000000 : ℚ), (-1488977927307/1000000000000 : ℚ), 7⟩,
    ⟨(175015435347/1000000000000 : ℚ), (41204989691/10000000000 : ℚ), (-185189319119/250000000000 : ℚ), 6⟩,
    ⟨(22188390391/125000000000 : ℚ), (392925059/200000000 : ℚ), (-361092111097/1000000000000 : ℚ), 6⟩,
    ⟨(721102953/4000000000 : ℚ), (295308717/400000000 : ℚ), (-141875466129/1000000000000 : ℚ), 5⟩,
    ⟨(183214884387/1000000000000 : ℚ), (-229446803/10000000000 : ℚ), (-180855189/50000000000 : ℚ), 5⟩,
    ⟨(931058059/5000000000 : ℚ), (-5261936103/10000000000 : ℚ), (44645533123/500000000000 : ℚ), 5⟩,
    ⟨(189150757937/1000000000000 : ℚ), (-4372638261/5000000000 : ℚ), (77320196139/500000000000 : ℚ), 5⟩,
    ⟨(191919373059/1000000000000 : ℚ), (-1404093691/1250000000 : ℚ), (101010737289/500000000000 : ℚ), 4⟩,
    ⟨(4860276521/25000000000 : ℚ), (-13037191959/10000000000 : ℚ), (4737400073/20000000000 : ℚ), 4⟩,
    ⟨(39306013423/200000000000 : ℚ), (-3585245629/2500000000 : ℚ), (262352073873/1000000000000 : ℚ), 4⟩,
    ⟨(198194959663/1000000000000 : ℚ), (-15251487237/10000000000 : ℚ), (280320794867/1000000000000 : ℚ), 4⟩,
    ⟨(39868351519/200000000000 : ℚ), (-3957734753/2500000000 : ℚ), (58367624519/200000000000 : ℚ), 4⟩,
    ⟨(199926390111/1000000000000 : ℚ), (-16113238271/10000000000 : ℚ), (297473736953/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16148197211/10000000000 : ℚ), (149086393501/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (465109965367/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control801.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control801.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate801

-- Control802
namespace DiagonalRamsey.JointInheritedCertificate802
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2805621571/62500000000 : ℚ), (418038889007/2000000000 : ℚ), (-2353707030451/250000000000 : ℚ), 11⟩,
    ⟨(45275151581/1000000000000 : ℚ), (94857844891/5000000000 : ℚ), (-217486602637/250000000000 : ℚ), 8⟩,
    ⟨(45986920281/1000000000000 : ℚ), (39240489069/10000000000 : ℚ), (-92498523761/500000000000 : ℚ), 6⟩,
    ⟨(9383378181/200000000000 : ℚ), (-356959957/2000000000 : ℚ), (1040268127/200000000000 : ℚ), 6⟩,
    ⟨(9584696771/200000000000 : ℚ), (-18552038057/10000000000 : ℚ), (84605234131/1000000000000 : ℚ), 5⟩,
    ⟨(24426727239/500000000000 : ℚ), (-13452232407/5000000000 : ℚ), (62495362383/500000000000 : ℚ), 5⟩,
    ⟨(49565223179/1000000000000 : ℚ), (-15665012103/5000000000 : ℚ), (146761648753/1000000000000 : ℚ), 5⟩,
    ⟨(6243803703/125000000000 : ℚ), (-8328560781/2500000000 : ℚ), (156633955093/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-6710770103/2000000000 : ℚ), (78915698417/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (76742693367/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control802.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control802.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate802
