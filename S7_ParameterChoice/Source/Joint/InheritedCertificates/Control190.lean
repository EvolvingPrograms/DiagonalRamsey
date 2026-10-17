import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate190
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(233130961283/1000000000000 : ℚ), (4457173882589/5000000000 : ℚ), (-208510274373451/1000000000000 : ℚ), 11⟩,
    ⟨(117111369687/500000000000 : ℚ), (966638120283/10000000000 : ℚ), (-23064946057249/1000000000000 : ℚ), 8⟩,
    ⟨(47279156227/200000000000 : ℚ), (167600518739/5000000000 : ℚ), (-4114626401439/500000000000 : ℚ), 6⟩,
    ⟨(59907289747/250000000000 : ℚ), (40802135821/2500000000 : ℚ), (-4141777764617/1000000000000 : ℚ), 5⟩,
    ⟨(48778346747/200000000000 : ℚ), (23381217419/2500000000 : ℚ), (-1229790155427/500000000000 : ℚ), 5⟩,
    ⟨(62285613613/250000000000 : ℚ), (58928197709/10000000000 : ℚ), (-1607928770657/1000000000000 : ℚ), 4⟩,
    ⟨(63832688457/250000000000 : ℚ), (39476651469/10000000000 : ℚ), (-44718466973/40000000000 : ℚ), 4⟩,
    ⟨(65599258789/250000000000 : ℚ), (27579813931/10000000000 : ℚ), (-202599437309/250000000000 : ℚ), 4⟩,
    ⟨(135136623143/500000000000 : ℚ), (9923173351/5000000000 : ℚ), (-604682799867/1000000000000 : ℚ), 3⟩,
    ⟨(278883534997/1000000000000 : ℚ), (7290359503/5000000000 : ℚ), (-115066904683/250000000000 : ℚ), 3⟩,
    ⟨(18009061219/62500000000 : ℚ), (10861546067/10000000000 : ℚ), (-177468734531/500000000000 : ℚ), 3⟩,
    ⟨(37246048379/125000000000 : ℚ), (1630984463/2000000000 : ℚ), (-137848477959/500000000000 : ℚ), 3⟩,
    ⟨(308259152797/1000000000000 : ℚ), (1533829771/2500000000 : ℚ), (-21453568979/100000000000 : ℚ), 3⟩,
    ⟨(3189181711/10000000000 : ℚ), (574487967/1250000000 : ℚ), (-83150585289/500000000000 : ℚ), 2⟩,
    ⟨(164921394883/500000000000 : ℚ), (1700357441/5000000000 : ℚ), (-797251753/6250000000 : ℚ), 2⟩,
    ⟨(85231949687/250000000000 : ℚ), (2457797849/10000000000 : ℚ), (-95957054211/1000000000000 : ℚ), 2⟩,
    ⟨(352066443347/1000000000000 : ℚ), (1703442011/10000000000 : ℚ), (-69833998641/1000000000000 : ℚ), 2⟩,
    ⟨(45393931541/125000000000 : ℚ), (1092583593/10000000000 : ℚ), (-48000193579/1000000000000 : ℚ), 2⟩,
    ⟨(74815214199/200000000000 : ℚ), (296387043/5000000000 : ℚ), (-14792274911/500000000000 : ℚ), 2⟩,
    ⟨(384735089297/1000000000000 : ℚ), (180284167/10000000000 : ℚ), (-13940254089/1000000000000 : ℚ), 2⟩,
    ⟨(197512927531/500000000000 : ℚ), (-40618441/2500000000 : ℚ), (-29047701/50000000000 : ℚ), 2⟩,
    ⟨(404849262591/1000000000000 : ℚ), (-448686737/10000000000 : ℚ), (10862826761/1000000000000 : ℚ), 2⟩,
    ⟨(414110707097/1000000000000 : ℚ), (-344169607/5000000000 : ℚ), (1292128601/62500000000 : ℚ), 2⟩,
    ⟨(422720995809/1000000000000 : ℚ), (-88905081/1000000000 : ℚ), (29070744309/1000000000000 : ℚ), 2⟩,
    ⟨(215298603469/500000000000 : ℚ), (-264167597/2500000000 : ℚ), (18110727777/500000000000 : ℚ), 2⟩,
    ⟨(437663488267/1000000000000 : ℚ), (-1195702459/10000000000 : ℚ), (21128333549/500000000000 : ℚ), 2⟩,
    ⟨(221925893821/500000000000 : ℚ), (-1309616211/10000000000 : ℚ), (23638572751/500000000000 : ℚ), 2⟩,
    ⟨(449102508359/1000000000000 : ℚ), (-350267733/2500000000 : ℚ), (51360190447/1000000000000 : ℚ), 2⟩,
    ⟨(226682541553/500000000000 : ℚ), (-1472080833/10000000000 : ℚ), (54564298123/1000000000000 : ℚ), 2⟩,
    ⟨(456598460959/1000000000000 : ℚ), (-304826991/2000000000 : ℚ), (28466312461/500000000000 : ℚ), 2⟩,
    ⟨(458771502721/1000000000000 : ℚ), (-311656593/2000000000 : ℚ), (11699103233/200000000000 : ℚ), 2⟩,
    ⟨(459863280811/1000000000000 : ℚ), (-1575194103/10000000000 : ℚ), (2963613633/50000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1577300447/10000000000 : ℚ), (11873830023/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (336626374287/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control190.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control190.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate190
