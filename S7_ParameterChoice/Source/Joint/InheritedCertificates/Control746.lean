import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate746
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(209194400227/1000000000000 : ℚ), (5801111382759/10000000000 : ℚ), (-15201049076603/125000000000 : ℚ), 12⟩,
    ⟨(104988288039/500000000000 : ℚ), (308030050321/5000000000 : ℚ), (-3266299883907/250000000000 : ℚ), 9⟩,
    ⟨(211510869199/1000000000000 : ℚ), (203493998727/10000000000 : ℚ), (-4380953709287/1000000000000 : ℚ), 7⟩,
    ⟨(213738317567/1000000000000 : ℚ), (90793291033/10000000000 : ℚ), (-993686758451/500000000000 : ℚ), 6⟩,
    ⟨(216573321591/1000000000000 : ℚ), (11228663281/2500000000 : ℚ), (-1001303872499/1000000000000 : ℚ), 6⟩,
    ⟨(43981386731/200000000000 : ℚ), (10986702973/5000000000 : ℚ), (-125276820831/250000000000 : ℚ), 5⟩,
    ⟨(111805522459/500000000000 : ℚ), (2236547349/2500000000 : ℚ), (-53113961079/250000000000 : ℚ), 5⟩,
    ⟨(11377165423/50000000000 : ℚ), (43849823/500000000 : ℚ), (-6112063679/200000000000 : ℚ), 5⟩,
    ⟨(144720381/625000000 : ℚ), (-177783151/400000000 : ℚ), (22881543281/250000000000 : ℚ), 4⟩,
    ⟨(117742436571/500000000000 : ℚ), (-8117910903/10000000000 : ℚ), (177267744623/1000000000000 : ℚ), 4⟩,
    ⟨(47837796881/200000000000 : ℚ), (-2146669989/2000000000 : ℚ), (119660917651/500000000000 : ℚ), 4⟩,
    ⟨(242522596469/1000000000000 : ℚ), (-12624961313/10000000000 : ℚ), (71218096739/250000000000 : ℚ), 4⟩,
    ⟨(61339400123/250000000000 : ℚ), (-13987857697/10000000000 : ℚ), (795285841/2500000000 : ℚ), 4⟩,
    ⟨(247585048861/1000000000000 : ℚ), (-119498191/80000000 : ℚ), (341512968637/1000000000000 : ℚ), 4⟩,
    ⟨(124559670991/500000000000 : ℚ), (-15540318333/10000000000 : ℚ), (356489224203/1000000000000 : ℚ), 4⟩,
    ⟨(249901517833/1000000000000 : ℚ), (-15833749659/10000000000 : ℚ), (181905291777/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-3174013973/2000000000 : ℚ), (364718409743/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (378962706031/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control746.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control746.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate746
