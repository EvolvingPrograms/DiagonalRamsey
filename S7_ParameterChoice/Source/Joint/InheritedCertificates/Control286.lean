import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate286
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36014172443/125000000000 : ℚ), (14729418295139/10000000000 : ℚ), (-212603223625417/500000000000 : ℚ), 12⟩,
    ⟨(288892438099/1000000000000 : ℚ), (160881700791/1000000000 : ℚ), (-9399251514543/200000000000 : ℚ), 8⟩,
    ⟨(290443052449/1000000000000 : ℚ), (563356934951/10000000000 : ℚ), (-523103544123/31250000000 : ℚ), 7⟩,
    ⟨(292750289329/1000000000000 : ℚ), (55444759231/2000000000 : ℚ), (-8403050569991/1000000000000 : ℚ), 6⟩,
    ⟨(295791928789/1000000000000 : ℚ), (160539210391/10000000000 : ℚ), (-1243075137389/250000000000 : ℚ), 5⟩,
    ⟨(9360583693/31250000000 : ℚ), (25535403693/2500000000 : ℚ), (-808863846387/250000000000 : ℚ), 5⟩,
    ⟨(151977227123/500000000000 : ℚ), (34501199219/5000000000 : ℚ), (-2236296204567/1000000000000 : ℚ), 4⟩,
    ⟨(154498365331/500000000000 : ℚ), (24262406101/5000000000 : ℚ), (-100574572163/62500000000 : ℚ), 4⟩,
    ⟨(157308473773/500000000000 : ℚ), (17533291247/5000000000 : ℚ), (-37183291397/31250000000 : ℚ), 4⟩,
    ⟨(5011890299/15625000000 : ℚ), (12899007529/5000000000 : ℚ), (-223904557493/250000000000 : ℚ), 4⟩,
    ⟨(327369655049/1000000000000 : ℚ), (3835108509/2000000000 : ℚ), (-3405735829/5000000000 : ℚ), 3⟩,
    ⟨(2675034641/8000000000 : ℚ), (7150318233/5000000000 : ℚ), (-519947169097/1000000000000 : ℚ), 3⟩,
    ⟨(4271531217/12500000000 : ℚ), (10622501759/10000000000 : ℚ), (-197838712399/500000000000 : ℚ), 3⟩,
    ⟨(174664219019/500000000000 : ℚ), (7789008029/10000000000 : ℚ), (-297823433597/1000000000000 : ℚ), 3⟩,
    ⟨(71424780559/200000000000 : ℚ), (1391767811/2500000000 : ℚ), (-219375506719/1000000000000 : ℚ), 3⟩,
    ⟨(365033817043/1000000000000 : ℚ), (3797847729/10000000000 : ℚ), (-155519438091/1000000000000 : ℚ), 3⟩,
    ⟨(372982003983/1000000000000 : ℚ), (2370385949/10000000000 : ℚ), (-102864674389/1000000000000 : ℚ), 3⟩,
    ⟨(38089191823/100000000000 : ℚ), (150692577/1250000000 : ℚ), (-29485904887/500000000000 : ℚ), 2⟩,
    ⟨(388687382987/1000000000000 : ℚ), (122914779/5000000000 : ℚ), (-1378356629/62500000000 : ℚ), 2⟩,
    ⟨(198146661833/500000000000 : ℚ), (-551144449/10000000000 : ℚ), (4609525501/500000000000 : ℚ), 2⟩,
    ⟨(403636490901/1000000000000 : ℚ), (-76066639/625000000 : ℚ), (35848027037/1000000000000 : ℚ), 2⟩,
    ⟨(51330770747/125000000000 : ℚ), (-443969599/2500000000 : ℚ), (1464890499/25000000000 : ℚ), 2⟩,
    ⟨(41725484189/100000000000 : ℚ), (-28072977/125000000 : ℚ), (39023427101/500000000000 : ℚ), 2⟩,
    ⟨(10584971837/25000000000 : ℚ), (-1320482941/5000000000 : ℚ), (47326617081/500000000000 : ℚ), 2⟩,
    ⟨(429019090363/1000000000000 : ℚ), (-743020179/2500000000 : ℚ), (54382191851/500000000000 : ℚ), 2⟩,
    ⟨(434061366779/1000000000000 : ℚ), (-3247550501/10000000000 : ℚ), (30162801923/250000000000 : ℚ), 2⟩,
    ⟨(8769542857/20000000000 : ℚ), (-868460099/2500000000 : ℚ), (65261526841/500000000000 : ℚ), 2⟩,
    ⟨(442223892237/1000000000000 : ℚ), (-3655917141/10000000000 : ℚ), (69270270423/500000000000 : ℚ), 2⟩,
    ⟨(27829095731/62500000000 : ℚ), (-75950953/200000000 : ℚ), (144825184623/1000000000000 : ℚ), 2⟩,
    ⟨(447572768577/1000000000000 : ℚ), (-1950759227/5000000000 : ℚ), (18683323079/125000000000 : ℚ), 2⟩,
    ⟨(449123382927/1000000000000 : ℚ), (-3969794167/10000000000 : ℚ), (3050553937/20000000000 : ℚ), 2⟩,
    ⟨(449902441481/1000000000000 : ℚ), (-15639169/39062500 : ℚ), (77024268109/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1001960569/2500000000 : ℚ), (154238191171/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (55277379493/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control286.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control286.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate286
