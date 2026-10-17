import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate658
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39058363013/250000000000 : ℚ), (9673433471/19531250 : ℚ), (-15522149528271/200000000000 : ℚ), 11⟩,
    ⟨(157072384381/1000000000000 : ℚ), (131251002883/2500000000 : ℚ), (-8365289222603/1000000000000 : ℚ), 8⟩,
    ⟨(7935900467/50000000000 : ℚ), (86756575677/5000000000 : ℚ), (-2824865631313/1000000000000 : ℚ), 7⟩,
    ⟨(80553543243/500000000000 : ℚ), (15568448327/2000000000 : ℚ), (-32436154203/25000000000 : ℚ), 6⟩,
    ⟨(82073902461/500000000000 : ℚ), (7813772463/2000000000 : ℚ), (-166957021769/250000000000 : ℚ), 5⟩,
    ⟨(33544662309/200000000000 : ℚ), (1235813451/625000000 : ℚ), (-87017797871/250000000000 : ℚ), 5⟩,
    ⟨(4292405041/25000000000 : ℚ), (1773305171/2000000000 : ℚ), (-163193423377/1000000000000 : ℚ), 4⟩,
    ⟨(17591379927/100000000000 : ℚ), (2138725923/10000000000 : ℚ), (-5796924151/125000000000 : ℚ), 4⟩,
    ⟨(90107012261/500000000000 : ℚ), (-1141518327/5000000000 : ℚ), (3229810629/100000000000 : ℚ), 4⟩,
    ⟨(184431622151/1000000000000 : ℚ), (-5326865481/10000000000 : ℚ), (17552071751/200000000000 : ℚ), 4⟩,
    ⟨(188404512247/1000000000000 : ℚ), (-7489208137/10000000000 : ℚ), (25610501183/200000000000 : ℚ), 4⟩,
    ⟨(19198001887/100000000000 : ℚ), (-9050014601/10000000000 : ℚ), (19716112011/125000000000 : ℚ), 3⟩,
    ⟨(97510368653/500000000000 : ℚ), (-5086234449/5000000000 : ℚ), (179444350773/1000000000000 : ℚ), 3⟩,
    ⟨(49352453613/250000000000 : ℚ), (-2738254881/2500000000 : ℚ), (97379186951/500000000000 : ℚ), 3⟩,
    ⟨(199055439411/1000000000000 : ℚ), (-11448063709/10000000000 : ℚ), (102285664073/500000000000 : ℚ), 3⟩,
    ⟨(9994718587/50000000000 : ℚ), (-2922174333/2500000000 : ℚ), (209371312591/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-2343694017/2000000000 : ℚ), (104983305151/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (444259493291/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control658.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control658.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate658
