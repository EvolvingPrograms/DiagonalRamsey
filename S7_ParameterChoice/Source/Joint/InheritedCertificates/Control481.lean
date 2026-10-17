import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate481
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(271297904793/1000000000000 : ℚ), (1547288324759/1250000000 : ℚ), (-336505071690963/1000000000000 : ℚ), 12⟩,
    ⟨(272061638229/1000000000000 : ℚ), (1351435741287/10000000000 : ℚ), (-7438679217457/200000000000 : ℚ), 9⟩,
    ⟨(273581749931/1000000000000 : ℚ), (472948669697/10000000000 : ℚ), (-3312082036419/250000000000 : ℚ), 7⟩,
    ⟨(34480450049/125000000000 : ℚ), (9303127821/400000000 : ℚ), (-3325523363481/500000000000 : ℚ), 6⟩,
    ⟨(69706351689/250000000000 : ℚ), (134590213059/10000000000 : ℚ), (-3935923340811/1000000000000 : ℚ), 6⟩,
    ⟨(282498452597/1000000000000 : ℚ), (85570729031/10000000000 : ℚ), (-640331448639/250000000000 : ℚ), 5⟩,
    ⟨(71706841119/250000000000 : ℚ), (225651553/39062500 : ℚ), (-1770513845163/1000000000000 : ℚ), 5⟩,
    ⟨(58354090521/200000000000 : ℚ), (4059495687/1000000000 : ℚ), (-318533358553/250000000000 : ℚ), 4⟩,
    ⟨(297280112343/1000000000000 : ℚ), (29315396559/10000000000 : ℚ), (-471088003669/500000000000 : ℚ), 4⟩,
    ⟨(9478227583/31250000000 : ℚ), (21551446099/10000000000 : ℚ), (-709199622411/1000000000000 : ℚ), 4⟩,
    ⟨(121008577/390625000 : ℚ), (1600693807/1000000000 : ℚ), (-539352125643/1000000000000 : ℚ), 4⟩,
    ⟨(316653742559/1000000000000 : ℚ), (2981888003/2500000000 : ℚ), (-411659150149/1000000000000 : ℚ), 3⟩,
    ⟨(323852459923/1000000000000 : ℚ), (8851029267/10000000000 : ℚ), (-39148747413/125000000000 : ℚ), 3⟩,
    ⟨(331308781627/1000000000000 : ℚ), (12660041/19531250 : ℚ), (-117812315389/500000000000 : ℚ), 3⟩,
    ⟨(169475449609/500000000000 : ℚ), (1156201917/2500000000 : ℚ), (-34683330947/200000000000 : ℚ), 3⟩,
    ⟨(346705214927/1000000000000 : ℚ), (31464659/100000000 : ℚ), (-30689242523/250000000000 : ℚ), 3⟩,
    ⟨(354497050453/1000000000000 : ℚ), (195394139/1000000000 : ℚ), (-16192615403/200000000000 : ℚ), 3⟩,
    ⟨(181125683081/500000000000 : ℚ), (490471253/5000000000 : ℚ), (-46105154801/1000000000000 : ℚ), 3⟩,
    ⟨(369893483753/1000000000000 : ℚ), (179345419/10000000000 : ℚ), (-4192391059/250000000000 : ℚ), 3⟩,
    ⟨(188674902729/500000000000 : ℚ), (-60790849/1250000000 : ℚ), (126485683/15625000000 : ℚ), 3⟩,
    ⟨(384548522821/1000000000000 : ℚ), (-521286493/5000000000 : ℚ), (14640343851/500000000000 : ℚ), 3⟩,
    ⟨(19571015413/50000000000 : ℚ), (-301881107/2000000000 : ℚ), (1480931993/31250000000 : ℚ), 2⟩,
    ⟨(99474745681/250000000000 : ℚ), (-1902075211/10000000000 : ℚ), (7860580387/125000000000 : ℚ), 2⟩,
    ⟨(403922153037/1000000000000 : ℚ), (-111614291/500000000 : ℚ), (38060791381/500000000000 : ℚ), 2⟩,
    ⟨(16377272511/40000000000 : ℚ), (-1254531203/5000000000 : ℚ), (43688209091/500000000000 : ℚ), 2⟩,
    ⟨(51796862613/125000000000 : ℚ), (-1369689937/5000000000 : ℚ), (19372522821/200000000000 : ℚ), 2⟩,
    ⟨(418703812783/1000000000000 : ℚ), (-1464311451/5000000000 : ℚ), (52372466909/500000000000 : ℚ), 2⟩,
    ⟨(412477401/976562500 : ℚ), (-3080924853/10000000000 : ℚ), (111149623381/1000000000000 : ℚ), 2⟩,
    ⟨(106339666247/250000000000 : ℚ), (-799854533/2500000000 : ℚ), (58086030571/500000000000 : ℚ), 2⟩,
    ⟨(427620515449/1000000000000 : ℚ), (-3286418227/10000000000 : ℚ), (119882479091/1000000000000 : ℚ), 2⟩,
    ⟨(429140627151/1000000000000 : ℚ), (-3343556631/10000000000 : ℚ), (122330164053/1000000000000 : ℚ), 2⟩,
    ⟨(429904360587/1000000000000 : ℚ), (-842968237/2500000000 : ℚ), (123546411919/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3375400769/10000000000 : ℚ), (123698091361/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (44464348263/125000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control481.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control481.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate481
