import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate69
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80798918107/1000000000000 : ℚ), (27035717739/25000000 : ℚ), (-87598294858903/1000000000000 : ℚ), 10⟩,
    ⟨(40583485543/500000000000 : ℚ), (572478345547/5000000000 : ℚ), (-9405505729233/1000000000000 : ℚ), 7⟩,
    ⟨(40944466487/500000000000 : ℚ), (75284327437/2000000000 : ℚ), (-3148853256903/1000000000000 : ℚ), 6⟩,
    ⟨(41468529591/500000000000 : ℚ), (166785337953/10000000000 : ℚ), (-284711144213/200000000000 : ℚ), 5⟩,
    ⟨(42135535403/500000000000 : ℚ), (815564033/100000000 : ℚ), (-88989207937/125000000000 : ℚ), 4⟩,
    ⟨(167655669/1953125000 : ℚ), (3896261689/1000000000 : ℚ), (-350044218333/1000000000000 : ℚ), 4⟩,
    ⟨(87582672711/1000000000000 : ℚ), (14760081883/10000000000 : ℚ), (-17548680039/125000000000 : ℚ), 3⟩,
    ⟨(22358249997/250000000000 : ℚ), (-52530789/2000000000 : ℚ), (-7537106481/1000000000000 : ℚ), 3⟩,
    ⟨(91319577319/1000000000000 : ℚ), (-5101956029/5000000000 : ℚ), (82248094439/1000000000000 : ℚ), 3⟩,
    ⟨(18633980919/200000000000 : ℚ), (-4273795313/2500000000 : ℚ), (145783687567/1000000000000 : ℚ), 3⟩,
    ⟨(47456437389/500000000000 : ℚ), (-22023098169/10000000000 : ℚ), (192109121851/1000000000000 : ℚ), 3⟩,
    ⟨(192963013/2000000000 : ℚ), (-5120098649/2000000000 : ℚ), (113167518063/500000000000 : ℚ), 3⟩,
    ⟨(24453879531/250000000000 : ℚ), (-28184863249/10000000000 : ℚ), (50287559601/200000000000 : ℚ), 3⟩,
    ⟨(24715911083/250000000000 : ℚ), (-2998792499/1000000000 : ℚ), (67291869967/250000000000 : ℚ), 3⟩,
    ⟨(4979280311/50000000000 : ℚ), (-1245356191/400000000 : ℚ), (28053798889/100000000000 : ℚ), 2⟩,
    ⟨(99953659199/1000000000000 : ℚ), (-31691596749/10000000000 : ℚ), (143051004571/500000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31760626349/10000000000 : ℚ), (35849018137/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (227865464027/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control69.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control69.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate69
