import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate896
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(360968556139/500000000000 : ℚ), (1906839498813/5000000000 : ℚ), (-275654335481841/1000000000000 : ℚ), 13⟩,
    ⟨(723433448711/1000000000000 : ℚ), (102481778133/2500000000 : ℚ), (-7457713194679/250000000000 : ℚ), 10⟩,
    ⟨(363184309103/500000000000 : ℚ), (138512550083/10000000000 : ℚ), (-10168963675569/1000000000000 : ℚ), 8⟩,
    ⟨(146125964769/200000000000 : ℚ), (64175146739/10000000000 : ℚ), (-4756908415123/1000000000000 : ℚ), 7⟩,
    ⟨(736053309887/1000000000000 : ℚ), (16930884951/5000000000 : ℚ), (-2535211112287/1000000000000 : ℚ), 7⟩,
    ⟨(742430654803/1000000000000 : ℚ), (18717409143/10000000000 : ℚ), (-1416276612917/1000000000000 : ℚ), 6⟩,
    ⟨(374758390403/500000000000 : ℚ), (2032545249/2000000000 : ℚ), (-97302970331/125000000000 : ℚ), 6⟩,
    ⟨(378519686023/500000000000 : ℚ), (4922215947/10000000000 : ℚ), (-191915076587/500000000000 : ℚ), 6⟩,
    ⟨(764709339561/1000000000000 : ℚ), (1526706489/10000000000 : ℚ), (-1961930299/15625000000 : ℚ), 5⟩,
    ⟨(386115965401/500000000000 : ℚ), (-761419827/10000000000 : ℚ), (12555894907/250000000000 : ℚ), 5⟩,
    ⟨(194829514201/250000000000 : ℚ), (-2344063591/10000000000 : ℚ), (172975188103/1000000000000 : ℚ), 5⟩,
    ⟨(19642385043/25000000000 : ℚ), (-431672303/1250000000 : ℚ), (259766743677/1000000000000 : ℚ), 5⟩,
    ⟨(395559443881/500000000000 : ℚ), (-4228559971/10000000000 : ℚ), (80219158057/250000000000 : ℚ), 5⟩,
    ⟨(397690046701/500000000000 : ℚ), (-4754317167/10000000000 : ℚ), (362579990861/1000000000000 : ℚ), 5⟩,
    ⟨(798315262897/1000000000000 : ℚ), (-5081493711/10000000000 : ℚ), (48581292429/125000000000 : ℚ), 5⟩,
    ⟨(799811599329/1000000000000 : ℚ), (-2619338287/5000000000 : ℚ), (200605085351/500000000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-1314509547/2500000000 : ℚ), (50344864661/125000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (198708935621/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control896.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control896.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate896
