import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate38
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19847227503/500000000000 : ℚ), (435419942829/400000000 : ℚ), (-8665674749929/200000000000 : ℚ), 10⟩,
    ⟨(39891995257/1000000000000 : ℚ), (1151555985123/10000000000 : ℚ), (-290909637897/62500000000 : ℚ), 7⟩,
    ⟨(20139742199/500000000000 : ℚ), (47292555263/1250000000 : ℚ), (-779977232987/500000000000 : ℚ), 5⟩,
    ⟨(20421015719/500000000000 : ℚ), (167609448841/10000000000 : ℚ), (-706497443817/1000000000000 : ℚ), 5⟩,
    ⟨(41558018011/1000000000000 : ℚ), (41008925529/5000000000 : ℚ), (-354348905087/1000000000000 : ℚ), 4⟩,
    ⟨(42399929153/1000000000000 : ℚ), (39279503053/10000000000 : ℚ), (-35032137677/200000000000 : ℚ), 4⟩,
    ⟨(10833852673/250000000000 : ℚ), (15008621641/10000000000 : ℚ), (-7122924493/100000000000 : ℚ), 3⟩,
    ⟨(44328512597/1000000000000 : ℚ), (-54056337/10000000000 : ℚ), (-131652783/25000000000 : ℚ), 3⟩,
    ⟨(45341070519/1000000000000 : ℚ), (-501207939/500000000 : ℚ), (9850566581/250000000000 : ℚ), 3⟩,
    ⟨(5791771553/125000000000 : ℚ), (-4234788293/2500000000 : ℚ), (17770339721/250000000000 : ℚ), 3⟩,
    ⟨(47269653963/1000000000000 : ℚ), (-10943645789/5000000000 : ℚ), (94230251401/1000000000000 : ℚ), 2⟩,
    ⟨(9622313021/200000000000 : ℚ), (-12740755053/5000000000 : ℚ), (27841648111/250000000000 : ℚ), 2⟩,
    ⟨(48827551677/1000000000000 : ℚ), (-44926583/16000000 : ℚ), (24790981609/200000000000 : ℚ), 2⟩,
    ⟨(24695049359/500000000000 : ℚ), (-5978356851/2000000000 : ℚ), (132855880499/1000000000000 : ℚ), 2⟩,
    ⟨(49777587859/1000000000000 : ℚ), (-31043925107/10000000000 : ℚ), (13856840427/100000000000 : ℚ), 2⟩,
    ⟨(4997512811/100000000000 : ℚ), (-31604601631/10000000000 : ℚ), (141364826431/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31673999181/10000000000 : ℚ), (141711727823/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (243801060407/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
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
theorem certOK : JointInheritedControls.control38.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control38.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate38
