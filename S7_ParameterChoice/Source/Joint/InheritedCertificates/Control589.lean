import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate589
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7130970411/40000000000 : ℚ), (4116596702487/2500000000 : ℚ), (-58792973253561/200000000000 : ℚ), 12⟩,
    ⟨(178619431179/1000000000000 : ℚ), (45061712849/250000000 : ℚ), (-32451781385723/1000000000000 : ℚ), 9⟩,
    ⟨(89653224401/500000000000 : ℚ), (632703279683/10000000000 : ℚ), (-5765263705343/500000000000 : ℚ), 8⟩,
    ⟨(18032869679/100000000000 : ℚ), (311939636963/10000000000 : ℚ), (-1153249112447/200000000000 : ℚ), 7⟩,
    ⟨(36335266067/200000000000 : ℚ), (22598436343/1250000000 : ℚ), (-424227338337/125000000000 : ℚ), 6⟩,
    ⟨(183336370989/1000000000000 : ℚ), (114929395431/10000000000 : ℚ), (-2192587188993/1000000000000 : ℚ), 6⟩,
    ⟨(92646415827/500000000000 : ℚ), (774060273/100000000 : ℚ), (-375344526073/250000000000 : ℚ), 5⟩,
    ⟨(11720429409/62500000000 : ℚ), (54111147619/10000000000 : ℚ), (-213476182787/200000000000 : ℚ), 5⟩,
    ⟨(190016972643/1000000000000 : ℚ), (38720720513/10000000000 : ℚ), (-38850383061/50000000000 : ℚ), 5⟩,
    ⟨(192739156907/1000000000000 : ℚ), (14029877107/5000000000 : ℚ), (-573083198933/1000000000000 : ℚ), 4⟩,
    ⟨(48916801803/250000000000 : ℚ), (10197073587/5000000000 : ℚ), (-8485708109/20000000000 : ℚ), 4⟩,
    ⟨(39754584967/200000000000 : ℚ), (2942596377/2000000000 : ℚ), (-312291111981/1000000000000 : ℚ), 4⟩,
    ⟨(12626650001/62500000000 : ℚ), (2598882971/2500000000 : ℚ), (-225805068327/1000000000000 : ℚ), 4⟩,
    ⟨(205396300011/1000000000000 : ℚ), (704421443/1000000000 : ℚ), (-78780314477/500000000000 : ℚ), 4⟩,
    ⟨(104425085421/500000000000 : ℚ), (549415067/1250000000 : ℚ), (-102714650279/1000000000000 : ℚ), 3⟩,
    ⟨(106177374921/500000000000 : ℚ), (2268746877/10000000000 : ℚ), (-11588453933/200000000000 : ℚ), 3⟩,
    ⟨(107938143001/500000000000 : ℚ), (21536607/400000000 : ℚ), (-653229157/31250000000 : ℚ), 3⟩,
    ⟨(219380865003/1000000000000 : ℚ), (-442900903/5000000000 : ℚ), (2521056199/250000000000 : ℚ), 3⟩,
    ⟨(222834735833/1000000000000 : ℚ), (-1034744201/5000000000 : ℚ), (18125486133/500000000000 : ℚ), 3⟩,
    ⟨(226204635829/1000000000000 : ℚ), (-765273497/2500000000 : ℚ), (58510465587/1000000000000 : ℚ), 3⟩,
    ⟨(22945811101/100000000000 : ℚ), (-3896865061/10000000000 : ℚ), (77549056989/1000000000000 : ℚ), 3⟩,
    ⟨(29070478579/125000000000 : ℚ), (-4604202579/10000000000 : ℚ), (46943631091/500000000000 : ℚ), 3⟩,
    ⟨(117745939469/500000000000 : ℚ), (-2601996503/5000000000 : ℚ), (10792257823/100000000000 : ℚ), 3⟩,
    ⟨(119107031601/500000000000 : ℚ), (-357015977/625000000 : ℚ), (119959934863/1000000000000 : ℚ), 3⟩,
    ⟨(240704165301/1000000000000 : ℚ), (-19191641/31250000 : ℚ), (65116866623/500000000000 : ℚ), 3⟩,
    ⟨(24293820419/100000000000 : ℚ), (-6500711987/10000000000 : ℚ), (69462023261/500000000000 : ℚ), 3⟩,
    ⟨(48978932971/200000000000 : ℚ), (-1359547143/2000000000 : ℚ), (73084344043/500000000000 : ℚ), 3⟩,
    ⟨(24655470551/100000000000 : ℚ), (-1759498537/2500000000 : ℚ), (152072288197/1000000000000 : ℚ), 3⟩,
    ⟨(49580467811/200000000000 : ℚ), (-7225712467/10000000000 : ℚ), (156713149463/1000000000000 : ℚ), 3⟩,
    ⟨(124462293521/500000000000 : ℚ), (-368200067/500000000 : ℚ), (160148401967/1000000000000 : ℚ), 3⟩,
    ⟨(124805802333/500000000000 : ℚ), (-7455044467/10000000000 : ℚ), (162417808107/1000000000000 : ℚ), 3⟩,
    ⟨(24995677557/100000000000 : ℚ), (-1500045841/2000000000 : ℚ), (16354645037/100000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-3752930851/5000000000 : ℚ), (81843625317/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (205037278283/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control589.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control589.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate589
