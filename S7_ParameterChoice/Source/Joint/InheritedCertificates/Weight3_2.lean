import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.ControlTransport
import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointInheritedCertificate509
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(150352066781/1000000000000 : ℚ), (2643981853893/5000000000 : ℚ), (-79785904809623/1000000000000 : ℚ), 11⟩,
    ⟨(151303735537/1000000000000 : ℚ), (559745672813/10000000000 : ℚ), (-1076650602559/125000000000 : ℚ), 7⟩,
    ⟨(153170500953/1000000000000 : ℚ), (184922411809/10000000000 : ℚ), (-182402624811/62500000000 : ℚ), 6⟩,
    ⟨(155880624281/1000000000000 : ℚ), (41558987401/5000000000 : ℚ), (-84268760809/62500000000 : ℚ), 5⟩,
    ⟨(159329957001/1000000000000 : ℚ), (5245912133/1250000000 : ℚ), (-87610348083/125000000000 : ℚ), 5⟩,
    ⟨(16338594319/100000000000 : ℚ), (21546562039/10000000000 : ℚ), (-185947957267/500000000000 : ℚ), 4⟩,
    ⟨(6715708543/40000000000 : ℚ), (5018171571/5000000000 : ℚ), (-36300228453/200000000000 : ℚ), 4⟩,
    ⟨(172677075497/1000000000000 : ℚ), (2953994883/10000000000 : ℚ), (-7629603721/125000000000 : ℚ), 3⟩,
    ⟨(17755516861/100000000000 : ℚ), (-1690706573/10000000000 : ℚ), (5056242797/250000000000 : ℚ), 3⟩,
    ⟨(45584882633/250000000000 : ℚ), (-195284049/400000000 : ℚ), (38806490387/500000000000 : ℚ), 3⟩,
    ⟨(186846300917/1000000000000 : ℚ), (-7145582543/10000000000 : ℚ), (29843485603/250000000000 : ℚ), 3⟩,
    ⟨(190902287107/1000000000000 : ℚ), (-8776906267/10000000000 : ℚ), (150174770651/1000000000000 : ℚ), 3⟩,
    ⟨(97175809913/500000000000 : ℚ), (-4974178399/5000000000 : ℚ), (86367594459/500000000000 : ℚ), 3⟩,
    ⟨(98530871577/500000000000 : ℚ), (-672616917/625000000 : ℚ), (94327158193/500000000000 : ℚ), 3⟩,
    ⟨(19892850857/100000000000 : ℚ), (-11277233963/10000000000 : ℚ), (198857734827/1000000000000 : ℚ), 3⟩,
    ⟨(99940088663/500000000000 : ℚ), (-11527552923/10000000000 : ℚ), (101924570309/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11558514577/10000000000 : ℚ), (2555852351/12500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (7571150213/20000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control509.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control509.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate509

namespace DiagonalRamsey.JointInheritedCertificate541
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(37786456927/250000000000 : ℚ), (5243799885851/10000000000 : ℚ), (-79531367888277/1000000000000 : ℚ), 11⟩,
    ⟨(7604114069/50000000000 : ℚ), (277594928323/5000000000 : ℚ), (-4292013290059/500000000000 : ℚ), 8⟩,
    ⟨(30783840267/200000000000 : ℚ), (36687026033/2000000000 : ℚ), (-2907313933909/1000000000000 : ℚ), 6⟩,
    ⟨(156585995769/1000000000000 : ℚ), (16486827173/2000000000 : ℚ), (-1342172317877/1000000000000 : ℚ), 5⟩,
    ⟨(39995045317/250000000000 : ℚ), (41593277239/10000000000 : ℚ), (-174210644537/250000000000 : ℚ), 5⟩,
    ⟨(81985660593/500000000000 : ℚ), (10659155649/5000000000 : ℚ), (-368943041649/1000000000000 : ℚ), 4⟩,
    ⟨(33681207651/200000000000 : ℚ), (9885896323/10000000000 : ℚ), (-35840587281/200000000000 : ℚ), 4⟩,
    ⟨(10819619299/62500000000 : ℚ), (284902909/1000000000 : ℚ), (-184923877/3125000000 : ℚ), 4⟩,
    ⟨(3558280239/20000000000 : ℚ), (-1767165839/10000000000 : ℚ), (21772301249/1000000000000 : ℚ), 3⟩,
    ⟨(182621882479/1000000000000 : ℚ), (-4939724633/10000000000 : ℚ), (616593601/7812500000 : ℚ), 3⟩,
    ⟨(46764149887/250000000000 : ℚ), (-1797576031/2500000000 : ℚ), (120502697367/1000000000000 : ℚ), 3⟩,
    ⟨(95523869733/500000000000 : ℚ), (-4406316089/5000000000 : ℚ), (151162716343/1000000000000 : ℚ), 3⟩,
    ⟨(38888384993/200000000000 : ℚ), (-1247228913/1250000000 : ℚ), (86808280117/500000000000 : ℚ), 3⟩,
    ⟨(197108719399/1000000000000 : ℚ), (-2157427807/2000000000 : ℚ), (94729484159/500000000000 : ℚ), 3⟩,
    ⟨(99472819677/500000000000 : ℚ), (-11299909707/10000000000 : ℚ), (199612709687/1000000000000 : ℚ), 3⟩,
    ⟨(99941046513/500000000000 : ℚ), (-1154899299/1000000000 : ℚ), (204579714191/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-1157980297/1000000000 : ℚ), (41039146407/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (387852060477/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control541.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control541.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate541

namespace DiagonalRamsey.JointInheritedCertificate570
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(759777781/5000000000 : ℚ), (5198733392077/10000000000 : ℚ), (-792643453983/10000000000 : ℚ), 11⟩,
    ⟨(38219122179/250000000000 : ℚ), (27526767833/500000000 : ℚ), (-4276731060931/500000000000 : ℚ), 8⟩,
    ⟨(154682962829/1000000000000 : ℚ), (45478365419/2500000000 : ℚ), (-579137645601/200000000000 : ℚ), 6⟩,
    ⟨(157305556751/1000000000000 : ℚ), (81733592187/10000000000 : ℚ), (-166974033411/125000000000 : ℚ), 5⟩,
    ⟨(160643485669/1000000000000 : ℚ), (20604896589/5000000000 : ℚ), (-692651753359/1000000000000 : ℚ), 5⟩,
    ⟨(82284237423/500000000000 : ℚ), (21084224707/10000000000 : ℚ), (-36589141943/100000000000 : ℚ), 4⟩,
    ⟨(168929689149/1000000000000 : ℚ), (9731665629/10000000000 : ℚ), (-44209032997/250000000000 : ℚ), 4⟩,
    ⟨(173559529559/1000000000000 : ℚ), (2741535493/10000000000 : ℚ), (-1789530179/31250000000 : ℚ), 4⟩,
    ⟨(35656014781/200000000000 : ℚ), (-1845340687/10000000000 : ℚ), (23356252543/1000000000000 : ℚ), 3⟩,
    ⟨(91454957157/500000000000 : ℚ), (-2499258809/5000000000 : ℚ), (80262579397/1000000000000 : ℚ), 3⟩,
    ⟨(93635564309/500000000000 : ℚ), (-289432743/400000000 : ℚ), (60826278773/500000000000 : ℚ), 3⟩,
    ⟨(95598058897/500000000000 : ℚ), (-4424443859/5000000000 : ℚ), (76083523119/500000000000 : ℚ), 3⟩,
    ⟨(24316755839/125000000000 : ℚ), (-10007652291/10000000000 : ℚ), (87255456161/500000000000 : ℚ), 3⟩,
    ⟨(98578320317/500000000000 : ℚ), (-5406315203/5000000000 : ℚ), (95137118421/500000000000 : ℚ), 3⟩,
    ⟨(198963114747/1000000000000 : ℚ), (-11322732137/10000000000 : ℚ), (200376805937/1000000000000 : ℚ), 3⟩,
    ⟨(6246376477/31250000000 : ℚ), (-462821731/400000000 : ℚ), (205318684299/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11601197099/10000000000 : ℚ), (25741447867/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (397176089713/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control570.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control570.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate570

namespace DiagonalRamsey.JointInheritedCertificate593
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30556497821/200000000000 : ℚ), (2576398391503/5000000000 : ℚ), (-19746384647599/250000000000 : ℚ), 11⟩,
    ⟨(76843785343/500000000000 : ℚ), (109157173313/2000000000 : ℚ), (-1704318191083/200000000000 : ℚ), 8⟩,
    ⟨(155462952069/1000000000000 : ℚ), (180358785157/10000000000 : ℚ), (-720898641533/250000000000 : ℚ), 6⟩,
    ⟨(31608081269/200000000000 : ℚ), (81017081337/10000000000 : ℚ), (-664587966709/500000000000 : ℚ), 5⟩,
    ⟨(16132088339/100000000000 : ℚ), (10204328967/2500000000 : ℚ), (-344160258247/500000000000 : ℚ), 5⟩,
    ⟨(20647289539/125000000000 : ℚ), (10422318197/5000000000 : ℚ), (-72549667827/200000000000 : ℚ), 4⟩,
    ⟨(84732233063/500000000000 : ℚ), (4786952687/5000000000 : ℚ), (-174406329219/1000000000000 : ℚ), 4⟩,
    ⟨(348029237/2000000000 : ℚ), (657929487/2500000000 : ℚ), (-13827335267/250000000000 : ℚ), 4⟩,
    ⟨(44663478407/250000000000 : ℚ), (-385012161/2000000000 : ℚ), (12486496889/500000000000 : ℚ), 4⟩,
    ⟨(91602033001/500000000000 : ℚ), (-5058332831/10000000000 : ℚ), (40812712973/500000000000 : ℚ), 3⟩,
    ⟨(23436276977/125000000000 : ℚ), (-1456398891/2000000000 : ℚ), (61410252391/500000000000 : ℚ), 3⟩,
    ⟨(95673824369/500000000000 : ℚ), (-4442776231/5000000000 : ℚ), (76592485513/500000000000 : ℚ), 3⟩,
    ⟨(194628125783/1000000000000 : ℚ), (-5018853423/5000000000 : ℚ), (3508312217/20000000000 : ℚ), 3⟩,
    ⟨(197205580059/1000000000000 : ℚ), (-10838236807/10000000000 : ℚ), (191097588461/1000000000000 : ℚ), 3⟩,
    ⟨(99490480721/500000000000 : ℚ), (-2836399063/2500000000 : ℚ), (6285860947/31250000000 : ℚ), 3⟩,
    ⟨(199886043023/1000000000000 : ℚ), (-11592100177/10000000000 : ℚ), (20606360581/100000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-2324518707/2000000000 : ℚ), (6458540597/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (406529365823/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control593.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control593.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate593

namespace DiagonalRamsey.JointInheritedCertificate594
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(192133646083/1000000000000 : ℚ), (5288335610429/10000000000 : ℚ), (-10193434856309/100000000000 : ℚ), 11⟩,
    ⟨(19324284837/100000000000 : ℚ), (112117906213/2000000000 : ℚ), (-5500869027811/500000000000 : ℚ), 8⟩,
    ⟨(195418626921/1000000000000 : ℚ), (185513042733/10000000000 : ℚ), (-3726184112971/1000000000000 : ℚ), 6⟩,
    ⟨(198577367789/1000000000000 : ℚ), (83524279191/10000000000 : ℚ), (-860261090703/500000000000 : ℚ), 5⟩,
    ⟨(202597682331/1000000000000 : ℚ), (8449447921/2000000000 : ℚ), (-446943164391/500000000000 : ℚ), 5⟩,
    ⟨(51831268029/250000000000 : ℚ), (10870522661/5000000000 : ℚ), (-47419399401/100000000000 : ℚ), 4⟩,
    ⟨(42515573241/200000000000 : ℚ), (10174471589/10000000000 : ℚ), (-231656063703/1000000000000 : ℚ), 4⟩,
    ⟨(109077101333/500000000000 : ℚ), (3056548547/10000000000 : ℚ), (-39260585863/500000000000 : ℚ), 4⟩,
    ⟨(223839786017/1000000000000 : ℚ), (-1609109303/10000000000 : ℚ), (24501166171/1000000000000 : ℚ), 3⟩,
    ⟨(229416122479/1000000000000 : ℚ), (-1202880983/2500000000 : ℚ), (12128690251/125000000000 : ℚ), 3⟩,
    ⟨(234668916567/1000000000000 : ℚ), (-1769911961/2500000000 : ℚ), (9352163533/62500000000 : ℚ), 3⟩,
    ⟨(14962269147/62500000000 : ℚ), (-8711881269/10000000000 : ℚ), (188311319243/1000000000000 : ℚ), 3⟩,
    ⟨(121708310447/500000000000 : ℚ), (-9882389797/10000000000 : ℚ), (43312484817/200000000000 : ℚ), 3⟩,
    ⟨(123287680881/500000000000 : ℚ), (-5347182917/5000000000 : ℚ), (236453301737/1000000000000 : ℚ), 3⟩,
    ⟨(124375570157/500000000000 : ℚ), (-2802091353/2500000000 : ℚ), (49836513667/200000000000 : ℚ), 3⟩,
    ⟨(1249301713/5000000000 : ℚ), (-5728956773/5000000000 : ℚ), (31925484093/125000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-11488775003/10000000000 : ℚ), (32021899193/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (90087632329/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control594.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control594.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate594

namespace DiagonalRamsey.JointInheritedCertificate611
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(96558065911/500000000000 : ℚ), (1046627999317/2000000000 : ℚ), (-405515679467/4000000000 : ℚ), 11⟩,
    ⟨(97103250741/500000000000 : ℚ), (277410444841/5000000000 : ℚ), (-5469481193763/500000000000 : ℚ), 8⟩,
    ⟨(49086334627/250000000000 : ℚ), (45899505913/2500000000 : ℚ), (-1851423189861/500000000000 : ℚ), 6⟩,
    ⟨(199450448593/1000000000000 : ℚ), (82628476723/10000000000 : ℚ), (-53377565533/31250000000 : ℚ), 5⟩,
    ⟨(203402504097/1000000000000 : ℚ), (41749499017/10000000000 : ℚ), (-177193128597/200000000000 : ℚ), 5⟩,
    ⟨(208049629743/1000000000000 : ℚ), (21433202007/10000000000 : ℚ), (-468595811067/1000000000000 : ℚ), 4⟩,
    ⟨(213213239099/1000000000000 : ℚ), (1993861913/2000000000 : ℚ), (-56856547061/250000000000 : ℚ), 4⟩,
    ⟨(109347448777/500000000000 : ℚ), (728005667/2500000000 : ℚ), (-469862559/6250000000 : ℚ), 4⟩,
    ⟨(112141974023/500000000000 : ℚ), (-1715400771/10000000000 : ℚ), (3403684789/125000000000 : ℚ), 4⟩,
    ⟨(229765606501/1000000000000 : ℚ), (-611563821/1250000000 : ℚ), (99311642533/1000000000000 : ℚ), 3⟩,
    ⟨(234929215857/1000000000000 : ℚ), (-3571667101/5000000000 : ℚ), (757922807/5000000000 : ℚ), 3⟩,
    ⟨(239576341503/1000000000000 : ℚ), (-4381776171/5000000000 : ℚ), (47503113787/250000000000 : ℚ), 3⟩,
    ⟨(243528397007/1000000000000 : ℚ), (-9925748453/10000000000 : ℚ), (4361599939/20000000000 : ℚ), 3⟩,
    ⟨(61658376773/250000000000 : ℚ), (-335379813/312500000 : ℚ), (237841308657/1000000000000 : ℚ), 3⟩,
    ⟨(124386172059/500000000000 : ℚ), (-2810682553/2500000000 : ℚ), (62621958091/250000000000 : ℚ), 3⟩,
    ⟨(124931356889/500000000000 : ℚ), (-897707/781250 : ℚ), (256668825389/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-360040977/312500000 : ℚ), (51487031273/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (368994744399/1000000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control611.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control611.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate611

namespace DiagonalRamsey.JointInheritedCertificate632
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(154437499399/1000000000000 : ℚ), (2525182922923/5000000000 : ℚ), (-78242197631609/1000000000000 : ℚ), 11⟩,
    ⟨(15531085717/100000000000 : ℚ), (66890351673/1250000000 : ℚ), (-1687438663063/200000000000 : ℚ), 8⟩,
    ⟨(78512005031/500000000000 : ℚ), (176836578433/10000000000 : ℚ), (-2851957635607/1000000000000 : ℚ), 6⟩,
    ⟨(159511122571/1000000000000 : ℚ), (39688919923/5000000000 : ℚ), (-1312131614267/1000000000000 : ℚ), 6⟩,
    ⟨(81338308179/500000000000 : ℚ), (249442593/62500000 : ℚ), (-677342639001/1000000000000 : ℚ), 5⟩,
    ⟨(16639884327/100000000000 : ℚ), (5071602897/2500000000 : ℚ), (-70980548851/200000000000 : ℚ), 4⟩,
    ⟨(170534760217/1000000000000 : ℚ), (920342909/1000000000 : ℚ), (-168420081931/1000000000000 : ℚ), 4⟩,
    ⟨(174925426229/1000000000000 : ℚ), (474382843/2000000000 : ℚ), (-50540467761/1000000000000 : ℚ), 4⟩,
    ⟨(179402110473/1000000000000 : ℚ), (-105754567/500000000 : ℚ), (14443637863/500000000000 : ℚ), 4⟩,
    ⟨(36758555297/200000000000 : ℚ), (-5202118779/10000000000 : ℚ), (10613909081/125000000000 : ℚ), 4⟩,
    ⟨(23491086679/125000000000 : ℚ), (-3697039831/5000000000 : ℚ), (7852023207/62500000000 : ℚ), 3⟩,
    ⟨(38330184069/200000000000 : ℚ), (-897554763/1000000000 : ℚ), (9727347997/62500000000 : ℚ), 3⟩,
    ⟨(194816414131/1000000000000 : ℚ), (-5056183733/5000000000 : ℚ), (17760044181/100000000000 : ℚ), 3⟩,
    ⟨(2466294083/12500000000 : ℚ), (-5451294991/5000000000 : ℚ), (24136484827/125000000000 : ℚ), 3⟩,
    ⟨(49754169883/250000000000 : ℚ), (-5701800049/5000000000 : ℚ), (203019438121/1000000000000 : ℚ), 3⟩,
    ⟨(199890037303/1000000000000 : ℚ), (-5823539391/5000000000 : ℚ), (207875646681/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-291930021/250000000 : ℚ), (104238961059/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (13292214657/31250000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control632.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control632.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate632

namespace DiagonalRamsey.JointInheritedCertificate633
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23440647607/100000000000 : ℚ), (5326268591671/10000000000 : ℚ), (-62612999002537/500000000000 : ℚ), 11⟩,
    ⟨(7364493607/31250000000 : ℚ), (56526226289/1000000000 : ℚ), (-6757265087863/500000000000 : ℚ), 8⟩,
    ⟨(47626023211/200000000000 : ℚ), (187333500589/10000000000 : ℚ), (-4576738799673/1000000000000 : ℚ), 6⟩,
    ⟨(60427664661/250000000000 : ℚ), (84485653477/10000000000 : ℚ), (-2113203305709/1000000000000 : ℚ), 5⟩,
    ⟨(246267824947/1000000000000 : ℚ), (42824749707/10000000000 : ℚ), (-1098242529021/1000000000000 : ℚ), 5⟩,
    ⟨(251626485619/1000000000000 : ℚ), (1382078413/625000000 : ℚ), (-583328430021/1000000000000 : ℚ), 4⟩,
    ⟨(4024698599/15625000000 : ℚ), (2085398531/2000000000 : ℚ), (-143070047423/500000000000 : ℚ), 4⟩,
    ⟨(13195084079/50000000000 : ℚ), (647353331/2000000000 : ℚ), (-19769162031/200000000000 : ℚ), 4⟩,
    ⟨(67586621993/250000000000 : ℚ), (-1472732199/10000000000 : ℚ), (26856102541/1000000000000 : ℚ), 4⟩,
    ⟨(17291716201/62500000000 : ℚ), (-1175304597/2500000000 : ℚ), (23020628173/200000000000 : ℚ), 3⟩,
    ⟨(282621683933/1000000000000 : ℚ), (-6984249951/10000000000 : ℚ), (35783628339/200000000000 : ℚ), 3⟩,
    ⟨(57596068921/200000000000 : ℚ), (-215612909/250000000 : ℚ), (4514013851/20000000000 : ℚ), 3⟩,
    ⟨(73134377727/250000000000 : ℚ), (-4899503821/5000000000 : ℚ), (64946193543/250000000000 : ℚ), 3⟩,
    ⟨(296118053497/1000000000000 : ℚ), (-10612742773/10000000000 : ℚ), (283732723833/1000000000000 : ℚ), 3⟩,
    ⟨(18661523383/62500000000 : ℚ), (-556370119/500000000 : ℚ), (74758871359/250000000000 : ℚ), 3⟩,
    ⟨(149920846741/500000000000 : ℚ), (-2844285403/2500000000 : ℚ), (153253962059/500000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-11408020817/10000000000 : ℚ), (307434055677/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (41528730399/125000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control633.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control633.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate633

namespace DiagonalRamsey.JointInheritedCertificate643
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155323686439/1000000000000 : ℚ), (312619122241/625000000 : ℚ), (-77930015380511/1000000000000 : ℚ), 11⟩,
    ⟨(15618005747/100000000000 : ℚ), (6626230231/125000000 : ℚ), (-840163011703/100000000000 : ℚ), 8⟩,
    ⟨(78929944837/500000000000 : ℚ), (175186765941/10000000000 : ℚ), (-709636993621/250000000000 : ℚ), 6⟩,
    ⟨(160298628041/1000000000000 : ℚ), (78615599421/10000000000 : ℚ), (-326213860007/250000000000 : ℚ), 6⟩,
    ⟨(163402553223/1000000000000 : ℚ), (39492811097/10000000000 : ℚ), (-168155745433/250000000000 : ℚ), 5⟩,
    ⟨(41763095779/250000000000 : ℚ), (5007849777/2500000000 : ℚ), (-87877441527/250000000000 : ℚ), 5⟩,
    ⟨(34221571361/200000000000 : ℚ), (4517971251/5000000000 : ℚ), (-165820886993/1000000000000 : ℚ), 4⟩,
    ⟨(175413124709/1000000000000 : ℚ), (451169761/2000000000 : ℚ), (-48466521487/1000000000000 : ℚ), 4⟩,
    ⟨(179802737799/1000000000000 : ℚ), (-2198814493/10000000000 : ℚ), (30587884741/1000000000000 : ℚ), 4⟩,
    ⟨(184108005703/1000000000000 : ℚ), (-1316107247/2500000000 : ℚ), (86333718143/1000000000000 : ℚ), 4⟩,
    ⟨(5880108731/31250000000 : ℚ), (-93021363/125000000 : ℚ), (126842341813/1000000000000 : ℚ), 3⟩,
    ⟨(38362661857/200000000000 : ℚ), (-4506468087/5000000000 : ℚ), (15668463477/100000000000 : ℚ), 3⟩,
    ⟨(194917234467/1000000000000 : ℚ), (-10142636257/10000000000 : ℚ), (89262457417/500000000000 : ℚ), 3⟩,
    ⟨(98677986417/500000000000 : ℚ), (-2732016427/2500000000 : ℚ), (3878568861/20000000000 : ℚ), 3⟩,
    ⟨(99517902519/500000000000 : ℚ), (-2856529899/2500000000 : ℚ), (101899608447/500000000000 : ℚ), 3⟩,
    ⟨(199892176069/1000000000000 : ℚ), (-5834094301/5000000000 : ℚ), (208627567849/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11698137591/10000000000 : ℚ), (209226386067/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (434790950037/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control643.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control643.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate643

namespace DiagonalRamsey.JointInheritedCertificate644
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39042391101/200000000000 : ℚ), (2563473117163/5000000000 : ℚ), (-100384610475869/1000000000000 : ℚ), 11⟩,
    ⟨(49065537923/250000000000 : ℚ), (135938149223/2500000000 : ℚ), (-541321252777/50000000000 : ℚ), 8⟩,
    ⟨(39664437123/200000000000 : ℚ), (3598774929/200000000 : ℚ), (-3660905314769/1000000000000 : ℚ), 6⟩,
    ⟨(201312891327/1000000000000 : ℚ), (80925529179/10000000000 : ℚ), (-842829486033/500000000000 : ℚ), 6⟩,
    ⟨(51279834421/250000000000 : ℚ), (8161791399/2000000000 : ℚ), (-871648064029/1000000000000 : ℚ), 5⟩,
    ⟨(209595245087/1000000000000 : ℚ), (20855462759/10000000000 : ℚ), (-91690945073/200000000000 : ℚ), 5⟩,
    ⟨(53642151731/250000000000 : ℚ), (4793622469/5000000000 : ℚ), (-219756050757/1000000000000 : ℚ), 4⟩,
    ⟨(21984829969/100000000000 : ℚ), (1322623101/5000000000 : ℚ), (-34559158099/500000000000 : ℚ), 4⟩,
    ⟨(225231427753/1000000000000 : ℚ), (-1909604871/10000000000 : ℚ), (32164774419/1000000000000 : ℚ), 4⟩,
    ⟨(115255560259/500000000000 : ℚ), (-5038728011/10000000000 : ℚ), (103424847233/1000000000000 : ℚ), 4⟩,
    ⟨(58871120589/250000000000 : ℚ), (-907093631/1250000000 : ℚ), (38770288173/250000000000 : ℚ), 3⟩,
    ⟨(239960389759/1000000000000 : ℚ), (-8854174709/10000000000 : ℚ), (38608791847/200000000000 : ℚ), 3⟩,
    ⟨(60941709029/250000000000 : ℚ), (-10000589769/10000000000 : ℚ), (27595785449/125000000000 : ℚ), 3⟩,
    ⟨(246757541827/1000000000000 : ℚ), (-10796410511/10000000000 : ℚ), (48056543939/200000000000 : ℚ), 3⟩,
    ⟨(248817575751/1000000000000 : ℚ), (-11300476869/10000000000 : ℚ), (252772291097/1000000000000 : ℚ), 3⟩,
    ⟨(124933885969/500000000000 : ℚ), (-2886324391/2500000000 : ℚ), (1035506591/4000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2315115811/2000000000 : ℚ), (129816742357/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (1545436073/4000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control644.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control644.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate644

namespace DiagonalRamsey.JointInheritedCertificate645
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117758858017/500000000000 : ℚ), (1323961844753/625000000 : ℚ), (-499383844510641/1000000000000 : ℚ), 13⟩,
    ⟨(117914014369/500000000000 : ℚ), (1161634872907/5000000000 : ℚ), (-55086869567591/1000000000000 : ℚ), 10⟩,
    ⟨(47289133133/200000000000 : ℚ), (204348758439/2500000000 : ℚ), (-9771448647257/500000000000 : ℚ), 8⟩,
    ⟨(118682339317/500000000000 : ℚ), (201923229647/5000000000 : ℚ), (-9749899045941/1000000000000 : ℚ), 7⟩,
    ⟨(29822027131/125000000000 : ℚ), (234412164003/10000000000 : ℚ), (-5719555387037/1000000000000 : ℚ), 7⟩,
    ⟨(240068613129/1000000000000 : ℚ), (37279180713/2500000000 : ℚ), (-3679080428837/1000000000000 : ℚ), 6⟩,
    ⟨(241827494287/1000000000000 : ℚ), (100377054287/10000000000 : ℚ), (-100206965617/40000000000 : ℚ), 6⟩,
    ⟨(1904968137/7812500000 : ℚ), (35010645271/5000000000 : ℚ), (-44208053459/25000000000 : ℚ), 5⟩,
    ⟨(123037276311/500000000000 : ℚ), (24948365547/5000000000 : ℚ), (-63777058923/50000000000 : ℚ), 5⟩,
    ⟨(49704365661/200000000000 : ℚ), (35906651971/10000000000 : ℚ), (-929689606509/1000000000000 : ℚ), 5⟩,
    ⟨(251154179983/1000000000000 : ℚ), (25811121023/10000000000 : ℚ), (-677547839453/1000000000000 : ℚ), 5⟩,
    ⟨(253946256669/1000000000000 : ℚ), (9151330627/5000000000 : ℚ), (-12199498941/25000000000 : ℚ), 4⟩,
    ⟨(128435584569/500000000000 : ℚ), (12577227017/10000000000 : ℚ), (-68357851213/200000000000 : ℚ), 4⟩,
    ⟨(51980149777/200000000000 : ℚ), (4059447873/5000000000 : ℚ), (-226622632637/1000000000000 : ℚ), 4⟩,
    ⟨(263005819401/1000000000000 : ℚ), (4584758153/10000000000 : ℚ), (-134243705209/1000000000000 : ℚ), 4⟩,
    ⟨(266156477159/1000000000000 : ℚ), (1740070369/10000000000 : ℚ), (-11799004477/200000000000 : ℚ), 4⟩,
    ⟨(269322379603/1000000000000 : ℚ), (-36245283/625000000 : ℚ), (1554142609/500000000000 : ℚ), 4⟩,
    ⟨(272473037361/1000000000000 : ℚ), (-2493336037/10000000000 : ℚ), (5493323171/100000000000 : ℚ), 4⟩,
    ⟨(275578107877/1000000000000 : ℚ), (-4086366557/10000000000 : ℚ), (98579769833/1000000000000 : ℚ), 4⟩,
    ⟨(34825960953/125000000000 : ℚ), (-2711444871/5000000000 : ℚ), (135609072861/1000000000000 : ℚ), 3⟩,
    ⟨(140766300047/500000000000 : ℚ), (-655083321/1000000000 : ℚ), (20899490189/125000000000 : ℚ), 3⟩,
    ⟨(14216233839/50000000000 : ℚ), (-7506528359/10000000000 : ℚ), (1942327867/10000000000 : ℚ), 3⟩,
    ⟨(286957028457/1000000000000 : ℚ), (-1663547059/2000000000 : ℚ), (43480484823/200000000000 : ℚ), 3⟩,
    ⟨(14470215207/50000000000 : ℚ), (-9005785209/10000000000 : ℚ), (59307373551/250000000000 : ℚ), 3⟩,
    ⟨(291642935227/1000000000000 : ℚ), (-1917424589/2000000000 : ℚ), (50823586317/200000000000 : ℚ), 3⟩,
    ⟨(11746054499/40000000000 : ℚ), (-10074433987/10000000000 : ℚ), (26837844143/100000000000 : ℚ), 3⟩,
    ⟨(147705121817/500000000000 : ℚ), (-2095495597/2000000000 : ℚ), (56049804269/200000000000 : ℚ), 3⟩,
    ⟨(59380527943/200000000000 : ℚ), (-108037107/100000000 : ℚ), (289910441711/1000000000000 : ℚ), 3⟩,
    ⟨(18632136133/62500000000 : ℚ), (-2764687459/2500000000 : ℚ), (297497985133/1000000000000 : ℚ), 3⟩,
    ⟨(299033191097/1000000000000 : ℚ), (-1124672241/1000000000 : ℚ), (303110316347/1000000000000 : ℚ), 3⟩,
    ⟨(11986033121/40000000000 : ℚ), (-5685259587/5000000000 : ℚ), (76704015823/250000000000 : ℚ), 3⟩,
    ⟨(299961140729/1000000000000 : ℚ), (-11431973127/10000000000 : ℚ), (30865848833/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2287926861/2000000000 : ℚ), (308888308779/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (340192919427/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control645.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control645.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate645

namespace DiagonalRamsey.JointInheritedCertificate658
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39058363013/250000000000 : ℚ), (9673433471/19531250 : ℚ), (-15522149528271/200000000000 : ℚ), 11⟩,
    ⟨(157072384381/1000000000000 : ℚ), (131251002883/2500000000 : ℚ), (-8365289222603/1000000000000 : ℚ), 8⟩,
    ⟨(7935900467/50000000000 : ℚ), (86756575677/5000000000 : ℚ), (-2824865631313/1000000000000 : ℚ), 7⟩,
    ⟨(80553543243/500000000000 : ℚ), (15568448327/2000000000 : ℚ), (-32436154203/25000000000 : ℚ), 6⟩,
    ⟨(82073902461/500000000000 : ℚ), (7813772463/2000000000 : ℚ), (-166957021769/250000000000 : ℚ), 5⟩,
    ⟨(33544662309/200000000000 : ℚ), (1235813451/625000000 : ℚ), (-87017797871/250000000000 : ℚ), 5⟩,
    ⟨(4292405041/25000000000 : ℚ), (1773305171/2000000000 : ℚ), (-163193423377/1000000000000 : ℚ), 4⟩,
    ⟨(17591379927/100000000000 : ℚ), (2138725923/10000000000 : ℚ), (-5796924151/125000000000 : ℚ), 4⟩,
    ⟨(90107012261/500000000000 : ℚ), (-1141518327/5000000000 : ℚ), (3229810629/100000000000 : ℚ), 4⟩,
    ⟨(184431622151/1000000000000 : ℚ), (-5326865481/10000000000 : ℚ), (17552071751/200000000000 : ℚ), 4⟩,
    ⟨(188404512247/1000000000000 : ℚ), (-7489208137/10000000000 : ℚ), (25610501183/200000000000 : ℚ), 4⟩,
    ⟨(19198001887/100000000000 : ℚ), (-9050014601/10000000000 : ℚ), (19716112011/125000000000 : ℚ), 3⟩,
    ⟨(97510368653/500000000000 : ℚ), (-5086234449/5000000000 : ℚ), (179444350773/1000000000000 : ℚ), 3⟩,
    ⟨(49352453613/250000000000 : ℚ), (-2738254881/2500000000 : ℚ), (97379186951/500000000000 : ℚ), 3⟩,
    ⟨(199055439411/1000000000000 : ℚ), (-11448063709/10000000000 : ℚ), (102285664073/500000000000 : ℚ), 3⟩,
    ⟨(9994718587/50000000000 : ℚ), (-2922174333/2500000000 : ℚ), (209371312591/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-2343694017/2000000000 : ℚ), (104983305151/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (444259493291/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control658.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control658.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate658

namespace DiagonalRamsey.JointInheritedCertificate659
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236916555159/1000000000000 : ℚ), (5212259628509/10000000000 : ℚ), (-6191983225451/50000000000 : ℚ), 11⟩,
    ⟨(4762515209/20000000000 : ℚ), (553341390913/10000000000 : ℚ), (-1669784614471/125000000000 : ℚ), 8⟩,
    ⟨(240497701949/1000000000000 : ℚ), (36675623853/2000000000 : ℚ), (-4518953374373/1000000000000 : ℚ), 7⟩,
    ⟨(9757649091/40000000000 : ℚ), (10329909037/1250000000 : ℚ), (-416524607301/200000000000 : ℚ), 6⟩,
    ⟨(124162001841/500000000000 : ℚ), (8360587597/2000000000 : ℚ), (-539469936531/500000000000 : ℚ), 5⟩,
    ⟨(253477603529/1000000000000 : ℚ), (21485081407/10000000000 : ℚ), (-569816036919/1000000000000 : ℚ), 5⟩,
    ⟨(129601988433/500000000000 : ℚ), (5005829557/5000000000 : ℚ), (-276033678639/1000000000000 : ℚ), 4⟩,
    ⟨(2122264499/8000000000 : ℚ), (117879851/400000000 : ℚ), (-18188316741/200000000000 : ℚ), 4⟩,
    ⟨(27148124421/100000000000 : ℚ), (-841739789/5000000000 : ℚ), (33237584461/1000000000000 : ℚ), 4⟩,
    ⟨(6939008243/25000000000 : ℚ), (-151868741/312500000 : ℚ), (60191441721/500000000000 : ℚ), 4⟩,
    ⟨(17705418941/62500000000 : ℚ), (-7107266873/10000000000 : ℚ), (183380002053/1000000000000 : ℚ), 3⟩,
    ⟨(36055037863/125000000000 : ℚ), (-4361449719/5000000000 : ℚ), (114775711489/500000000000 : ℚ), 3⟩,
    ⟨(29282307931/100000000000 : ℚ), (-9880387593/10000000000 : ℚ), (263185486383/1000000000000 : ℚ), 3⟩,
    ⟨(296266604637/1000000000000 : ℚ), (-2670687181/2500000000 : ℚ), (286816225649/1000000000000 : ℚ), 3⟩,
    ⟨(37329818267/125000000000 : ℚ), (-2238085453/2000000000 : ℚ), (18869786877/62500000000 : ℚ), 3⟩,
    ⟨(149923875713/500000000000 : ℚ), (-11436847643/10000000000 : ℚ), (77322617791/250000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2293463971/2000000000 : ℚ), (310204405403/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (69637061251/200000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control659.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control659.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate659

namespace DiagonalRamsey.JointInheritedCertificate687
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7855454903/50000000000 : ℚ), (4894376290799/10000000000 : ℚ), (-77119139871461/1000000000000 : ℚ), 11⟩,
    ⟨(19741405713/125000000000 : ℚ), (259440143167/5000000000 : ℚ), (-8309772717227/1000000000000 : ℚ), 8⟩,
    ⟨(79771973159/500000000000 : ℚ), (85736378823/5000000000 : ℚ), (-2804259748411/1000000000000 : ℚ), 7⟩,
    ⟨(161885224723/1000000000000 : ℚ), (7688438249/1000000000 : ℚ), (-257297470797/200000000000 : ℚ), 6⟩,
    ⟨(82432553451/500000000000 : ℚ), (38535144767/10000000000 : ℚ), (-660870167461/1000000000000 : ℚ), 5⟩,
    ⟨(33673815531/200000000000 : ℚ), (4860602399/2500000000 : ℚ), (-343169122763/1000000000000 : ℚ), 5⟩,
    ⟨(3445249627/20000000000 : ℚ), (8646206129/10000000000 : ℚ), (-79751068259/500000000000 : ℚ), 4⟩,
    ⟨(176395696667/1000000000000 : ℚ), (1983810127/10000000000 : ℚ), (-8693644783/200000000000 : ℚ), 4⟩,
    ⟨(180609886459/1000000000000 : ℚ), (-2396542487/10000000000 : ℚ), (4332752989/125000000000 : ℚ), 4⟩,
    ⟨(11546443861/62500000000 : ℚ), (-5412859451/10000000000 : ℚ), (17946071203/200000000000 : ℚ), 4⟩,
    ⟨(188636505471/1000000000000 : ℚ), (-302253023/400000000 : ℚ), (129729386697/1000000000000 : ℚ), 4⟩,
    ⟨(3002194941/15625000000 : ℚ), (-91039781/100000000 : ℚ), (31837246869/200000000000 : ℚ), 4⟩,
    ⟨(195120358403/1000000000000 : ℚ), (-5108651983/5000000000 : ℚ), (22592456659/125000000000 : ℚ), 3⟩,
    ⟨(24682704601/125000000000 : ℚ), (-5495860199/5000000000 : ℚ), (195939225611/1000000000000 : ℚ), 3⟩,
    ⟨(99537168711/500000000000 : ℚ), (-11482986389/10000000000 : ℚ), (25709879267/125000000000 : ℚ), 3⟩,
    ⟨(99948242533/500000000000 : ℚ), (-2930454959/2500000000 : ℚ), (105221681057/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-5875685821/5000000000 : ℚ), (211034245177/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (226892645511/500000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control687.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control687.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate687

namespace DiagonalRamsey.JointInheritedCertificate688
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(238251205147/1000000000000 : ℚ), (5157005686729/10000000000 : ℚ), (-24641563898903/200000000000 : ℚ), 11⟩,
    ⟨(47886965481/200000000000 : ℚ), (17111807043/312500000 : ℚ), (-13287018845637/1000000000000 : ℚ), 8⟩,
    ⟨(12087829299/50000000000 : ℚ), (22684124209/1250000000 : ℚ), (-1123143561469/250000000000 : ℚ), 7⟩,
    ⟨(122563628497/500000000000 : ℚ), (16350877611/2000000000 : ℚ), (-413729641949/200000000000 : ℚ), 6⟩,
    ⟨(249417307449/1000000000000 : ℚ), (1291132229/312500000 : ℚ), (-214022471321/200000000000 : ℚ), 5⟩,
    ⟨(254461873111/1000000000000 : ℚ), (10594024771/5000000000 : ℚ), (-563636459331/1000000000000 : ℚ), 5⟩,
    ⟨(260067094153/1000000000000 : ℚ), (2454235639/2500000000 : ℚ), (-271416492771/1000000000000 : ℚ), 4⟩,
    ⟨(16626097817/62500000000 : ℚ), (1406250137/5000000000 : ℚ), (-17467771027/200000000000 : ℚ), 4⟩,
    ⟨(272084612609/1000000000000 : ℚ), (-1780151741/10000000000 : ℚ), (36135241379/1000000000000 : ℚ), 4⟩,
    ⟨(34754385441/125000000000 : ℚ), (-4931539753/10000000000 : ℚ), (30691876883/250000000000 : ℚ), 4⟩,
    ⟨(283640304569/1000000000000 : ℚ), (-44762649/62500000 : ℚ), (185381567223/1000000000000 : ℚ), 4⟩,
    ⟨(36085608779/125000000000 : ℚ), (-8765896327/10000000000 : ℚ), (57816295829/250000000000 : ℚ), 3⟩,
    ⟨(292974920687/1000000000000 : ℚ), (-1983053251/2000000000 : ℚ), (26468627097/100000000000 : ℚ), 3⟩,
    ⟨(2963455917/10000000000 : ℚ), (-10712195021/10000000000 : ℚ), (144083135997/500000000000 : ℚ), 3⟩,
    ⟨(74666837569/250000000000 : ℚ), (-5608269069/5000000000 : ℚ), (303170161541/1000000000000 : ℚ), 3⟩,
    ⟨(149925486267/500000000000 : ℚ), (-5730686213/5000000000 : ℚ), (310496974503/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5745825057/5000000000 : ℚ), (311405079367/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (356209467109/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control688.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control688.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate688

namespace DiagonalRamsey.JointInheritedCertificate703
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79035598293/500000000000 : ℚ), (4844034604983/10000000000 : ℚ), (-15357416833989/200000000000 : ℚ), 11⟩,
    ⟨(19859362799/125000000000 : ℚ), (513653011419/10000000000 : ℚ), (-4136017331957/500000000000 : ℚ), 8⟩,
    ⟨(160451428041/1000000000000 : ℚ), (42438564093/2500000000 : ℚ), (-2790092216687/1000000000000 : ℚ), 7⟩,
    ⟨(162740188537/1000000000000 : ℚ), (76090280317/10000000000 : ℚ), (-319711240493/250000000000 : ℚ), 6⟩,
    ⟨(2588331689/15625000000 : ℚ), (38100287719/10000000000 : ℚ), (-327973323937/500000000000 : ℚ), 5⟩,
    ⟨(169078600243/1000000000000 : ℚ), (9589002593/5000000000 : ℚ), (-339655478857/1000000000000 : ℚ), 5⟩,
    ⟨(86442334923/500000000000 : ℚ), (8473502107/10000000000 : ℚ), (-78415476637/500000000000 : ℚ), 4⟩,
    ⟨(88462585893/500000000000 : ℚ), (1865052227/10000000000 : ℚ), (-10338372871/250000000000 : ℚ), 4⟩,
    ⟨(181044831839/1000000000000 : ℚ), (-99253711/400000000 : ℚ), (7276409409/200000000000 : ℚ), 4⟩,
    ⟨(185085333779/1000000000000 : ℚ), (-2737584069/5000000000 : ℚ), (45578423177/500000000000 : ℚ), 4⟩,
    ⟨(188891403383/1000000000000 : ℚ), (-7603209721/10000000000 : ℚ), (8183248681/62500000000 : ℚ), 4⟩,
    ⟨(192316775529/1000000000000 : ℚ), (-4570049367/5000000000 : ℚ), (80108650359/500000000000 : ℚ), 4⟩,
    ⟨(195229815089/1000000000000 : ℚ), (-5122968673/5000000000 : ℚ), (90820832201/500000000000 : ℚ), 4⟩,
    ⟨(6172455487/31250000000 : ℚ), (-11015309827/10000000000 : ℚ), (4918716909/25000000000 : ℚ), 4⟩,
    ⟨(199095101233/1000000000000 : ℚ), (-11503462729/10000000000 : ℚ), (103214335969/500000000000 : ℚ), 3⟩,
    ⟨(156170943/781250000 : ℚ), (-11740810957/10000000000 : ℚ), (211163647517/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-5885090191/5000000000 : ℚ), (5293772183/25000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (92662114561/200000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control703.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control703.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate703

namespace DiagonalRamsey.JointInheritedCertificate704
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(239570192239/1000000000000 : ℚ), (5095321649061/10000000000 : ℚ), (-244797698171/2000000000 : ℚ), 11⟩,
    ⟨(48145706339/200000000000 : ℚ), (67637986769/1250000000 : ℚ), (-13196066248721/1000000000000 : ℚ), 8⟩,
    ⟨(243000696273/1000000000000 : ℚ), (179314942023/10000000000 : ℚ), (-4459094074419/1000000000000 : ℚ), 7⟩,
    ⟨(123149683981/500000000000 : ℚ), (40371218481/5000000000 : ℚ), (-1025520311313/500000000000 : ℚ), 6⟩,
    ⟨(250497780657/1000000000000 : ℚ), (40754067533/10000000000 : ℚ), (-1059077617019/1000000000000 : ℚ), 5⟩,
    ⟨(51086918343/200000000000 : ℚ), (20841497953/10000000000 : ℚ), (-138992285661/250000000000 : ℚ), 5⟩,
    ⟨(52184016451/200000000000 : ℚ), (4793720111/5000000000 : ℚ), (-265722893247/1000000000000 : ℚ), 4⟩,
    ⟨(16671465497/62500000000 : ℚ), (1326142873/5000000000 : ℚ), (-41457480647/500000000000 : ℚ), 4⟩,
    ⟨(272680900127/1000000000000 : ℚ), (-948325709/5000000000 : ℚ), (1984329989/50000000000 : ℚ), 4⟩,
    ⟨(278504265823/1000000000000 : ℚ), (-2509568897/5000000000 : ℚ), (125691804519/1000000000000 : ℚ), 4⟩,
    ⟨(283989756363/1000000000000 : ℚ), (-7229903647/10000000000 : ℚ), (187843415857/1000000000000 : ℚ), 4⟩,
    ⟨(288926567421/1000000000000 : ℚ), (-1102514329/1250000000 : ℚ), (233383506849/1000000000000 : ℚ), 4⟩,
    ⟨(73281245029/250000000000 : ℚ), (-9960054087/10000000000 : ℚ), (133276423207/500000000000 : ℚ), 4⟩,
    ⟨(59284730361/200000000000 : ℚ), (-1075067387/1000000000 : ℚ), (18116002379/62500000000 : ℚ), 3⟩,
    ⟨(298695816383/1000000000000 : ℚ), (-11251144131/10000000000 : ℚ), (9523356057/31250000000 : ℚ), 3⟩,
    ⟨(299854155839/1000000000000 : ℚ), (-2873534243/2500000000 : ℚ), (31201948681/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-11524188827/10000000000 : ℚ), (312920823149/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (182148784023/500000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control704.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control704.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate704

namespace DiagonalRamsey.JointInheritedCertificate718
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9986836847/50000000000 : ℚ), (2451371285841/5000000000 : ℚ), (-4909466554373/50000000000 : ℚ), 11⟩,
    ⟨(25087525069/125000000000 : ℚ), (130082300621/2500000000 : ℚ), (-211571164439/20000000000 : ℚ), 8⟩,
    ⟨(202590102409/1000000000000 : ℚ), (86087608943/5000000000 : ℚ), (-892236259923/250000000000 : ℚ), 7⟩,
    ⟨(102666907321/500000000000 : ℚ), (38652984017/5000000000 : ℚ), (-818396606379/500000000000 : ℚ), 6⟩,
    ⟨(20882589793/100000000000 : ℚ), (19404370781/5000000000 : ℚ), (-840667669461/1000000000000 : ℚ), 5⟩,
    ⟨(21293215347/100000000000 : ℚ), (3925615773/2000000000 : ℚ), (-436677749897/1000000000000 : ℚ), 5⟩,
    ⟨(54373695041/250000000000 : ℚ), (2194451719/2500000000 : ℚ), (-12713239621/62500000000 : ℚ), 5⟩,
    ⟨(222338438827/1000000000000 : ℚ), (2082586099/10000000000 : ℚ), (-56303659429/1000000000000 : ℚ), 4⟩,
    ⟨(227276990373/1000000000000 : ℚ), (-231669591/1000000000 : ℚ), (8504901227/200000000000 : ℚ), 4⟩,
    ⟨(232120649037/1000000000000 : ℚ), (-534286969/1000000000 : ℚ), (111996778751/1000000000000 : ℚ), 4⟩,
    ⟨(236683275731/1000000000000 : ℚ), (-1872622229/2500000000 : ℚ), (40579243143/250000000000 : ℚ), 4⟩,
    ⟨(240789531271/1000000000000 : ℚ), (-9038984271/10000000000 : ℚ), (49818737567/250000000000 : ℚ), 4⟩,
    ⟨(122140807279/500000000000 : ℚ), (-1015151081/1000000000 : ℚ), (113126503173/500000000000 : ℚ), 4⟩,
    ⟨(30878165849/125000000000 : ℚ), (-10924592519/10000000000 : ℚ), (245242227633/1000000000000 : ℚ), 4⟩,
    ⟨(248915228649/1000000000000 : ℚ), (-11414668057/10000000000 : ℚ), (25739414521/100000000000 : ℚ), 4⟩,
    ⟨(12493934613/50000000000 : ℚ), (-2330565381/2000000000 : ℚ), (131666847267/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-11682290947/10000000000 : ℚ), (8252191149/31250000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (52688709291/125000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control718.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control718.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate718

namespace DiagonalRamsey.JointInheritedCertificate719
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(240940597649/1000000000000 : ℚ), (1006806126249/2000000000 : ℚ), (-121608947927679/1000000000000 : ℚ), 11⟩,
    ⟨(242072668701/1000000000000 : ℚ), (534675744851/10000000000 : ℚ), (-13107270851881/1000000000000 : ℚ), 8⟩,
    ⟨(244293305949/1000000000000 : ℚ), (17717486937/1000000000 : ℚ), (-1106604692621/250000000000 : ℚ), 7⟩,
    ⟨(247517171549/1000000000000 : ℚ), (79740771389/10000000000 : ℚ), (-1016932964821/500000000000 : ℚ), 6⟩,
    ⟨(50324074831/200000000000 : ℚ), (1607959613/400000000 : ℚ), (-262080827639/250000000000 : ℚ), 5⟩,
    ⟨(25644522999/100000000000 : ℚ), (1025019257/500000000 : ℚ), (-137126419451/250000000000 : ℚ), 5⟩,
    ⟨(261806322551/1000000000000 : ℚ), (1872481449/2000000000 : ℚ), (-260189677247/1000000000000 : ℚ), 4⟩,
    ⟨(133748814029/500000000000 : ℚ), (623979703/2500000000 : ℚ), (-7862475871/100000000000 : ℚ), 4⟩,
    ⟨(4270319263/15625000000 : ℚ), (-2009724413/10000000000 : ℚ), (43121505383/1000000000000 : ℚ), 4⟩,
    ⟨(278991738339/1000000000000 : ℚ), (-637950319/1250000000 : ℚ), (64255555291/500000000000 : ℚ), 4⟩,
    ⟨(2843528309/10000000000 : ℚ), (-7294856713/10000000000 : ℚ), (23775997609/125000000000 : ℚ), 4⟩,
    ⟨(57835537347/200000000000 : ℚ), (-4435775377/5000000000 : ℚ), (7356553277/31250000000 : ℚ), 4⟩,
    ⟨(293280889341/1000000000000 : ℚ), (-10002158851/10000000000 : ℚ), (13416533913/50000000000 : ℚ), 4⟩,
    ⟨(296504754941/1000000000000 : ℚ), (-215730697/200000000 : ℚ), (291459188571/1000000000000 : ℚ), 4⟩,
    ⟨(298725392189/1000000000000 : ℚ), (-35259911/31250000 : ℚ), (30623924117/100000000000 : ℚ), 4⟩,
    ⟨(299857463241/1000000000000 : ℚ), (-180067833/156250000 : ℚ), (313457173879/1000000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11554169577/10000000000 : ℚ), (19646988069/62500000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (372420403601/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control719.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control719.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate719

namespace DiagonalRamsey.JointInheritedCertificate732
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31992337823/200000000000 : ℚ), (4723491301521/10000000000 : ℚ), (-15151902017369/200000000000 : ℚ), 12⟩,
    ⟨(160729157307/1000000000000 : ℚ), (501005224699/10000000000 : ℚ), (-254879292097/31250000000 : ℚ), 8⟩,
    ⟨(81117300159/500000000000 : ℚ), (165536897519/10000000000 : ℚ), (-85849289463/31250000000 : ℚ), 7⟩,
    ⟨(164420164817/1000000000000 : ℚ), (74110415033/10000000000 : ℚ), (-251219378403/200000000000 : ℚ), 6⟩,
    ⟨(41800465197/250000000000 : ℚ), (36998262287/10000000000 : ℚ), (-64156125931/100000000000 : ℚ), 5⟩,
    ⟨(170472789213/1000000000000 : ℚ), (4624234509/2500000000 : ℚ), (-13182639917/40000000000 : ℚ), 5⟩,
    ⟨(174107250147/1000000000000 : ℚ), (2005321943/2500000000 : ℚ), (-149270261121/1000000000000 : ℚ), 5⟩,
    ⟨(11122848331/62500000000 : ℚ), (1548686429/10000000000 : ℚ), (-17714680281/500000000000 : ℚ), 4⟩,
    ⟨(181899485463/1000000000000 : ℚ), (-677909647/2500000000 : ℚ), (20586585821/500000000000 : ℚ), 4⟩,
    ⟨(46439452153/250000000000 : ℚ), (-2824125817/5000000000 : ℚ), (95126913439/1000000000000 : ℚ), 4⟩,
    ⟨(94696134773/500000000000 : ℚ), (-7737019031/10000000000 : ℚ), (134291299139/1000000000000 : ℚ), 4⟩,
    ⟨(192663197971/1000000000000 : ℚ), (-369860957/400000000 : ℚ), (163119166501/1000000000000 : ℚ), 4⟩,
    ⟨(97722446971/500000000000 : ℚ), (-2066669039/2000000000 : ℚ), (184205788863/1000000000000 : ℚ), 4⟩,
    ⟨(197630458441/1000000000000 : ℚ), (-43320033/39062500 : ℚ), (99537059853/500000000000 : ℚ), 4⟩,
    ⟨(49783975363/250000000000 : ℚ), (-11570198709/10000000000 : ℚ), (208601490887/1000000000000 : ℚ), 4⟩,
    ⟨(49975842411/250000000000 : ℚ), (-2950947331/2500000000 : ℚ), (213262036347/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-1479087183/1250000000 : ℚ), (106920029693/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (482504620193/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control732.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control732.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate732

namespace DiagonalRamsey.JointInheritedCertificate733
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(50234616889/250000000000 : ℚ), (4842901566857/10000000000 : ℚ), (-97566614577863/1000000000000 : ℚ), 11⟩,
    ⟨(201878895979/1000000000000 : ℚ), (257029417371/5000000000 : ℚ), (-2627105607751/250000000000 : ℚ), 8⟩,
    ⟨(203723612689/1000000000000 : ℚ), (42522427229/2500000000 : ℚ), (-3543044388041/1000000000000 : ℚ), 7⟩,
    ⟨(206401726257/1000000000000 : ℚ), (38165313531/5000000000 : ℚ), (-324623048773/200000000000 : ℚ), 6⟩,
    ⟨(5245257957/25000000000 : ℚ), (38268573207/10000000000 : ℚ), (-416028728827/500000000000 : ℚ), 5⟩,
    ⟨(106909199239/500000000000 : ℚ), (19296293311/10000000000 : ℚ), (-430670162807/1000000000000 : ℚ), 5⟩,
    ⟨(109135969289/500000000000 : ℚ), (4279535589/5000000000 : ℚ), (-4973391009/25000000000 : ℚ), 5⟩,
    ⟨(222999791531/1000000000000 : ℚ), (1930774219/10000000000 : ℚ), (-26408988469/500000000000 : ℚ), 4⟩,
    ⟨(113910134299/500000000000 : ℚ), (-242624301/1000000000 : ℚ), (9064980933/200000000000 : ℚ), 4⟩,
    ⟨(232548121551/1000000000000 : ℚ), (-5424419057/10000000000 : ℚ), (114300908051/1000000000000 : ℚ), 4⟩,
    ⟨(237001661651/1000000000000 : ℚ), (-1510576667/2000000000 : ℚ), (82126087303/500000000000 : ℚ), 4⟩,
    ⟨(241009741849/1000000000000 : ℚ), (-4544031687/5000000000 : ℚ), (20093395651/100000000000 : ℚ), 4⟩,
    ⟨(244418333873/1000000000000 : ℚ), (-5095683343/5000000000 : ℚ), (28463520689/125000000000 : ℚ), 4⟩,
    ⟨(3088705593/12500000000 : ℚ), (-5479129221/5000000000 : ℚ), (246553359633/1000000000000 : ℚ), 4⟩,
    ⟨(4978823283/20000000000 : ℚ), (-5722262249/5000000000 : ℚ), (129306595181/500000000000 : ℚ), 4⟩,
    ⟨(124940796287/500000000000 : ℚ), (-5840434523/5000000000 : ℚ), (264507834431/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-11710110441/10000000000 : ℚ), (33154837009/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (215195633117/500000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control733.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control733.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate733

namespace DiagonalRamsey.JointInheritedCertificate734
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(242297987957/1000000000000 : ℚ), (496593273931/1000000000 : ℚ), (-120630509345493/1000000000000 : ℚ), 11⟩,
    ⟨(121702020041/500000000000 : ℚ), (105499088453/2000000000 : ℚ), (-3249378578879/250000000000 : ℚ), 8⟩,
    ⟨(245573639369/1000000000000 : ℚ), (21845859981/1250000000 : ℚ), (-4386187296603/1000000000000 : ℚ), 7⟩,
    ⟨(124361704667/500000000000 : ℚ), (78604429591/10000000000 : ℚ), (-503206696383/250000000000 : ℚ), 6⟩,
    ⟨(63183076521/250000000000 : ℚ), (1978194161/500000000 : ℚ), (-1035221911561/1000000000000 : ℚ), 5⟩,
    ⟨(51489253993/200000000000 : ℚ), (5026679007/2500000000 : ℚ), (-539460968591/1000000000000 : ℚ), 5⟩,
    ⟨(262684145989/1000000000000 : ℚ), (9100434339/10000000000 : ℚ), (-253513103809/1000000000000 : ℚ), 5⟩,
    ⟨(268244645517/1000000000000 : ℚ), (578057801/2500000000 : ℚ), (-73463010599/1000000000000 : ℚ), 4⟩,
    ⟨(273914081671/1000000000000 : ℚ), (-1071930339/5000000000 : ℚ), (5906191573/125000000000 : ℚ), 4⟩,
    ⟨(279474581199/1000000000000 : ℚ), (-1301226963/2500000000 : ℚ), (16487744171/125000000000 : ℚ), 4⟩,
    ⟨(284712457223/1000000000000 : ℚ), (-7373735837/10000000000 : ℚ), (96529674471/500000000000 : ℚ), 4⟩,
    ⟨(18089151319/62500000000 : ℚ), (-4467441697/5000000000 : ℚ), (29732895961/125000000000 : ℚ), 4⟩,
    ⟨(146717658927/500000000000 : ℚ), (-5027378617/5000000000 : ℚ), (270494298227/1000000000000 : ℚ), 4⟩,
    ⟨(296585087819/1000000000000 : ℚ), (-10831950999/10000000000 : ℚ), (7335505207/25000000000 : ℚ), 4⟩,
    ⟨(149377343553/500000000000 : ℚ), (-5662089077/5000000000 : ℚ), (154035873191/500000000000 : ℚ), 4⟩,
    ⟨(299860739231/1000000000000 : ℚ), (-289081277/250000000 : ℚ), (315227313583/1000000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-5796411087/5000000000 : ℚ), (158057120187/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (190304031779/500000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control734.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control734.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate734

namespace DiagonalRamsey.JointInheritedCertificate743
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120233989647/1000000000000 : ℚ), (142745042863/312500000 : ℚ), (-27532931340237/500000000000 : ℚ), 12⟩,
    ⟨(120804554829/1000000000000 : ℚ), (242136698799/5000000000 : ℚ), (-1481130030281/250000000000 : ℚ), 8⟩,
    ⟨(121923758693/1000000000000 : ℚ), (159810982731/10000000000 : ℚ), (-1992637904019/1000000000000 : ℚ), 7⟩,
    ⟨(61774295431/500000000000 : ℚ), (17841425611/2500000000 : ℚ), (-908650699539/1000000000000 : ℚ), 6⟩,
    ⟨(125616609947/1000000000000 : ℚ), (886249721/250000000 : ℚ), (-461796471693/1000000000000 : ℚ), 6⟩,
    ⟨(25609668627/200000000000 : ℚ), (17533832237/10000000000 : ℚ), (-46966388059/200000000000 : ℚ), 5⟩,
    ⟨(65375170141/500000000000 : ℚ), (7379910027/10000000000 : ℚ), (-103576985129/1000000000000 : ℚ), 5⟩,
    ⟨(26723753031/200000000000 : ℚ), (43917119/400000000 : ℚ), (-5152786347/250000000000 : ℚ), 4⟩,
    ⟨(2133490403/15625000000 : ℚ), (-1521873043/5000000000 : ℚ), (7059154443/200000000000 : ℚ), 4⟩,
    ⟨(27882362133/200000000000 : ℚ), (-23062791/39062500 : ℚ), (7474058707/100000000000 : ℚ), 4⟩,
    ⟨(35528451953/250000000000 : ℚ), (-7942815851/10000000000 : ℚ), (103427203723/1000000000000 : ℚ), 4⟩,
    ⟨(144545541/1000000000 : ℚ), (-2354807149/2500000000 : ℚ), (124582922587/1000000000000 : ℚ), 4⟩,
    ⟨(29322712017/200000000000 : ℚ), (-10484256093/10000000000 : ℚ), (140084966443/1000000000000 : ℚ), 4⟩,
    ⟨(29647678451/200000000000 : ℚ), (-11226860131/10000000000 : ℚ), (151031885769/1000000000000 : ℚ), 4⟩,
    ⟨(149357596119/1000000000000 : ℚ), (-2924706223/2500000000 : ℚ), (79027175631/500000000000 : ℚ), 4⟩,
    ⟨(149928161301/1000000000000 : ℚ), (-5964273233/5000000000 : ℚ), (80745968977/500000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-5978491901/5000000000 : ℚ), (20239799473/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (547161234021/1000000000000 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control743.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control743.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate743

namespace DiagonalRamsey.JointInheritedCertificate744
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(202130264593/1000000000000 : ℚ), (4776180555967/10000000000 : ℚ), (-48392704309709/500000000000 : ℚ), 12⟩,
    ⟨(203047848239/1000000000000 : ℚ), (101405676889/2000000000 : ℚ), (-10420665023667/1000000000000 : ℚ), 8⟩,
    ⟨(40969550661/200000000000 : ℚ), (83866784867/5000000000 : ℚ), (-3510790707581/1000000000000 : ℚ), 7⟩,
    ⟨(4149216209/20000000000 : ℚ), (752193251/100000000 : ℚ), (-1606187575453/1000000000000 : ℚ), 6⟩,
    ⟨(26348325169/125000000000 : ℚ), (37647670161/10000000000 : ℚ), (-82147304443/100000000000 : ℚ), 6⟩,
    ⟨(214697317733/1000000000000 : ℚ), (3782306731/2000000000 : ℚ), (-423332140943/1000000000000 : ℚ), 5⟩,
    ⟨(43808534591/200000000000 : ℚ), (1660627549/2000000000 : ℚ), (-193497101221/1000000000000 : ℚ), 5⟩,
    ⟨(223655677453/1000000000000 : ℚ), (1751480617/10000000000 : ℚ), (-48598450043/1000000000000 : ℚ), 4⟩,
    ⟨(228359056053/1000000000000 : ℚ), (-1278476109/5000000000 : ℚ), (24354565687/500000000000 : ℚ), 4⟩,
    ⟨(29121507569/125000000000 : ℚ), (-5522865831/10000000000 : ℚ), (182947833/1562500000 : ℚ), 4⟩,
    ⟨(118658707887/500000000000 : ℚ), (-305169253/400000000 : ℚ), (166597666893/1000000000000 : ℚ), 4⟩,
    ⟨(120614066077/500000000000 : ℚ), (-571815347/625000000 : ℚ), (202953142671/1000000000000 : ℚ), 4⟩,
    ⟨(244553923057/1000000000000 : ℚ), (-5120853891/5000000000 : ℚ), (114744289777/500000000000 : ℚ), 4⟩,
    ⟨(247166980201/1000000000000 : ℚ), (-2750365199/2500000000 : ℚ), (1985329817/8000000000 : ℚ), 4⟩,
    ⟨(248966885267/1000000000000 : ℚ), (-5741667461/5000000000 : ℚ), (260119466503/1000000000000 : ℚ), 4⟩,
    ⟨(249884468913/1000000000000 : ℚ), (-5858794097/5000000000 : ℚ), (132981144427/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2936643243/2500000000 : ℚ), (33335842597/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (109832506043/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control744.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control744.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate744

namespace DiagonalRamsey.JointInheritedCertificate745
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48753463219/200000000000 : ℚ), (4904096405371/10000000000 : ℚ), (-59920649657203/500000000000 : ℚ), 12⟩,
    ⟨(24484520363/100000000000 : ℚ), (10420237097/200000000 : ℚ), (-12908874596441/1000000000000 : ℚ), 8⟩,
    ⟨(246959556087/1000000000000 : ℚ), (172610465447/10000000000 : ℚ), (-2176812643269/500000000000 : ℚ), 7⟩,
    ⟨(125014560043/500000000000 : ℚ), (38798541991/5000000000 : ℚ), (-997877119283/500000000000 : ℚ), 6⟩,
    ⟨(63483983501/250000000000 : ℚ), (39007402587/10000000000 : ℚ), (-51228281913/50000000000 : ℚ), 5⟩,
    ⟨(258529861173/1000000000000 : ℚ), (19766262863/10000000000 : ℚ), (-532093856113/1000000000000 : ℚ), 5⟩,
    ⟨(263634359549/1000000000000 : ℚ), (4438580803/5000000000 : ℚ), (-3100945373/12500000000 : ℚ), 5⟩,
    ⟨(134526633061/500000000000 : ℚ), (2158247989/10000000000 : ℚ), (-34634262027/500000000000 : ℚ), 4⟩,
    ⟨(274578335351/1000000000000 : ℚ), (-2254181289/10000000000 : ℚ), (50588346381/1000000000000 : ℚ), 4⟩,
    ⟨(279997241923/1000000000000 : ℚ), (-5286393097/10000000000 : ℚ), (13462446751/100000000000 : ℚ), 4⟩,
    ⟨(285101740299/1000000000000 : ℚ), (-29742251/40000000 : ℚ), (48831539957/250000000000 : ℚ), 4⟩,
    ⟨(289695667469/1000000000000 : ℚ), (-4491547/5000000 : ℚ), (119895238437/500000000000 : ℚ), 4⟩,
    ⟨(293602481387/1000000000000 : ℚ), (-10093566899/10000000000 : ℚ), (136086030473/500000000000 : ℚ), 4⟩,
    ⟨(148336022693/500000000000 : ℚ), (-10864468469/10000000000 : ℚ), (294922215439/1000000000000 : ℚ), 4⟩,
    ⟨(149393198921/500000000000 : ℚ), (-2270566189/2000000000 : ℚ), (77365408099/250000000000 : ℚ), 4⟩,
    ⟨(299864285377/1000000000000 : ℚ), (-1159006553/1000000000 : ℚ), (158281298693/500000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11619411131/10000000000 : ℚ), (317442766149/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (388807281183/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control745.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control745.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate745

namespace DiagonalRamsey.JointInheritedCertificate767
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120990855887/1000000000000 : ℚ), (2251239020573/5000000000 : ℚ), (-54614934115739/1000000000000 : ℚ), 12⟩,
    ⟨(24309382639/200000000000 : ℚ), (477386629809/10000000000 : ℚ), (-5873724031941/1000000000000 : ℚ), 9⟩,
    ⟨(122637658841/1000000000000 : ℚ), (39375430619/2500000000 : ℚ), (-1973871624489/1000000000000 : ℚ), 7⟩,
    ⟨(124221176081/1000000000000 : ℚ), (70274987069/10000000000 : ℚ), (-898732559317/1000000000000 : ℚ), 6⟩,
    ⟨(25247322247/200000000000 : ℚ), (17419620919/5000000000 : ℚ), (-455544652813/1000000000000 : ℚ), 6⟩,
    ⟨(64303256131/500000000000 : ℚ), (17154319627/10000000000 : ℚ), (-230460689791/1000000000000 : ℚ), 5⟩,
    ⟨(131239805193/1000000000000 : ℚ), (890841849/1250000000 : ℚ), (-6269378611/62500000000 : ℚ), 5⟩,
    ⟨(67017647029/500000000000 : ℚ), (184023821/2000000000 : ℚ), (-9028271441/500000000000 : ℚ), 5⟩,
    ⟨(136885549787/1000000000000 : ℚ), (-1586792323/5000000000 : ℚ), (3735916023/100000000000 : ℚ), 4⟩,
    ⟨(34920259663/250000000000 : ℚ), (-75023697/125000000 : ℚ), (76449467863/1000000000000 : ℚ), 4⟩,
    ⟨(142314331583/1000000000000 : ℚ), (-1002322551/1250000000 : ℚ), (104873397461/1000000000000 : ℚ), 4⟩,
    ⟨(144684232609/1000000000000 : ℚ), (-2369891711/2500000000 : ℚ), (125833003137/1000000000000 : ℚ), 4⟩,
    ⟨(36674916941/250000000000 : ℚ), (-10533852883/10000000000 : ℚ), (35297655177/250000000000 : ℚ), 4⟩,
    ⟨(37070796251/250000000000 : ℚ), (-225384341/200000000 : ℚ), (152035656263/1000000000000 : ℚ), 4⟩,
    ⟨(149373930649/1000000000000 : ℚ), (-11736711681/10000000000 : ℚ), (158993046521/1000000000000 : ℚ), 4⟩,
    ⟨(149929987957/1000000000000 : ℚ), (-1495537493/1250000000 : ℚ), (162398917669/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-5996237639/5000000000 : ℚ), (81410724493/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (111510232201/200000000000 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control767.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control767.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate767

namespace DiagonalRamsey.JointInheritedCertificate768
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(203375527139/1000000000000 : ℚ), (471004708023/1000000000 : ℚ), (-96025430151213/1000000000000 : ℚ), 12⟩,
    ⟨(102134620581/500000000000 : ℚ), (2000262087/40000000 : ℚ), (-10335303167467/1000000000000 : ℚ), 9⟩,
    ⟨(103011162139/500000000000 : ℚ), (41350847123/2500000000 : ℚ), (-3479426392597/1000000000000 : ℚ), 7⟩,
    ⟨(104283703243/500000000000 : ℚ), (1482449513/200000000 : ℚ), (-1589734808603/1000000000000 : ℚ), 6⟩,
    ⟨(105903340853/500000000000 : ℚ), (9259112797/2500000000 : ℚ), (-405596759383/500000000000 : ℚ), 6⟩,
    ⟨(107807833203/500000000000 : ℚ), (18534017397/10000000000 : ℚ), (-416213524563/1000000000000 : ℚ), 5⟩,
    ⟨(219847983441/1000000000000 : ℚ), (1610605263/2000000000 : ℚ), (-188229416901/1000000000000 : ℚ), 5⟩,
    ⟨(5608524681/25000000000 : ℚ), (788554859/5000000000 : ℚ), (-44519976201/1000000000000 : ℚ), 5⟩,
    ⟨(57230503547/250000000000 : ℚ), (-2683337717/10000000000 : ℚ), (2598575737/50000000000 : ℚ), 4⟩,
    ⟨(233415017987/1000000000000 : ℚ), (-5617399129/10000000000 : ℚ), (14970400017/125000000000 : ℚ), 4⟩,
    ⟨(118823667511/500000000000 : ℚ), (-308077979/400000000 : ℚ), (33768510371/200000000000 : ℚ), 4⟩,
    ⟨(120728159861/500000000000 : ℚ), (-9206592953/10000000000 : ℚ), (12804836207/62500000000 : ℚ), 4⟩,
    ⟨(244695594941/1000000000000 : ℚ), (-5144372829/5000000000 : ℚ), (11558886287/50000000000 : ℚ), 4⟩,
    ⟨(4944813543/20000000000 : ℚ), (-5520722609/5000000000 : ℚ), (15605632867/62500000000 : ℚ), 4⟩,
    ⟨(124496880133/500000000000 : ℚ), (-89992017/78125000 : ℚ), (65384523583/250000000000 : ℚ), 4⟩,
    ⟨(249887474289/1000000000000 : ℚ), (-91805967/78125000 : ℚ), (66832423173/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2944973701/2500000000 : ℚ), (3350597583/12500000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (11207473271/25000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control768.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control768.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate768

namespace DiagonalRamsey.JointInheritedCertificate769
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(245223544771/1000000000000 : ℚ), (2417347758677/5000000000 : ℚ), (-59420856550669/500000000000 : ℚ), 12⟩,
    ⟨(246273518811/1000000000000 : ℚ), (128423077593/2500000000 : ℚ), (-12796848159129/1000000000000 : ℚ), 9⟩,
    ⟨(248333116977/1000000000000 : ℚ), (85078113701/5000000000 : ℚ), (-1078158581609/250000000000 : ℚ), 7⟩,
    ⟨(62830797517/250000000000 : ℚ), (7643998811/1000000000 : ℚ), (-1974371946001/1000000000000 : ℚ), 6⟩,
    ⟨(40820613/160000000 : ℚ), (19180952417/5000000000 : ℚ), (-505646275287/500000000000 : ℚ), 6⟩,
    ⟨(259603791869/1000000000000 : ℚ), (19367330199/10000000000 : ℚ), (-32685268537/62500000000 : ℚ), 5⟩,
    ⟨(52915220339/200000000000 : ℚ), (2153192831/2500000000 : ℚ), (-241364147847/1000000000000 : ℚ), 5⟩,
    ⟨(269854677653/1000000000000 : ℚ), (493461363/2500000000 : ℚ), (-64103192397/1000000000000 : ℚ), 4⟩,
    ⟨(137618333513/500000000000 : ℚ), (-477591721/2000000000 : ℚ), (54699005931/1000000000000 : ℚ), 4⟩,
    ⟨(35064405373/125000000000 : ℚ), (-5386633631/10000000000 : ℚ), (27596642133/200000000000 : ℚ), 4⟩,
    ⟨(28548755281/100000000000 : ℚ), (-751289789/1000000000 : ℚ), (198134668891/1000000000000 : ℚ), 4⟩,
    ⟨(289962513429/1000000000000 : ℚ), (-9044550089/10000000000 : ℚ), (121096521423/500000000000 : ℚ), 4⟩,
    ⟨(293768154611/1000000000000 : ℚ), (-5072028431/5000000000 : ℚ), (5485575571/20000000000 : ℚ), 4⟩,
    ⟨(148379113851/500000000000 : ℚ), (-1363452323/1250000000 : ℚ), (296821999633/1000000000000 : ℚ), 4⟩,
    ⟨(74704456467/250000000000 : ℚ), (-1139147313/1000000000 : ℚ), (62246013859/200000000000 : ℚ), 4⟩,
    ⟨(74966949977/250000000000 : ℚ), (-11626563453/10000000000 : ℚ), (159133632221/500000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11655646039/10000000000 : ℚ), (159569774831/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (397074594379/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control769.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control769.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate769

namespace DiagonalRamsey.JointInheritedCertificate791
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(204672356231/1000000000000 : ℚ), (928778008911/2000000000 : ℚ), (-95272422098727/1000000000000 : ℚ), 12⟩,
    ⟨(41108242437/200000000000 : ℚ), (246551389033/5000000000 : ℚ), (-2562688187877/250000000000 : ℚ), 9⟩,
    ⟨(41449106889/200000000000 : ℚ), (16307517143/1000000000 : ℚ), (-172419049573/50000000000 : ℚ), 7⟩,
    ⟨(13107489179/62500000000 : ℚ), (18257010671/2500000000 : ℚ), (-1573465513457/1000000000000 : ℚ), 6⟩,
    ⟨(21286900377/100000000000 : ℚ), (291422241/80000000 : ℚ), (-40052099971/50000000000 : ℚ), 6⟩,
    ⟨(216572044063/1000000000000 : ℚ), (9079533819/5000000000 : ℚ), (-204597561541/500000000000 : ℚ), 5⟩,
    ⟨(220686641979/1000000000000 : ℚ), (3902727129/5000000000 : ℚ), (-2288078437/12500000000 : ℚ), 5⟩,
    ⟨(56263668957/250000000000 : ℚ), (1405234677/10000000000 : ℚ), (-4051656261/100000000000 : ℚ), 5⟩,
    ⟨(5737707113/25000000000 : ℚ), (-2807272131/10000000000 : ℚ), (6895597549/125000000000 : ℚ), 4⟩,
    ⟨(233876318369/1000000000000 : ℚ), (-142737987/250000000 : ℚ), (61187204371/500000000000 : ℚ), 4⟩,
    ⟨(118995458143/500000000000 : ℚ), (-7772282883/10000000000 : ℚ), (85512173357/500000000000 : ℚ), 4⟩,
    ⟨(120846978289/500000000000 : ℚ), (-4630886857/5000000000 : ℚ), (103369919201/500000000000 : ℚ), 4⟩,
    ⟨(61210783371/250000000000 : ℚ), (-10333426673/10000000000 : ℚ), (58201441481/250000000000 : ℚ), 4⟩,
    ⟨(247317425903/1000000000000 : ℚ), (-11079076879/10000000000 : ℚ), (125576600359/500000000000 : ℚ), 4⟩,
    ⟨(62255437041/250000000000 : ℚ), (-11552269717/10000000000 : ℚ), (262895979313/1000000000000 : ℚ), 4⟩,
    ⟨(249890604117/1000000000000 : ℚ), (-11782387639/10000000000 : ℚ), (67159090399/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2952716223/2500000000 : ℚ), (269348137059/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (114325257667/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control791.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control791.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate791

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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate814
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(24693878871/200000000000 : ℚ), (4307314430957/10000000000 : ℚ), (-53303713499613/1000000000000 : ℚ), 12⟩,
    ⟨(123977942181/1000000000000 : ℚ), (45684326307/1000000000 : ℚ), (-5726055786861/1000000000000 : ℚ), 9⟩,
    ⟨(3905484207/31250000000 : ℚ), (75312949627/5000000000 : ℚ), (-959673456259/500000000000 : ℚ), 8⟩,
    ⟨(7901482269/62500000000 : ℚ), (4189791009/625000000 : ℚ), (-6959543261/8000000000 : ℚ), 7⟩,
    ⟨(64133476437/500000000000 : ℚ), (16516565487/5000000000 : ℚ), (-54677924681/125000000000 : ℚ), 6⟩,
    ⟨(26086873957/200000000000 : ℚ), (16037850853/10000000000 : ℚ), (-217816454899/1000000000000 : ℚ), 6⟩,
    ⟨(132842674423/1000000000000 : ℚ), (6386833193/10000000000 : ℚ), (-90886839649/1000000000000 : ℚ), 5⟩,
    ⟨(13539931699/100000000000 : ℚ), (20236839/500000000 : ℚ), (-2678867303/250000000000 : ℚ), 5⟩,
    ⟨(27601209429/200000000000 : ℚ), (-3546102691/10000000000 : ℚ), (43260326757/1000000000000 : ℚ), 5⟩,
    ⟨(8785168107/62500000000 : ℚ), (-6279047037/10000000000 : ℚ), (81307912519/1000000000000 : ℚ), 5⟩,
    ⟨(142970994349/1000000000000 : ℚ), (-4114995293/5000000000 : ℚ), (108956261733/1000000000000 : ℚ), 4⟩,
    ⟨(145138411261/1000000000000 : ℚ), (-1928989387/2000000000 : ℚ), (129334579127/1000000000000 : ℚ), 4⟩,
    ⟨(146981647831/1000000000000 : ℚ), (-10667137039/10000000000 : ℚ), (36065626831/250000000000 : ℚ), 4⟩,
    ⟨(148429869511/1000000000000 : ℚ), (-5690418521/5000000000 : ℚ), (154803427419/1000000000000 : ℚ), 4⟩,
    ⟨(74713710977/500000000000 : ℚ), (-11834939057/10000000000 : ℚ), (161566074581/1000000000000 : ℚ), 4⟩,
    ⟨(7496798489/50000000000 : ℚ), (-1507016327/1250000000 : ℚ), (164876879449/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3020880021/2500000000 : ℚ), (165287633723/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (58884613653/100000000000 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control814.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control814.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate814

namespace DiagonalRamsey.JointInheritedCertificate828
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25090907081/200000000000 : ℚ), (40948869007/400000000 : ℚ), (-12918546423687/1000000000000 : ℚ), 10⟩,
    ⟨(63652411503/500000000000 : ℚ), (4755752837/500000000 : ℚ), (-123678263427/100000000000 : ℚ), 7⟩,
    ⟨(65361854347/500000000000 : ℚ), (22239428071/10000000000 : ℚ), (-150261229111/500000000000 : ℚ), 6⟩,
    ⟨(27038139623/200000000000 : ℚ), (1316380817/5000000000 : ℚ), (-2543851241/62500000000 : ℚ), 5⟩,
    ⟨(140025732623/1000000000000 : ℚ), (-1051106067/2000000000 : ℚ), (67601701561/1000000000000 : ℚ), 5⟩,
    ⟨(36123180511/250000000000 : ℚ), (-2280396353/2500000000 : ℚ), (122529567213/1000000000000 : ℚ), 5⟩,
    ⟨(36977901933/250000000000 : ℚ), (-2784981963/2500000000 : ℚ), (15202216489/100000000000 : ℚ), 5⟩,
    ⟨(149761895333/1000000000000 : ℚ), (-1203518051/1000000000 : ℚ), (82672556649/500000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3035700439/2500000000 : ℚ), (166958147617/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (304919389419/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control828.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control828.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate828

namespace DiagonalRamsey.JointInheritedCertificate837
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(126373474977/1000000000000 : ℚ), (12556891393/125000000 : ℚ), (-1595760555707/125000000000 : ℚ), 11⟩,
    ⟨(8009655689/62500000000 : ℚ), (23308752587/2500000000 : ℚ), (-1219257022739/1000000000000 : ℚ), 7⟩,
    ⟨(8215336223/62500000000 : ℚ), (10827128613/5000000000 : ℚ), (-29386206509/100000000000 : ℚ), 6⟩,
    ⟨(67872566331/500000000000 : ℚ), (1187154247/5000000000 : ℚ), (-37108071967/1000000000000 : ℚ), 5⟩,
    ⟨(70199575937/500000000000 : ℚ), (-5391180411/10000000000 : ℚ), (69878849081/1000000000000 : ℚ), 5⟩,
    ⟨(18087363121/125000000000 : ℚ), (-4600503989/5000000000 : ℚ), (62060495181/500000000000 : ℚ), 5⟩,
    ⟨(18498724189/125000000000 : ℚ), (-5595991953/5000000000 : ℚ), (76621326163/500000000000 : ℚ), 5⟩,
    ⟨(74885404779/500000000000 : ℚ), (-3018955577/2500000000 : ℚ), (166399656593/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-761381941/625000000 : ℚ), (83996383423/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (620388550011/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control837.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control837.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate837

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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate867
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17228105307/200000000000 : ℚ), (186839162101/2000000000 : ℚ), (-323449340717/40000000000 : ℚ), 11⟩,
    ⟨(21796320537/250000000000 : ℚ), (86297683201/10000000000 : ℚ), (-765900134851/1000000000000 : ℚ), 8⟩,
    ⟨(44557869401/500000000000 : ℚ), (39017303/20000000 : ℚ), (-89592789219/500000000000 : ℚ), 7⟩,
    ⟨(91638001973/1000000000000 : ℚ), (1441347727/10000000000 : ℚ), (-4086572383/250000000000 : ℚ), 6⟩,
    ⟨(23592019989/250000000000 : ℚ), (-5874410269/10000000000 : ℚ), (25782356031/500000000000 : ℚ), 6⟩,
    ⟨(48445171563/500000000000 : ℚ), (-4742139317/5000000000 : ℚ), (43024510433/500000000000 : ℚ), 5⟩,
    ⟨(98820799781/1000000000000 : ℚ), (-8891441/7812500 : ℚ), (104601616857/1000000000000 : ℚ), 5⟩,
    ⟨(49932777697/500000000000 : ℚ), (-764153839/625000000 : ℚ), (56499688171/500000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-1232830259/1000000000 : ℚ), (57008550891/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (716050953211/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control867.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control867.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate867

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
theorem certOK : JointInheritedControls.control874.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control874.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate874

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
theorem certOK : JointInheritedControls.control880.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control880.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate880

namespace DiagonalRamsey.JointInheritedCertificate888
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17697152051/200000000000 : ℚ), (866696260249/10000000000 : ℚ), (-1924785656759/250000000000 : ℚ), 12⟩,
    ⟨(89353727327/1000000000000 : ℚ), (15920669829/2000000000 : ℚ), (-144352735447/200000000000 : ℚ), 9⟩,
    ⟨(90957521353/1000000000000 : ℚ), (34006211/19531250 : ℚ), (-162637205157/1000000000000 : ℚ), 7⟩,
    ⟨(9305297923/100000000000 : ℚ), (518127949/10000000000 : ℚ), (-3779290177/500000000000 : ℚ), 7⟩,
    ⟨(23830271623/250000000000 : ℚ), (-6350823879/10000000000 : ℚ), (28519439541/500000000000 : ℚ), 6⟩,
    ⟨(97416544369/1000000000000 : ℚ), (-4876872943/5000000000 : ℚ), (1796080369/20000000000 : ℚ), 6⟩,
    ⟨(49510169197/500000000000 : ℚ), (-5774333291/5000000000 : ℚ), (6714187561/62500000000 : ℚ), 6⟩,
    ⟨(49944152733/500000000000 : ℚ), (-6175611133/5000000000 : ℚ), (7213005209/62500000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-6224019813/5000000000 : ℚ), (116375714999/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (149998937097/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control888.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control888.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate888

namespace DiagonalRamsey.JointInheritedCertificate892
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44683263317/500000000000 : ℚ), (842622969407/10000000000 : ℚ), (-3778670420563/500000000000 : ℚ), 12⟩,
    ⟨(3606723989/40000000000 : ℚ), (7720970513/1000000000 : ℚ), (-705675907677/1000000000000 : ℚ), 9⟩,
    ⟨(9164921367/100000000000 : ℚ), (4165520467/2500000000 : ℚ), (-78328541373/500000000000 : ℚ), 8⟩,
    ⟨(46792191149/500000000000 : ℚ), (190803919/10000000000 : ℚ), (-17253263/3906250000 : ℚ), 7⟩,
    ⟨(47839496863/500000000000 : ℚ), (-1303422133/2000000000 : ℚ), (7371504613/125000000000 : ℚ), 6⟩,
    ⟨(48807081177/500000000000 : ℚ), (-9845213011/10000000000 : ℚ), (18222283669/200000000000 : ℚ), 6⟩,
    ⟨(99095276299/1000000000000 : ℚ), (-11603183389/10000000000 : ℚ), (3387377601/31250000000 : ℚ), 6⟩,
    ⟨(9989684939/100000000000 : ℚ), (-247802753/200000000 : ℚ), (116225356547/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-12485123481/10000000000 : ℚ), (58587361921/500000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (95169979727/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control892.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control892.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate892

namespace DiagonalRamsey.JointInheritedCertificate904
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9162967447/200000000000 : ℚ), (103030387307/1250000000 : ℚ), (-189371482971/50000000000 : ℚ), 13⟩,
    ⟨(11532580853/250000000000 : ℚ), (75811161933/10000000000 : ℚ), (-177049460811/500000000000 : ℚ), 10⟩,
    ⟨(23356632927/500000000000 : ℚ), (8218230289/5000000000 : ℚ), (-4938423979/62500000000 : ℚ), 8⟩,
    ⟨(2373745843/50000000000 : ℚ), (221095473/10000000000 : ℚ), (-554057317/200000000000 : ℚ), 8⟩,
    ⟨(3018707623/62500000000 : ℚ), (-3203739953/5000000000 : ℚ), (28937481969/1000000000000 : ℚ), 7⟩,
    ⟨(49060972973/1000000000000 : ℚ), (-9705017391/10000000000 : ℚ), (11245001071/250000000000 : ℚ), 7⟩,
    ⟨(6205489427/125000000000 : ℚ), (-11449265077/10000000000 : ℚ), (13396508439/250000000000 : ℚ), 7⟩,
    ⟨(6244925199/125000000000 : ℚ), (-6115250947/5000000000 : ℚ), (57476484227/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-2464962363/2000000000 : ℚ), (57947841953/1000000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (853557422599/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
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
theorem certOK : JointInheritedControls.control904.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control904.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate904
