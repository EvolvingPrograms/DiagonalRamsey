import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate130
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120190019681/500000000000 : ℚ), (582692399429/625000000 : ℚ), (-14054293222131/62500000000 : ℚ), 11⟩,
    ⟨(1932265437/8000000000 : ℚ), (1010527941673/10000000000 : ℚ), (-24875257360727/1000000000000 : ℚ), 8⟩,
    ⟨(121914177391/500000000000 : ℚ), (350216992777/10000000000 : ℚ), (-1109468937381/125000000000 : ℚ), 6⟩,
    ⟨(247243461039/1000000000000 : ℚ), (85205590517/5000000000 : ℚ), (-4467677493783/1000000000000 : ℚ), 5⟩,
    ⟨(125872804529/500000000000 : ℚ), (97591038189/10000000000 : ℚ), (-1326795586557/500000000000 : ℚ), 5⟩,
    ⟨(257291440691/1000000000000 : ℚ), (30727830559/5000000000 : ℚ), (-1735220795403/1000000000000 : ℚ), 4⟩,
    ⟨(65956886637/250000000000 : ℚ), (10287889071/2500000000 : ℚ), (-1206919785591/1000000000000 : ℚ), 4⟩,
    ⟨(271290980357/1000000000000 : ℚ), (28742183497/10000000000 : ℚ), (-54708703683/62500000000 : ℚ), 3⟩,
    ⟨(279609865171/1000000000000 : ℚ), (20682035241/10000000000 : ℚ), (-653602715447/1000000000000 : ℚ), 3⟩,
    ⟨(14435204279/50000000000 : ℚ), (15198796643/10000000000 : ℚ), (-99595470301/200000000000 : ℚ), 3⟩,
    ⟨(298486059271/1000000000000 : ℚ), (11329555167/10000000000 : ℚ), (-192251786173/500000000000 : ℚ), 3⟩,
    ⟨(308861580491/1000000000000 : ℚ), (8516483473/10000000000 : ℚ), (-149582404277/500000000000 : ℚ), 3⟩,
    ⟨(319730727297/1000000000000 : ℚ), (3209786481/5000000000 : ℚ), (-116660490399/500000000000 : ℚ), 2⟩,
    ⟨(66197764773/200000000000 : ℚ), (2411435357/5000000000 : ℚ), (-45353616977/250000000000 : ℚ), 2⟩,
    ⟨(34252744857/100000000000 : ℚ), (3584481021/10000000000 : ℚ), (-139742221837/1000000000000 : ℚ), 2⟩,
    ⟨(88558869537/250000000000 : ℚ), (1304240967/5000000000 : ℚ), (-2644077151/25000000000 : ℚ), 2⟩,
    ⟨(2928001263/8000000000 : ℚ), (1828448943/10000000000 : ℚ), (-77689338459/1000000000000 : ℚ), 2⟩,
    ⟨(377708187453/1000000000000 : ℚ), (1197424547/10000000000 : ℚ), (-54236537147/1000000000000 : ℚ), 2⟩,
    ⟨(194623406079/500000000000 : ℚ), (340807731/5000000000 : ℚ), (-17232605663/500000000000 : ℚ), 2⟩,
    ⟨(200252454363/500000000000 : ℚ), (2563223/100000000 : ℚ), (-707110649/40000000000 : ℚ), 2⟩,
    ⟨(102843513883/250000000000 : ℚ), (-48376177/5000000000 : ℚ), (-3349629131/1000000000000 : ℚ), 2⟩,
    ⟨(26359348547/62500000000 : ℚ), (-195660861/5000000000 : ℚ), (2229444071/250000000000 : ℚ), 2⟩,
    ⟨(431531550443/1000000000000 : ℚ), (-637764977/10000000000 : ℚ), (3885958623/200000000000 : ℚ), 2⟩,
    ⟨(440625770853/1000000000000 : ℚ), (-26375029/312500000 : ℚ), (5684353313/200000000000 : ℚ), 2⟩,
    ⟨(224472327833/500000000000 : ℚ), (-635067/6250000 : ℚ), (36075781371/1000000000000 : ℚ), 2⟩,
    ⟨(18256323579/40000000000 : ℚ), (-579382163/5000000000 : ℚ), (42532884483/1000000000000 : ℚ), 2⟩,
    ⟨(115736048833/250000000000 : ℚ), (-637788653/5000000000 : ℚ), (11975526987/250000000000 : ℚ), 2⟩,
    ⟨(93698005393/200000000000 : ℚ), (-136930997/1000000000 : ℚ), (261335903/5000000000 : ℚ), 2⟩,
    ⟨(59124021873/125000000000 : ℚ), (-1442056171/10000000000 : ℚ), (27845767511/500000000000 : ℚ), 2⟩,
    ⟨(238203640621/500000000000 : ℚ), (-186920527/1250000000 : ℚ), (58222021789/1000000000000 : ℚ), 2⟩,
    ⟨(239351228199/500000000000 : ℚ), (-1530325819/10000000000 : ℚ), (11978323431/200000000000 : ℚ), 2⟩,
    ⟨(239927798331/500000000000 : ℚ), (-386909293/2500000000 : ℚ), (15180328099/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1549793237/10000000000 : ℚ), (59399207/976562500 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (74419790803/250000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control130.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control130.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate130
