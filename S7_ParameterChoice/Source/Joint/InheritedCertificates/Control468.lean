import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate468
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118825154699/500000000000 : ℚ), (3940327683491/2500000000 : ℚ), (-375186057131817/1000000000000 : ℚ), 12⟩,
    ⟨(47638195569/200000000000 : ℚ), (861879757391/5000000000 : ℚ), (-20721764841671/500000000000 : ℚ), 9⟩,
    ⟨(47853421561/200000000000 : ℚ), (302261968821/5000000000 : ℚ), (-14743927689003/1000000000000 : ℚ), 7⟩,
    ⟨(240868335559/1000000000000 : ℚ), (148936901503/5000000000 : ℚ), (-3693830320619/500000000000 : ℚ), 6⟩,
    ⟨(30372405051/125000000000 : ℚ), (86319195609/5000000000 : ℚ), (-2180052310317/500000000000 : ℚ), 6⟩,
    ⟨(49115898637/200000000000 : ℚ), (21968886203/2000000000 : ℚ), (-2827256048601/1000000000000 : ℚ), 5⟩,
    ⟨(49728810407/200000000000 : ℚ), (14826121171/2000000000 : ℚ), (-972662754659/500000000000 : ℚ), 5⟩,
    ⟨(252143403579/1000000000000 : ℚ), (52004947553/10000000000 : ℚ), (-278334963571/200000000000 : ℚ), 4⟩,
    ⟨(5120876943/20000000000 : ℚ), (935529339/250000000 : ℚ), (-127667667589/125000000000 : ℚ), 4⟩,
    ⟨(16269238709/62500000000 : ℚ), (5469030493/2000000000 : ℚ), (-761356347431/1000000000000 : ℚ), 4⟩,
    ⟨(264894255777/1000000000000 : ℚ), (4024124613/2000000000 : ℚ), (-571744685727/1000000000000 : ℚ), 4⟩,
    ⟨(269758986561/1000000000000 : ℚ), (7391328269/5000000000 : ℚ), (-429120434823/1000000000000 : ℚ), 3⟩,
    ⟨(274855161677/1000000000000 : ℚ), (5369595281/5000000000 : ℚ), (-79766664631/250000000000 : ℚ), 3⟩,
    ⟨(140066851087/500000000000 : ℚ), (7611305563/10000000000 : ℚ), (-116153823699/500000000000 : ℚ), 3⟩,
    ⟨(285543772821/1000000000000 : ℚ), (5147889301/10000000000 : ℚ), (-81330219863/500000000000 : ℚ), 3⟩,
    ⟨(291033271681/1000000000000 : ℚ), (1588798611/5000000000 : ℚ), (-105879526193/1000000000000 : ℚ), 3⟩,
    ⟨(148274665939/500000000000 : ℚ), (1580591751/10000000000 : ℚ), (-14743963581/250000000000 : ℚ), 3⟩,
    ⟨(151019415369/500000000000 : ℚ), (135640441/5000000000 : ℚ), (-3959990831/200000000000 : ℚ), 3⟩,
    ⟨(61489780277/200000000000 : ℚ), (-162514467/2000000000 : ℚ), (6610871699/500000000000 : ℚ), 3⟩,
    ⟨(312727441883/1000000000000 : ℚ), (-171691773/1000000000 : ℚ), (4125854563/100000000000 : ℚ), 3⟩,
    ⟨(317823616999/1000000000000 : ℚ), (-2476120409/10000000000 : ℚ), (6519010107/100000000000 : ℚ), 3⟩,
    ⟨(161344173891/500000000000 : ℚ), (-3116158803/10000000000 : ℚ), (5355292739/62500000000 : ℚ), 3⟩,
    ⟨(40909348027/125000000000 : ℚ), (-914210619/2500000000 : ℚ), (51626891081/500000000000 : ℚ), 3⟩,
    ⟨(33153875641/100000000000 : ℚ), (-2056688533/5000000000 : ℚ), (23658176949/200000000000 : ℚ), 3⟩,
    ⟨(335439199981/1000000000000 : ℚ), (-2248742791/5000000000 : ℚ), (32774878103/250000000000 : ℚ), 2⟩,
    ⟨(13557542061/40000000000 : ℚ), (-481822247/1000000000 : ℚ), (35478446357/250000000000 : ℚ), 2⟩,
    ⟨(171001555187/500000000000 : ℚ), (-1270642747/2500000000 : ℚ), (150913707999/1000000000000 : ℚ), 2⟩,
    ⟨(344603363151/1000000000000 : ℚ), (-2647942399/5000000000 : ℚ), (158236631487/1000000000000 : ℚ), 2⟩,
    ⟨(346714268001/1000000000000 : ℚ), (-85347113/156250000 : ℚ), (163985885733/1000000000000 : ℚ), 2⟩,
    ⟨(69663099151/200000000000 : ℚ), (-1116910521/2000000000 : ℚ), (168237248691/1000000000000 : ℚ), 2⟩,
    ⟨(69878325143/200000000000 : ℚ), (-2832500497/5000000000 : ℚ), (34208741377/200000000000 : ℚ), 2⟩,
    ⟨(349932294161/1000000000000 : ℚ), (-5704899651/10000000000 : ℚ), (21554851199/125000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-2854935951/5000000000 : ℚ), (172612821533/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (333566791883/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control468.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control468.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate468
