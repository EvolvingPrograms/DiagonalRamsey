import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate736
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(104041373067/500000000000 : ℚ), (5872225075303/10000000000 : ℚ), (-30613335431357/250000000000 : ℚ), 12⟩,
    ⟨(41777246111/200000000000 : ℚ), (623570691977/10000000000 : ℚ), (-13160097271999/1000000000000 : ℚ), 9⟩,
    ⟨(10523116097/50000000000 : ℚ), (103008717209/5000000000 : ℚ), (-1103953994087/250000000000 : ℚ), 7⟩,
    ⟨(106375225991/500000000000 : ℚ), (91985876569/10000000000 : ℚ), (-501414227461/250000000000 : ℚ), 6⟩,
    ⟨(215662689127/1000000000000 : ℚ), (45581614629/10000000000 : ℚ), (-1012723897839/1000000000000 : ℚ), 6⟩,
    ⟨(109543558867/500000000000 : ℚ), (11193270769/5000000000 : ℚ), (-127253310011/250000000000 : ℚ), 5⟩,
    ⟨(55723034733/250000000000 : ℚ), (1844089973/2000000000 : ℚ), (-21830435131/100000000000 : ℚ), 5⟩,
    ⟨(226931527891/1000000000000 : ℚ), (53420479/500000000 : ℚ), (-35087272769/1000000000000 : ℚ), 4⟩,
    ⟨(115525026579/500000000000 : ℚ), (-4305817133/10000000000 : ℚ), (87905734269/1000000000000 : ℚ), 4⟩,
    ⟨(58772360529/250000000000 : ℚ), (-80141877/100000000 : ℚ), (87148789581/500000000000 : ℚ), 4⟩,
    ⟨(119447231657/500000000000 : ℚ), (-1065366791/1000000000 : ℚ), (236830439941/1000000000000 : ℚ), 4⟩,
    ⟨(242318891921/1000000000000 : ℚ), (-12562015129/10000000000 : ℚ), (141368081481/500000000000 : ℚ), 4⟩,
    ⟨(122615564533/500000000000 : ℚ), (-13936507877/10000000000 : ℚ), (316238128039/1000000000000 : ℚ), 4⟩,
    ⟨(61879814777/250000000000 : ℚ), (-1489370363/1000000000 : ℚ), (67963847007/200000000000 : ℚ), 4⟩,
    ⟨(249095350493/1000000000000 : ℚ), (-3100306491/2000000000 : ℚ), (44363945487/125000000000 : ℚ), 4⟩,
    ⟨(124949417457/500000000000 : ℚ), (-15797240917/10000000000 : ℚ), (90572335869/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-15833840487/10000000000 : ℚ), (363204147473/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (185590952173/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control736.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control736.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate736
