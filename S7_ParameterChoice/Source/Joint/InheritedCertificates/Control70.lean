import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate70
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12170757517/100000000000 : ℚ), (11056616976617/10000000000 : ℚ), (-4215618244203/31250000000 : ℚ), 10⟩,
    ⟨(24449978831/200000000000 : ℚ), (1171487626603/10000000000 : ℚ), (-115931063919/8000000000 : ℚ), 7⟩,
    ⟨(12331369111/100000000000 : ℚ), (385704925541/10000000000 : ℚ), (-607130655933/125000000000 : ℚ), 6⟩,
    ⟨(31214521229/250000000000 : ℚ), (85668246977/5000000000 : ℚ), (-4298082693/1953125000 : ℚ), 5⟩,
    ⟨(15852965673/125000000000 : ℚ), (84180940701/10000000000 : ℚ), (-221042185939/200000000000 : ℚ), 4⟩,
    ⟨(129135074053/1000000000000 : ℚ), (40632179467/10000000000 : ℚ), (-548499942899/1000000000000 : ℚ), 4⟩,
    ⟨(131703307091/1000000000000 : ℚ), (15899262053/10000000000 : ℚ), (-226249211203/1000000000000 : ℚ), 3⟩,
    ⟨(134429728741/1000000000000 : ℚ), (560667821/10000000000 : ℚ), (-22310717071/1000000000000 : ℚ), 3⟩,
    ⟨(2744191283/20000000000 : ℚ), (-1915403493/2000000000 : ℚ), (14411022507/125000000000 : ℚ), 3⟩,
    ⟨(139935985801/1000000000000 : ℚ), (-16593656817/10000000000 : ℚ), (21247031641/100000000000 : ℚ), 3⟩,
    ⟨(71252109419/500000000000 : ℚ), (-21602698581/10000000000 : ℚ), (5663636759/20000000000 : ℚ), 3⟩,
    ⟨(36203891877/250000000000 : ℚ), (-25232785033/10000000000 : ℚ), (335318420347/1000000000000 : ℚ), 3⟩,
    ⟨(18347650997/125000000000 : ℚ), (-27851124917/10000000000 : ℚ), (74697469609/200000000000 : ℚ), 3⟩,
    ⟨(148325601781/1000000000000 : ℚ), (-7418877411/2500000000 : ℚ), (50050553191/125000000000 : ℚ), 2⟩,
    ⟨(149389398737/1000000000000 : ℚ), (-30833922309/10000000000 : ℚ), (417647614747/1000000000000 : ℚ), 2⟩,
    ⟨(74965858861/500000000000 : ℚ), (-1962333263/625000000 : ℚ), (426079560187/1000000000000 : ℚ), 2⟩,
    ⟨(3/20 : ℚ), (-31467054027/10000000000 : ℚ), (427125149293/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (173482030227/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control70.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control70.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate70
