import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate524
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2622676717/10000000000 : ℚ), (13397474267521/10000000000 : ℚ), (-176008127596763/500000000000 : ℚ), 12⟩,
    ⟨(65732622707/250000000000 : ℚ), (146411841779/1000000000 : ℚ), (-19448670409213/500000000000 : ℚ), 9⟩,
    ⟨(132124872887/500000000000 : ℚ), (513009109799/10000000000 : ℚ), (-6923836429943/500000000000 : ℚ), 7⟩,
    ⟨(26621273139/100000000000 : ℚ), (252584487757/10000000000 : ℚ), (-3473018402157/500000000000 : ℚ), 6⟩,
    ⟨(134400271527/500000000000 : ℚ), (146318809941/10000000000 : ℚ), (-2052818007203/500000000000 : ℚ), 6⟩,
    ⟨(271988258723/1000000000000 : ℚ), (93094168317/10000000000 : ℚ), (-1333796816821/500000000000 : ℚ), 5⟩,
    ⟨(137872589477/500000000000 : ℚ), (3928880729/625000000 : ℚ), (-1840261757109/1000000000000 : ℚ), 5⟩,
    ⟨(5600702451/20000000000 : ℚ), (44160504577/10000000000 : ℚ), (-132093914053/100000000000 : ℚ), 4⟩,
    ⟨(28481677501/100000000000 : ℚ), (7963582403/2500000000 : ℚ), (-243405141929/250000000000 : ℚ), 4⟩,
    ⟨(145022043203/500000000000 : ℚ), (11683807283/5000000000 : ℚ), (-91230722329/125000000000 : ℚ), 4⟩,
    ⟨(295666714873/1000000000000 : ℚ), (43237/25000 : ℚ), (-138027287611/250000000000 : ℚ), 4⟩,
    ⟨(4712976741/15625000000 : ℚ), (512696579/400000000 : ℚ), (-104617258671/250000000000 : ℚ), 3⟩,
    ⟨(307878041439/1000000000000 : ℚ), (188670753/200000000 : ℚ), (-315398380113/1000000000000 : ℚ), 3⟩,
    ⟨(78587284447/250000000000 : ℚ), (6822138241/10000000000 : ℚ), (-234193488847/1000000000000 : ℚ), 3⟩,
    ⟨(80245370069/250000000000 : ℚ), (4770607969/10000000000 : ℚ), (-169052104157/1000000000000 : ℚ), 3⟩,
    ⟨(16385559791/50000000000 : ℚ), (3133975679/10000000000 : ℚ), (-28997373237/250000000000 : ℚ), 3⟩,
    ⟨(334473473579/1000000000000 : ℚ), (905460011/5000000000 : ℚ), (-36099763337/500000000000 : ℚ), 3⟩,
    ⟨(341203189123/1000000000000 : ℚ), (29164907/400000000 : ℚ), (-8915892637/250000000000 : ℚ), 3⟩,
    ⟨(347835531611/1000000000000 : ℚ), (-81984559/5000000000 : ℚ), (-612888651/125000000000 : ℚ), 3⟩,
    ⟨(8857665699/25000000000 : ℚ), (-453567463/5000000000 : ℚ), (21181262981/1000000000000 : ℚ), 3⟩,
    ⟨(14422166319/40000000000 : ℚ), (-47792679/312500000 : ℚ), (21708665171/500000000000 : ℚ), 3⟩,
    ⟨(183258977263/500000000000 : ℚ), (-205257197/1000000000 : ℚ), (31217330663/500000000000 : ℚ), 3⟩,
    ⟨(372140582993/1000000000000 : ℚ), (-2493460061/10000000000 : ℚ), (15743155043/200000000000 : ℚ), 3⟩,
    ⟨(37736789439/100000000000 : ℚ), (-572971047/2000000000 : ℚ), (46316239027/500000000000 : ℚ), 3⟩,
    ⟨(7642990937/20000000000 : ℚ), (-1588324187/5000000000 : ℚ), (104472105157/1000000000000 : ℚ), 2⟩,
    ⟨(193219745223/500000000000 : ℚ), (-859120651/2500000000 : ℚ), (57228380427/500000000000 : ℚ), 2⟩,
    ⟨(97549102669/250000000000 : ℚ), (-365025649/1000000000 : ℚ), (2455152067/20000000000 : ℚ), 2⟩,
    ⟨(78676825269/200000000000 : ℚ), (-152899821/400000000 : ℚ), (129505548157/1000000000000 : ℚ), 2⟩,
    ⟨(395971938009/1000000000000 : ℚ), (-39566271/100000000 : ℚ), (67399660409/500000000000 : ℚ), 2⟩,
    ⟨(198967461813/500000000000 : ℚ), (-4055183013/10000000000 : ℚ), (69355743957/500000000000 : ℚ), 2⟩,
    ⟨(399254178571/1000000000000 : ℚ), (-2059972997/5000000000 : ℚ), (35323223069/250000000000 : ℚ), 2⟩,
    ⟨(399916997699/1000000000000 : ℚ), (-4152051407/10000000000 : ℚ), (142575776763/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4156051791/10000000000 : ℚ), (28547155097/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (44951379437/125000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control524.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control524.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate524
