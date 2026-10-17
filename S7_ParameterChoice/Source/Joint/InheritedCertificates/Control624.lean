import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate624
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(278065565403/1000000000000 : ℚ), (14162277729989/10000000000 : ℚ), (-394408914705253/1000000000000 : ℚ), 12⟩,
    ⟨(139326179599/500000000000 : ℚ), (774968656681/5000000000 : ℚ), (-43566939135577/1000000000000 : ℚ), 9⟩,
    ⟨(279820295643/1000000000000 : ℚ), (136023393379/2500000000 : ℚ), (-968714940583/62500000000 : ℚ), 8⟩,
    ⟨(35194765859/125000000000 : ℚ), (134201397803/5000000000 : ℚ), (-7766376168691/1000000000000 : ℚ), 7⟩,
    ⟨(283849116619/1000000000000 : ℚ), (155752475653/10000000000 : ℚ), (-2291922095943/500000000000 : ℚ), 6⟩,
    ⟨(143335600701/500000000000 : ℚ), (99233586469/10000000000 : ℚ), (-594527590861/200000000000 : ℚ), 6⟩,
    ⟨(289997203001/1000000000000 : ℚ), (67066470639/10000000000 : ℚ), (-81829440109/40000000000 : ℚ), 5⟩,
    ⟨(146897545101/500000000000 : ℚ), (9424750187/2000000000 : ℚ), (-1463969288691/1000000000000 : ℚ), 5⟩,
    ⟨(74507071819/250000000000 : ℚ), (3396956237/1000000000 : ℚ), (-537473608499/500000000000 : ℚ), 4⟩,
    ⟨(15132801311/50000000000 : ℚ), (24875396333/10000000000 : ℚ), (-160392249439/200000000000 : ℚ), 4⟩,
    ⟨(15381686969/50000000000 : ℚ), (18351349277/10000000000 : ℚ), (-602986297659/1000000000000 : ℚ), 4⟩,
    ⟨(62582697731/200000000000 : ℚ), (13529066041/10000000000 : ℚ), (-113358968051/250000000000 : ℚ), 4⟩,
    ⟨(12737777087/40000000000 : ℚ), (9875476759/10000000000 : ℚ), (-6763027483/20000000000 : ℚ), 4⟩,
    ⟨(324173288977/1000000000000 : ℚ), (3524604873/5000000000 : ℚ), (-123689124001/500000000000 : ℚ), 4⟩,
    ⟨(41255612749/125000000000 : ℚ), (2411934793/5000000000 : ℚ), (-87306295033/500000000000 : ℚ), 3⟩,
    ⟨(537604351/1600000000 : ℚ), (380605259/1250000000 : ℚ), (-28846682037/250000000000 : ℚ), 3⟩,
    ⟨(341989364089/1000000000000 : ℚ), (1603880883/10000000000 : ℚ), (-6655342237/100000000000 : ℚ), 3⟩,
    ⟨(10873349421/31250000000 : ℚ), (423583691/10000000000 : ℚ), (-12923867237/500000000000 : ℚ), 3⟩,
    ⟨(353818794487/1000000000000 : ℚ), (-552403281/10000000000 : ℚ), (4195025383/500000000000 : ℚ), 3⟩,
    ⟨(359547656289/1000000000000 : ℚ), (-54629737/400000000 : ℚ), (4674342637/125000000000 : ℚ), 3⟩,
    ⟨(365078594809/1000000000000 : ℚ), (-409528151/2000000000 : ℚ), (62096593539/1000000000000 : ℚ), 3⟩,
    ⟨(92589586021/250000000000 : ℚ), (-2621718179/10000000000 : ℚ), (83203496509/1000000000000 : ℚ), 3⟩,
    ⟨(375336057243/1000000000000 : ℚ), (-388251799/1250000000 : ℚ), (2531456321/25000000000 : ℚ), 3⟩,
    ⟨(94990949047/250000000000 : ℚ), (-351439379/1000000000 : ℚ), (5833963199/50000000000 : ℚ), 3⟩,
    ⟨(192098496631/500000000000 : ℚ), (-482194699/1250000000 : ℚ), (129789927/1000000000 : ℚ), 3⟩,
    ⟨(387994880463/1000000000000 : ℚ), (-4143778819/10000000000 : ℚ), (70420101969/500000000000 : ℚ), 3⟩,
    ⟨(195660441031/500000000000 : ℚ), (-109486063/250000000 : ℚ), (150022658409/1000000000000 : ℚ), 3⟩,
    ⟨(98535741711/250000000000 : ℚ), (-285590371/625000000 : ℚ), (1574844939/10000000000 : ℚ), 3⟩,
    ⟨(24777122287/62500000000 : ℚ), (-2358747897/5000000000 : ℚ), (40834157977/250000000000 : ℚ), 3⟩,
    ⟨(398171787821/1000000000000 : ℚ), (-2413164051/5000000000 : ℚ), (33532105737/200000000000 : ℚ), 3⟩,
    ⟨(199669862133/500000000000 : ℚ), (-2448933897/5000000000 : ℚ), (170513202817/1000000000000 : ℚ), 3⟩,
    ⟨(399926518061/1000000000000 : ℚ), (-19270859/39062500 : ℚ), (171930784289/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-2468880063/5000000000 : ℚ), (8605378847/50000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (376354260219/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control624.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control624.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate624
