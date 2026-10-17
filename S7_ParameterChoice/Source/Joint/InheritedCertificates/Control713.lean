import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate713
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(179770977809/1000000000000 : ℚ), (3284428775767/10000000000 : ℚ), (-741140846573/12500000000 : ℚ), 11⟩,
    ⟨(181117151997/1000000000000 : ℚ), (173612913823/5000000000 : ℚ), (-1604000236087/250000000000 : ℚ), 8⟩,
    ⟨(36751553531/200000000000 : ℚ), (11478051403/1000000000 : ℚ), (-546342976841/250000000000 : ℚ), 6⟩,
    ⟨(187591347403/1000000000000 : ℚ), (12955714557/2500000000 : ℚ), (-1019036332161/1000000000000 : ℚ), 5⟩,
    ⟨(192470568921/1000000000000 : ℚ), (13235032001/5000000000 : ℚ), (-8410181681/15625000000 : ℚ), 5⟩,
    ⟨(3096998851/15625000000 : ℚ), (13946679741/10000000000 : ℚ), (-294072990489/1000000000000 : ℚ), 4⟩,
    ⟨(204582936597/1000000000000 : ℚ), (6925111089/10000000000 : ℚ), (-30577594551/200000000000 : ℚ), 4⟩,
    ⟨(105675305629/500000000000 : ℚ), (2629694861/10000000000 : ℚ), (-15919220759/250000000000 : ℚ), 4⟩,
    ⟨(218250872503/1000000000000 : ℚ), (-85089671/5000000000 : ℚ), (-1799904243/500000000000 : ℚ), 4⟩,
    ⟨(225018547163/1000000000000 : ℚ), (-2082263307/10000000000 : ℚ), (38743816963/1000000000000 : ℚ), 3⟩,
    ⟨(231393557297/1000000000000 : ℚ), (-1715255513/5000000000 : ℚ), (6949330031/100000000000 : ℚ), 3⟩,
    ⟨(237130914839/1000000000000 : ℚ), (-1099274313/2500000000 : ℚ), (46063792449/500000000000 : ℚ), 3⟩,
    ⟨(242010136357/1000000000000 : ℚ), (-1272021321/2500000000 : ℚ), (108677439319/1000000000000 : ℚ), 3⟩,
    ⟨(49168743221/200000000000 : ℚ), (-222649247/400000000 : ℚ), (120339093043/1000000000000 : ℚ), 3⟩,
    ⟨(248484331763/1000000000000 : ℚ), (-1173672181/2000000000 : ℚ), (127806205267/1000000000000 : ℚ), 3⟩,
    ⟨(249830505951/1000000000000 : ℚ), (-375930217/625000000 : ℚ), (3286421747/25000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6032996227/10000000000 : ℚ), (2061086487/15625000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (127531412243/250000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control713.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control713.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate713
