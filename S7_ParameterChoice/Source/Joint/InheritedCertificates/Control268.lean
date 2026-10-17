import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate268
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(381138141/1250000000 : ℚ), (808189162987/625000000 : ℚ), (-49394860700661/125000000000 : ℚ), 11⟩,
    ⟨(305849355883/1000000000000 : ℚ), (352646985393/2500000000 : ℚ), (-43689571380613/1000000000000 : ℚ), 8⟩,
    ⟨(153859000239/500000000000 : ℚ), (3945114709/80000000 : ℚ), (-1946493891831/125000000000 : ℚ), 7⟩,
    ⟨(77624612629/250000000000 : ℚ), (60568195437/2500000000 : ℚ), (-7825161792051/1000000000000 : ℚ), 6⟩,
    ⟨(157081964371/500000000000 : ℚ), (70049590023/5000000000 : ℚ), (-927413693743/200000000000 : ℚ), 5⟩,
    ⟨(318679134597/1000000000000 : ℚ), (89045011191/10000000000 : ℚ), (-604626826047/200000000000 : ℚ), 5⟩,
    ⟨(162000292091/500000000000 : ℚ), (60127431799/10000000000 : ℚ), (-2094746416733/1000000000000 : ℚ), 4⟩,
    ⟨(330077029027/1000000000000 : ℚ), (21148379509/5000000000 : ℚ), (-1512125153513/1000000000000 : ℚ), 4⟩,
    ⟨(336849949647/1000000000000 : ℚ), (7651477269/2500000000 : ℚ), (-1122603061641/1000000000000 : ℚ), 4⟩,
    ⟨(344254119113/1000000000000 : ℚ), (4515039387/2000000000 : ℚ), (-33973238059/40000000000 : ℚ), 3⟩,
    ⟨(352218231227/1000000000000 : ℚ), (16852869557/10000000000 : ℚ), (-650205968099/1000000000000 : ℚ), 3⟩,
    ⟨(72133117447/200000000000 : ℚ), (790791593/625000000 : ℚ), (-50059592869/100000000000 : ℚ), 3⟩,
    ⟨(369514834481/1000000000000 : ℚ), (379721673/400000000 : ℚ), (-77062852709/200000000000 : ℚ), 3⟩,
    ⟨(94670187469/250000000000 : ℚ), (3533227787/5000000000 : ℚ), (-294588830967/1000000000000 : ℚ), 3⟩,
    ⟨(77615012129/200000000000 : ℚ), (323097857/625000000 : ℚ), (-221904485533/1000000000000 : ℚ), 3⟩,
    ⟨(397607294439/1000000000000 : ℚ), (1831983097/5000000000 : ℚ), (-20348282107/125000000000 : ℚ), 3⟩,
    ⟨(407185650637/1000000000000 : ℚ), (1226551777/5000000000 : ℚ), (-57041012791/500000000000 : ℚ), 2⟩,
    ⟨(416717884431/1000000000000 : ℚ), (73409559/500000000 : ℚ), (-73523373417/1000000000000 : ℚ), 2⟩,
    ⟨(133160061/312500000 : ℚ), (659332279/10000000000 : ℚ), (-39447795879/1000000000000 : ℚ), 2⟩,
    ⟨(87055622119/200000000000 : ℚ), (-10233267/10000000000 : ℚ), (-2123578709/200000000000 : ℚ), 2⟩,
    ⟨(444127357841/1000000000000 : ℚ), (-113589969/2000000000 : ℚ), (13899320267/1000000000000 : ℚ), 2⟩,
    ⟨(452574713849/1000000000000 : ℚ), (-1034538981/10000000000 : ℚ), (34814809787/1000000000000 : ℚ), 2⟩,
    ⟨(460538825963/1000000000000 : ℚ), (-712896287/5000000000 : ℚ), (52674900329/1000000000000 : ℚ), 2⟩,
    ⟨(46794299543/100000000000 : ℚ), (-876917037/5000000000 : ℚ), (67901974001/1000000000000 : ℚ), 2⟩,
    ⟨(9494318321/20000000000 : ℚ), (-405603713/2000000000 : ℚ), (2525743711/31250000000 : ℚ), 2⟩,
    ⟨(96158472179/200000000000 : ℚ), (-281947911/1250000000 : ℚ), (91694969743/1000000000000 : ℚ), 2⟩,
    ⟨(486113810479/1000000000000 : ℚ), (-2442122589/10000000000 : ℚ), (100712770067/1000000000000 : ℚ), 2⟩,
    ⟨(98125803267/200000000000 : ℚ), (-2591937121/10000000000 : ℚ), (21605800893/200000000000 : ℚ), 2⟩,
    ⟨(494294494561/1000000000000 : ℚ), (-541658241/2000000000 : ℚ), (113758859373/1000000000000 : ℚ), 2⟩,
    ⟨(248537472299/500000000000 : ℚ), (-1396800789/5000000000 : ℚ), (117987506929/1000000000000 : ℚ), 2⟩,
    ⟨(498943589193/1000000000000 : ℚ), (-2849573447/10000000000 : ℚ), (30193735293/250000000000 : ℚ), 2⟩,
    ⟨(499882432277/1000000000000 : ℚ), (-2877294591/10000000000 : ℚ), (61079684569/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2880747459/10000000000 : ℚ), (61165996107/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (142026718671/500000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control268.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control268.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate268
