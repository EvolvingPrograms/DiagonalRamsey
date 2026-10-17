import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate61
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40148300009/1000000000000 : ℚ), (333784018363/312500000 : ℚ), (-21497116102319/500000000000 : ℚ), 10⟩,
    ⟨(20168570401/500000000000 : ℚ), (1130172594623/10000000000 : ℚ), (-576957537943/125000000000 : ℚ), 7⟩,
    ⟨(40707565343/1000000000000 : ℚ), (371196578853/10000000000 : ℚ), (-1544700251379/1000000000000 : ℚ), 6⟩,
    ⟨(20622669211/500000000000 : ℚ), (82109275499/5000000000 : ℚ), (-697782575263/1000000000000 : ℚ), 5⟩,
    ⟨(10482448431/250000000000 : ℚ), (20021546631/2500000000 : ℚ), (-17417785737/50000000000 : ℚ), 4⟩,
    ⟨(8546925603/200000000000 : ℚ), (4755101527/1250000000 : ℚ), (-170577819121/1000000000000 : ℚ), 4⟩,
    ⟨(43628911963/1000000000000 : ℚ), (14143309651/10000000000 : ℚ), (-13497922073/200000000000 : ℚ), 3⟩,
    ⟨(2228913937/50000000000 : ℚ), (-87410767/1250000000 : ℚ), (-416885051/200000000000 : ℚ), 3⟩,
    ⟨(4554624471/100000000000 : ℚ), (-5265354317/5000000000 : ℚ), (21093864307/500000000000 : ℚ), 3⟩,
    ⟨(46495611487/1000000000000 : ℚ), (-17354057679/10000000000 : ℚ), (73572850339/1000000000000 : ℚ), 3⟩,
    ⟨(9477979087/200000000000 : ℚ), (-5559966361/2500000000 : ℚ), (9649938387/100000000000 : ℚ), 3⟩,
    ⟨(24097364863/500000000000 : ℚ), (-3223910613/1250000000 : ℚ), (113468010431/1000000000000 : ℚ), 3⟩,
    ⟨(12219796257/250000000000 : ℚ), (-28359820047/10000000000 : ℚ), (125932869669/1000000000000 : ℚ), 3⟩,
    ⟨(12354239527/250000000000 : ℚ), (-15076732727/5000000000 : ℚ), (3368687629/25000000000 : ℚ), 3⟩,
    ⟨(6223422831/125000000000 : ℚ), (-31294196559/10000000000 : ℚ), (8775347497/62500000000 : ℚ), 2⟩,
    ⟨(49976223441/1000000000000 : ℚ), (-7962386307/2500000000 : ℚ), (143175712849/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-1595914721/500000000 : ℚ), (1121245133/7812500000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (8883781543/31250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control61.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control61.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate61
