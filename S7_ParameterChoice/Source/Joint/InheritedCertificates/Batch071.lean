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

-- Control612
namespace DiagonalRamsey.JointInheritedCertificate612
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(59752319877/500000000000 : ℚ), (3021173241209/5000000000 : ℚ), (-72404871622723/1000000000000 : ℚ), 11⟩,
    ⟨(120089185367/1000000000000 : ℚ), (64034174277/1000000000 : ℚ), (-7790166712487/1000000000000 : ℚ), 8⟩,
    ⟨(121235812833/1000000000000 : ℚ), (211207049279/10000000000 : ℚ), (-2620154335939/1000000000000 : ℚ), 7⟩,
    ⟨(122900457901/1000000000000 : ℚ), (5891321509/625000000 : ℚ), (-298681545021/250000000000 : ℚ), 6⟩,
    ⟨(31254787299/250000000000 : ℚ), (46784826089/10000000000 : ℚ), (-121402809307/200000000000 : ℚ), 5⟩,
    ⟨(63755233299/500000000000 : ℚ), (11553097353/5000000000 : ℚ), (-308402606357/1000000000000 : ℚ), 5⟩,
    ⟨(130278670177/1000000000000 : ℚ), (605431857/625000000 : ℚ), (-27123922219/200000000000 : ℚ), 4⟩,
    ⟨(66608689711/500000000000 : ℚ), (1383648433/10000000000 : ℚ), (-13161795489/500000000000 : ℚ), 4⟩,
    ⟨(27242732277/200000000000 : ℚ), (-4092050391/10000000000 : ℚ), (9477886387/200000000000 : ℚ), 4⟩,
    ⟨(13915237063/100000000000 : ℚ), (-7874791023/10000000000 : ℚ), (12430312359/125000000000 : ℚ), 4⟩,
    ⟨(141920574209/1000000000000 : ℚ), (-1057158039/1000000000 : ℚ), (68663474329/500000000000 : ℚ), 3⟩,
    ⟨(144411891611/1000000000000 : ℚ), (-3131161179/2500000000 : ℚ), (82640283243/500000000000 : ℚ), 3⟩,
    ⟨(73265291453/500000000000 : ℚ), (-6966661419/5000000000 : ℚ), (185769281763/1000000000000 : ℚ), 3⟩,
    ⟨(74097613987/500000000000 : ℚ), (-7457635257/5000000000 : ℚ), (200238198173/1000000000000 : ℚ), 3⟩,
    ⟨(1866773193/12500000000 : ℚ), (-15539150703/10000000000 : ℚ), (209519197847/1000000000000 : ℚ), 3⟩,
    ⟨(149926401053/1000000000000 : ℚ), (-7921369081/5000000000 : ℚ), (107030928633/500000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15880315347/10000000000 : ℚ), (214625376663/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (85482261749/200000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control612.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control612.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate612

-- Control613
namespace DiagonalRamsey.JointInheritedCertificate613
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(160078763937/1000000000000 : ℚ), (1236722178119/2000000000 : ℚ), (-19849939469763/200000000000 : ℚ), 11⟩,
    ⟨(80421993999/500000000000 : ℚ), (327892773677/5000000000 : ℚ), (-2670732682621/250000000000 : ℚ), 8⟩,
    ⟨(162345028989/1000000000000 : ℚ), (21659472773/1000000000 : ℚ), (-1798305657523/500000000000 : ℚ), 7⟩,
    ⟨(32904840549/200000000000 : ℚ), (9688986931/1000000000 : ℚ), (-328608983281/200000000000 : ℚ), 6⟩,
    ⟨(167297764841/1000000000000 : ℚ), (48290435797/10000000000 : ℚ), (-837803533979/1000000000000 : ℚ), 5⟩,
    ⟨(170559128843/1000000000000 : ℚ), (24055326847/10000000000 : ℚ), (-428894649051/1000000000000 : ℚ), 5⟩,
    ⟨(174182962359/1000000000000 : ℚ), (5163629509/5000000000 : ℚ), (-96254801641/500000000000 : ℚ), 4⟩,
    ⟨(178030003501/1000000000000 : ℚ), (1840419537/10000000000 : ℚ), (-43182023157/1000000000000 : ℚ), 4⟩,
    ⟨(90976206317/500000000000 : ℚ), (-3749130343/10000000000 : ℚ), (57353681777/1000000000000 : ℚ), 4⟩,
    ⟨(11612465861/62500000000 : ℚ), (-1520850173/2000000000 : ℚ), (128201368513/1000000000000 : ℚ), 4⟩,
    ⟨(47355821823/250000000000 : ℚ), (-10347640051/10000000000 : ℚ), (89824985537/500000000000 : ℚ), 3⟩,
    ⟨(96342325647/500000000000 : ℚ), (-1541349621/1250000000 : ℚ), (217528681487/1000000000000 : ℚ), 3⟩,
    ⟨(195458213391/1000000000000 : ℚ), (-6879381169/5000000000 : ℚ), (49047342849/200000000000 : ℚ), 3⟩,
    ⟨(197637387147/1000000000000 : ℚ), (-14752754261/10000000000 : ℚ), (132385797933/500000000000 : ℚ), 3⟩,
    ⟨(199138428137/1000000000000 : ℚ), (-7691815029/5000000000 : ℚ), (27728690589/100000000000 : ℚ), 3⟩,
    ⟨(99951826099/500000000000 : ℚ), (-15690427461/10000000000 : ℚ), (141704049579/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-7864196461/5000000000 : ℚ), (142083612683/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (92587141893/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control613.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control613.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate613

-- Control614
namespace DiagonalRamsey.JointInheritedCertificate614
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8609603351/200000000000 : ℚ), (581276817619/2500000000 : ℚ), (-5028723747419/500000000000 : ℚ), 10⟩,
    ⟨(43572071549/1000000000000 : ℚ), (53307532841/2500000000 : ℚ), (-945627288203/1000000000000 : ℚ), 7⟩,
    ⟨(22270199273/500000000000 : ℚ), (46790105427/10000000000 : ℚ), (-214896502341/1000000000000 : ℚ), 5⟩,
    ⟨(22902789369/500000000000 : ℚ), (167189807/1000000000 : ℚ), (-2910755059/250000000000 : ℚ), 5⟩,
    ⟨(4717499991/100000000000 : ℚ), (-16667969671/10000000000 : ℚ), (73459778679/1000000000000 : ℚ), 4⟩,
    ⟨(24220090051/500000000000 : ℚ), (-25755080579/10000000000 : ℚ), (29214302059/250000000000 : ℚ), 4⟩,
    ⟨(49408507099/1000000000000 : ℚ), (-7635344267/2500000000 : ℚ), (35065842913/250000000000 : ℚ), 4⟩,
    ⟨(49932561893/1000000000000 : ℚ), (-16337815561/5000000000 : ℚ), (75431604121/500000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-32932681701/10000000000 : ℚ), (152147592333/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (124888873683/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control614.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control614.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate614

-- Control615
namespace DiagonalRamsey.JointInheritedCertificate615
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21527621873/250000000000 : ℚ), (59788323547/62500000 : ℚ), (-3300586453361/40000000000 : ℚ), 12⟩,
    ⟨(10797090809/125000000000 : ℚ), (202645497537/2000000000 : ℚ), (-1764633477167/200000000000 : ℚ), 8⟩,
    ⟨(86898973017/1000000000000 : ℚ), (10375042671/312500000 : ℚ), (-1463485312963/500000000000 : ℚ), 7⟩,
    ⟨(17531431497/200000000000 : ℚ), (72788515323/5000000000 : ℚ), (-1301420740257/1000000000000 : ℚ), 6⟩,
    ⟨(88622143273/1000000000000 : ℚ), (17370368817/2500000000 : ℚ), (-315650069131/500000000000 : ℚ), 5⟩,
    ⟨(44878423259/500000000000 : ℚ), (7821964139/2500000000 : ℚ), (-290919972711/1000000000000 : ℚ), 5⟩,
    ⟨(9101766121/100000000000 : ℚ), (2373418917/2500000000 : ℚ), (-23515777461/250000000000 : ℚ), 5⟩,
    ⟨(23089033737/250000000000 : ℚ), (-2043444187/5000000000 : ℚ), (30381062389/1000000000000 : ℚ), 4⟩,
    ⟨(93720830937/1000000000000 : ℚ), (-13105491901/10000000000 : ℚ), (11424961877/100000000000 : ℚ), 4⟩,
    ⟨(3802372187/40000000000 : ℚ), (-19378003877/10000000000 : ℚ), (86717287423/500000000000 : ℚ), 4⟩,
    ⟨(96320119367/1000000000000 : ℚ), (-23878714221/10000000000 : ℚ), (216490424871/1000000000000 : ℚ), 4⟩,
    ⟨(97454822611/1000000000000 : ℚ), (-27157970801/10000000000 : ℚ), (124128313771/500000000000 : ℚ), 4⟩,
    ⟨(98419808399/1000000000000 : ℚ), (-14768117159/5000000000 : ℚ), (27154610943/100000000000 : ℚ), 4⟩,
    ⟨(24794498217/250000000000 : ℚ), (-3120192409/1000000000 : ℚ), (144000971587/500000000000 : ℚ), 4⟩,
    ⟨(99700239413/1000000000000 : ℚ), (-8066033057/2500000000 : ℚ), (149282085229/500000000000 : ℚ), 4⟩,
    ⟨(99966478393/1000000000000 : ℚ), (-32782235093/10000000000 : ℚ), (75934133051/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-8211605761/2500000000 : ℚ), (152189152033/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (197112072383/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control615.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control615.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate615

-- Control616
namespace DiagonalRamsey.JointInheritedCertificate616
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32366043061/250000000000 : ℚ), (2432104035013/2500000000 : ℚ), (-63079521216791/500000000000 : ℚ), 12⟩,
    ⟨(64928905047/500000000000 : ℚ), (1030977999059/10000000000 : ℚ), (-1349520440063/100000000000 : ℚ), 8⟩,
    ⟨(130629958511/1000000000000 : ℚ), (67640021311/2000000000 : ℚ), (-1750357977/390625000 : ℚ), 7⟩,
    ⟨(26350188853/200000000000 : ℚ), (148606509617/10000000000 : ℚ), (-1995923478121/1000000000000 : ℚ), 6⟩,
    ⟨(66588844251/500000000000 : ℚ), (35610442943/5000000000 : ℚ), (-242929185729/250000000000 : ℚ), 5⟩,
    ⟨(134855362241/1000000000000 : ℚ), (32388194103/10000000000 : ℚ), (-451695731707/1000000000000 : ℚ), 5⟩,
    ⟨(136719493421/1000000000000 : ℚ), (10239567689/10000000000 : ℚ), (-75573955537/500000000000 : ℚ), 5⟩,
    ⟨(138698444527/1000000000000 : ℚ), (-710305181/2000000000 : ℚ), (38659800849/1000000000000 : ℚ), 4⟩,
    ⟨(140716165577/1000000000000 : ℚ), (-12700490897/10000000000 : ℚ), (166418608217/1000000000000 : ℚ), 4⟩,
    ⟨(142695116683/1000000000000 : ℚ), (-9527843173/5000000000 : ℚ), (256443225439/1000000000000 : ℚ), 4⟩,
    ⟨(18069905983/125000000000 : ℚ), (-4721892993/2000000000 : ℚ), (160915417967/500000000000 : ℚ), 4⟩,
    ⟨(146236921603/1000000000000 : ℚ), (-26922863727/10000000000 : ℚ), (184999232793/500000000000 : ℚ), 4⟩,
    ⟨(1845795823/12500000000 : ℚ), (-29322923053/10000000000 : ℚ), (202631753639/500000000000 : ℚ), 4⟩,
    ⟨(74392325797/500000000000 : ℚ), (-1550108653/500000000 : ℚ), (215076273851/500000000000 : ℚ), 4⟩,
    ⟨(149556800011/1000000000000 : ℚ), (-6414446829/2000000000 : ℚ), (111528577639/250000000000 : ℚ), 4⟩,
    ⟨(149950437861/1000000000000 : ℚ), (-32593933709/10000000000 : ℚ), (453926900439/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-6531711283/2000000000 : ℚ), (454896080793/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (306642406449/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control616.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control616.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate616

-- Control617
namespace DiagonalRamsey.JointInheritedCertificate617
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(61671264163/125000000000 : ℚ), (7415510762993/5000000000 : ℚ), (-9160109702919/12500000000 : ℚ), 12⟩,
    ⟨(494364493077/1000000000000 : ℚ), (32499857551/200000000 : ℚ), (-40510541953223/500000000000 : ℚ), 9⟩,
    ⟨(248171838101/500000000000 : ℚ), (285832759259/5000000000 : ℚ), (-28878349881309/1000000000000 : ℚ), 8⟩,
    ⟨(31205537629/62500000000 : ℚ), (282906972089/10000000000 : ℚ), (-907053337071/62500000000 : ℚ), 7⟩,
    ⟨(62896363677/125000000000 : ℚ), (41223764123/2500000000 : ℚ), (-1720306339369/200000000000 : ℚ), 6⟩,
    ⟨(507953209517/1000000000000 : ℚ), (26419778549/2500000000 : ℚ), (-2804833431953/500000000000 : ℚ), 5⟩,
    ⟨(256794723101/500000000000 : ℚ), (35989099613/5000000000 : ℚ), (-777872280677/200000000000 : ℚ), 5⟩,
    ⟨(65003167429/125000000000 : ℚ), (25545337951/5000000000 : ℚ), (-1405253424621/500000000000 : ℚ), 5⟩,
    ⟨(131799727009/250000000000 : ℚ), (37322445863/10000000000 : ℚ), (-522496691569/250000000000 : ℚ), 4⟩,
    ⟨(267520533313/500000000000 : ℚ), (27814798733/10000000000 : ℚ), (-63411343173/40000000000 : ℚ), 4⟩,
    ⟨(543476290929/1000000000000 : ℚ), (10503143249/5000000000 : ℚ), (-1218311838209/1000000000000 : ℚ), 4⟩,
    ⟨(138105836281/250000000000 : ℚ), (15986488089/10000000000 : ℚ), (-943380715497/1000000000000 : ℚ), 4⟩,
    ⟨(140449016047/250000000000 : ℚ), (12196193227/10000000000 : ℚ), (-73231161921/100000000000 : ℚ), 3⟩,
    ⟨(17859505741/31250000000 : ℚ), (1855401673/2000000000 : ℚ), (-566962479963/1000000000000 : ℚ), 3⟩,
    ⟨(290727104599/500000000000 : ℚ), (1747748213/2500000000 : ℚ), (-108806750277/250000000000 : ℚ), 3⟩,
    ⟨(295775158231/500000000000 : ℚ), (1293852717/2500000000 : ℚ), (-328778365929/1000000000000 : ℚ), 3⟩,
    ⟨(75211909309/125000000000 : ℚ), (1858054573/5000000000 : ℚ), (-60434839273/250000000000 : ℚ), 3⟩,
    ⟨(76473922717/125000000000 : ℚ), (1265627273/5000000000 : ℚ), (-84934215273/500000000000 : ℚ), 3⟩,
    ⟨(310870703611/500000000000 : ℚ), (390268349/2500000000 : ℚ), (-110045115513/1000000000000 : ℚ), 3⟩,
    ⟨(315724763373/500000000000 : ℚ), (761192881/10000000000 : ℚ), (-7491916293/125000000000 : ℚ), 3⟩,
    ⟨(64082224581/100000000000 : ℚ), (49106077/5000000000 : ℚ), (-222103077/12500000000 : ℚ), 3⟩,
    ⟨(162442325001/250000000000 : ℚ), (-226654041/5000000000 : ℚ), (17815765049/1000000000000 : ℚ), 3⟩,
    ⟨(164551131077/250000000000 : ℚ), (-91293149/1000000000 : ℚ), (47870774069/1000000000000 : ℚ), 3⟩,
    ⟨(333023341449/500000000000 : ℚ), (-1295816207/10000000000 : ℚ), (3660998593/50000000000 : ℚ), 3⟩,
    ⟨(336610125751/500000000000 : ℚ), (-1613766669/10000000000 : ℚ), (11813660289/125000000000 : ℚ), 3⟩,
    ⟨(679656144731/1000000000000 : ℚ), (-1875996131/10000000000 : ℚ), (112246388119/1000000000000 : ℚ), 2⟩,
    ⟨(685292381417/1000000000000 : ℚ), (-522421393/2500000000 : ℚ), (126829479607/1000000000000 : ℚ), 2⟩,
    ⟨(345037340759/500000000000 : ℚ), (-2260396719/10000000000 : ℚ), (17321079201/125000000000 : ℚ), 2⟩,
    ⟨(69395698887/100000000000 : ℚ), (-2392378393/10000000000 : ℚ), (147701790053/1000000000000 : ℚ), 2⟩,
    ⟨(174225478683/250000000000 : ℚ), (-2488792929/10000000000 : ℚ), (77203332397/500000000000 : ℚ), 2⟩,
    ⟨(698881097857/1000000000000 : ℚ), (-2551880747/10000000000 : ℚ), (158809487893/1000000000000 : ℚ), 2⟩,
    ⟨(69987547763/100000000000 : ℚ), (-64576879/250000000 : ℚ), (80495577321/500000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2586958249/10000000000 : ℚ), (161262946661/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (7805813153/31250000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control617.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control617.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate617

-- Control619
namespace DiagonalRamsey.JointInheritedCertificate619
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(213933557791/500000000000 : ℚ), (3088023347969/2000000000 : ℚ), (-661572832546141/1000000000000 : ℚ), 12⟩,
    ⟨(85739096593/200000000000 : ℚ), (1691701418549/10000000000 : ℚ), (-18278430942503/250000000000 : ℚ), 9⟩,
    ⟨(430344240101/1000000000000 : ℚ), (594980567539/10000000000 : ℚ), (-6509276216769/250000000000 : ℚ), 8⟩,
    ⟨(108199377139/250000000000 : ℚ), (147131711557/5000000000 : ℚ), (-13067156213371/1000000000000 : ℚ), 7⟩,
    ⟨(87206332403/200000000000 : ℚ), (6853065361/400000000 : ℚ), (-7729887762459/1000000000000 : ℚ), 6⟩,
    ⟨(110003888453/250000000000 : ℚ), (109613854409/10000000000 : ℚ), (-1257085897141/250000000000 : ℚ), 5⟩,
    ⟨(44471081689/100000000000 : ℚ), (3723643747/500000000 : ℚ), (-868684787669/250000000000 : ℚ), 5⟩,
    ⟨(450072233301/1000000000000 : ℚ), (6584719661/1250000000 : ℚ), (-625047320029/250000000000 : ℚ), 5⟩,
    ⟨(57006021209/125000000000 : ℚ), (9574714467/2500000000 : ℚ), (-1849086876743/1000000000000 : ℚ), 4⟩,
    ⟨(46258107447/100000000000 : ℚ), (28358929053/10000000000 : ℚ), (-1392763277159/1000000000000 : ℚ), 4⟩,
    ⟨(469608032251/1000000000000 : ℚ), (1061580613/500000000 : ℚ), (-265180520819/250000000000 : ℚ), 4⟩,
    ⟨(477061369569/1000000000000 : ℚ), (15968543527/10000000000 : ℚ), (-811714577297/1000000000000 : ℚ), 4⟩,
    ⟨(60608663339/125000000000 : ℚ), (2397430817/2000000000 : ℚ), (-77537930917/125000000000 : ℚ), 4⟩,
    ⟨(492956648977/1000000000000 : ℚ), (1782811313/2000000000 : ℚ), (-470113556351/1000000000000 : ℚ), 3⟩,
    ⟨(250622755419/500000000000 : ℚ), (6501353029/10000000000 : ℚ), (-17511002043/50000000000 : ℚ), 3⟩,
    ⟨(254828033011/500000000000 : ℚ), (4579510281/10000000000 : ℚ), (-31638921231/125000000000 : ℚ), 3⟩,
    ⟨(259053658143/500000000000 : ℚ), (605926311/2000000000 : ℚ), (-173488785999/1000000000000 : ℚ), 3⟩,
    ⟨(52651787147/100000000000 : ℚ), (1766516983/10000000000 : ℚ), (-107531544377/1000000000000 : ℚ), 3⟩,
    ⟨(53480673333/100000000000 : ℚ), (145594863/2000000000 : ℚ), (-52432351749/1000000000000 : ℚ), 3⟩,
    ⟨(108578815119/200000000000 : ℚ), (-26423861/2000000000 : ℚ), (-15237969/2500000000 : ℚ), 3⟩,
    ⟨(550702012739/1000000000000 : ℚ), (-42421691/500000000 : ℚ), (16533114851/500000000000 : ℚ), 3⟩,
    ⟨(558155350057/1000000000000 : ℚ), (-144732599/1000000000 : ℚ), (33132937041/500000000000 : ℚ), 3⟩,
    ⟨(282591153919/500000000000 : ℚ), (-1949016811/10000000000 : ℚ), (94441017457/1000000000000 : ℚ), 3⟩,
    ⟨(142928803159/250000000000 : ℚ), (-1184564051/5000000000 : ℚ), (29579988091/250000000000 : ℚ), 3⟩,
    ⟨(577691149007/1000000000000 : ℚ), (-2719783831/10000000000 : ℚ), (138470759501/1000000000000 : ℚ), 3⟩,
    ⟨(583052565417/1000000000000 : ℚ), (-3010410291/10000000000 : ℚ), (155336950553/1000000000000 : ℚ), 3⟩,
    ⟨(36734239281/62500000000 : ℚ), (-101510129/312500000 : ℚ), (21157982119/125000000000 : ℚ), 3⟩,
    ⟨(591731720293/1000000000000 : ℚ), (-3439168061/10000000000 : ℚ), (11282397623/62500000000 : ℚ), 3⟩,
    ⟨(74370734219/125000000000 : ℚ), (-3587234901/10000000000 : ℚ), (94651865281/500000000000 : ℚ), 3⟩,
    ⟨(597419142207/1000000000000 : ℚ), (-3695707527/10000000000 : ℚ), (12235670091/62500000000 : ℚ), 3⟩,
    ⟨(299533949671/500000000000 : ℚ), (-150673343/400000000 : ℚ), (20002577199/100000000000 : ℚ), 3⟩,
    ⟨(23995850669/40000000000 : ℚ), (-1901023699/5000000000 : ℚ), (202136775251/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-1903216469/5000000000 : ℚ), (101199942451/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (270257224277/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control619.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control619.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate619

-- Control621
namespace DiagonalRamsey.JointInheritedCertificate621
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127499186867/500000000000 : ℚ), (12665991168419/10000000000 : ℚ), (-323533528485869/1000000000000 : ℚ), 12⟩,
    ⟨(51119985599/200000000000 : ℚ), (1384937142619/10000000000 : ℚ), (-893589699941/25000000000 : ℚ), 9⟩,
    ⟨(12839862161/50000000000 : ℚ), (97118773469/2000000000 : ℚ), (-6360122518863/500000000000 : ℚ), 8⟩,
    ⟨(258578788609/1000000000000 : ℚ), (2392419961/100000000 : ℚ), (-6376891618293/1000000000000 : ℚ), 7⟩,
    ⟨(260927406907/1000000000000 : ℚ), (1109295577/80000000 : ℚ), (-3766248121617/1000000000000 : ℚ), 6⟩,
    ⟨(131910239817/500000000000 : ℚ), (44124769521/5000000000 : ℚ), (-1222260788001/500000000000 : ℚ), 6⟩,
    ⟨(6680753623/25000000000 : ℚ), (29795539641/5000000000 : ℚ), (-1684103138399/1000000000000 : ℚ), 5⟩,
    ⟨(1059076429/3906250000 : ℚ), (10461578951/2500000000 : ℚ), (-1206778461447/1000000000000 : ℚ), 5⟩,
    ⟨(275463246573/1000000000000 : ℚ), (1884861177/625000000 : ℚ), (-110943083687/125000000000 : ℚ), 4⟩,
    ⟨(280207393671/1000000000000 : ℚ), (22088182091/10000000000 : ℚ), (-331739910957/500000000000 : ℚ), 4⟩,
    ⟨(285310318387/1000000000000 : ℚ), (1019202447/625000000 : ℚ), (-25005622503/50000000000 : ℚ), 4⟩,
    ⟨(145361438383/500000000000 : ℚ), (6020020009/5000000000 : ℚ), (-188637936813/500000000000 : ℚ), 4⟩,
    ⟨(296392942913/1000000000000 : ℚ), (2202795559/2500000000 : ℚ), (-282537162273/1000000000000 : ℚ), 4⟩,
    ⟨(302265910991/1000000000000 : ℚ), (6316450311/10000000000 : ℚ), (-41579283681/200000000000 : ℚ), 3⟩,
    ⟨(154142610553/500000000000 : ℚ), (4354263311/10000000000 : ℚ), (-29604073609/200000000000 : ℚ), 3⟩,
    ⟨(314392904013/1000000000000 : ℚ), (1393543439/5000000000 : ℚ), (-3101442683/31250000000 : ℚ), 3⟩,
    ⟨(64106027877/200000000000 : ℚ), (1518735413/10000000000 : ℚ), (-11798841273/200000000000 : ℚ), 3⟩,
    ⟨(81659455573/250000000000 : ℚ), (240255217/5000000000 : ℚ), (-5081739573/200000000000 : ℚ), 3⟩,
    ⟨(332657132407/1000000000000 : ℚ), (-75508689/2000000000 : ℚ), (358707273/125000000000 : ℚ), 3⟩,
    ⟨(67706020097/200000000000 : ℚ), (-546156113/5000000000 : ℚ), (26851615189/1000000000000 : ℚ), 3⟩,
    ⟨(43025020829/125000000000 : ℚ), (-211423311/1250000000 : ℚ), (47298147253/1000000000000 : ℚ), 3⟩,
    ⟨(349612725011/1000000000000 : ℚ), (-2195627403/10000000000 : ℚ), (32393949229/500000000000 : ℚ), 3⟩,
    ⟨(354715649727/1000000000000 : ℚ), (-655236463/2500000000 : ℚ), (79764205059/1000000000000 : ℚ), 3⟩,
    ⟨(14378391873/40000000000 : ℚ), (-1489778789/5000000000 : ℚ), (92568497693/1000000000000 : ℚ), 3⟩,
    ⟨(181899738787/500000000000 : ℚ), (-3280882419/10000000000 : ℚ), (6466527407/62500000000 : ℚ), 3⟩,
    ⟨(183846449239/500000000000 : ℚ), (-353219717/1000000000 : ℚ), (22531126379/200000000000 : ℚ), 3⟩,
    ⟨(92775640941/250000000000 : ℚ), (-747822947/2000000000 : ℚ), (60149394503/500000000000 : ℚ), 3⟩,
    ⟨(373995636491/1000000000000 : ℚ), (-976484613/2500000000 : ℚ), (126513606781/1000000000000 : ℚ), 3⟩,
    ⟨(376344254789/1000000000000 : ℚ), (-2017962413/5000000000 : ℚ), (13139021299/100000000000 : ℚ), 3⟩,
    ⟨(189062900089/500000000000 : ℚ), (-4131477377/10000000000 : ℚ), (13499475199/100000000000 : ℚ), 3⟩,
    ⟨(379323115403/1000000000000 : ℚ), (-838857433/2000000000 : ℚ), (137373501241/1000000000000 : ℚ), 3⟩,
    ⟨(11872645927/31250000000 : ℚ), (-4225430461/10000000000 : ℚ), (138555773791/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-845862251/2000000000 : ℚ), (138703229361/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (16434641181/40000000000 : ℚ)
  μ := (19/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control621.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control621.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate621
