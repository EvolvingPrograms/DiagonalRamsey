import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate739
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(132733872049/1000000000000 : ℚ), (9096457565393/10000000000 : ℚ), (-120906089628567/1000000000000 : ℚ), 12⟩,
    ⟨(66532417581/500000000000 : ℚ), (963452514099/10000000000 : ℚ), (-12903888531853/1000000000000 : ℚ), 9⟩,
    ⟨(6685702133/50000000000 : ℚ), (315123583313/10000000000 : ℚ), (-2131361839083/500000000000 : ℚ), 8⟩,
    ⟨(16832068233/125000000000 : ℚ), (68738187057/5000000000 : ℚ), (-940382379983/500000000000 : ℚ), 7⟩,
    ⟨(27171224981/200000000000 : ℚ), (12971009979/2000000000 : ℚ), (-89920587027/100000000000 : ℚ), 6⟩,
    ⟨(137266680631/1000000000000 : ℚ), (28350571323/10000000000 : ℚ), (-401011975663/1000000000000 : ℚ), 6⟩,
    ⟨(138834006179/1000000000000 : ℚ), (299720499/400000000 : ℚ), (-113232663309/1000000000000 : ℚ), 5⟩,
    ⟨(28099574021/200000000000 : ℚ), (-5516936923/10000000000 : ℚ), (68386650469/1000000000000 : ℚ), 5⟩,
    ⟨(142194331053/1000000000000 : ℚ), (-14162623493/10000000000 : ℚ), (95271728653/500000000000 : ℚ), 5⟩,
    ⟨(143858194979/1000000000000 : ℚ), (-20178812133/10000000000 : ℚ), (55313073101/200000000000 : ℚ), 5⟩,
    ⟨(145425520527/1000000000000 : ℚ), (-24497747457/10000000000 : ℚ), (67804355729/200000000000 : ℚ), 4⟩,
    ⟨(73418038127/500000000000 : ℚ), (-6911653413/2500000000 : ℚ), (385029653979/1000000000000 : ℚ), 4⟩,
    ⟨(74017827647/500000000000 : ℚ), (-1870769411/625000000 : ℚ), (418725949441/1000000000000 : ℚ), 4⟩,
    ⟨(74489079249/500000000000 : ℚ), (-788370323/250000000 : ℚ), (221261517831/500000000000 : ℚ), 4⟩,
    ⟨(37406841499/250000000000 : ℚ), (-3255773971/1000000000 : ℚ), (457795289079/1000000000000 : ℚ), 4⟩,
    ⟨(149958329109/1000000000000 : ℚ), (-6611408619/2000000000 : ℚ), (93054891527/200000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-1655946023/500000000 : ℚ), (466202489117/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (355096745451/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control739.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control739.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate739
