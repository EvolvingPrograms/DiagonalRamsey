import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate771
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13143514183/62500000000 : ℚ), (228854936409/400000000 : ℚ), (-60280170818411/500000000000 : ℚ), 12⟩,
    ⟨(211057282583/1000000000000 : ℚ), (607595786447/10000000000 : ℚ), (-2589544589687/200000000000 : ℚ), 9⟩,
    ⟨(212550146951/1000000000000 : ℚ), (200630334931/10000000000 : ℚ), (-4337953092243/1000000000000 : ℚ), 7⟩,
    ⟨(53679362523/250000000000 : ℚ), (89429317807/10000000000 : ℚ), (-392985706419/200000000000 : ℚ), 6⟩,
    ⟨(217475903761/1000000000000 : ℚ), (5518198249/1250000000 : ℚ), (-987356670063/1000000000000 : ℚ), 6⟩,
    ⟨(220719502131/1000000000000 : ℚ), (2686628817/1250000000 : ℚ), (-30718690247/62500000000 : ℚ), 5⟩,
    ⟨(44864719107/200000000000 : ℚ), (8624538489/10000000000 : ℚ), (-5134418277/25000000000 : ℚ), 5⟩,
    ⟨(114074840343/500000000000 : ℚ), (26017871/400000000 : ℚ), (-25095623481/1000000000000 : ℚ), 5⟩,
    ⟨(58012680819/250000000000 : ℚ), (-576310377/1250000000 : ℚ), (47945998309/500000000000 : ℚ), 4⟩,
    ⟨(117938404213/500000000000 : ℚ), (-4121681971/5000000000 : ℚ), (180852092301/1000000000000 : ℚ), 4⟩,
    ⟨(23948090183/100000000000 : ℚ), (-10831012221/10000000000 : ℚ), (121167929499/500000000000 : ℚ), 4⟩,
    ⟨(1213622501/5000000000 : ℚ), (-1587908357/1250000000 : ℚ), (57493362063/200000000000 : ℚ), 4⟩,
    ⟨(245482953869/1000000000000 : ℚ), (-14052748797/10000000000 : ℚ), (320403787773/1000000000000 : ℚ), 4⟩,
    ⟨(24765025701/100000000000 : ℚ), (-2998633101/2000000000 : ℚ), (343589638587/1000000000000 : ℚ), 4⟩,
    ⟨(124571560689/500000000000 : ℚ), (-1559067521/1000000000 : ℚ), (179215557651/500000000000 : ℚ), 4⟩,
    ⟨(249904177033/1000000000000 : ℚ), (-15881472117/10000000000 : ℚ), (91421782471/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7958734559/5000000000 : ℚ), (366586882333/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (96698738767/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control771.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control771.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate771
