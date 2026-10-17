import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate901
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(363850301809/500000000000 : ℚ), (907992782549/2500000000 : ℚ), (-4134217985459/15625000000 : ℚ), 13⟩,
    ⟨(145817292691/200000000000 : ℚ), (39035378671/1000000000 : ℚ), (-28614343282567/1000000000000 : ℚ), 10⟩,
    ⟨(5717225979/7812500000 : ℚ), (65901933971/5000000000 : ℚ), (-4870063240677/500000000000 : ℚ), 9⟩,
    ⟨(367875760113/500000000000 : ℚ), (30480706251/5000000000 : ℚ), (-4544877836733/1000000000000 : ℚ), 8⟩,
    ⟨(370387291383/500000000000 : ℚ), (16028750479/5000000000 : ℚ), (-2412163781433/1000000000000 : ℚ), 7⟩,
    ⟨(746681079457/1000000000000 : ℚ), (8803771503/5000000000 : ℚ), (-10704080791/8000000000 : ℚ), 7⟩,
    ⟨(376622013471/500000000000 : ℚ), (4719252263/5000000000 : ℚ), (-725631287491/1000000000000 : ℚ), 6⟩,
    ⟨(760211214831/1000000000000 : ℚ), (2214719257/5000000000 : ℚ), (-86681254973/250000000000 : ℚ), 6⟩,
    ⟨(383657449/500000000 : ℚ), (1180210057/10000000000 : ℚ), (-49319795519/500000000000 : ℚ), 6⟩,
    ⟨(1512269699/1953125000 : ℚ), (-253065433/2500000000 : ℚ), (70312794029/1000000000000 : ℚ), 6⟩,
    ⟨(390422516687/500000000000 : ℚ), (-2531072573/10000000000 : ℚ), (94193535877/500000000000 : ℚ), 5⟩,
    ⟨(49171970629/62500000000 : ℚ), (-719490113/2000000000 : ℚ), (271958044617/1000000000000 : ℚ), 5⟩,
    ⟨(197943648151/250000000000 : ℚ), (-4343933749/10000000000 : ℚ), (165434963399/500000000000 : ℚ), 5⟩,
    ⟨(397860593759/500000000000 : ℚ), (-1212765297/2500000000 : ℚ), (185560513709/500000000000 : ℚ), 5⟩,
    ⟨(1277503439/1600000000 : ℚ), (-5167072799/10000000000 : ℚ), (12384660353/31250000000 : ℚ), 5⟩,
    ⟨(199956377303/250000000000 : ℚ), (-5319027457/10000000000 : ℚ), (51056531953/125000000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-5337751641/10000000000 : ℚ), (409950026873/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (206114869019/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control901.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control901.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate901
