import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate796
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22879667997/125000000000 : ℚ), (70166461129/250000000 : ℚ), (-12893376678183/250000000000 : ℚ), 11⟩,
    ⟨(2880014177/15625000000 : ℚ), (296979726331/10000000000 : ℚ), (-139440743513/25000000000 : ℚ), 8⟩,
    ⟨(46709676853/250000000000 : ℚ), (98233473353/10000000000 : ℚ), (-948743021599/500000000000 : ℚ), 7⟩,
    ⟨(190493986583/1000000000000 : ℚ), (22173743773/5000000000 : ℚ), (-882981678537/1000000000000 : ℚ), 6⟩,
    ⟨(12196642157/62500000000 : ℚ), (22620701687/10000000000 : ℚ), (-464859019857/1000000000000 : ℚ), 5⟩,
    ⟨(200616786383/1000000000000 : ℚ), (11874428093/10000000000 : ℚ), (-126289747249/500000000000 : ℚ), 5⟩,
    ⟨(206695293493/1000000000000 : ℚ), (182560119/312500000 : ℚ), (-3247720877/25000000000 : ℚ), 4⟩,
    ⟨(213148202223/1000000000000 : ℚ), (2147782579/10000000000 : ℚ), (-52458423851/1000000000000 : ℚ), 4⟩,
    ⟨(54931882727/250000000000 : ℚ), (-26209613/1000000000 : ℚ), (-176154777/500000000000 : ℚ), 4⟩,
    ⟨(226180439637/1000000000000 : ℚ), (-477214963/2500000000 : ℚ), (726688423/20000000000 : ℚ), 4⟩,
    ⟨(232258946747/1000000000000 : ℚ), (-3070615211/10000000000 : ℚ), (62949097239/1000000000000 : ℚ), 4⟩,
    ⟨(118864729309/500000000000 : ℚ), (-487987489/1250000000 : ℚ), (41261638283/500000000000 : ℚ), 4⟩,
    ⟨(242381746547/1000000000000 : ℚ), (-4499886641/10000000000 : ℚ), (96826843991/1000000000000 : ℚ), 4⟩,
    ⟨(123018512859/500000000000 : ℚ), (-1228124239/2500000000 : ℚ), (21380370953/200000000000 : ℚ), 4⟩,
    ⟨(124277412901/500000000000 : ℚ), (-2586664871/5000000000 : ℚ), (28337944203/250000000000 : ℚ), 4⟩,
    ⟨(124919194577/500000000000 : ℚ), (-5299863061/10000000000 : ℚ), (7281556261/62500000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5315506717/10000000000 : ℚ), (29223966271/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (290649882071/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control796.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control796.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate796
