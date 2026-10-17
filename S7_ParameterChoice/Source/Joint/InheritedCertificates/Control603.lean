import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate603
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(239011995123/1000000000000 : ℚ), (2763594040123/2000000000 : ℚ), (-33080155298067/100000000000 : ℚ), 12⟩,
    ⟨(29943263829/125000000000 : ℚ), (1511444526539/10000000000 : ℚ), (-4567480965649/125000000000 : ℚ), 9⟩,
    ⟨(9624367913/40000000000 : ℚ), (530168016809/10000000000 : ℚ), (-12998741449827/1000000000000 : ℚ), 8⟩,
    ⟨(7568469331/31250000000 : ℚ), (1020663977/39062500 : ℚ), (-6512710910551/1000000000000 : ℚ), 7⟩,
    ⟨(48855267827/200000000000 : ℚ), (75733108363/5000000000 : ℚ), (-3843321076823/1000000000000 : ℚ), 6⟩,
    ⟨(9873803067/40000000000 : ℚ), (24097743829/2500000000 : ℚ), (-2491823653497/1000000000000 : ℚ), 6⟩,
    ⟨(249872492867/1000000000000 : ℚ), (16265366381/2500000000 : ℚ), (-857123840007/500000000000 : ℚ), 5⟩,
    ⟨(126664716019/500000000000 : ℚ), (2853014937/625000000 : ℚ), (-1226122621297/1000000000000 : ℚ), 5⟩,
    ⟨(257182601973/1000000000000 : ℚ), (32849798759/10000000000 : ℚ), (-112454356497/125000000000 : ℚ), 4⟩,
    ⟨(13069744727/50000000000 : ℚ), (6001400127/2500000000 : ℚ), (-670447805939/1000000000000 : ℚ), 4⟩,
    ⟨(265925743059/1000000000000 : ℚ), (17663205813/10000000000 : ℚ), (-100663049809/200000000000 : ℚ), 4⟩,
    ⟨(135365756491/500000000000 : ℚ), (3244087677/2500000000 : ℚ), (-377617502423/1000000000000 : ℚ), 4⟩,
    ⟨(275765922117/1000000000000 : ℚ), (942572011/1000000000 : ℚ), (-140321323761/500000000000 : ℚ), 4⟩,
    ⟨(17561280397/62500000000 : ℚ), (3339450857/5000000000 : ℚ), (-204211593483/1000000000000 : ℚ), 3⟩,
    ⟨(286324986583/1000000000000 : ℚ), (2257781191/5000000000 : ℚ), (-17858994191/125000000000 : ℚ), 3⟩,
    ⟨(291747952351/1000000000000 : ℚ), (139266277/500000000 : ℚ), (-23219863209/250000000000 : ℚ), 3⟩,
    ⟨(74299289383/250000000000 : ℚ), (691495569/5000000000 : ℚ), (-51597535949/1000000000000 : ℚ), 3⟩,
    ⟨(3026201233/10000000000 : ℚ), (14587507/625000000 : ℚ), (-685194169/40000000000 : ℚ), 3⟩,
    ⟨(76991155883/250000000000 : ℚ), (-718114973/10000000000 : ℚ), (2978043977/250000000000 : ℚ), 3⟩,
    ⟨(313179187767/1000000000000 : ℚ), (-755963793/5000000000 : ℚ), (7312132561/200000000000 : ℚ), 3⟩,
    ⟨(159106798451/500000000000 : ℚ), (-2178240831/10000000000 : ℚ), (57592245171/1000000000000 : ℚ), 3⟩,
    ⟨(40377420853/125000000000 : ℚ), (-684973039/2500000000 : ℚ), (75597082987/1000000000000 : ℚ), 3⟩,
    ⟨(327550215343/1000000000000 : ℚ), (-3214298731/10000000000 : ℚ), (91026963977/1000000000000 : ℚ), 3⟩,
    ⟨(33176250791/100000000000 : ℚ), (-3614830567/10000000000 : ℚ), (104229487663/1000000000000 : ℚ), 3⟩,
    ⟨(167807838923/500000000000 : ℚ), (-3951794797/10000000000 : ℚ), (115472776903/1000000000000 : ℚ), 3⟩,
    ⟨(42384077127/125000000000 : ℚ), (-4233150711/10000000000 : ℚ), (124963618071/1000000000000 : ℚ), 3⟩,
    ⟨(42762504151/125000000000 : ℚ), (-4465034889/10000000000 : ℚ), (26572190477/200000000000 : ℚ), 3⟩,
    ⟨(344668770749/1000000000000 : ℚ), (-4652149781/10000000000 : ℚ), (139286005089/1000000000000 : ℚ), 3⟩,
    ⟨(346754091291/1000000000000 : ℚ), (-4798052023/10000000000 : ℚ), (144329922441/1000000000000 : ℚ), 3⟩,
    ⟨(174167956029/500000000000 : ℚ), (-4905365299/10000000000 : ℚ), (148059504613/1000000000000 : ℚ), 3⟩,
    ⟨(87349749813/250000000000 : ℚ), (-2487967359/5000000000 : ℚ), (150521431163/1000000000000 : ℚ), 3⟩,
    ⟨(349933114761/1000000000000 : ℚ), (-501093417/1000000000 : ℚ), (151745241871/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-313455993/625000000 : ℚ), (30379577481/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (199400308181/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control603.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control603.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate603
