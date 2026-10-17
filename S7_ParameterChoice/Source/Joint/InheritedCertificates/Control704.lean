import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate704
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(239570192239/1000000000000 : ℚ), (5095321649061/10000000000 : ℚ), (-244797698171/2000000000 : ℚ), 11⟩,
    ⟨(48145706339/200000000000 : ℚ), (67637986769/1250000000 : ℚ), (-13196066248721/1000000000000 : ℚ), 8⟩,
    ⟨(243000696273/1000000000000 : ℚ), (179314942023/10000000000 : ℚ), (-4459094074419/1000000000000 : ℚ), 7⟩,
    ⟨(123149683981/500000000000 : ℚ), (40371218481/5000000000 : ℚ), (-1025520311313/500000000000 : ℚ), 6⟩,
    ⟨(250497780657/1000000000000 : ℚ), (40754067533/10000000000 : ℚ), (-1059077617019/1000000000000 : ℚ), 5⟩,
    ⟨(51086918343/200000000000 : ℚ), (20841497953/10000000000 : ℚ), (-138992285661/250000000000 : ℚ), 5⟩,
    ⟨(52184016451/200000000000 : ℚ), (4793720111/5000000000 : ℚ), (-265722893247/1000000000000 : ℚ), 4⟩,
    ⟨(16671465497/62500000000 : ℚ), (1326142873/5000000000 : ℚ), (-41457480647/500000000000 : ℚ), 4⟩,
    ⟨(272680900127/1000000000000 : ℚ), (-948325709/5000000000 : ℚ), (1984329989/50000000000 : ℚ), 4⟩,
    ⟨(278504265823/1000000000000 : ℚ), (-2509568897/5000000000 : ℚ), (125691804519/1000000000000 : ℚ), 4⟩,
    ⟨(283989756363/1000000000000 : ℚ), (-7229903647/10000000000 : ℚ), (187843415857/1000000000000 : ℚ), 4⟩,
    ⟨(288926567421/1000000000000 : ℚ), (-1102514329/1250000000 : ℚ), (233383506849/1000000000000 : ℚ), 4⟩,
    ⟨(73281245029/250000000000 : ℚ), (-9960054087/10000000000 : ℚ), (133276423207/500000000000 : ℚ), 4⟩,
    ⟨(59284730361/200000000000 : ℚ), (-1075067387/1000000000 : ℚ), (18116002379/62500000000 : ℚ), 3⟩,
    ⟨(298695816383/1000000000000 : ℚ), (-11251144131/10000000000 : ℚ), (9523356057/31250000000 : ℚ), 3⟩,
    ⟨(299854155839/1000000000000 : ℚ), (-2873534243/2500000000 : ℚ), (31201948681/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-11524188827/10000000000 : ℚ), (312920823149/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (182148784023/500000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control704.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control704.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate704
