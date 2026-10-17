import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control830
namespace DiagonalRamsey.JointInheritedCertificate830
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11369904697/125000000000 : ℚ), (251985931619/1250000000 : ℚ), (-9195141308319/500000000000 : ℚ), 11⟩,
    ⟨(2291018721/25000000000 : ℚ), (182086630289/10000000000 : ℚ), (-1686873967229/1000000000000 : ℚ), 8⟩,
    ⟨(46450008729/500000000000 : ℚ), (18352591887/5000000000 : ℚ), (-87077857411/250000000000 : ℚ), 7⟩,
    ⟨(23636332799/250000000000 : ℚ), (-745327977/2500000000 : ℚ), (1150251471/50000000000 : ℚ), 6⟩,
    ⟨(96326205953/1000000000000 : ℚ), (-19213138127/10000000000 : ℚ), (88866067431/500000000000 : ℚ), 6⟩,
    ⟨(97971519691/1000000000000 : ℚ), (-273030097/100000000 : ℚ), (128135957169/500000000000 : ℚ), 5⟩,
    ⟨(24807697077/250000000000 : ℚ), (-7898420513/2500000000 : ℚ), (298566557123/1000000000000 : ℚ), 5⟩,
    ⟨(99912299573/1000000000000 : ℚ), (-16759987553/5000000000 : ℚ), (317745703943/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-4219094861/1250000000 : ℚ), (12802900749/40000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (128591667829/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control830.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control830.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate830

-- Control831
namespace DiagonalRamsey.JointInheritedCertificate831
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136549039393/1000000000000 : ℚ), (2034311790409/10000000000 : ℚ), (-27858714586039/1000000000000 : ℚ), 11⟩,
    ⟨(68781500233/500000000000 : ℚ), (183957282401/10000000000 : ℚ), (-2557328226679/1000000000000 : ℚ), 8⟩,
    ⟨(17429569529/125000000000 : ℚ), (37277216713/10000000000 : ℚ), (-265066404023/500000000000 : ℚ), 7⟩,
    ⟨(17735559351/125000000000 : ℚ), (-1369859957/5000000000 : ℚ), (31792599883/1000000000000 : ℚ), 6⟩,
    ⟨(144534082781/1000000000000 : ℚ), (-2385561811/1250000000 : ℚ), (265590806231/1000000000000 : ℚ), 6⟩,
    ⟨(146982001357/1000000000000 : ℚ), (-13607731421/5000000000 : ℚ), (384027534191/1000000000000 : ℚ), 5⟩,
    ⟨(74427778561/500000000000 : ℚ), (-7880123861/2500000000 : ℚ), (447689217811/1000000000000 : ℚ), 5⟩,
    ⟨(37467379549/250000000000 : ℚ), (-33451152009/10000000000 : ℚ), (95304823637/200000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-16842186671/5000000000 : ℚ), (1200052283/2500000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (404514489343/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control831.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control831.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate831

-- Control832
namespace DiagonalRamsey.JointInheritedCertificate832
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10425664279/15625000000 : ℚ), (16666172127351/10000000000 : ℚ), (-1112837513416829/1000000000000 : ℚ), 14⟩,
    ⟨(166970348049/250000000000 : ℚ), (229199910137/1250000000 : ℚ), (-1921417617733/15625000000 : ℚ), 10⟩,
    ⟨(669152996127/1000000000000 : ℚ), (162172623781/2500000000 : ℚ), (-21891140737519/500000000000 : ℚ), 9⟩,
    ⟨(67104507941/100000000000 : ℚ), (32302433847/1000000000 : ℚ), (-21966198494563/1000000000000 : ℚ), 8⟩,
    ⟨(673539420247/1000000000000 : ℚ), (94731183303/5000000000 : ℚ), (-3247418391167/250000000000 : ℚ), 7⟩,
    ⟨(676611996773/1000000000000 : ℚ), (122153206323/10000000000 : ℚ), (-4223576166677/500000000000 : ℚ), 7⟩,
    ⟨(170058304599/250000000000 : ℚ), (41826548237/5000000000 : ℚ), (-5835975557641/1000000000000 : ℚ), 6⟩,
    ⟨(171092052693/250000000000 : ℚ), (2982860723/500000000 : ℚ), (-4199193650507/1000000000000 : ℚ), 6⟩,
    ⟨(137795430333/200000000000 : ℚ), (21872430483/5000000000 : ℚ), (-388353742867/125000000000 : ℚ), 6⟩,
    ⟨(347007827227/500000000000 : ℚ), (8171940141/2500000000 : ℚ), (-2342431988791/1000000000000 : ℚ), 5⟩,
    ⟨(699435195603/1000000000000 : ℚ), (6179870461/2500000000 : ℚ), (-55856163919/31250000000 : ℚ), 5⟩,
    ⟨(44073973873/62500000000 : ℚ), (18807911523/10000000000 : ℚ), (-171539714871/125000000000 : ℚ), 5⟩,
    ⟨(355602726723/500000000000 : ℚ), (3579375781/2500000000 : ℚ), (-1054378114569/1000000000000 : ℚ), 5⟩,
    ⟨(717442816123/1000000000000 : ℚ), (10839733593/10000000000 : ℚ), (-806002587809/1000000000000 : ℚ), 4⟩,
    ⟨(361917800393/500000000000 : ℚ), (8102438309/10000000000 : ℚ), (-304389510599/500000000000 : ℚ), 4⟩,
    ⟨(29212889657/40000000000 : ℚ), (1183744487/2000000000 : ℚ), (-450032713629/1000000000000 : ℚ), 4⟩,
    ⟨(46052516759/62500000000 : ℚ), (4156877491/10000000000 : ℚ), (-8020177833/25000000000 : ℚ), 4⟩,
    ⟨(743326908783/1000000000000 : ℚ), (680497301/2500000000 : ℚ), (-13414263889/62500000000 : ℚ), 4⟩,
    ⟨(374859846723/500000000000 : ℚ), (6032513/39062500 : ℚ), (-31680917399/250000000000 : ℚ), 4⟩,
    ⟨(755957056123/1000000000000 : ℚ), (571782309/10000000000 : ℚ), (-53515080893/1000000000000 : ℚ), 4⟩,
    ⟨(761978927601/1000000000000 : ℚ), (-58779069/2500000000 : ℚ), (7720103301/1000000000000 : ℚ), 4⟩,
    ⟨(383863656983/500000000000 : ℚ), (-28333001/312500000 : ℚ), (59078846799/1000000000000 : ℚ), 4⟩,
    ⟨(154629371023/200000000000 : ℚ), (-29325827/200000000 : ℚ), (102192280031/1000000000000 : ℚ), 4⟩,
    ⟨(48636584869/62500000000 : ℚ), (-1932319823/10000000000 : ℚ), (17292312749/125000000000 : ℚ), 4⟩,
    ⟨(782794298797/1000000000000 : ℚ), (-11595407/50000000 : ℚ), (84261748961/500000000000 : ℚ), 4⟩,
    ⟨(786929291173/1000000000000 : ℚ), (-164864419/625000000 : ℚ), (9677002409/50000000000 : ℚ), 4⟩,
    ⟨(197637628199/250000000000 : ℚ), (-1448689921/5000000000 : ℚ), (214011201197/1000000000000 : ℚ), 4⟩,
    ⟨(396811544661/500000000000 : ℚ), (-776144291/2500000000 : ℚ), (115211367523/500000000000 : ℚ), 4⟩,
    ⟨(796117430159/1000000000000 : ℚ), (-816166539/2500000000 : ℚ), (60786896833/250000000000 : ℚ), 4⟩,
    ⟨(798009513441/1000000000000 : ℚ), (-3381554153/10000000000 : ℚ), (252464242579/1000000000000 : ℚ), 4⟩,
    ⟨(799281117373/1000000000000 : ℚ), (-691602101/2000000000 : ℚ), (1616064849/6250000000 : ℚ), 4⟩,
    ⟨(799919995713/1000000000000 : ℚ), (-436975849/1250000000 : ℚ), (52318513369/200000000000 : ℚ), 4⟩,
    ⟨(4/5 : ℚ), (-54695489/156250000 : ℚ), (130984454163/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (26549028769/125000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control832.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control832.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate832

-- Control833
namespace DiagonalRamsey.JointInheritedCertificate833
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287830428887/500000000000 : ℚ), (15350079050493/10000000000 : ℚ), (-442163473336527/500000000000 : ℚ), 14⟩,
    ⟨(144064805979/250000000000 : ℚ), (421855073831/2500000000 : ℚ), (-9767064879183/100000000000 : ℚ), 10⟩,
    ⟨(115490038721/200000000000 : ℚ), (596100041473/10000000000 : ℚ), (-6947734345539/200000000000 : ℚ), 9⟩,
    ⟨(289611148577/500000000000 : ℚ), (148106318711/5000000000 : ℚ), (-17400940071493/1000000000000 : ℚ), 8⟩,
    ⟨(581558468237/1000000000000 : ℚ), (173252635369/10000000000 : ℚ), (-2053365095199/200000000000 : ℚ), 7⟩,
    ⟨(73054526031/125000000000 : ℚ), (111303146517/10000000000 : ℚ), (-1664089158317/250000000000 : ℚ), 7⟩,
    ⟨(293913901489/500000000000 : ℚ), (75878315101/10000000000 : ℚ), (-916129424299/200000000000 : ℚ), 6⟩,
    ⟨(591700589517/1000000000000 : ℚ), (13451092459/2500000000 : ℚ), (-3279200328269/1000000000000 : ℚ), 6⟩,
    ⟨(149004317703/250000000000 : ℚ), (39168846793/10000000000 : ℚ), (-301288769561/125000000000 : ℚ), 6⟩,
    ⟨(300368137431/500000000000 : ℚ), (28999353909/10000000000 : ℚ), (-450490156069/250000000000 : ℚ), 5⟩,
    ⟨(605812155081/1000000000000 : ℚ), (21669707329/10000000000 : ℚ), (-679949300411/500000000000 : ℚ), 5⟩,
    ⟨(122239205593/200000000000 : ℚ), (2028739093/1250000000 : ℚ), (-1028967149563/1000000000000 : ℚ), 5⟩,
    ⟨(154209010969/250000000000 : ℚ), (12095129027/10000000000 : ℚ), (-387571924287/500000000000 : ℚ), 5⟩,
    ⟨(622677886377/1000000000000 : ℚ), (555596581/625000000 : ℚ), (-288259246139/500000000000 : ℚ), 5⟩,
    ⟨(628665295333/1000000000000 : ℚ), (1590724717/2500000000 : ℚ), (-16738595721/40000000000 : ℚ), 4⟩,
    ⟨(634740608721/1000000000000 : ℚ), (217171903/500000000 : ℚ), (-58183637463/200000000000 : ℚ), 4⟩,
    ⟨(640845317953/1000000000000 : ℚ), (1355113423/5000000000 : ℚ), (-186770306181/1000000000000 : ℚ), 4⟩,
    ⟨(646920631341/1000000000000 : ℚ), (34405349/250000000 : ℚ), (-25222047713/250000000000 : ℚ), 4⟩,
    ⟨(652908040297/1000000000000 : ℚ), (277541723/10000000000 : ℚ), (-1474663473/50000000000 : ℚ), 4⟩,
    ⟨(329374941399/500000000000 : ℚ), (-633398379/10000000000 : ℚ), (30241963637/1000000000000 : ℚ), 4⟩,
    ⟨(66438989871/100000000000 : ℚ), (-1392589931/10000000000 : ℚ), (80462816657/1000000000000 : ℚ), 4⟩,
    ⟨(334886885797/500000000000 : ℚ), (-405507919/2000000000 : ℚ), (30703898779/250000000000 : ℚ), 4⟩,
    ⟨(168712412953/250000000000 : ℚ), (-2559463111/10000000000 : ℚ), (39643733301/250000000000 : ℚ), 4⟩,
    ⟨(679568655863/1000000000000 : ℚ), (-3004830919/10000000000 : ℚ), (7549357221/40000000000 : ℚ), 4⟩,
    ⟨(683885337157/1000000000000 : ℚ), (-3376479223/10000000000 : ℚ), (214069055059/1000000000000 : ℚ), 4⟩,
    ⟨(42984882731/62500000000 : ℚ), (-1842210427/5000000000 : ℚ), (5879690773/25000000000 : ℚ), 4⟩,
    ⟨(345574859213/500000000000 : ℚ), (-3936444977/10000000000 : ℚ), (3157038647/12500000000 : ℚ), 4⟩,
    ⟨(694027458437/1000000000000 : ℚ), (-1034641343/2500000000 : ℚ), (1666009209/6250000000 : ℚ), 4⟩,
    ⟨(8704545369/12500000000 : ℚ), (-536919683/1250000000 : ℚ), (277461467383/1000000000000 : ℚ), 4⟩,
    ⟨(698135733069/1000000000000 : ℚ), (-1102552787/2500000000 : ℚ), (142734793179/500000000000 : ℚ), 4⟩,
    ⟨(699326702759/1000000000000 : ℚ), (-2242758661/5000000000 : ℚ), (290731449131/1000000000000 : ℚ), 4⟩,
    ⟨(6999250689/10000000000 : ℚ), (-4522799789/10000000000 : ℚ), (36667478153/125000000000 : ℚ), 4⟩,
    ⟨(7/10 : ℚ), (-181097717/400000000 : ℚ), (293664827387/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (269339394523/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control833.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control833.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate833

-- Control835
namespace DiagonalRamsey.JointInheritedCertificate835
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7298402191/12500000000 : ℚ), (16670973341303/10000000000 : ℚ), (-243516095215107/250000000000 : ℚ), 14⟩,
    ⟨(73053878189/125000000000 : ℚ), (458260102207/2500000000 : ℚ), (-21513219113599/200000000000 : ℚ), 11⟩,
    ⟨(585543343941/1000000000000 : ℚ), (323849759999/5000000000 : ℚ), (-19123412301087/500000000000 : ℚ), 9⟩,
    ⟨(293599209167/500000000000 : ℚ), (321910109081/10000000000 : ℚ), (-19149410552059/1000000000000 : ℚ), 8⟩,
    ⟨(589380309419/1000000000000 : ℚ), (188292665773/10000000000 : ℚ), (-5645619342411/500000000000 : ℚ), 7⟩,
    ⟨(592068004393/1000000000000 : ℚ), (120950317193/10000000000 : ℚ), (-1828587659383/250000000000 : ℚ), 7⟩,
    ⟨(595235619283/1000000000000 : ℚ), (82425759061/10000000000 : ℚ), (-1005599260391/200000000000 : ℚ), 6⟩,
    ⟨(598852648227/1000000000000 : ℚ), (14602249401/2500000000 : ℚ), (-3594491148537/1000000000000 : ℚ), 6⟩,
    ⟨(602884257259/1000000000000 : ℚ), (5309627731/1250000000 : ℚ), (-1318723180591/500000000000 : ℚ), 6⟩,
    ⟨(607291619779/1000000000000 : ℚ), (31400409953/10000000000 : ℚ), (-393477184637/200000000000 : ℚ), 5⟩,
    ⟨(306016145239/500000000000 : ℚ), (4682425211/2000000000 : ℚ), (-1480489191679/1000000000000 : ℚ), 5⟩,
    ⟨(123412122821/200000000000 : ℚ), (17479734177/10000000000 : ℚ), (-1115999791967/1000000000000 : ℚ), 5⟩,
    ⟨(311164082577/500000000000 : ℚ), (12967527953/10000000000 : ℚ), (-209110238599/250000000000 : ℚ), 5⟩,
    ⟨(627784214231/1000000000000 : ℚ), (4733464633/5000000000 : ℚ), (-617677538837/1000000000000 : ℚ), 5⟩,
    ⟨(316688108299/500000000000 : ℚ), (3352896893/5000000000 : ℚ), (-17743913827/40000000000 : ℚ), 5⟩,
    ⟨(319525159109/500000000000 : ℚ), (2248653443/5000000000 : ℚ), (-75778657151/250000000000 : ℚ), 4⟩,
    ⟨(644751874389/1000000000000 : ℚ), (2709891853/10000000000 : ℚ), (-9419887957/50000000000 : ℚ), 4⟩,
    ⟨(81303247001/125000000000 : ℚ), (249762551/2000000000 : ℚ), (-46896418079/500000000000 : ℚ), 4⟩,
    ⟨(82002247297/125000000000 : ℚ), (2227829/500000000 : ℚ), (-3784429171/250000000000 : ℚ), 4⟩,
    ⟨(165368506863/250000000000 : ℚ), (-477356877/5000000000 : ℚ), (25340913983/500000000000 : ℚ), 4⟩,
    ⟨(666741578501/1000000000000 : ℚ), (-894092707/5000000000 : ℚ), (21205652053/200000000000 : ℚ), 4⟩,
    ⟨(41985618883/62500000000 : ℚ), (-1242908843/5000000000 : ℚ), (15271407047/100000000000 : ℚ), 4⟩,
    ⟨(676510572827/1000000000000 : ℚ), (-307071879/1000000000 : ℚ), (192142055289/1000000000000 : ℚ), 4⟩,
    ⟨(170229483837/250000000000 : ℚ), (-3560826961/10000000000 : ℚ), (225404643287/1000000000000 : ℚ), 4⟩,
    ⟨(684949544379/1000000000000 : ℚ), (-1985059733/5000000000 : ℚ), (253355443221/1000000000000 : ℚ), 4⟩,
    ⟨(688566573323/1000000000000 : ℚ), (-430949553/1000000000 : ℚ), (276661623219/1000000000000 : ℚ), 4⟩,
    ⟨(345867094107/500000000000 : ℚ), (-4587429907/10000000000 : ℚ), (147921412557/500000000000 : ℚ), 4⟩,
    ⟨(694421883187/1000000000000 : ℚ), (-2405230969/5000000000 : ℚ), (155650217131/500000000000 : ℚ), 4⟩,
    ⟨(696603774273/1000000000000 : ℚ), (-996712739/2000000000 : ℚ), (161669879361/500000000000 : ℚ), 4⟩,
    ⟨(139651769733/200000000000 : ℚ), (-5110416491/10000000000 : ℚ), (332186818537/1000000000000 : ℚ), 4⟩,
    ⟨(139874233419/200000000000 : ℚ), (-5193615143/10000000000 : ℚ), (169000425109/500000000000 : ℚ), 4⟩,
    ⟨(349965008663/500000000000 : ℚ), (-2617406289/5000000000 : ℚ), (340883229323/1000000000000 : ℚ), 4⟩,
    ⟨(7/10 : ℚ), (-2619971819/5000000000 : ℚ), (85310596387/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (236588539459/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control835.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control835.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate835

-- Control836
namespace DiagonalRamsey.JointInheritedCertificate836
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(159470991681/1000000000000 : ℚ), (3236128792053/10000000000 : ℚ), (-12936759665701/250000000000 : ℚ), 12⟩,
    ⟨(16024786573/100000000000 : ℚ), (85825653013/2500000000 : ℚ), (-2786700818843/500000000000 : ℚ), 9⟩,
    ⟨(40442939749/250000000000 : ℚ), (7093786459/625000000 : ℚ), (-93954072681/50000000000 : ℚ), 8⟩,
    ⟨(163984109113/1000000000000 : ℚ), (50885769319/10000000000 : ℚ), (-860725125969/1000000000000 : ℚ), 7⟩,
    ⟨(166799896709/1000000000000 : ℚ), (3184752033/1250000000 : ℚ), (-220536503883/500000000000 : ℚ), 6⟩,
    ⟨(170110912643/1000000000000 : ℚ), (12818153621/10000000000 : ℚ), (-228071525817/1000000000000 : ℚ), 6⟩,
    ⟨(10861869777/62500000000 : ℚ), (5654896811/10000000000 : ℚ), (-105030197173/1000000000000 : ℚ), 5⟩,
    ⟨(177695526023/1000000000000 : ℚ), (1232590189/10000000000 : ℚ), (-27380975849/1000000000000 : ℚ), 5⟩,
    ⟨(181677651029/1000000000000 : ℚ), (-1675558099/10000000000 : ℚ), (24836750949/1000000000000 : ℚ), 5⟩,
    ⟨(9279163031/50000000000 : ℚ), (-3678310107/10000000000 : ℚ), (3849554619/62500000000 : ℚ), 5⟩,
    ⟨(189262264409/1000000000000 : ℚ), (-2550848431/5000000000 : ℚ), (11032442077/125000000000 : ℚ), 4⟩,
    ⟨(24071660043/125000000000 : ℚ), (-6129710861/10000000000 : ℚ), (10788071629/100000000000 : ℚ), 4⟩,
    ⟨(195389067939/1000000000000 : ℚ), (-343478363/500000000 : ℚ), (122230062679/1000000000000 : ℚ), 4⟩,
    ⟨(24700177257/125000000000 : ℚ), (-3692252927/5000000000 : ℚ), (132347408717/1000000000000 : ℚ), 4⟩,
    ⟨(99562655661/500000000000 : ℚ), (-1927839863/2500000000 : ℚ), (138830722733/1000000000000 : ℚ), 4⟩,
    ⟨(49975546343/250000000000 : ℚ), (-1967582861/2500000000 : ℚ), (28400480173/200000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-1578001047/2000000000 : ℚ), (142395780401/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (308727238567/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control836.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control836.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate836

-- Control837
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
theorem certOK : JointInheritedControls.control837.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control837.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate837

-- Control838
namespace DiagonalRamsey.JointInheritedCertificate838
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9139072131/200000000000 : ℚ), (498588805613/2500000000 : ℚ), (-9139221297871/1000000000000 : ℚ), 11⟩,
    ⟨(46019853221/1000000000000 : ℚ), (18011624761/1000000000 : ℚ), (-838015897723/1000000000000 : ℚ), 8⟩,
    ⟨(46619437303/1000000000000 : ℚ), (4523884901/1250000000 : ℚ), (-86357731647/500000000000 : ℚ), 7⟩,
    ⟨(47402831659/1000000000000 : ℚ), (-3144922869/10000000000 : ℚ), (2381551511/200000000000 : ℚ), 6⟩,
    ⟨(48250771599/1000000000000 : ℚ), (-4815062497/2500000000 : ℚ), (8889610689/100000000000 : ℚ), 6⟩,
    ⟨(24517082977/500000000000 : ℚ), (-27306654899/10000000000 : ℚ), (25602215901/200000000000 : ℚ), 6⟩,
    ⟨(12408437509/250000000000 : ℚ), (-31580761411/10000000000 : ℚ), (74545664761/500000000000 : ℚ), 5⟩,
    ⟨(49958242603/1000000000000 : ℚ), (-33501422227/10000000000 : ℚ), (79327430457/500000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-16866802849/5000000000 : ℚ), (19976911553/125000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (10246875813/15625000000 : ℚ)
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
theorem certOK : JointInheritedControls.control838.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control838.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate838
