import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate632
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(154437499399/1000000000000 : ℚ), (2525182922923/5000000000 : ℚ), (-78242197631609/1000000000000 : ℚ), 11⟩,
    ⟨(15531085717/100000000000 : ℚ), (66890351673/1250000000 : ℚ), (-1687438663063/200000000000 : ℚ), 8⟩,
    ⟨(78512005031/500000000000 : ℚ), (176836578433/10000000000 : ℚ), (-2851957635607/1000000000000 : ℚ), 6⟩,
    ⟨(159511122571/1000000000000 : ℚ), (39688919923/5000000000 : ℚ), (-1312131614267/1000000000000 : ℚ), 6⟩,
    ⟨(81338308179/500000000000 : ℚ), (249442593/62500000 : ℚ), (-677342639001/1000000000000 : ℚ), 5⟩,
    ⟨(16639884327/100000000000 : ℚ), (5071602897/2500000000 : ℚ), (-70980548851/200000000000 : ℚ), 4⟩,
    ⟨(170534760217/1000000000000 : ℚ), (920342909/1000000000 : ℚ), (-168420081931/1000000000000 : ℚ), 4⟩,
    ⟨(174925426229/1000000000000 : ℚ), (474382843/2000000000 : ℚ), (-50540467761/1000000000000 : ℚ), 4⟩,
    ⟨(179402110473/1000000000000 : ℚ), (-105754567/500000000 : ℚ), (14443637863/500000000000 : ℚ), 4⟩,
    ⟨(36758555297/200000000000 : ℚ), (-5202118779/10000000000 : ℚ), (10613909081/125000000000 : ℚ), 4⟩,
    ⟨(23491086679/125000000000 : ℚ), (-3697039831/5000000000 : ℚ), (7852023207/62500000000 : ℚ), 3⟩,
    ⟨(38330184069/200000000000 : ℚ), (-897554763/1000000000 : ℚ), (9727347997/62500000000 : ℚ), 3⟩,
    ⟨(194816414131/1000000000000 : ℚ), (-5056183733/5000000000 : ℚ), (17760044181/100000000000 : ℚ), 3⟩,
    ⟨(2466294083/12500000000 : ℚ), (-5451294991/5000000000 : ℚ), (24136484827/125000000000 : ℚ), 3⟩,
    ⟨(49754169883/250000000000 : ℚ), (-5701800049/5000000000 : ℚ), (203019438121/1000000000000 : ℚ), 3⟩,
    ⟨(199890037303/1000000000000 : ℚ), (-5823539391/5000000000 : ℚ), (207875646681/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-291930021/250000000 : ℚ), (104238961059/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (13292214657/31250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control632.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control632.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate632
