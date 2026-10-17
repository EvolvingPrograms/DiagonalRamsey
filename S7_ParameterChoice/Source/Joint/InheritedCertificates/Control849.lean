import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate849
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155967827367/1000000000000 : ℚ), (2730317087137/10000000000 : ℚ), (-42712664624999/1000000000000 : ℚ), 12⟩,
    ⟨(78405925641/500000000000 : ℚ), (11578747229/400000000 : ℚ), (-575661194353/125000000000 : ℚ), 9⟩,
    ⟨(79233731873/500000000000 : ℚ), (95722964873/10000000000 : ℚ), (-97270538853/62500000000 : ℚ), 8⟩,
    ⟨(160871040501/1000000000000 : ℚ), (21499010173/5000000000 : ℚ), (-357923905799/500000000000 : ℚ), 7⟩,
    ⟨(512281917/3125000000 : ℚ), (216374289/100000000 : ℚ), (-369473644341/1000000000000 : ℚ), 6⟩,
    ⟨(83763710131/500000000000 : ℚ), (11013519903/10000000000 : ℚ), (-9682158667/50000000000 : ℚ), 6⟩,
    ⟨(21440552791/125000000000 : ℚ), (1002765299/2000000000 : ℚ), (-18410511541/200000000000 : ℚ), 5⟩,
    ⟨(2746369017/15625000000 : ℚ), (1316958911/10000000000 : ℚ), (-2726697/97656250 : ℚ), 5⟩,
    ⟨(45023485237/250000000000 : ℚ), (-277423779/2500000000 : ℚ), (3805462133/250000000000 : ℚ), 5⟩,
    ⟨(46084283927/250000000000 : ℚ), (-1389020889/5000000000 : ℚ), (22801533421/500000000000 : ℚ), 5⟩,
    ⟨(188334137773/1000000000000 : ℚ), (-3961956537/10000000000 : ℚ), (67653761287/1000000000000 : ℚ), 4⟩,
    ⟨(47982836149/250000000000 : ℚ), (-2407929149/5000000000 : ℚ), (83884292843/1000000000000 : ℚ), 4⟩,
    ⟨(38998103507/200000000000 : ℚ), (-542968229/1000000000 : ℚ), (11969642649/125000000000 : ℚ), 4⟩,
    ⟨(19739409429/100000000000 : ℚ), (-234259311/400000000 : ℚ), (52064886651/500000000000 : ℚ), 4⟩,
    ⟨(99524853377/500000000000 : ℚ), (-6127188383/10000000000 : ℚ), (27373877877/250000000000 : ℚ), 4⟩,
    ⟨(199893730669/1000000000000 : ℚ), (-3129394699/5000000000 : ℚ), (11212055079/100000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-784384111/1250000000 : ℚ), (112446134023/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (5264788667/8000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control849.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control849.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate849
