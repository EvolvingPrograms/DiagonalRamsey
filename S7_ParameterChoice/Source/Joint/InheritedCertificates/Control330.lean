import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate330
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(26815444841/100000000000 : ℚ), (14249832745307/10000000000 : ℚ), (-191434875903541/500000000000 : ℚ), 12⟩,
    ⟨(268885185611/1000000000000 : ℚ), (778115213977/5000000000 : ℚ), (-10578614497839/250000000000 : ℚ), 9⟩,
    ⟨(54067924523/200000000000 : ℚ), (272412034539/5000000000 : ℚ), (-3013976427827/200000000000 : ℚ), 7⟩,
    ⟨(136251876199/500000000000 : ℚ), (268023656419/10000000000 : ℚ), (-7563528436599/1000000000000 : ℚ), 6⟩,
    ⟨(275356733207/1000000000000 : ℚ), (31030199651/2000000000 : ℚ), (-4474272874419/1000000000000 : ℚ), 5⟩,
    ⟨(139435544639/500000000000 : ℚ), (19732832163/2000000000 : ℚ), (-2910258433933/1000000000000 : ℚ), 5⟩,
    ⟨(3537662193/12500000000 : ℚ), (66610569563/10000000000 : ℚ), (-402093791891/200000000000 : ℚ), 4⟩,
    ⟨(143871251533/500000000000 : ℚ), (46804152733/10000000000 : ℚ), (-1445677909417/1000000000000 : ℚ), 4⟩,
    ⟨(293014124219/1000000000000 : ℚ), (33786759131/10000000000 : ℚ), (-533980661569/500000000000 : ℚ), 4⟩,
    ⟨(59755414061/200000000000 : ℚ), (4964230257/2000000000 : ℚ), (-802858947729/1000000000000 : ℚ), 4⟩,
    ⟨(76243960251/250000000000 : ℚ), (9207139899/5000000000 : ℚ), (-152394460051/250000000000 : ℚ), 3⟩,
    ⟨(77887684691/250000000000 : ℚ), (13697086637/10000000000 : ℚ), (-2901582287/6250000000 : ℚ), 3⟩,
    ⟨(318438443727/1000000000000 : ℚ), (2027378319/2000000000 : ℚ), (-88043093067/250000000000 : ℚ), 3⟩,
    ⟨(40696577941/125000000000 : ℚ), (1478637021/2000000000 : ℚ), (-131934619969/500000000000 : ℚ), 3⟩,
    ⟨(332884572117/1000000000000 : ℚ), (1048121557/2000000000 : ℚ), (-48258378279/250000000000 : ℚ), 3⟩,
    ⟨(34030387143/100000000000 : ℚ), (1762803643/5000000000 : ℚ), (-67665967497/500000000000 : ℚ), 3⟩,
    ⟨(8693976739/25000000000 : ℚ), (2140950909/10000000000 : ℚ), (-87713264283/1000000000000 : ℚ), 3⟩,
    ⟨(355178368873/1000000000000 : ℚ), (1010165697/10000000000 : ℚ), (-47982812431/1000000000000 : ℚ), 3⟩,
    ⟨(362490317461/1000000000000 : ℚ), (77727253/10000000000 : ℚ), (-2906662937/200000000000 : ℚ), 2⟩,
    ⟨(184812248631/500000000000 : ℚ), (-10895359/156250000 : ℚ), (3457564217/250000000000 : ℚ), 2⟩,
    ⟨(15060488089/40000000000 : ℚ), (-1345506937/10000000000 : ℚ), (950191411/25000000000 : ℚ), 2⟩,
    ⟨(191543549993/500000000000 : ℚ), (-1889982819/10000000000 : ℚ), (29341620787/500000000000 : ℚ), 2⟩,
    ⟨(97321467671/250000000000 : ℚ), (-2348334391/10000000000 : ℚ), (149182901/1953125000 : ℚ), 2⟩,
    ⟨(395048816771/1000000000000 : ℚ), (-273407217/1000000000 : ℚ), (91507299467/1000000000000 : ℚ), 2⟩,
    ⟨(400320437923/1000000000000 : ℚ), (-611523033/2000000000 : ℚ), (104372962933/1000000000000 : ℚ), 2⟩,
    ⟨(405049965549/1000000000000 : ℚ), (-3327016277/10000000000 : ℚ), (115220616931/1000000000000 : ℚ), 2⟩,
    ⟨(409191851711/1000000000000 : ℚ), (-443561631/1250000000 : ℚ), (124236958449/1000000000000 : ℚ), 2⟩,
    ⟨(206353103891/500000000000 : ℚ), (-465852343/1250000000 : ℚ), (8222811829/62500000000 : ℚ), 2⟩,
    ⟨(415559188591/1000000000000 : ℚ), (-483201403/1250000000 : ℚ), (137312717167/1000000000000 : ℚ), 2⟩,
    ⟨(208861659187/500000000000 : ℚ), (-1983772607/5000000000 : ℚ), (28311931429/200000000000 : ℚ), 2⟩,
    ⟨(209588877689/500000000000 : ℚ), (-4034505591/10000000000 : ℚ), (2887232059/20000000000 : ℚ), 2⟩,
    ⟨(419908492579/1000000000000 : ℚ), (-4067693563/10000000000 : ℚ), (145753979687/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4071828517/10000000000 : ℚ), (72963814409/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (150683924579/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control330.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control330.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate330
