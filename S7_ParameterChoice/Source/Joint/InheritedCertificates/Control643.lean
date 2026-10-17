import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate643
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155323686439/1000000000000 : ℚ), (312619122241/625000000 : ℚ), (-77930015380511/1000000000000 : ℚ), 11⟩,
    ⟨(15618005747/100000000000 : ℚ), (6626230231/125000000 : ℚ), (-840163011703/100000000000 : ℚ), 8⟩,
    ⟨(78929944837/500000000000 : ℚ), (175186765941/10000000000 : ℚ), (-709636993621/250000000000 : ℚ), 6⟩,
    ⟨(160298628041/1000000000000 : ℚ), (78615599421/10000000000 : ℚ), (-326213860007/250000000000 : ℚ), 6⟩,
    ⟨(163402553223/1000000000000 : ℚ), (39492811097/10000000000 : ℚ), (-168155745433/250000000000 : ℚ), 5⟩,
    ⟨(41763095779/250000000000 : ℚ), (5007849777/2500000000 : ℚ), (-87877441527/250000000000 : ℚ), 5⟩,
    ⟨(34221571361/200000000000 : ℚ), (4517971251/5000000000 : ℚ), (-165820886993/1000000000000 : ℚ), 4⟩,
    ⟨(175413124709/1000000000000 : ℚ), (451169761/2000000000 : ℚ), (-48466521487/1000000000000 : ℚ), 4⟩,
    ⟨(179802737799/1000000000000 : ℚ), (-2198814493/10000000000 : ℚ), (30587884741/1000000000000 : ℚ), 4⟩,
    ⟨(184108005703/1000000000000 : ℚ), (-1316107247/2500000000 : ℚ), (86333718143/1000000000000 : ℚ), 4⟩,
    ⟨(5880108731/31250000000 : ℚ), (-93021363/125000000 : ℚ), (126842341813/1000000000000 : ℚ), 3⟩,
    ⟨(38362661857/200000000000 : ℚ), (-4506468087/5000000000 : ℚ), (15668463477/100000000000 : ℚ), 3⟩,
    ⟨(194917234467/1000000000000 : ℚ), (-10142636257/10000000000 : ℚ), (89262457417/500000000000 : ℚ), 3⟩,
    ⟨(98677986417/500000000000 : ℚ), (-2732016427/2500000000 : ℚ), (3878568861/20000000000 : ℚ), 3⟩,
    ⟨(99517902519/500000000000 : ℚ), (-2856529899/2500000000 : ℚ), (101899608447/500000000000 : ℚ), 3⟩,
    ⟨(199892176069/1000000000000 : ℚ), (-5834094301/5000000000 : ℚ), (208627567849/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11698137591/10000000000 : ℚ), (209226386067/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (434790950037/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control643.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control643.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate643
