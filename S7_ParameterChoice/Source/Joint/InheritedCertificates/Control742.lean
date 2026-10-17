import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate742
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30132727657/200000000000 : ℚ), (3607396699899/10000000000 : ℚ), (-54540482047769/1000000000000 : ℚ), 11⟩,
    ⟨(151609334731/1000000000000 : ℚ), (4774393959/125000000 : ℚ), (-235540400741/40000000000 : ℚ), 8⟩,
    ⟨(153464385039/1000000000000 : ℚ), (126243476347/10000000000 : ℚ), (-997887067831/500000000000 : ℚ), 7⟩,
    ⟨(31231500133/200000000000 : ℚ), (11357716259/2000000000 : ℚ), (-922568163541/1000000000000 : ℚ), 6⟩,
    ⟨(1246759271/7812500000 : ℚ), (1794718861/625000000 : ℚ), (-19205879407/40000000000 : ℚ), 5⟩,
    ⟨(81807859527/500000000000 : ℚ), (7393848049/5000000000 : ℚ), (-127712103289/500000000000 : ℚ), 5⟩,
    ⟨(84047103333/500000000000 : ℚ), (3470498277/5000000000 : ℚ), (-125458922257/1000000000000 : ℚ), 4⟩,
    ⟨(43212135939/250000000000 : ℚ), (2116372007/10000000000 : ℚ), (-43306042233/1000000000000 : ℚ), 4⟩,
    ⟨(177696023817/1000000000000 : ℚ), (-8358367/80000000 : ℚ), (12050021737/1000000000000 : ℚ), 4⟩,
    ⟨(182450360907/1000000000000 : ℚ), (-1607382911/5000000000 : ℚ), (408784481/8000000000 : ℚ), 4⟩,
    ⟨(186928848519/1000000000000 : ℚ), (-2376254727/5000000000 : ℚ), (3974208239/50000000000 : ℚ), 4⟩,
    ⟨(38191876177/200000000000 : ℚ), (-2930061137/5000000000 : ℚ), (100404632513/1000000000000 : ℚ), 4⟩,
    ⟨(194387066907/1000000000000 : ℚ), (-6655259843/10000000000 : ℚ), (115721511829/1000000000000 : ℚ), 4⟩,
    ⟨(98540091267/500000000000 : ℚ), (-7207421859/10000000000 : ℚ), (126527910137/1000000000000 : ℚ), 4⟩,
    ⟨(99467616421/500000000000 : ℚ), (-944657229/1250000000 : ℚ), (65163369/488281250 : ℚ), 3⟩,
    ⟨(24985116161/125000000000 : ℚ), (-3863600599/5000000000 : ℚ), (27368669083/200000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-1937055671/2500000000 : ℚ), (137263649893/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (270966214701/500000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control742.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control742.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate742
