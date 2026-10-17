import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate667
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2423787851/3906250000 : ℚ), (4833699190671/2500000000 : ℚ), (-600478224367707/500000000000 : ℚ), 12⟩,
    ⟨(77669195019/125000000000 : ℚ), (2124123416991/10000000000 : ℚ), (-16597276274527/125000000000 : ℚ), 9⟩,
    ⟨(623072981201/1000000000000 : ℚ), (187530243801/2500000000 : ℚ), (-11831191609031/250000000000 : ℚ), 8⟩,
    ⟨(625631394039/1000000000000 : ℚ), (2983071533/80000000 : ℚ), (-95130042527/4000000000 : ℚ), 7⟩,
    ⟨(629004159751/1000000000000 : ℚ), (218396146059/10000000000 : ℚ), (-2819102686493/200000000000 : ℚ), 6⟩,
    ⟨(633158796759/1000000000000 : ℚ), (70340945457/5000000000 : ℚ), (-4596616976477/500000000000 : ℚ), 6⟩,
    ⟨(638055293639/1000000000000 : ℚ), (12040546639/1250000000 : ℚ), (-255000933503/40000000000 : ℚ), 5⟩,
    ⟨(40227905903/62500000000 : ℚ), (68743692193/10000000000 : ℚ), (-921645845387/200000000000 : ℚ), 5⟩,
    ⟨(649878552867/1000000000000 : ℚ), (50501696073/10000000000 : ℚ), (-3428863759199/1000000000000 : ℚ), 5⟩,
    ⟨(131338290153/200000000000 : ℚ), (37860772901/10000000000 : ℚ), (-2603357076163/1000000000000 : ℚ), 4⟩,
    ⟨(166004894053/250000000000 : ℚ), (28777243883/10000000000 : ℚ), (-2003731686677/1000000000000 : ℚ), 4⟩,
    ⟨(335896177677/500000000000 : ℚ), (1378625199/625000000 : ℚ), (-311019561261/200000000000 : ℚ), 4⟩,
    ⟨(339967466039/500000000000 : ℚ), (16969096137/10000000000 : ℚ), (-302815824709/250000000000 : ℚ), 4⟩,
    ⟨(17209222223/25000000000 : ℚ), (3259822801/2500000000 : ℚ), (-942482052093/1000000000000 : ℚ), 3⟩,
    ⟨(139402600453/200000000000 : ℚ), (9955069813/10000000000 : ℚ), (-182224329057/250000000000 : ℚ), 3⟩,
    ⟨(28231360983/40000000000 : ℚ), (7501472451/10000000000 : ℚ), (-11136879681/20000000000 : ℚ), 3⟩,
    ⟨(22331171441/31250000000 : ℚ), (1381819093/2500000000 : ℚ), (-41666915933/100000000000 : ℚ), 3⟩,
    ⟨(723368508423/1000000000000 : ℚ), (19618561/50000000 : ℚ), (-150699174139/500000000000 : ℚ), 3⟩,
    ⟨(732012621767/1000000000000 : ℚ), (522205481/2000000000 : ℚ), (-102946130001/500000000000 : ℚ), 3⟩,
    ⟨(740446578609/1000000000000 : ℚ), (764880747/5000000000 : ℚ), (-126298530441/1000000000000 : ℚ), 3⟩,
    ⟨(374294577667/500000000000 : ℚ), (126987901/2000000000 : ℚ), (-59686339577/1000000000000 : ℚ), 3⟩,
    ⟨(30254477379/40000000000 : ℚ), (-107876747/10000000000 : ℚ), (-949403611/250000000000 : ℚ), 3⟩,
    ⟨(381845029961/500000000000 : ℚ), (-181331417/2500000000 : ℚ), (8625123047/200000000000 : ℚ), 3⟩,
    ⟨(770502957821/1000000000000 : ℚ), (-619087557/5000000000 : ℚ), (82463025769/1000000000000 : ℚ), 3⟩,
    ⟨(776735016239/1000000000000 : ℚ), (-1662702567/10000000000 : ℚ), (115303213159/1000000000000 : ℚ), 3⟩,
    ⟨(97790777131/125000000000 : ℚ), (-2011695467/10000000000 : ℚ), (2850139149/20000000000 : ℚ), 3⟩,
    ⟨(98402839241/125000000000 : ℚ), (-459036869/2000000000 : ℚ), (3295072819/20000000000 : ℚ), 3⟩,
    ⟨(98922168867/125000000000 : ℚ), (-504196953/2000000000 : ℚ), (2852744079/15625000000 : ℚ), 3⟩,
    ⟨(99343764581/125000000000 : ℚ), (-539019963/2000000000 : ℚ), (196383831209/1000000000000 : ℚ), 3⟩,
    ⟨(398654264743/500000000000 : ℚ), (-2822018273/10000000000 : ℚ), (51621705121/250000000000 : ℚ), 3⟩,
    ⟨(159805590107/200000000000 : ℚ), (-2904932131/10000000000 : ℚ), (213104714437/1000000000000 : ℚ), 3⟩,
    ⟨(24996619401/31250000000 : ℚ), (-2945888971/10000000000 : ℚ), (5409476153/25000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-2950985363/10000000000 : ℚ), (6774585311/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (4930629837/31250000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control667.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control667.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate667
