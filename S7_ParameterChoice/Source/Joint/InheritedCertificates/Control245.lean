import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate245
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267676218839/1000000000000 : ℚ), (3293139696971/2500000000 : ℚ), (-176693248808743/500000000000 : ℚ), 11⟩,
    ⟨(33563188111/125000000000 : ℚ), (143668688169/1000000000 : ℚ), (-19533013230557/500000000000 : ℚ), 8⟩,
    ⟨(270156090509/1000000000000 : ℚ), (502105905767/10000000000 : ℚ), (-1392026213731/100000000000 : ℚ), 7⟩,
    ⟨(136306039829/500000000000 : ℚ), (61640925481/2500000000 : ℚ), (-6992183871729/1000000000000 : ℚ), 6⟩,
    ⟨(275849819819/1000000000000 : ℚ), (28497845473/2000000000 : ℚ), (-2070467586923/500000000000 : ℚ), 5⟩,
    ⟨(34979766223/125000000000 : ℚ), (90485989329/10000000000 : ℚ), (-539486531897/200000000000 : ℚ), 5⟩,
    ⟨(142269299973/500000000000 : ℚ), (61030141183/10000000000 : ℚ), (-933493531233/500000000000 : ℚ), 4⟩,
    ⟨(28990596221/100000000000 : ℚ), (10716500627/2500000000 : ℚ), (-269146435021/200000000000 : ℚ), 4⟩,
    ⟨(295888525943/1000000000000 : ℚ), (30954428099/10000000000 : ℚ), (-15580279143/15625000000 : ℚ), 4⟩,
    ⟨(60485735157/200000000000 : ℚ), (22769708653/10000000000 : ℚ), (-188119679853/250000000000 : ℚ), 3⟩,
    ⟨(154731713259/500000000000 : ℚ), (16935097127/10000000000 : ℚ), (-574103441931/1000000000000 : ℚ), 3⟩,
    ⟨(158462514823/500000000000 : ℚ), (6324936549/5000000000 : ℚ), (-8799703739/20000000000 : ℚ), 3⟩,
    ⟨(162370812927/500000000000 : ℚ), (9423705941/10000000000 : ℚ), (-168272366791/500000000000 : ℚ), 3⟩,
    ⟨(332837937047/1000000000000 : ℚ), (6943499139/10000000000 : ℚ), (-255045390023/1000000000000 : ℚ), 3⟩,
    ⟨(341135991321/1000000000000 : ℚ), (5002291501/10000000000 : ℚ), (-94831795717/500000000000 : ℚ), 3⟩,
    ⟨(174777936939/500000000000 : ℚ), (3459258529/10000000000 : ℚ), (-136400680123/1000000000000 : ℚ), 3⟩,
    ⟨(179008248323/500000000000 : ℚ), (443240001/2000000000 : ℚ), (-46220689037/500000000000 : ℚ), 2⟩,
    ⟨(366436379203/1000000000000 : ℚ), (601595917/5000000000 : ℚ), (-11152203883/200000000000 : ℚ), 2⟩,
    ⟨(374734433477/1000000000000 : ℚ), (369543587/10000000000 : ℚ), (-12438540189/500000000000 : ℚ), 2⟩,
    ⟨(382830744669/1000000000000 : ℚ), (-20128871/625000000 : ℚ), (6562871/5000000000 : ℚ), 2⟩,
    ⟨(390647340877/1000000000000 : ℚ), (-899460997/10000000000 : ℚ), (11818845867/500000000000 : ℚ), 2⟩,
    ⟨(199054472003/500000000000 : ℚ), (-1383650311/10000000000 : ℚ), (21364694167/500000000000 : ℚ), 2⟩,
    ⟨(405143694739/1000000000000 : ℚ), (-895306971/5000000000 : ℚ), (2362861967/40000000000 : ℚ), 2⟩,
    ⟨(411683844581/1000000000000 : ℚ), (-85304329/400000000 : ℚ), (73037308227/1000000000000 : ℚ), 2⟩,
    ⟨(417666408313/1000000000000 : ℚ), (-483815771/2000000000 : ℚ), (84915364971/1000000000000 : ℚ), 2⟩,
    ⟨(423033770577/1000000000000 : ℚ), (-41520683/156250000 : ℚ), (11866155597/125000000000 : ℚ), 2⟩,
    ⟨(21386712037/50000000000 : ℚ), (-2852976763/10000000000 : ℚ), (51625781457/500000000000 : ℚ), 2⟩,
    ⟨(26982659419/62500000000 : ℚ), (-3010363789/10000000000 : ℚ), (55007339567/500000000000 : ℚ), 2⟩,
    ⟨(86992058173/200000000000 : ℚ), (-3132764479/10000000000 : ℚ), (115318683081/1000000000000 : ℚ), 2⟩,
    ⟨(87483256003/200000000000 : ℚ), (-3222604561/10000000000 : ℚ), (119237350663/1000000000000 : ℚ), 2⟩,
    ⟨(87813373127/200000000000 : ℚ), (-3281594209/10000000000 : ℚ), (487290029/4000000000 : ℚ), 2⟩,
    ⟨(109974037921/250000000000 : ℚ), (-827705931/2500000000 : ℚ), (123107088527/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3314465117/10000000000 : ℚ), (30816822729/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (146475440389/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control245.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control245.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate245
