import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate187
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(82803910277/1000000000000 : ℚ), (2599508873731/2500000000 : ℚ), (-2157231688077/25000000000 : ℚ), 11⟩,
    ⟨(83133530873/1000000000000 : ℚ), (220280858121/2000000000 : ℚ), (-9252993287061/1000000000000 : ℚ), 8⟩,
    ⟨(8378010493/100000000000 : ℚ), (361883208239/10000000000 : ℚ), (-3088986488287/1000000000000 : ℚ), 6⟩,
    ⟨(84718784969/1000000000000 : ℚ), (79951917441/5000000000 : ℚ), (-1389371241751/1000000000000 : ℚ), 5⟩,
    ⟨(85913498043/1000000000000 : ℚ), (151677557/19531250 : ℚ), (-68847136673/100000000000 : ℚ), 5⟩,
    ⟨(87318331999/1000000000000 : ℚ), (36487179873/10000000000 : ℚ), (-332215967431/1000000000000 : ℚ), 4⟩,
    ⟨(5554956241/62500000000 : ℚ), (326364567/250000000 : ℚ), (-1968088923/15625000000 : ℚ), 4⟩,
    ⟨(90536414493/1000000000000 : ℚ), (-755752017/5000000000 : ℚ), (1153934253/250000000000 : ℚ), 4⟩,
    ⟨(46112996963/500000000000 : ℚ), (-2232569309/2000000000 : ℚ), (92758685477/1000000000000 : ℚ), 3⟩,
    ⟨(23470777141/250000000000 : ℚ), (-4465210443/2500000000 : ℚ), (15505818281/100000000000 : ℚ), 3⟩,
    ⟨(95444076421/1000000000000 : ℚ), (-2831999609/1250000000 : ℚ), (200435769083/1000000000000 : ℚ), 3⟩,
    ⟨(96848910377/1000000000000 : ℚ), (-3267654443/1250000000 : ℚ), (233937532341/1000000000000 : ℚ), 3⟩,
    ⟨(98043623451/1000000000000 : ℚ), (-28662297079/10000000000 : ℚ), (258500867183/1000000000000 : ℚ), 3⟩,
    ⟨(9898230349/100000000000 : ℚ), (-30423463953/10000000000 : ℚ), (275849303623/1000000000000 : ℚ), 3⟩,
    ⟨(99628877547/1000000000000 : ℚ), (-1577203727/500000000 : ℚ), (286977220417/1000000000000 : ℚ), 3⟩,
    ⟨(99958498143/1000000000000 : ℚ), (-32089840717/10000000000 : ℚ), (292423577519/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32157415087/10000000000 : ℚ), (18318698807/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (146802397513/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control187.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control187.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate187
