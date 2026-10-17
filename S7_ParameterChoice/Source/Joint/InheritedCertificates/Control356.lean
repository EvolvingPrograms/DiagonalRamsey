import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate356
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129416294947/500000000000 : ℚ), (6311817736773/5000000000 : ℚ), (-327447777503263/1000000000000 : ℚ), 12⟩,
    ⟨(259608187341/1000000000000 : ℚ), (344321968707/2500000000 : ℚ), (-36195137334371/1000000000000 : ℚ), 8⟩,
    ⟨(32643989101/125000000000 : ℚ), (240777417273/5000000000 : ℚ), (-3223695951567/250000000000 : ℚ), 7⟩,
    ⟨(421518239/1600000000 : ℚ), (3696455171/156250000 : ℚ), (-6475116349087/1000000000000 : ℚ), 6⟩,
    ⟨(133238512903/500000000000 : ℚ), (136764778569/10000000000 : ℚ), (-3833071057571/1000000000000 : ℚ), 5⟩,
    ⟨(270207129587/1000000000000 : ℚ), (86871140903/10000000000 : ℚ), (-2495448898649/1000000000000 : ℚ), 5⟩,
    ⟨(13730164389/50000000000 : ℚ), (29297620269/5000000000 : ℚ), (-107867757841/62500000000 : ℚ), 4⟩,
    ⟨(279623162979/1000000000000 : ℚ), (20574041857/5000000000 : ℚ), (-1242812788767/1000000000000 : ℚ), 4⟩,
    ⟨(285218411041/1000000000000 : ℚ), (29698888913/10000000000 : ℚ), (-919726224441/1000000000000 : ℚ), 4⟩,
    ⟨(72833786667/250000000000 : ℚ), (21826036267/10000000000 : ℚ), (-86618022871/125000000000 : ℚ), 4⟩,
    ⟨(148957231177/500000000000 : ℚ), (8104644909/5000000000 : ℚ), (-65947477243/125000000000 : ℚ), 3⟩,
    ⟨(30489299569/100000000000 : ℚ), (1208063757/1000000000 : ℚ), (-80644767303/200000000000 : ℚ), 3⟩,
    ⟨(312203539587/1000000000000 : ℚ), (4484831441/5000000000 : ℚ), (-307294376051/1000000000000 : ℚ), 3⟩,
    ⟨(31977568951/100000000000 : ℚ), (6575898907/10000000000 : ℚ), (-115848250917/500000000000 : ℚ), 3⟩,
    ⟨(327536521517/1000000000000 : ℚ), (4700667581/10000000000 : ℚ), (-171034436927/1000000000000 : ℚ), 3⟩,
    ⟨(335411294551/1000000000000 : ℚ), (1604365549/5000000000 : ℚ), (-121603248911/1000000000000 : ℚ), 3⟩,
    ⟨(68664834049/200000000000 : ℚ), (1002873887/5000000000 : ℚ), (-40397225597/500000000000 : ℚ), 3⟩,
    ⟨(4389986791/12500000000 : ℚ), (128064191/1250000000 : ℚ), (-46732108007/1000000000000 : ℚ), 3⟩,
    ⟨(179479887643/500000000000 : ℚ), (216290013/10000000000 : ℚ), (-281916291/15625000000 : ℚ), 2⟩,
    ⟨(366531925209/1000000000000 : ℚ), (-1776627/39062500 : ℚ), (629500861/100000000000 : ℚ), 2⟩,
    ⟨(186921234553/500000000000 : ℚ), (-1015589327/10000000000 : ℚ), (1352472203/50000000000 : ℚ), 2⟩,
    ⟨(380821002443/1000000000000 : ℚ), (-743118019/5000000000 : ℚ), (22402561539/500000000000 : ℚ), 2⟩,
    ⟨(24212519883/62500000000 : ℚ), (-941071207/5000000000 : ℚ), (30004994257/500000000000 : ℚ), 2⟩,
    ⟨(98379263439/250000000000 : ℚ), (-1107553257/5000000000 : ℚ), (7300927287/100000000000 : ℚ), 2⟩,
    ⟨(199556150909/500000000000 : ℚ), (-1247110039/5000000000 : ℚ), (8406989833/100000000000 : ℚ), 2⟩,
    ⟨(50516522127/125000000000 : ℚ), (-2726506013/10000000000 : ℚ), (18679669037/200000000000 : ℚ), 2⟩,
    ⟨(408528335209/1000000000000 : ℚ), (-291738421/1000000000 : ℚ), (50576948803/500000000000 : ℚ), 2⟩,
    ⟨(41225843899/100000000000 : ℚ), (-95969197/312500000 : ℚ), (107458548171/1000000000000 : ℚ), 2⟩,
    ⟨(415286565421/1000000000000 : ℚ), (-623154/1953125 : ℚ), (56202215419/500000000000 : ℚ), 2⟩,
    ⟨(104395887997/250000000000 : ℚ), (-3278316991/10000000000 : ℚ), (14507421597/125000000000 : ℚ), 2⟩,
    ⟨(83825455491/200000000000 : ℚ), (-208497621/625000000 : ℚ), (23694193339/200000000000 : ℚ), 2⟩,
    ⟨(209951437451/500000000000 : ℚ), (-3364529819/10000000000 : ℚ), (59834715379/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1684044503/5000000000 : ℚ), (4792755973/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (165814022147/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control356.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control356.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate356
