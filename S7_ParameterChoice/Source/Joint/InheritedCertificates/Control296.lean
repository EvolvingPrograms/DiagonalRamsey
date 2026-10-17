import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate296
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66528179809/250000000000 : ℚ), (2213494029851/2000000000 : ℚ), (-147630855647779/500000000000 : ℚ), 11⟩,
    ⟨(53409155371/200000000000 : ℚ), (18833374677/156250000 : ℚ), (-32648465683613/1000000000000 : ℚ), 8⟩,
    ⟨(420160791/1562500000 : ℚ), (420441660281/10000000000 : ℚ), (-11639302267529/1000000000000 : ℚ), 7⟩,
    ⟨(271666222217/1000000000000 : ℚ), (206040923661/10000000000 : ℚ), (-5850929047961/1000000000000 : ℚ), 6⟩,
    ⟨(55061822509/200000000000 : ℚ), (29709975171/2500000000 : ℚ), (-3468727858777/1000000000000 : ℚ), 5⟩,
    ⟨(279796494197/1000000000000 : ℚ), (75340650349/10000000000 : ℚ), (-452538397849/200000000000 : ℚ), 5⟩,
    ⟨(71271287809/250000000000 : ℚ), (50749661501/10000000000 : ℚ), (-784431037967/500000000000 : ℚ), 4⟩,
    ⟨(291124151003/1000000000000 : ℚ), (17809256259/5000000000 : ℚ), (-566679580683/500000000000 : ℚ), 4⟩,
    ⟨(297855334629/1000000000000 : ℚ), (25719321143/10000000000 : ℚ), (-842112899013/1000000000000 : ℚ), 4⟩,
    ⟨(61042775427/200000000000 : ℚ), (18934325629/10000000000 : ℚ), (-15942589867/25000000000 : ℚ), 3⟩,
    ⟨(39141113967/125000000000 : ℚ), (141100243/100000000 : ℚ), (-488673958683/1000000000000 : ℚ), 3⟩,
    ⟨(160762106161/500000000000 : ℚ), (2644035559/2500000000 : ℚ), (-376620960571/1000000000000 : ℚ), 3⟩,
    ⟨(330318927557/1000000000000 : ℚ), (3961329899/5000000000 : ℚ), (-290199592969/1000000000000 : ℚ), 3⟩,
    ⟨(339428359527/1000000000000 : ℚ), (2944037543/5000000000 : ℚ), (-55527697967/250000000000 : ℚ), 3⟩,
    ⟨(174382389711/500000000000 : ℚ), (4299760619/10000000000 : ℚ), (-41872347567/250000000000 : ℚ), 3⟩,
    ⟨(71647654483/200000000000 : ℚ), (1520210999/5000000000 : ℚ), (-61497438841/500000000000 : ℚ), 3⟩,
    ⟨(367757603589/1000000000000 : ℚ), (2028390277/10000000000 : ℚ), (-17255074947/200000000000 : ℚ), 2⟩,
    ⟨(188615548291/500000000000 : ℚ), (75350143/625000000 : ℚ), (-55639451991/1000000000000 : ℚ), 2⟩,
    ⟨(386567516477/1000000000000 : ℚ), (530030753/10000000000 : ℚ), (-7462129507/250000000000 : ℚ), 2⟩,
    ⟨(395676948447/1000000000000 : ℚ), (-7304451/2500000000 : ℚ), (-7981666097/1000000000000 : ℚ), 2⟩,
    ⟨(202235831841/500000000000 : ℚ), (-247577851/5000000000 : ℚ), (1331820021/125000000000 : ℚ), 2⟩,
    ⟨(103216741067/250000000000 : ℚ), (-885118937/10000000000 : ℚ), (26587782573/1000000000000 : ℚ), 2⟩,
    ⟨(420781998869/1000000000000 : ℚ), (-242458033/2000000000 : ℚ), (160890873/4000000000 : ℚ), 2⟩,
    ⟨(3425124331/8000000000 : ℚ), (-1486768323/10000000000 : ℚ), (6483954759/125000000000 : ℚ), 2⟩,
    ⟨(434871725001/1000000000000 : ℚ), (-1716330831/10000000000 : ℚ), (61776329423/1000000000000 : ℚ), 2⟩,
    ⟨(13778460149/31250000000 : ℚ), (-1906983519/10000000000 : ℚ), (70124160149/1000000000000 : ℚ), 2⟩,
    ⟨(446199381807/1000000000000 : ℚ), (-2063361379/10000000000 : ℚ), (3852998343/50000000000 : ℚ), 2⟩,
    ⟨(450686763459/1000000000000 : ℚ), (-2189022623/10000000000 : ℚ), (82694928119/1000000000000 : ℚ), 2⟩,
    ⟨(454329653787/1000000000000 : ℚ), (-457332987/2000000000 : ℚ), (43556604221/500000000000 : ℚ), 2⟩,
    ⟨(114273242441/250000000000 : ℚ), (-2358283729/10000000000 : ℚ), (90376910717/1000000000000 : ℚ), 2⟩,
    ⟨(458950099149/1000000000000 : ℚ), (-601321493/2500000000 : ℚ), (92529700879/1000000000000 : ℚ), 2⟩,
    ⟨(14371348649/31250000000 : ℚ), (-97142751/400000000 : ℚ), (46799674931/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2431469007/10000000000 : ℚ), (4686637181/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (332424361881/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control296.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control296.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate296
