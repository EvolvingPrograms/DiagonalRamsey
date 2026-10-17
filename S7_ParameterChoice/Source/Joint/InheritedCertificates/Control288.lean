import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate288
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(266507295419/1000000000000 : ℚ), (7184486704633/5000000000 : ℚ), (-383711929157517/1000000000000 : ℚ), 12⟩,
    ⟨(66811489833/250000000000 : ℚ), (784487861857/5000000000 : ℚ), (-42408655652929/1000000000000 : ℚ), 8⟩,
    ⟨(268716173421/1000000000000 : ℚ), (137290516277/2500000000 : ℚ), (-1510424136371/100000000000 : ℚ), 7⟩,
    ⟨(135451889361/500000000000 : ℚ), (6752310889/250000000 : ℚ), (-7581401285519/1000000000000 : ℚ), 6⟩,
    ⟨(273787707397/1000000000000 : ℚ), (390780169/25000000 : ℚ), (-4485360391387/1000000000000 : ℚ), 5⟩,
    ⟨(277340185639/1000000000000 : ℚ), (12422737587/1250000000 : ℚ), (-729477419963/250000000000 : ℚ), 5⟩,
    ⟨(14076350057/50000000000 : ℚ), (67083970093/10000000000 : ℚ), (-1008070725331/500000000000 : ℚ), 4⟩,
    ⟨(286307832577/1000000000000 : ℚ), (9426309239/2000000000 : ℚ), (-1450105636567/1000000000000 : ℚ), 4⟩,
    ⟨(291636637931/1000000000000 : ℚ), (3402170087/1000000000 : ℚ), (-535776505341/500000000000 : ℚ), 4⟩,
    ⟨(297462097893/1000000000000 : ℚ), (24994930349/10000000000 : ℚ), (-201464872913/250000000000 : ℚ), 4⟩,
    ⟨(151864055049/500000000000 : ℚ), (9273082891/5000000000 : ℚ), (-306071179751/500000000000 : ℚ), 3⟩,
    ⟨(12414973177/40000000000 : ℚ), (13799441919/10000000000 : ℚ), (-58310537411/125000000000 : ℚ), 3⟩,
    ⟨(317336749147/1000000000000 : ℚ), (10217910431/10000000000 : ℚ), (-177070249861/500000000000 : ℚ), 3⟩,
    ⟨(324548317357/1000000000000 : ℚ), (7458447043/10000000000 : ℚ), (-265624118629/1000000000000 : ℚ), 3⟩,
    ⟨(33193958271/100000000000 : ℚ), (5294000203/10000000000 : ℚ), (-19461131013/100000000000 : ℚ), 3⟩,
    ⟨(169719681641/500000000000 : ℚ), (3569894311/10000000000 : ℚ), (-68379826653/500000000000 : ℚ), 3⟩,
    ⟨(86743858021/250000000000 : ℚ), (87125413/400000000 : ℚ), (-89011622479/1000000000000 : ℚ), 3⟩,
    ⟨(22154700791/62500000000 : ℚ), (3255391/31250000 : ℚ), (-24584084173/500000000000 : ℚ), 2⟩,
    ⟨(361866478009/1000000000000 : ℚ), (104771537/10000000000 : ℚ), (-78094883/5000000000 : ℚ), 2⟩,
    ⟨(369078046219/1000000000000 : ℚ), (-336962497/5000000000 : ℚ), (12833123659/1000000000000 : ℚ), 2⟩,
    ⟨(376040465941/1000000000000 : ℚ), (-1325134001/10000000000 : ℚ), (37089397849/1000000000000 : ℚ), 2⟩,
    ⟨(95671671317/250000000000 : ℚ), (-1872090111/10000000000 : ℚ), (14458818203/250000000000 : ℚ), 2⟩,
    ⟨(388952697473/1000000000000 : ℚ), (-2332497537/10000000000 : ℚ), (37798071573/500000000000 : ℚ), 2⟩,
    ⟨(78955631487/200000000000 : ℚ), (-2719941637/10000000000 : ℚ), (22694247153/250000000000 : ℚ), 2⟩,
    ⟨(400106962789/1000000000000 : ℚ), (-1522448923/5000000000 : ℚ), (51845484551/500000000000 : ℚ), 2⟩,
    ⟨(202443897113/500000000000 : ℚ), (-165773103/500000000 : ℚ), (114580366029/1000000000000 : ℚ), 2⟩,
    ⟨(409074609727/1000000000000 : ℚ), (-707576969/2000000000 : ℚ), (123632107327/1000000000000 : ℚ), 2⟩,
    ⟨(412627087969/1000000000000 : ℚ), (-37169649/100000000 : ℚ), (5239575053/40000000000 : ℚ), 2⟩,
    ⟨(83102203329/200000000000 : ℚ), (-3856339551/10000000000 : ℚ), (3419008119/25000000000 : ℚ), 2⟩,
    ⟨(83539724389/200000000000 : ℚ), (-247418633/625000000 : ℚ), (70512290523/500000000000 : ℚ), 2⟩,
    ⟨(209584418017/500000000000 : ℚ), (-4025935957/10000000000 : ℚ), (28767604723/200000000000 : ℚ), 2⟩,
    ⟨(419907499947/1000000000000 : ℚ), (-4059260997/10000000000 : ℚ), (145236134407/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4063413007/10000000000 : ℚ), (145410499591/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (146116136371/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control288.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control288.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate288
