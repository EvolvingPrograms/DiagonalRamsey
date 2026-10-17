import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate768
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(203375527139/1000000000000 : ℚ), (471004708023/1000000000 : ℚ), (-96025430151213/1000000000000 : ℚ), 12⟩,
    ⟨(102134620581/500000000000 : ℚ), (2000262087/40000000 : ℚ), (-10335303167467/1000000000000 : ℚ), 9⟩,
    ⟨(103011162139/500000000000 : ℚ), (41350847123/2500000000 : ℚ), (-3479426392597/1000000000000 : ℚ), 7⟩,
    ⟨(104283703243/500000000000 : ℚ), (1482449513/200000000 : ℚ), (-1589734808603/1000000000000 : ℚ), 6⟩,
    ⟨(105903340853/500000000000 : ℚ), (9259112797/2500000000 : ℚ), (-405596759383/500000000000 : ℚ), 6⟩,
    ⟨(107807833203/500000000000 : ℚ), (18534017397/10000000000 : ℚ), (-416213524563/1000000000000 : ℚ), 5⟩,
    ⟨(219847983441/1000000000000 : ℚ), (1610605263/2000000000 : ℚ), (-188229416901/1000000000000 : ℚ), 5⟩,
    ⟨(5608524681/25000000000 : ℚ), (788554859/5000000000 : ℚ), (-44519976201/1000000000000 : ℚ), 5⟩,
    ⟨(57230503547/250000000000 : ℚ), (-2683337717/10000000000 : ℚ), (2598575737/50000000000 : ℚ), 4⟩,
    ⟨(233415017987/1000000000000 : ℚ), (-5617399129/10000000000 : ℚ), (14970400017/125000000000 : ℚ), 4⟩,
    ⟨(118823667511/500000000000 : ℚ), (-308077979/400000000 : ℚ), (33768510371/200000000000 : ℚ), 4⟩,
    ⟨(120728159861/500000000000 : ℚ), (-9206592953/10000000000 : ℚ), (12804836207/62500000000 : ℚ), 4⟩,
    ⟨(244695594941/1000000000000 : ℚ), (-5144372829/5000000000 : ℚ), (11558886287/50000000000 : ℚ), 4⟩,
    ⟨(4944813543/20000000000 : ℚ), (-5520722609/5000000000 : ℚ), (15605632867/62500000000 : ℚ), 4⟩,
    ⟨(124496880133/500000000000 : ℚ), (-89992017/78125000 : ℚ), (65384523583/250000000000 : ℚ), 4⟩,
    ⟨(249887474289/1000000000000 : ℚ), (-91805967/78125000 : ℚ), (66832423173/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2944973701/2500000000 : ℚ), (3350597583/12500000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (11207473271/25000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control768.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control768.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate768
