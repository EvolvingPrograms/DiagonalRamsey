import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
