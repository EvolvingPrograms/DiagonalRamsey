import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate776
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(647523579291/1000000000000 : ℚ), (1847991124397/1000000000 : ℚ), (-1197635910012007/1000000000000 : ℚ), 13⟩,
    ⟨(162064338117/250000000000 : ℚ), (2032015353677/10000000000 : ℚ), (-132373674758189/1000000000000 : ℚ), 10⟩,
    ⟨(649717832187/1000000000000 : ℚ), (71840631429/1000000000 : ℚ), (-11788397114121/250000000000 : ℚ), 8⟩,
    ⟨(651890953229/1000000000000 : ℚ), (89380573451/2500000000 : ℚ), (-11837861801121/500000000000 : ℚ), 7⟩,
    ⟨(2619023149/4000000000 : ℚ), (209603516433/10000000000 : ℚ), (-3503833854507/250000000000 : ℚ), 7⟩,
    ⟨(658284744333/1000000000000 : ℚ), (67556768083/5000000000 : ℚ), (-9126643379591/1000000000000 : ℚ), 6⟩,
    ⟨(662443838691/1000000000000 : ℚ), (11567816309/1250000000 : ℚ), (-6316369785603/1000000000000 : ℚ), 6⟩,
    ⟨(333596507987/500000000000 : ℚ), (66034940237/10000000000 : ℚ), (-4554679539463/1000000000000 : ℚ), 5⟩,
    ⟨(336243269503/500000000000 : ℚ), (48475455953/10000000000 : ℚ), (-168942453189/50000000000 : ℚ), 5⟩,
    ⟨(169568357067/250000000000 : ℚ), (9071855189/2500000000 : ℚ), (-319492884681/125000000000 : ℚ), 5⟩,
    ⟨(171124488213/250000000000 : ℚ), (27514338341/10000000000 : ℚ), (-489582416547/250000000000 : ℚ), 5⟩,
    ⟨(138220033437/200000000000 : ℚ), (525335733/250000000 : ℚ), (-302263787217/200000000000 : ℚ), 4⟩,
    ⟨(698016488333/1000000000000 : ℚ), (8040641589/5000000000 : ℚ), (-58441978493/50000000000 : ℚ), 4⟩,
    ⟨(352590154171/500000000000 : ℚ), (1533245747/1250000000 : ℚ), (-901220727237/1000000000000 : ℚ), 4⟩,
    ⟨(71252263571/100000000000 : ℚ), (1853311049/2000000000 : ℚ), (-344326707/500000000 : ℚ), 4⟩,
    ⟨(71997275981/100000000000 : ℚ), (6876535981/10000000000 : ℚ), (-129375758879/250000000000 : ℚ), 4⟩,
    ⟨(181864732969/250000000000 : ℚ), (4950473403/10000000000 : ℚ), (-47267017151/125000000000 : ℚ), 4⟩,
    ⟨(91863631997/125000000000 : ℚ), (1691819929/5000000000 : ℚ), (-263590494059/1000000000000 : ℚ), 4⟩,
    ⟨(46390711459/62500000000 : ℚ), (2099150957/10000000000 : ℚ), (-16873449049/100000000000 : ℚ), 3⟩,
    ⟨(749415203353/1000000000000 : ℚ), (519805691/5000000000 : ℚ), (-5607538983/62500000000 : ℚ), 3⟩,
    ⟨(756331524501/1000000000000 : ℚ), (80777073/5000000000 : ℚ), (-2952673259/125000000000 : ℚ), 3⟩,
    ⟨(381466869417/500000000000 : ℚ), (-568341869/10000000000 : ℚ), (15909312793/500000000000 : ℚ), 3⟩,
    ⟨(384579131709/500000000000 : ℚ), (-18373041/156250000 : ℚ), (19588679109/250000000000 : ℚ), 3⟩,
    ⟨(19373628817/25000000000 : ℚ), (-840584431/5000000000 : ℚ), (11736348993/100000000000 : ℚ), 3⟩,
    ⟨(3047807327/3906250000 : ℚ), (-105000057/500000000 : ℚ), (74964922653/500000000000 : ℚ), 3⟩,
    ⟨(156997570599/200000000000 : ℚ), (-2444762081/10000000000 : ℚ), (88455101587/500000000000 : ℚ), 3⟩,
    ⟨(789146947353/1000000000000 : ℚ), (-2725163683/10000000000 : ℚ), (99489519483/500000000000 : ℚ), 3⟩,
    ⟨(198168976109/250000000000 : ℚ), (-1474382169/5000000000 : ℚ), (216663500903/1000000000000 : ℚ), 3⟩,
    ⟨(795540738457/1000000000000 : ℚ), (-3121360763/10000000000 : ℚ), (230369342701/1000000000000 : ℚ), 3⟩,
    ⟨(797713859499/1000000000000 : ℚ), (-3247280099/10000000000 : ℚ), (240400344833/1000000000000 : ℚ), 3⟩,
    ⟨(399587169609/500000000000 : ℚ), (-3329594311/10000000000 : ℚ), (246972652417/1000000000000 : ℚ), 3⟩,
    ⟨(159981622479/200000000000 : ℚ), (-210641953/625000000 : ℚ), (3127811731/12500000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-675066717/2000000000 : ℚ), (5012598043/20000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (44639555379/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control776.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control776.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate776
