import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate657
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(260321783953/1000000000000 : ℚ), (2087230772123/5000000000 : ℚ), (-54536599740621/500000000000 : ℚ), 11⟩,
    ⟨(262040767017/1000000000000 : ℚ), (442485347381/10000000000 : ℚ), (-2950863891153/250000000000 : ℚ), 8⟩,
    ⟨(66353168397/250000000000 : ℚ), (73389824641/5000000000 : ℚ), (-4021211339683/1000000000000 : ℚ), 6⟩,
    ⟨(270307923189/1000000000000 : ℚ), (66544528147/10000000000 : ℚ), (-1876301626883/1000000000000 : ℚ), 5⟩,
    ⟨(276538394123/1000000000000 : ℚ), (4271325161/1250000000 : ℚ), (-992745902819/1000000000000 : ℚ), 5⟩,
    ⟨(141932326443/500000000000 : ℚ), (3630374117/2000000000 : ℚ), (-544635911777/1000000000000 : ℚ), 4⟩,
    ⟨(146002577731/500000000000 : ℚ), (4580809509/5000000000 : ℚ), (-143072334939/500000000000 : ℚ), 4⟩,
    ⟨(150323533451/500000000000 : ℚ), (1831060523/5000000000 : ℚ), (-61687739727/500000000000 : ℚ), 4⟩,
    ⟨(309458283397/1000000000000 : ℚ), (16366243/2000000000 : ℚ), (-14263470873/1000000000000 : ℚ), 3⟩,
    ⟨(318100194837/1000000000000 : ℚ), (-294681539/1250000000 : ℚ), (62219006687/1000000000000 : ℚ), 3⟩,
    ⟨(326240697413/1000000000000 : ℚ), (-4071963237/10000000000 : ℚ), (117425288719/1000000000000 : ℚ), 3⟩,
    ⟨(20847934761/62500000000 : ℚ), (-132418251/250000000 : ℚ), (19726961147/125000000000 : ℚ), 3⟩,
    ⟨(33979742711/100000000000 : ℚ), (-6169207219/10000000000 : ℚ), (37436709527/200000000000 : ℚ), 3⟩,
    ⟨(344692676711/1000000000000 : ℚ), (-6771094679/10000000000 : ℚ), (207780190201/1000000000000 : ℚ), 3⟩,
    ⟨(174032291641/500000000000 : ℚ), (-7150531259/10000000000 : ℚ), (883689297/4000000000 : ℚ), 3⟩,
    ⟨(69956713269/200000000000 : ℚ), (-3667140463/5000000000 : ℚ), (56833425939/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1471396647/2000000000 : ℚ), (228128038709/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (372328925239/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control657.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control657.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate657
