import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate80
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(122031860277/1000000000000 : ℚ), (5495315710139/5000000000 : ℚ), (-33611766432411/250000000000 : ℚ), 10⟩,
    ⟨(122567963253/1000000000000 : ℚ), (582250369647/5000000000 : ℚ), (-2887958405213/200000000000 : ℚ), 7⟩,
    ⟨(30904891767/250000000000 : ℚ), (191668481203/5000000000 : ℚ), (-967511947239/200000000000 : ℚ), 6⟩,
    ⟨(62573129589/500000000000 : ℚ), (85099065389/5000000000 : ℚ), (-273749733643/125000000000 : ℚ), 5⟩,
    ⟨(6354468483/50000000000 : ℚ), (41763409863/5000000000 : ℚ), (-1098260777107/1000000000000 : ℚ), 4⟩,
    ⟨(129374225869/1000000000000 : ℚ), (40211274093/10000000000 : ℚ), (-543430581/1000000000 : ℚ), 4⟩,
    ⟨(131913022061/1000000000000 : ℚ), (3121142981/2000000000 : ℚ), (-11114165603/50000000000 : ℚ), 3⟩,
    ⟨(33652048431/250000000000 : ℚ), (171512299/5000000000 : ℚ), (-19055816171/1000000000000 : ℚ), 3⟩,
    ⟨(137356166921/1000000000000 : ℚ), (-2436615093/2500000000 : ℚ), (118053925739/1000000000000 : ℚ), 3⟩,
    ⟨(140051338583/1000000000000 : ℚ), (-1673109687/1000000000 : ℚ), (214884892333/1000000000000 : ℚ), 3⟩,
    ⟨(17823766847/125000000000 : ℚ), (-21718306881/10000000000 : ℚ), (71334682423/250000000000 : ℚ), 3⟩,
    ⟨(18109373873/125000000000 : ℚ), (-25333357647/10000000000 : ℚ), (168642900383/500000000000 : ℚ), 3⟩,
    ⟨(73409050733/500000000000 : ℚ), (-13970721103/5000000000 : ℚ), (187658934929/500000000000 : ℚ), 3⟩,
    ⟨(18543099197/125000000000 : ℚ), (-14879538511/5000000000 : ℚ), (80428097473/200000000000 : ℚ), 3⟩,
    ⟨(149396397391/1000000000000 : ℚ), (-30913416087/10000000000 : ℚ), (209662280489/500000000000 : ℚ), 3⟩,
    ⟨(149932500367/1000000000000 : ℚ), (-15737457099/5000000000 : ℚ), (427728114339/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15772201427/5000000000 : ℚ), (214385104751/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (179946267243/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control80.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control80.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate80
