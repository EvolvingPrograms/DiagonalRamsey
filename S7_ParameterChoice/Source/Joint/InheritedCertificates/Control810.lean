import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate810
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(92356878101/500000000000 : ℚ), (2760256800059/10000000000 : ℚ), (-51178646150851/1000000000000 : ℚ), 11⟩,
    ⟨(37193037101/200000000000 : ℚ), (58437631083/2000000000 : ℚ), (-5533082219761/1000000000000 : ℚ), 8⟩,
    ⟨(188419952383/1000000000000 : ℚ), (19334085291/2000000000 : ℚ), (-940492476737/500000000000 : ℚ), 7⟩,
    ⟨(47995930381/250000000000 : ℚ), (43631704167/10000000000 : ℚ), (-174846833771/200000000000 : ℚ), 6⟩,
    ⟨(49129884819/250000000000 : ℚ), (22232446633/10000000000 : ℚ), (-229665371869/500000000000 : ℚ), 5⟩,
    ⟨(50463274177/250000000000 : ℚ), (11640540153/10000000000 : ℚ), (-49741816861/200000000000 : ℚ), 5⟩,
    ⟨(207779428199/1000000000000 : ℚ), (1422602349/2500000000 : ℚ), (-127018369941/1000000000000 : ℚ), 5⟩,
    ⟨(214070788153/1000000000000 : ℚ), (2044266061/10000000000 : ℚ), (-25102949053/500000000000 : ℚ), 4⟩,
    ⟨(430635553/1953125000 : ℚ), (-335721043/10000000000 : ℚ), (291050401/200000000000 : ℚ), 4⟩,
    ⟨(226776763089/1000000000000 : ℚ), (-1962905937/10000000000 : ℚ), (18908363537/500000000000 : ℚ), 4⟩,
    ⟨(11635154729/50000000000 : ℚ), (-3111375819/10000000000 : ℚ), (64187190193/1000000000000 : ℚ), 4⟩,
    ⟨(238036652013/1000000000000 : ℚ), (-3935472571/10000000000 : ℚ), (83576700773/1000000000000 : ℚ), 4⟩,
    ⟨(48514493953/200000000000 : ℚ), (-18100441/40000000 : ℚ), (97742664573/1000000000000 : ℚ), 4⟩,
    ⟨(123068119453/500000000000 : ℚ), (-616682609/1250000000 : ℚ), (107719619493/1000000000000 : ℚ), 4⟩,
    ⟨(31073875723/125000000000 : ℚ), (-5191669797/10000000000 : ℚ), (5705320823/50000000000 : ℚ), 4⟩,
    ⟨(249842435087/1000000000000 : ℚ), (-42535617/80000000 : ℚ), (117228619211/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5332442181/10000000000 : ℚ), (117615748497/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (296226196897/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control810.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control810.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate810
