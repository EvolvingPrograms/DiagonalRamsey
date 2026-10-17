import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate416
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(151468871739/500000000000 : ℚ), (15774890071193/10000000000 : ℚ), (-29918345799283/62500000000 : ℚ), 12⟩,
    ⟨(303645461687/1000000000000 : ℚ), (862634510297/5000000000 : ℚ), (-6611810099291/125000000000 : ℚ), 9⟩,
    ⟨(30505408239/100000000000 : ℚ), (605176295279/10000000000 : ℚ), (-588450797369/31250000000 : ℚ), 7⟩,
    ⟨(153575019901/500000000000 : ℚ), (298342266779/10000000000 : ℚ), (-295164475933/31250000000 : ℚ), 6⟩,
    ⟨(154956574353/500000000000 : ℚ), (173063053557/10000000000 : ℚ), (-1116573516789/200000000000 : ℚ), 6⟩,
    ⟨(313316798853/1000000000000 : ℚ), (27567280569/2500000000 : ℚ), (-362752684571/100000000000 : ℚ), 5⟩,
    ⟨(9916506601/31250000000 : ℚ), (1864303249/250000000 : ℚ), (-2502706151409/1000000000000 : ℚ), 5⟩,
    ⟨(80477188437/250000000000 : ℚ), (419764057/80000000 : ℚ), (-1796771238921/1000000000000 : ℚ), 4⟩,
    ⟨(327014313273/1000000000000 : ℚ), (3791401993/1000000000 : ℚ), (-264954294099/200000000000 : ℚ), 4⟩,
    ⟨(332595720477/1000000000000 : ℚ), (44586777/16000000 : ℚ), (-993607881651/1000000000000 : ℚ), 4⟩,
    ⟨(338599223359/1000000000000 : ℚ), (12919689/6250000 : ℚ), (-752275333781/1000000000000 : ℚ), 4⟩,
    ⟨(43120875613/125000000000 : ℚ), (15362915297/10000000000 : ℚ), (-35683332031/62500000000 : ℚ), 3⟩,
    ⟨(175818869947/500000000000 : ℚ), (453945311/400000000 : ℚ), (-431183751031/1000000000000 : ℚ), 3⟩,
    ⟨(179273592753/500000000000 : ℚ), (2062387733/2500000000 : ℚ), (-160593714521/500000000000 : ℚ), 3⟩,
    ⟨(365628799999/1000000000000 : ℚ), (726802233/1250000000 : ℚ), (-116525218709/500000000000 : ℚ), 3⟩,
    ⟨(372814383557/1000000000000 : ℚ), (3871768519/10000000000 : ℚ), (-80675101577/500000000000 : ℚ), 3⟩,
    ⟨(380034735081/1000000000000 : ℚ), (460330203/2000000000 : ℚ), (-25566664297/250000000000 : ℚ), 3⟩,
    ⟨(193610159319/500000000000 : ℚ), (10183589/100000000 : ℚ), (-53050396289/1000000000000 : ℚ), 3⟩,
    ⟨(98575483283/250000000000 : ℚ), (-10115503/2500000000 : ℚ), (-5843157137/500000000000 : ℚ), 3⟩,
    ⟨(401211378743/1000000000000 : ℚ), (-230220517/2500000000 : ℚ), (23325310529/1000000000000 : ℚ), 3⟩,
    ⟨(407882113733/1000000000000 : ℚ), (-828694697/5000000000 : ℚ), (53114935813/1000000000000 : ℚ), 2⟩,
    ⟨(207124947639/500000000000 : ℚ), (-1138043193/5000000000 : ℚ), (39271757897/500000000000 : ℚ), 2⟩,
    ⟨(5253167477/12500000000 : ℚ), (-2796905533/10000000000 : ℚ), (20054402289/200000000000 : ℚ), 2⟩,
    ⟨(85166961073/200000000000 : ℚ), (-129406887/400000000 : ℚ), (3712835189/31250000000 : ℚ), 2⟩,
    ⟨(43094036489/100000000000 : ℚ), (-1801361783/5000000000 : ℚ), (134554910213/1000000000000 : ℚ), 2⟩,
    ⟨(217760453703/500000000000 : ℚ), (-3908720831/10000000000 : ℚ), (147810844179/1000000000000 : ℚ), 2⟩,
    ⟨(54941539973/125000000000 : ℚ), (-4160244411/10000000000 : ℚ), (39703795981/250000000000 : ℚ), 2⟩,
    ⟨(442935969931/1000000000000 : ℚ), (-2181367001/5000000000 : ℚ), (167749444447/1000000000000 : ℚ), 2⟩,
    ⟨(89139815767/200000000000 : ℚ), (-2260157223/5000000000 : ℚ), (87375442271/500000000000 : ℚ), 2⟩,
    ⟨(447795036247/1000000000000 : ℚ), (-4636035987/10000000000 : ℚ), (899603273/5000000000 : ℚ), 2⟩,
    ⟨(449203656951/1000000000000 : ℚ), (-4712048259/10000000000 : ℚ), (45832445949/250000000000 : ℚ), 2⟩,
    ⟨(449911375159/1000000000000 : ℚ), (-4749721157/10000000000 : ℚ), (46255848807/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2377207413/5000000000 : ℚ), (92617294751/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (141297301967/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control416.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control416.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate416
