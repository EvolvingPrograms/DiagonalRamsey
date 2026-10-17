import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate784
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(90693283989/500000000000 : ℚ), (1424853457487/5000000000 : ℚ), (-25949537117777/500000000000 : ℚ), 11⟩,
    ⟨(7308070959/40000000000 : ℚ), (301402646853/10000000000 : ℚ), (-2807238271263/500000000000 : ℚ), 8⟩,
    ⟨(9264082167/50000000000 : ℚ), (24916622951/2500000000 : ℚ), (-382242727143/200000000000 : ℚ), 7⟩,
    ⟨(189027033141/1000000000000 : ℚ), (44998819979/10000000000 : ℚ), (-89031292979/100000000000 : ℚ), 6⟩,
    ⟨(48448502537/250000000000 : ℚ), (11485661977/5000000000 : ℚ), (-469529168021/1000000000000 : ℚ), 5⟩,
    ⟨(199399382107/1000000000000 : ℚ), (1510512431/1250000000 : ℚ), (-31984217489/125000000000 : ℚ), 5⟩,
    ⟨(102813868859/500000000000 : ℚ), (2988397221/5000000000 : ℚ), (-26476917547/200000000000 : ℚ), 4⟩,
    ⟨(6632491399/31250000000 : ℚ), (2239280511/10000000000 : ℚ), (-27198333809/500000000000 : ℚ), 4⟩,
    ⟨(109490624151/500000000000 : ℚ), (-197508451/10000000000 : ℚ), (-1911704659/1000000000000 : ℚ), 4⟩,
    ⟨(28199154419/125000000000 : ℚ), (-1861856807/10000000000 : ℚ), (1095470547/31250000000 : ℚ), 4⟩,
    ⟨(57955397741/250000000000 : ℚ), (-379441493/1250000000 : ℚ), (61882280947/1000000000000 : ℚ), 4⟩,
    ⟨(237426962923/1000000000000 : ℚ), (-969264869/2500000000 : ℚ), (40809378193/500000000000 : ℚ), 4⟩,
    ⟨(24219393993/100000000000 : ℚ), (-1119686223/2500000000 : ℚ), (600276551/6250000000 : ℚ), 4⟩,
    ⟨(24593932973/100000000000 : ℚ), (-1223795281/2500000000 : ℚ), (106206698249/1000000000000 : ℚ), 4⟩,
    ⟨(31064899887/125000000000 : ℚ), (-5158372009/10000000000 : ℚ), (14089145891/125000000000 : ℚ), 3⟩,
    ⟨(249834405093/1000000000000 : ℚ), (-2643015033/5000000000 : ℚ), (57947032051/500000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2650905921/5000000000 : ℚ), (116288477741/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (570205697937/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control784.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control784.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate784
