import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate112
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(81764432727/1000000000000 : ℚ), (662666270289/625000000 : ℚ), (-43448398175377/500000000000 : ℚ), 11⟩,
    ⟨(20528494597/250000000000 : ℚ), (1122787383139/10000000000 : ℚ), (-466201289309/50000000000 : ℚ), 7⟩,
    ⟨(41399818433/500000000000 : ℚ), (73801482753/2000000000 : ℚ), (-3117030727071/1000000000000 : ℚ), 6⟩,
    ⟨(8379505869/100000000000 : ℚ), (163267322499/10000000000 : ℚ), (-702742827529/500000000000 : ℚ), 5⟩,
    ⟨(42530995179/500000000000 : ℚ), (79557679011/10000000000 : ℚ), (-27983293697/40000000000 : ℚ), 4⟩,
    ⟨(86551744397/1000000000000 : ℚ), (9422050247/2500000000 : ℚ), (-2725593719/8000000000 : ℚ), 4⟩,
    ⟨(44103535197/500000000000 : ℚ), (6938905539/5000000000 : ℚ), (-132839785481/1000000000000 : ℚ), 4⟩,
    ⟨(89964355099/1000000000000 : ℚ), (-57030769/625000000 : ℚ), (-591312737/500000000000 : ℚ), 3⟩,
    ⟨(91756067047/1000000000000 : ℚ), (-1070638261/1000000000 : ℚ), (43874316503/500000000000 : ℚ), 3⟩,
    ⟨(11689168969/125000000000 : ℚ), (-17499607097/10000000000 : ℚ), (37661719293/250000000000 : ℚ), 3⟩,
    ⟨(23792169437/250000000000 : ℚ), (-447206981/200000000 : ℚ), (19648736917/100000000000 : ℚ), 3⟩,
    ⟨(96658431787/1000000000000 : ℚ), (-12945624793/5000000000 : ℚ), (7198291159/31250000000 : ℚ), 3⟩,
    ⟨(19585072691/200000000000 : ℚ), (-7110943489/2500000000 : ℚ), (255175569897/1000000000000 : ℚ), 3⟩,
    ⟨(98920785279/1000000000000 : ℚ), (-15112909917/5000000000 : ℚ), (17044597891/62500000000 : ℚ), 3⟩,
    ⟨(99606443757/1000000000000 : ℚ), (-3135910263/1000000000 : ℚ), (141981269019/500000000000 : ℚ), 3⟩,
    ⟨(49977994709/500000000000 : ℚ), (-7977708741/2500000000 : ℚ), (289467741897/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-15989568893/5000000000 : ℚ), (145075309857/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (65150209393/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control112.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control112.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate112
