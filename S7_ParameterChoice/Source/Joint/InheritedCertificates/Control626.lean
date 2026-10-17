import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate626
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(209606110983/1000000000000 : ℚ), (225007624633/156250000 : ℚ), (-302297109979119/1000000000000 : ℚ), 12⟩,
    ⟨(52510279989/250000000000 : ℚ), (787906613967/5000000000 : ℚ), (-16690702931573/500000000000 : ℚ), 9⟩,
    ⟨(13181684283/62500000000 : ℚ), (110595883591/2000000000 : ℚ), (-11867967284907/1000000000000 : ℚ), 8⟩,
    ⟨(212195258297/1000000000000 : ℚ), (3407543773/125000000 : ℚ), (-297028204687/50000000000 : ℚ), 7⟩,
    ⟨(42778728427/200000000000 : ℚ), (79010233693/5000000000 : ℚ), (-3501044496457/1000000000000 : ℚ), 6⟩,
    ⟨(215985743677/1000000000000 : ℚ), (100518311073/10000000000 : ℚ), (-1132944229363/500000000000 : ℚ), 6⟩,
    ⟨(218451414841/1000000000000 : ℚ), (2711224857/400000000 : ℚ), (-1555206893139/1000000000000 : ℚ), 5⟩,
    ⟨(55316727467/250000000000 : ℚ), (5934355741/1250000000 : ℚ), (-1109032462597/1000000000000 : ℚ), 5⟩,
    ⟨(112202557/500000000 : ℚ), (8518249261/2500000000 : ℚ), (-405280632833/500000000000 : ℚ), 5⟩,
    ⟨(28479475577/125000000000 : ℚ), (6200064689/2500000000 : ℚ), (-600998960783/1000000000000 : ℚ), 4⟩,
    ⟨(23152594229/100000000000 : ℚ), (1133838847/625000000 : ℚ), (-448135918677/1000000000000 : ℚ), 4⟩,
    ⟨(235439988979/1000000000000 : ℚ), (13213387887/10000000000 : ℚ), (-333129280841/1000000000000 : ℚ), 4⟩,
    ⟨(119770125137/500000000000 : ℚ), (9474059829/10000000000 : ℚ), (-30545362059/125000000000 : ℚ), 4⟩,
    ⟨(243787238417/1000000000000 : ℚ), (6576315453/10000000000 : ℚ), (-17436310299/100000000000 : ℚ), 4⟩,
    ⟨(248140052591/1000000000000 : ℚ), (4289982381/10000000000 : ℚ), (-118148188163/1000000000000 : ℚ), 3⟩,
    ⟨(50511354563/200000000000 : ℚ), (1228953171/5000000000 : ℚ), (-7229754977/100000000000 : ℚ), 3⟩,
    ⟨(12849743183/50000000000 : ℚ), (970103109/10000000000 : ℚ), (-4300378643/125000000000 : ℚ), 3⟩,
    ⟨(52282316777/200000000000 : ℚ), (-252032191/10000000000 : ℚ), (-1366530827/500000000000 : ℚ), 3⟩,
    ⟨(132882199029/500000000000 : ℚ), (-1265689977/10000000000 : ℚ), (23979743617/1000000000000 : ℚ), 3⟩,
    ⟨(270011386201/1000000000000 : ℚ), (-2113115337/10000000000 : ℚ), (11669217249/250000000000 : ℚ), 3⟩,
    ⟨(34263955937/125000000000 : ℚ), (-282591377/1000000000 : ℚ), (66066209851/1000000000000 : ℚ), 3⟩,
    ⟨(139012847093/500000000000 : ℚ), (-3427981067/10000000000 : ℚ), (20671286443/250000000000 : ℚ), 3⟩,
    ⟨(14085791593/50000000000 : ℚ), (-3937536681/10000000000 : ℚ), (24236133881/250000000000 : ℚ), 3⟩,
    ⟨(71286630619/250000000000 : ℚ), (-4368559947/10000000000 : ℚ), (109159994303/1000000000000 : ℚ), 3⟩,
    ⟨(18017795413/62500000000 : ℚ), (-2365910243/5000000000 : ℚ), (23914904113/200000000000 : ℚ), 3⟩,
    ⟨(145550110817/500000000000 : ℚ), (-5035627497/10000000000 : ℚ), (128375120761/1000000000000 : ℚ), 3⟩,
    ⟨(293565892799/1000000000000 : ℚ), (-5286380677/10000000000 : ℚ), (530098387/3906250000 : ℚ), 3⟩,
    ⟨(295657994341/1000000000000 : ℚ), (-1097795681/2000000000 : ℚ), (141673802799/1000000000000 : ℚ), 3⟩,
    ⟨(297356378179/1000000000000 : ℚ), (-705890123/1250000000 : ℚ), (7318138331/50000000000 : ℚ), 3⟩,
    ⟨(298644687947/1000000000000 : ℚ), (-360220927/625000000 : ℚ), (14983187361/100000000000 : ℚ), 3⟩,
    ⟨(299510516519/1000000000000 : ℚ), (-730016907/1250000000 : ℚ), (15212281143/100000000000 : ℚ), 3⟩,
    ⟨(74986381373/250000000000 : ℚ), (-1469534943/2500000000 : ℚ), (153261912139/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5882876643/10000000000 : ℚ), (153404005367/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (423605439619/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control626.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control626.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate626
