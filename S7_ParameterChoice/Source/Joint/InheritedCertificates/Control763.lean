import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate763
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(222521644017/1000000000000 : ℚ), (162239370487/500000000 : ℚ), (-72473292608221/1000000000000 : ℚ), 11⟩,
    ⟨(224006775943/1000000000000 : ℚ), (42963945107/1250000000 : ℚ), (-7838643926503/1000000000000 : ℚ), 8⟩,
    ⟨(7091248969/31250000000 : ℚ), (3558202931/312500000 : ℚ), (-333417439553/125000000000 : ℚ), 7⟩,
    ⟨(14446829057/62500000000 : ℚ), (12875467889/2500000000 : ℚ), (-1241933204801/1000000000000 : ℚ), 6⟩,
    ⟨(23653214011/100000000000 : ℚ), (13170105027/5000000000 : ℚ), (-163660122947/250000000000 : ℚ), 5⟩,
    ⟨(242861731727/1000000000000 : ℚ), (6943978639/5000000000 : ℚ), (-356658774647/1000000000000 : ℚ), 5⟩,
    ⟨(49978959421/200000000000 : ℚ), (6896131113/10000000000 : ℚ), (-184643375241/1000000000000 : ℚ), 4⟩,
    ⟨(257361059487/1000000000000 : ℚ), (2615538877/10000000000 : ℚ), (-76206654047/1000000000000 : ℚ), 4⟩,
    ⟨(66243398649/250000000000 : ℚ), (-174749329/10000000000 : ℚ), (-851086059/250000000000 : ℚ), 4⟩,
    ⟨(136219928489/500000000000 : ℚ), (-1039514013/5000000000 : ℚ), (4772656601/100000000000 : ℚ), 4⟩,
    ⟨(69868230589/250000000000 : ℚ), (-342024621/1000000000 : ℚ), (1694362081/20000000000 : ℚ), 4⟩,
    ⟨(71450628493/250000000000 : ℚ), (-2190255519/5000000000 : ℚ), (111848680329/1000000000000 : ℚ), 4⟩,
    ⟨(29118538917/100000000000 : ℚ), (-316631737/625000000 : ℚ), (16452889767/125000000000 : ℚ), 3⟩,
    ⟨(11816587483/40000000000 : ℚ), (-5540032949/10000000000 : ℚ), (145521567377/1000000000000 : ℚ), 3⟩,
    ⟨(14916393907/50000000000 : ℚ), (-116785591/200000000 : ℚ), (154404846279/1000000000000 : ℚ), 3⟩,
    ⟨(149906505033/500000000000 : ℚ), (-1496086019/2500000000 : ℚ), (992145239/6250000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-750284241/1250000000 : ℚ), (39820241513/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (252471503963/500000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control763.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control763.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate763
