import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate656
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(110670605459/500000000000 : ℚ), (1011450300103/2500000000 : ℚ), (-4494586226633/50000000000 : ℚ), 11⟩,
    ⟨(222848969793/1000000000000 : ℚ), (214222121273/5000000000 : ℚ), (-388966322001/40000000000 : ℚ), 8⟩,
    ⟨(225806545217/1000000000000 : ℚ), (70949688833/5000000000 : ℚ), (-1655010987889/500000000000 : ℚ), 6⟩,
    ⟨(230100279223/1000000000000 : ℚ), (64177564347/10000000000 : ℚ), (-770978076359/500000000000 : ℚ), 5⟩,
    ⟨(235565166023/1000000000000 : ℚ), (8206691193/2500000000 : ℚ), (-406692644769/500000000000 : ℚ), 5⟩,
    ⟨(6049779827/25000000000 : ℚ), (17315005647/10000000000 : ℚ), (-221812217121/500000000000 : ℚ), 4⟩,
    ⟨(12456570589/50000000000 : ℚ), (8606120717/10000000000 : ℚ), (-230081538927/1000000000000 : ℚ), 4⟩,
    ⟨(256711427521/1000000000000 : ℚ), (1636980813/5000000000 : ℚ), (-95385500611/1000000000000 : ℚ), 4⟩,
    ⟨(264439944549/1000000000000 : ℚ), (-202493299/10000000000 : ℚ), (-195486539/40000000000 : ℚ), 3⟩,
    ⟨(27201996029/100000000000 : ℚ), (-1287860987/5000000000 : ℚ), (58721472663/1000000000000 : ℚ), 3⟩,
    ⟨(27916017899/100000000000 : ℚ), (-1061919401/2500000000 : ℚ), (26193330911/250000000000 : ℚ), 3⟩,
    ⟨(285586206047/1000000000000 : ℚ), (-544494939/1000000000 : ℚ), (17321031761/125000000000 : ℚ), 3⟩,
    ⟨(291051092847/1000000000000 : ℚ), (-1574949857/2500000000 : ℚ), (81604666751/500000000000 : ℚ), 3⟩,
    ⟨(295344826853/1000000000000 : ℚ), (-6890679503/10000000000 : ℚ), (90265782249/500000000000 : ℚ), 3⟩,
    ⟨(298302402277/1000000000000 : ℚ), (-3631862077/5000000000 : ℚ), (191603784999/1000000000000 : ℚ), 3⟩,
    ⟨(585566721/1953125000 : ℚ), (-7444541641/10000000000 : ℚ), (197011170321/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-3733444659/5000000000 : ℚ), (39536277669/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (12836194813/31250000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control656.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control656.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate656
