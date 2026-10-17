import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate489
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(284400185237/1000000000000 : ℚ), (13236966285391/10000000000 : ℚ), (-15087144998593/40000000000 : ℚ), 12⟩,
    ⟨(285148989347/1000000000000 : ℚ), (1446155767347/10000000000 : ℚ), (-41685271004001/1000000000000 : ℚ), 9⟩,
    ⟨(11465575447/40000000000 : ℚ), (253277687553/5000000000 : ℚ), (-371141806107/25000000000 : ℚ), 7⟩,
    ⟨(18053563899/62500000000 : ℚ), (12467493643/500000000 : ℚ), (-7450922686629/1000000000000 : ℚ), 6⟩,
    ⟨(11671221637/40000000000 : ℚ), (1155491401/80000000 : ℚ), (-1101907131389/250000000000 : ℚ), 6⟩,
    ⟨(73845446679/250000000000 : ℚ), (91913887863/10000000000 : ℚ), (-1433458773369/500000000000 : ℚ), 5⟩,
    ⟨(9363314931/31250000000 : ℚ), (62097775997/10000000000 : ℚ), (-990286246023/500000000000 : ℚ), 5⟩,
    ⟨(304472539311/1000000000000 : ℚ), (272912497/62500000 : ℚ), (-712130609923/500000000000 : ℚ), 4⟩,
    ⟨(309874497197/1000000000000 : ℚ), (31546814113/10000000000 : ℚ), (-526129556619/500000000000 : ℚ), 4⟩,
    ⟨(315779927643/1000000000000 : ℚ), (11598203141/5000000000 : ℚ), (-791213006463/1000000000000 : ℚ), 4⟩,
    ⟨(161065979063/500000000000 : ℚ), (3445397501/2000000000 : ℚ), (-600936243659/1000000000000 : ℚ), 4⟩,
    ⟨(328869415121/1000000000000 : ℚ), (1283059097/1000000000 : ℚ), (-457918242489/1000000000000 : ℚ), 3⟩,
    ⟨(20995463327/62500000000 : ℚ), (380473827/400000000 : ℚ), (-347664231693/1000000000000 : ℚ), 3⟩,
    ⟨(343237980081/1000000000000 : ℚ), (6953984181/10000000000 : ℚ), (-260847367939/1000000000000 : ℚ), 3⟩,
    ⟨(2740083679/7812500000 : ℚ), (4947274109/10000000000 : ℚ), (-38249893679/200000000000 : ℚ), 3⟩,
    ⟨(35833344663/100000000000 : ℚ), (334874093/1000000000 : ℚ), (-134599617057/1000000000000 : ℚ), 3⟩,
    ⟨(11436655273/31250000000 : ℚ), (2058482233/10000000000 : ℚ), (-4394478623/50000000000 : ℚ), 3⟩,
    ⟨(74715140891/200000000000 : ℚ), (1608331/16000000 : ℚ), (-12238674337/250000000000 : ℚ), 3⟩,
    ⟨(76213687057/200000000000 : ℚ), (137116181/10000000000 : ℚ), (-16208903651/1000000000000 : ℚ), 3⟩,
    ⟨(194189501067/500000000000 : ℚ), (-584010289/10000000000 : ℚ), (360245503/31250000000 : ℚ), 3⟩,
    ⟨(79087400049/200000000000 : ℚ), (-593373189/5000000000 : ℚ), (17572370663/500000000000 : ℚ), 3⟩,
    ⟨(10054361431/25000000000 : ℚ), (-1692690509/10000000000 : ℚ), (55318645503/1000000000000 : ℚ), 2⟩,
    ⟨(408526487723/1000000000000 : ℚ), (-529578969/2500000000 : ℚ), (72568981909/1000000000000 : ℚ), 2⟩,
    ⟨(41443191817/100000000000 : ℚ), (-1238137043/5000000000 : ℚ), (1364008891/15625000000 : ℚ), 2⟩,
    ⟨(52479234507/125000000000 : ℚ), (-555265533/2000000000 : ℚ), (99811695449/1000000000000 : ℚ), 2⟩,
    ⟨(212340168787/500000000000 : ℚ), (-756506451/2500000000 : ℚ), (27588669471/250000000000 : ℚ), 2⟩,
    ⟨(8578492573/20000000000 : ℚ), (-3231199213/10000000000 : ℚ), (119111107867/1000000000000 : ℚ), 2⟩,
    ⟨(216262937221/500000000000 : ℚ), (-3396325181/10000000000 : ℚ), (31555816143/250000000000 : ℚ), 2⟩,
    ⟨(435449392983/1000000000000 : ℚ), (-704959511/2000000000 : ℚ), (5271947579/40000000000 : ℚ), 2⟩,
    ⟨(437667029191/1000000000000 : ℚ), (-904781361/2500000000 : ℚ), (2718332051/20000000000 : ℚ), 2⟩,
    ⟨(439157426019/1000000000000 : ℚ), (-736215379/2000000000 : ℚ), (1083067311/7812500000 : ℚ), 2⟩,
    ⟨(439906230129/1000000000000 : ℚ), (-2899827/7812500 : ℚ), (69991024979/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-232225223/625000000 : ℚ), (140150332377/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (67678377013/200000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control489.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control489.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate489
