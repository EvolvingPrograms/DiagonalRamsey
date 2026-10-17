import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate542
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1472488931/12500000000 : ℚ), (1550873990467/2500000000 : ℚ), (-9161156072069/125000000000 : ℚ), 11⟩,
    ⟨(118416352191/1000000000000 : ℚ), (2628701251/40000000 : ℚ), (-7890945640691/1000000000000 : ℚ), 8⟩,
    ⟨(23925421503/200000000000 : ℚ), (216796011677/10000000000 : ℚ), (-2658183226637/1000000000000 : ℚ), 6⟩,
    ⟨(121384851803/1000000000000 : ℚ), (96878431773/10000000000 : ℚ), (-607694673869/500000000000 : ℚ), 5⟩,
    ⟨(15452754491/125000000000 : ℚ), (4824207663/1000000000 : ℚ), (-620447158079/1000000000000 : ℚ), 5⟩,
    ⟨(63126343079/500000000000 : ℚ), (75030699/31250000 : ℚ), (-318092195817/1000000000000 : ℚ), 4⟩,
    ⟨(129175708081/1000000000000 : ℚ), (2572651373/2500000000 : ℚ), (-7153878811/50000000000 : ℚ), 4⟩,
    ⟨(132278771603/1000000000000 : ℚ), (361905497/2000000000 : ℚ), (-32312458451/1000000000000 : ℚ), 4⟩,
    ⟨(67721313867/500000000000 : ℚ), (-3778965891/10000000000 : ℚ), (21219065039/500000000000 : ℚ), 4⟩,
    ⟨(138545691257/1000000000000 : ℚ), (-3818459511/5000000000 : ℚ), (95258702849/1000000000000 : ℚ), 3⟩,
    ⟨(7073435659/50000000000 : ℚ), (-10385545511/10000000000 : ℚ), (133724969753/1000000000000 : ℚ), 3⟩,
    ⟨(14409936341/100000000000 : ℚ), (-1237488509/1000000000 : ℚ), (81060644121/500000000000 : ℚ), 3⟩,
    ⟨(29267309507/200000000000 : ℚ), (-863051017/625000000 : ℚ), (11433797831/62500000000 : ℚ), 3⟩,
    ⟨(148094291823/1000000000000 : ℚ), (-14807763169/10000000000 : ℚ), (98822672801/500000000000 : ℚ), 3⟩,
    ⟨(74652523573/500000000000 : ℚ), (-15442119367/10000000000 : ℚ), (207077795939/1000000000000 : ℚ), 3⟩,
    ⟨(74961142429/500000000000 : ℚ), (-15750697967/10000000000 : ℚ), (211694504753/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-7894443837/5000000000 : ℚ), (53066800467/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (399285623251/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control542.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control542.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate542
