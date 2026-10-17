import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate276
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(156194497891/500000000000 : ℚ), (2755715406613/2000000000 : ℚ), (-431329541119523/1000000000000 : ℚ), 11⟩,
    ⟨(313291849627/1000000000000 : ℚ), (2350132449/15625000 : ℚ), (-9536794817997/200000000000 : ℚ), 8⟩,
    ⟨(157544431171/500000000000 : ℚ), (263156845853/5000000000 : ℚ), (-4248063194313/250000000000 : ℚ), 7⟩,
    ⟨(317762727711/1000000000000 : ℚ), (51765987403/2000000000 : ℚ), (-1067033926691/125000000000 : ℚ), 6⟩,
    ⟨(321287694949/1000000000000 : ℚ), (14982044443/1000000000 : ℚ), (-202253154563/40000000000 : ℚ), 5⟩,
    ⟨(40703727087/125000000000 : ℚ), (95308486661/10000000000 : ℚ), (-3294660724231/1000000000000 : ℚ), 5⟩,
    ⟨(330747275943/1000000000000 : ℚ), (64404672059/10000000000 : ℚ), (-285163076397/125000000000 : ℚ), 4⟩,
    ⟨(336590788763/1000000000000 : ℚ), (45330242699/10000000000 : ℚ), (-32907492731/20000000000 : ℚ), 4⟩,
    ⟨(85776019733/250000000000 : ℚ), (2050654451/625000000 : ℚ), (-610113723369/500000000000 : ℚ), 4⟩,
    ⟨(5472256561/15625000000 : ℚ), (6050172033/2500000000 : ℚ), (-36879143047/40000000000 : ℚ), 3⟩,
    ⟨(71576647781/200000000000 : ℚ), (9029350853/5000000000 : ℚ), (-704670640751/1000000000000 : ℚ), 3⟩,
    ⟨(9150169433/25000000000 : ℚ), (3386324177/2500000000 : ℚ), (-270708061347/500000000000 : ℚ), 3⟩,
    ⟨(187258400517/500000000000 : ℚ), (10146246597/10000000000 : ℚ), (-20781882311/50000000000 : ℚ), 3⟩,
    ⟨(191665676933/500000000000 : ℚ), (3766474043/5000000000 : ℚ), (-316667770951/1000000000000 : ℚ), 3⟩,
    ⟨(196182773427/500000000000 : ℚ), (219519831/400000000 : ℚ), (-118697041831/500000000000 : ℚ), 3⟩,
    ⟨(401532375781/1000000000000 : ℚ), (1931652587/5000000000 : ℚ), (-86465508603/500000000000 : ℚ), 3⟩,
    ⟨(410743559073/1000000000000 : ℚ), (511098291/2000000000 : ℚ), (-119836895601/1000000000000 : ℚ), 2⟩,
    ⟨(419910387999/1000000000000 : ℚ), (1490841281/10000000000 : ℚ), (-9454327211/125000000000 : ℚ), 2⟩,
    ⟨(428944580987/1000000000000 : ℚ), (307919629/5000000000 : ℚ), (-38508474349/1000000000000 : ℚ), 2⟩,
    ⟨(437759133819/1000000000000 : ℚ), (-108973851/10000000000 : ℚ), (-7106816869/1000000000000 : ℚ), 2⟩,
    ⟨(446269157533/1000000000000 : ℚ), (-178270453/2500000000 : ℚ), (3917931803/200000000000 : ℚ), 2⟩,
    ⟨(113598173987/250000000000 : ℚ), (-60938169/500000000 : ℚ), (42357826747/1000000000000 : ℚ), 2⟩,
    ⟨(462051514949/1000000000000 : ℚ), (-1643009441/10000000000 : ℚ), (15448688147/250000000000 : ℚ), 2⟩,
    ⟨(469171855921/1000000000000 : ℚ), (-99943611/500000000 : ℚ), (78362109047/1000000000000 : ℚ), 2⟩,
    ⟨(47568514609/100000000000 : ℚ), (-2296428929/10000000000 : ℚ), (18483637497/200000000000 : ℚ), 2⟩,
    ⟨(48152865891/100000000000 : ℚ), (-158967427/625000000 : ℚ), (52120653037/500000000000 : ℚ), 2⟩,
    ⟨(243323059079/500000000000 : ℚ), (-171628291/625000000 : ℚ), (57023564987/500000000000 : ℚ), 2⟩,
    ⟨(15343382497/31250000000 : ℚ), (-363598441/1250000000 : ℚ), (61000799991/500000000000 : ℚ), 2⟩,
    ⟨(247256603571/500000000000 : ℚ), (-3035203597/10000000000 : ℚ), (128230616643/1000000000000 : ℚ), 2⟩,
    ⟨(497187072511/1000000000000 : ℚ), (-3127907139/10000000000 : ℚ), (132827263581/1000000000000 : ℚ), 2⟩,
    ⟨(249492042613/500000000000 : ℚ), (-3188737093/10000000000 : ℚ), (135857098489/1000000000000 : ℚ), 2⟩,
    ⟨(499886939071/1000000000000 : ℚ), (-128754661/400000000 : ℚ), (137361867169/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-805654867/2500000000 : ℚ), (34387373279/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (16994822137/62500000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control276.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control276.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate276
