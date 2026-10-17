import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate75
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(224380643701/1000000000000 : ℚ), (6960027245843/10000000000 : ℚ), (-78460216586511/500000000000 : ℚ), 10⟩,
    ⟨(225947645003/1000000000000 : ℚ), (46775220901/625000000 : ℚ), (-17364678598549/1000000000000 : ℚ), 7⟩,
    ⟨(229066556529/1000000000000 : ℚ), (256565681941/10000000000 : ℚ), (-6200341132773/1000000000000 : ℚ), 6⟩,
    ⟨(116853670727/500000000000 : ℚ), (61670815353/5000000000 : ℚ), (-3124591688489/1000000000000 : ℚ), 5⟩,
    ⟨(47965061297/200000000000 : ℚ), (34885620709/5000000000 : ℚ), (-58093185871/31250000000 : ℚ), 4⟩,
    ⟨(15460095767/62500000000 : ℚ), (43420469549/10000000000 : ℚ), (-9747516741/8000000000 : ℚ), 4⟩,
    ⟨(128121720421/500000000000 : ℚ), (5752669151/2000000000 : ℚ), (-850108567277/1000000000000 : ℚ), 3⟩,
    ⟨(1664909341/6250000000 : ℚ), (19904612511/10000000000 : ℚ), (-77382006709/125000000000 : ℚ), 3⟩,
    ⟨(55538003981/200000000000 : ℚ), (14218511741/10000000000 : ℚ), (-46464803751/100000000000 : ℚ), 3⟩,
    ⟨(290048148117/1000000000000 : ℚ), (1299677941/1250000000 : ℚ), (-356358866001/1000000000000 : ℚ), 2⟩,
    ⟨(151670431833/500000000000 : ℚ), (1546840627/2000000000 : ℚ), (-138731667619/500000000000 : ℚ), 2⟩,
    ⟨(79360037609/250000000000 : ℚ), (2910736359/5000000000 : ℚ), (-109088475757/500000000000 : ℚ), 2⟩,
    ⟨(166105112293/500000000000 : ℚ), (551566717/1250000000 : ℚ), (-1077931321/6250000000 : ℚ), 2⟩,
    ⟨(34750884223/100000000000 : ℚ), (3351841609/10000000000 : ℚ), (-68230685593/500000000000 : ℚ), 2⟩,
    ⟨(72637733863/200000000000 : ℚ), (1269004183/5000000000 : ℚ), (-107571177467/1000000000000 : ℚ), 2⟩,
    ⟨(47387337567/125000000000 : ℚ), (118942269/625000000 : ℚ), (-3361084291/40000000000 : ℚ), 2⟩,
    ⟨(197542856797/500000000000 : ℚ), (28007967/200000000 : ℚ), (-32292002849/500000000000 : ℚ), 2⟩,
    ⟨(82199148963/200000000000 : ℚ), (498645047/5000000000 : ℚ), (-48348056697/1000000000000 : ℚ), 2⟩,
    ⟨(4266755719/10000000000 : ℚ), (41902201/625000000 : ℚ), (-17333054927/500000000000 : ℚ), 2⟩,
    ⟨(441974189543/1000000000000 : ℚ), (201467611/5000000000 : ℚ), (-1440849621/62500000000 : ℚ), 2⟩,
    ⟨(228372131847/500000000000 : ℚ), (36474159/2000000000 : ℚ), (-6573186753/500000000000 : ℚ), 2⟩,
    ⟨(470843550463/1000000000000 : ℚ), (-249047/5000000000 : ℚ), (-2333939303/500000000000 : ℚ), 2⟩,
    ⟨(484136266013/1000000000000 : ℚ), (-1192339/78125000 : ℚ), (2593779327/1000000000000 : ℚ), 2⟩,
    ⟨(19859775769/40000000000 : ℚ), (-69816009/2500000000 : ℚ), (8802014217/1000000000000 : ℚ), 1⟩,
    ⟨(507798919569/1000000000000 : ℚ), (-192229123/5000000000 : ℚ), (7041708691/500000000000 : ℚ), 1⟩,
    ⟨(517940973287/1000000000000 : ℚ), (-471290903/10000000000 : ℚ), (18536238929/1000000000000 : ℚ), 1⟩,
    ⟨(526822881857/1000000000000 : ℚ), (-542134199/10000000000 : ℚ), (22236625109/1000000000000 : ℚ), 1⟩,
    ⟨(106871821529/200000000000 : ℚ), (-299401531/5000000000 : ℚ), (6310808701/250000000000 : ℚ), 1⟩,
    ⟨(21619082907/40000000000 : ℚ), (-642670619/10000000000 : ℚ), (3450082849/125000000000 : ℚ), 1⟩,
    ⟨(545117857601/1000000000000 : ℚ), (-134950291/2000000000 : ℚ), (1173678549/40000000000 : ℚ), 1⟩,
    ⟨(548236769127/1000000000000 : ℚ), (-347880349/5000000000 : ℚ), (7622620033/250000000000 : ℚ), 1⟩,
    ⟨(549803770429/1000000000000 : ℚ), (-141230867/2000000000 : ℚ), (31061110453/1000000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-176862099/2500000000 : ℚ), (31132271157/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (276259438549/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control75.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control75.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate75
