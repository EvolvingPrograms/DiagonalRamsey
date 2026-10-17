import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate94
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(100053001999/500000000000 : ℚ), (51705501793/80000000 : ℚ), (-8123275865253/62500000000 : ℚ), 10⟩,
    ⟨(20154920531/100000000000 : ℚ), (69444525423/1000000000 : ℚ), (-7191683809551/500000000000 : ℚ), 7⟩,
    ⟨(204421709117/1000000000000 : ℚ), (237824994843/10000000000 : ℚ), (-642037103491/125000000000 : ℚ), 6⟩,
    ⟨(208695851637/1000000000000 : ℚ), (57102220413/5000000000 : ℚ), (-2588688945031/1000000000000 : ℚ), 5⟩,
    ⟨(214330470541/1000000000000 : ℚ), (64528449111/10000000000 : ℚ), (-1540332251627/1000000000000 : ℚ), 4⟩,
    ⟨(27658912671/125000000000 : ℚ), (2506962799/625000000 : ℚ), (-504837917981/500000000000 : ℚ), 4⟩,
    ⟨(229451500123/1000000000000 : ℚ), (13270094643/5000000000 : ℚ), (-140892777233/200000000000 : ℚ), 3⟩,
    ⟨(119396143511/500000000000 : ℚ), (18343617703/10000000000 : ℚ), (-512938716641/1000000000000 : ℚ), 3⟩,
    ⟨(249203705179/1000000000000 : ℚ), (6542857117/5000000000 : ℚ), (-76976340079/200000000000 : ℚ), 3⟩,
    ⟨(130292743473/500000000000 : ℚ), (149280343/156250000 : ℚ), (-73752956807/250000000000 : ℚ), 3⟩,
    ⟨(272828019543/1000000000000 : ℚ), (1418590599/2000000000 : ℚ), (-229478389121/1000000000000 : ℚ), 2⟩,
    ⟨(28581340069/100000000000 : ℚ), (1331365491/2500000000 : ℚ), (-180179276441/1000000000000 : ℚ), 2⟩,
    ⟨(59883314813/200000000000 : ℚ), (4023164249/10000000000 : ℚ), (-35530340881/250000000000 : ℚ), 2⟩,
    ⟨(12540261347/40000000000 : ℚ), (380278517/1250000000 : ℚ), (-28023570163/250000000000 : ℚ), 2⟩,
    ⟨(65589517101/200000000000 : ℚ), (2288978569/10000000000 : ℚ), (-43980196659/500000000000 : ℚ), 2⟩,
    ⟨(85650163583/250000000000 : ℚ), (1700680693/10000000000 : ℚ), (-34127074911/500000000000 : ℚ), 2⟩,
    ⟨(357324623093/1000000000000 : ℚ), (617154361/5000000000 : ℚ), (-51945754047/1000000000000 : ℚ), 2⟩,
    ⟨(4649721149/12500000000 : ℚ), (26866893/312500000 : ℚ), (-19148192163/500000000000 : ℚ), 2⟩,
    ⟨(386418743751/1000000000000 : ℚ), (555505299/10000000000 : ℚ), (-26766544373/1000000000000 : ℚ), 2⟩,
    ⟨(625794849/1562500000 : ℚ), (153027121/5000000000 : ℚ), (-2119545959/125000000000 : ℚ), 2⟩,
    ⟨(3235249037/7812500000 : ℚ), (49984579/5000000000 : ℚ), (-856574507/100000000000 : ℚ), 2⟩,
    ⟨(213548628941/500000000000 : ℚ), (-71238469/10000000000 : ℚ), (-1367096529/1000000000000 : ℚ), 2⟩,
    ⟨(439339790479/1000000000000 : ℚ), (-213946391/10000000000 : ℚ), (601699113/125000000000 : ℚ), 2⟩,
    ⟨(450721572247/1000000000000 : ℚ), (-41623629/1250000000 : ℚ), (1011021219/100000000000 : ℚ), 2⟩,
    ⟨(115283247601/250000000000 : ℚ), (-432056093/10000000000 : ℚ), (14626194531/1000000000000 : ℚ), 2⟩,
    ⟨(235236888651/500000000000 : ℚ), (-513975873/10000000000 : ℚ), (18441565917/1000000000000 : ℚ), 2⟩,
    ⟨(239326988029/500000000000 : ℚ), (-145229647/2500000000 : ℚ), (21618136773/1000000000000 : ℚ), 2⟩,
    ⟨(97118961377/200000000000 : ℚ), (-634543243/10000000000 : ℚ), (24203351409/1000000000000 : ℚ), 2⟩,
    ⟨(122807356447/250000000000 : ℚ), (-676104003/10000000000 : ℚ), (26233149461/1000000000000 : ℚ), 2⟩,
    ⟨(123875892077/250000000000 : ℚ), (-706526891/10000000000 : ℚ), (6933519993/250000000000 : ℚ), 2⟩,
    ⟨(99675214423/200000000000 : ℚ), (-363232107/5000000000 : ℚ), (28724835353/1000000000000 : ℚ), 2⟩,
    ⟨(499819273427/1000000000000 : ℚ), (-184082929/2500000000 : ℚ), (5843463777/200000000000 : ℚ), 1⟩,
    ⟨(1/2 : ℚ), (-147512093/2000000000 : ℚ), (1463937261/50000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (12495215451/40000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control94.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control94.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate94
