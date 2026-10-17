import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate425
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(84379814979/1000000000000 : ℚ), (400017535659/400000000 : ℚ), (-5284289539407/62500000000 : ℚ), 11⟩,
    ⟨(10584903511/125000000000 : ℚ), (1059320535697/10000000000 : ℚ), (-4527126188369/500000000000 : ℚ), 8⟩,
    ⟨(21316637007/250000000000 : ℚ), (21727441239/625000000 : ℚ), (-1506853040933/500000000000 : ℚ), 7⟩,
    ⟨(10764900553/125000000000 : ℚ), (15307707453/1000000000 : ℚ), (-1348240595831/1000000000000 : ℚ), 6⟩,
    ⟨(87204430169/1000000000000 : ℚ), (73758871/10000000 : ℚ), (-165384727197/250000000000 : ℚ), 5⟩,
    ⟨(17696104129/200000000000 : ℚ), (4250194109/1250000000 : ℚ), (-312613663587/1000000000000 : ℚ), 5⟩,
    ⟨(89898436411/1000000000000 : ℚ), (11345479143/10000000000 : ℚ), (-55351601673/500000000000 : ℚ), 4⟩,
    ⟨(91403687759/1000000000000 : ℚ), (-86075119/312500000 : ℚ), (17029680073/1000000000000 : ℚ), 4⟩,
    ⟨(3717537149/40000000000 : ℚ), (-12106927783/10000000000 : ℚ), (103187075177/1000000000000 : ℚ), 4⟩,
    ⟨(47221840037/500000000000 : ℚ), (-18604300769/10000000000 : ℚ), (164036710849/1000000000000 : ℚ), 4⟩,
    ⟨(299567487/3125000000 : ℚ), (-11630427833/5000000000 : ℚ), (104165911659/500000000000 : ℚ), 4⟩,
    ⟨(19427537263/200000000000 : ℚ), (-26649326833/10000000000 : ℚ), (241023794301/1000000000000 : ℚ), 3⟩,
    ⟨(4911145603/50000000000 : ℚ), (-14551728691/5000000000 : ℚ), (132496387919/500000000000 : ℚ), 3⟩,
    ⟨(12384446057/125000000000 : ℚ), (-1926248879/625000000 : ℚ), (17620311819/62500000000 : ℚ), 3⟩,
    ⟨(24915722099/250000000000 : ℚ), (-6382669319/2000000000 : ℚ), (292789342599/1000000000000 : ℚ), 3⟩,
    ⟨(49981150753/500000000000 : ℚ), (-4055778491/1250000000 : ℚ), (149054065179/500000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32512226037/10000000000 : ℚ), (298767986971/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (171821284579/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control425.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control425.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate425
