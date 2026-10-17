import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate364
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71061560433/250000000000 : ℚ), (7174761018333/5000000000 : ℚ), (-102164984041579/250000000000 : ℚ), 12⟩,
    ⟨(71248946669/250000000000 : ℚ), (78383521639/500000000 : ℚ), (-45164292440959/1000000000000 : ℚ), 9⟩,
    ⟨(71621914509/250000000000 : ℚ), (68637619037/1250000000 : ℚ), (-1608450339257/100000000000 : ℚ), 7⟩,
    ⟨(11548299531/40000000000 : ℚ), (844629343/31250000 : ℚ), (-8072548623191/1000000000000 : ℚ), 6⟩,
    ⟨(145816949607/500000000000 : ℚ), (78276635573/5000000000 : ℚ), (-2387624192679/500000000000 : ℚ), 5⟩,
    ⟨(295238707917/1000000000000 : ℚ), (19923780761/2000000000 : ℚ), (-776486415511/250000000000 : ℚ), 5⟩,
    ⟨(149743599053/500000000000 : ℚ), (67298943793/10000000000 : ℚ), (-107281250129/50000000000 : ℚ), 5⟩,
    ⟨(9510576703/31250000000 : ℚ), (23659878897/5000000000 : ℚ), (-192860334697/125000000000 : ℚ), 4⟩,
    ⟨(154872878419/500000000000 : ℚ), (17091685917/5000000000 : ℚ), (-1139830213189/1000000000000 : ℚ), 4⟩,
    ⟨(157828514927/500000000000 : ℚ), (25132200471/10000000000 : ℚ), (-8569912759/10000000000 : ℚ), 4⟩,
    ⟨(20125959047/62500000000 : ℚ), (149294723/80000000 : ℚ), (-325412246957/500000000000 : ℚ), 3⟩,
    ⟨(65751893497/200000000000 : ℚ), (13896441897/10000000000 : ℚ), (-30991041051/62500000000 : ℚ), 3⟩,
    ⟨(67164889693/200000000000 : ℚ), (10299025299/10000000000 : ℚ), (-188191546601/500000000000 : ℚ), 3⟩,
    ⟨(171571124031/500000000000 : ℚ), (1881556863/2500000000 : ℚ), (-141149308209/500000000000 : ℚ), 3⟩,
    ⟨(175321195933/500000000000 : ℚ), (133767951/250000000 : ℚ), (-51716590103/250000000000 : ℚ), 3⟩,
    ⟨(358252649391/1000000000000 : ℚ), (904384143/2500000000 : ℚ), (-145459423501/1000000000000 : ℚ), 3⟩,
    ⟨(365899729699/1000000000000 : ℚ), (221841507/1000000000 : ℚ), (-47409550441/500000000000 : ℚ), 3⟩,
    ⟨(46688748403/125000000000 : ℚ), (269025229/2500000000 : ℚ), (-26300399313/500000000000 : ℚ), 3⟩,
    ⟨(95252532757/250000000000 : ℚ), (16808847/1250000000 : ℚ), (-854340817/50000000000 : ℚ), 3⟩,
    ⟨(621324689/1600000000 : ℚ), (-647881457/10000000000 : ℚ), (650029941/50000000000 : ℚ), 2⟩,
    ⟨(79078582321/200000000000 : ℚ), (-1301907307/10000000000 : ℚ), (38624050007/1000000000000 : ℚ), 2⟩,
    ⟨(201068517169/500000000000 : ℚ), (-1850999791/10000000000 : ℚ), (60516205773/1000000000000 : ℚ), 2⟩,
    ⟨(102123837309/250000000000 : ℚ), (-1156499647/5000000000 : ℚ), (79239181183/1000000000000 : ℚ), 2⟩,
    ⟨(103601655563/250000000000 : ℚ), (-6754017/25000000 : ℚ), (95226686291/1000000000000 : ℚ), 2⟩,
    ⟨(209906962297/500000000000 : ℚ), (-3027394611/10000000000 : ℚ), (10881444183/100000000000 : ℚ), 2⟩,
    ⟨(53083147623/125000000000 : ℚ), (-659707719/2000000000 : ℚ), (12026245463/100000000000 : ℚ), 2⟩,
    ⟨(107228417793/250000000000 : ℚ), (-1760677121/5000000000 : ℚ), (64885766353/500000000000 : ℚ), 2⟩,
    ⟨(108129619969/250000000000 : ℚ), (-925172981/2500000000 : ℚ), (8593477441/62500000000 : ℚ), 2⟩,
    ⟨(87088978163/200000000000 : ℚ), (-384022907/1000000000 : ℚ), (143551168301/1000000000000 : ℚ), 2⟩,
    ⟨(218832360527/500000000000 : ℚ), (-3942685069/10000000000 : ℚ), (9251492603/62500000000 : ℚ), 2⟩,
    ⟨(219578296207/500000000000 : ℚ), (-2004988283/5000000000 : ℚ), (75486998647/500000000000 : ℚ), 2⟩,
    ⟨(219953068679/500000000000 : ℚ), (-505415641/1250000000 : ℚ), (19054971159/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2023739963/5000000000 : ℚ), (30524512179/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (4682196007/15625000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control364.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control364.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate364
