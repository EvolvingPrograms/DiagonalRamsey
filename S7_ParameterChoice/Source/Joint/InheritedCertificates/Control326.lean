import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate326
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(72452114893/250000000000 : ℚ), (14599095754649/10000000000 : ℚ), (-5298883174369/12500000000 : ℚ), 12⟩,
    ⟨(72644840193/250000000000 : ℚ), (1594834725633/10000000000 : ℚ), (-9370334933209/200000000000 : ℚ), 8⟩,
    ⟨(73028434743/250000000000 : ℚ), (558577466497/10000000000 : ℚ), (-16686826580521/1000000000000 : ℚ), 7⟩,
    ⟨(294396817271/1000000000000 : ℚ), (8591644767/312500000 : ℚ), (-8375936740677/1000000000000 : ℚ), 6⟩,
    ⟨(37175826047/125000000000 : ℚ), (39811456261/2500000000 : ℚ), (-123890709747/25000000000 : ℚ), 5⟩,
    ⟨(75278531589/250000000000 : ℚ), (101337057583/10000000000 : ℚ), (-3224069611733/1000000000000 : ℚ), 5⟩,
    ⟨(305483665783/1000000000000 : ℚ), (13693651257/2000000000 : ℚ), (-1113976294499/500000000000 : ℚ), 4⟩,
    ⟨(155236572803/500000000000 : ℚ), (48152947627/10000000000 : ℚ), (-200345106429/125000000000 : ℚ), 4⟩,
    ⟨(158017257203/500000000000 : ℚ), (34797958697/10000000000 : ℚ), (-2369427887/2000000000 : ℚ), 4⟩,
    ⟨(322114213161/1000000000000 : ℚ), (12799020033/5000000000 : ℚ), (-891369413567/1000000000000 : ℚ), 4⟩,
    ⟨(328653691049/1000000000000 : ℚ), (19022839161/10000000000 : ℚ), (-677560673043/1000000000000 : ℚ), 3⟩,
    ⟨(167794984661/500000000000 : ℚ), (28362871/20000000 : ℚ), (-258431764931/500000000000 : ℚ), 3⟩,
    ⟨(34285624783/100000000000 : ℚ), (1315954423/1250000000 : ℚ), (-392986876549/1000000000000 : ℚ), 3⟩,
    ⟨(175191274169/500000000000 : ℚ), (1928050703/2500000000 : ℚ), (-295448068223/1000000000000 : ℚ), 3⟩,
    ⟨(179048194229/500000000000 : ℚ), (2751966531/5000000000 : ℚ), (-217258495389/1000000000000 : ℚ), 3⟩,
    ⟨(365923479693/1000000000000 : ℚ), (149809389/400000000 : ℚ), (-30723651937/200000000000 : ℚ), 3⟩,
    ⟨(2990307543/8000000000 : ℚ), (1163004407/5000000000 : ℚ), (-25286678503/250000000000 : ℚ), 3⟩,
    ⟨(381615534109/1000000000000 : ℚ), (1167701061/10000000000 : ℚ), (-7176427303/125000000000 : ℚ), 3⟩,
    ⟨(389329374229/1000000000000 : ℚ), (213245459/10000000000 : ℚ), (-2063019269/100000000000 : ℚ), 2⟩,
    ⟨(396855674737/1000000000000 : ℚ), (-579458077/10000000000 : ℚ), (10522813767/1000000000000 : ℚ), 2⟩,
    ⟨(80824390649/200000000000 : ℚ), (-620939741/5000000000 : ℚ), (9261645737/250000000000 : ℚ), 2⟩,
    ⟨(205529115759/500000000000 : ℚ), (-1797804073/10000000000 : ℚ), (29850811403/500000000000 : ℚ), 2⟩,
    ⟨(208798854703/500000000000 : ℚ), (-283171563/1250000000 : ℚ), (79071561791/1000000000000 : ℚ), 2⟩,
    ⟨(423677408161/1000000000000 : ℚ), (-1329258891/5000000000 : ℚ), (47803430001/500000000000 : ℚ), 2⟩,
    ⟨(429238776961/1000000000000 : ℚ), (-746998213/2500000000 : ℚ), (10965634929/100000000000 : ℚ), 2⟩,
    ⟨(27139266049/62500000000 : ℚ), (-1631057437/5000000000 : ℚ), (3037258083/25000000000 : ℚ), 2⟩,
    ⟨(109649449053/250000000000 : ℚ), (-3487309957/10000000000 : ℚ), (131317651537/1000000000000 : ℚ), 2⟩,
    ⟨(442305314191/1000000000000 : ℚ), (-3668514699/10000000000 : ℚ), (139298575251/1000000000000 : ℚ), 2⟩,
    ⟨(445315105297/1000000000000 : ℚ), (-3809472909/10000000000 : ℚ), (145554311527/1000000000000 : ℚ), 2⟩,
    ⟨(111899545899/250000000000 : ℚ), (-782590757/2000000000 : ℚ), (150174229139/1000000000000 : ℚ), 2⟩,
    ⟨(112283140449/250000000000 : ℚ), (-995227383/2500000000 : ℚ), (153221113509/1000000000000 : ℚ), 2⟩,
    ⟨(89980692599/200000000000 : ℚ), (-2007292307/5000000000 : ℚ), (38683716779/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2009389983/5000000000 : ℚ), (77461818847/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (142623710819/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control326.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control326.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate326
