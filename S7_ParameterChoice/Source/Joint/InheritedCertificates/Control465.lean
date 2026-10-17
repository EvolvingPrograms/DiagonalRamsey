import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate465
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267394896787/1000000000000 : ℚ), (7511956517977/5000000000 : ℚ), (-402427765963129/1000000000000 : ℚ), 12⟩,
    ⟨(67008260451/250000000000 : ℚ), (82133172827/500000000 : ℚ), (-8892564181521/200000000000 : ℚ), 9⟩,
    ⟨(269303186151/1000000000000 : ℚ), (71991647697/1250000000 : ℚ), (-7912728720481/500000000000 : ℚ), 7⟩,
    ⟨(54238619529/200000000000 : ℚ), (35468784721/1250000000 : ℚ), (-7935357553683/1000000000000 : ℚ), 6⟩,
    ⟨(68421143851/250000000000 : ℚ), (164470126611/10000000000 : ℚ), (-2344081026939/500000000000 : ℚ), 6⟩,
    ⟨(276753625137/1000000000000 : ℚ), (104692490291/10000000000 : ℚ), (-608835950839/200000000000 : ℚ), 5⟩,
    ⟨(35046336277/125000000000 : ℚ), (70715347871/10000000000 : ℚ), (-2098379707757/1000000000000 : ℚ), 5⟩,
    ⟨(284500936327/1000000000000 : ℚ), (1552537051/312500000 : ℚ), (-752353150001/500000000000 : ℚ), 4⟩,
    ⟨(289104586943/1000000000000 : ℚ), (35828775349/10000000000 : ℚ), (-221534944193/200000000000 : ℚ), 4⟩,
    ⟨(29413730639/100000000000 : ℚ), (1313373053/500000000 : ℚ), (-207254781983/250000000000 : ℚ), 4⟩,
    ⟨(299550626831/1000000000000 : ℚ), (776782853/400000000 : ℚ), (-625861739497/1000000000000 : ℚ), 4⟩,
    ⟨(30529241503/100000000000 : ℚ), (7183069963/5000000000 : ℚ), (-59139734869/125000000000 : ℚ), 3⟩,
    ⟨(77826843607/250000000000 : ℚ), (5271712391/5000000000 : ℚ), (-177661323837/500000000000 : ℚ), 3⟩,
    ⟨(317537577677/1000000000000 : ℚ), (189767783/250000000 : ℚ), (-262525338897/1000000000000 : ℚ), 3⟩,
    ⟨(64784604903/200000000000 : ℚ), (526900547/1000000000 : ℚ), (-94046134477/500000000000 : ℚ), 3⟩,
    ⟨(330402219597/1000000000000 : ℚ), (170763311/500000000 : ℚ), (-63733810519/500000000000 : ℚ), 3⟩,
    ⟨(168456382367/500000000000 : ℚ), (478871159/2500000000 : ℚ), (-38721509731/500000000000 : ℚ), 3⟩,
    ⟨(343391959817/1000000000000 : ℚ), (688242993/10000000000 : ℚ), (-17855201529/500000000000 : ℚ), 3⟩,
    ⟨(174888703327/500000000000 : ℚ), (-325656293/10000000000 : ℚ), (-289609587/500000000000 : ℚ), 3⟩,
    ⟨(22250475619/62500000000 : ℚ), (-1169920043/10000000000 : ℚ), (1168305967/40000000000 : ℚ), 3⟩,
    ⟨(362022569301/1000000000000 : ℚ), (-1877240239/10000000000 : ℚ), (13649192279/250000000000 : ℚ), 3⟩,
    ⟨(147105743/400000000 : ℚ), (-19315133/78125000 : ℚ), (76308080151/1000000000000 : ℚ), 3⟩,
    ⟨(373177677941/1000000000000 : ℚ), (-2974068091/10000000000 : ℚ), (2372334793/25000000000 : ℚ), 2⟩,
    ⟨(378210397389/1000000000000 : ℚ), (-169845819/500000000 : ℚ), (55388962923/500000000000 : ℚ), 2⟩,
    ⟨(95703512001/250000000000 : ℚ), (-3752055399/10000000000 : ℚ), (62145160077/500000000000 : ℚ), 2⟩,
    ⟨(96736073529/250000000000 : ℚ), (-2024061079/5000000000 : ℚ), (135684624003/1000000000000 : ℚ), 2⟩,
    ⟨(195280679597/500000000000 : ℚ), (-858356793/2000000000 : ℚ), (145156629393/1000000000000 : ℚ), 2⟩,
    ⟨(393630408927/1000000000000 : ℚ), (-897631427/2000000000 : ℚ), (6114244321/40000000000 : ℚ), 2⟩,
    ⟨(198060943343/500000000000 : ℚ), (-2320558541/5000000000 : ℚ), (158896015837/1000000000000 : ℚ), 2⟩,
    ⟨(19900589909/50000000000 : ℚ), (-4753526839/10000000000 : ℚ), (8167969341/50000000000 : ℚ), 2⟩,
    ⟨(97480943/244140625 : ℚ), (-4827402503/10000000000 : ℚ), (166304403147/1000000000000 : ℚ), 2⟩,
    ⟨(49990010943/125000000000 : ℚ), (-48640281/100000000 : ℚ), (167767963981/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4868591833/10000000000 : ℚ), (167950495079/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (80208321979/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control465.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control465.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate465
