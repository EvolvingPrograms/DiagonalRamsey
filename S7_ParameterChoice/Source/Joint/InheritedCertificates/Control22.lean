import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate22
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39252055841/1000000000000 : ℚ), (1383753322181/1250000000 : ℚ), (-43578354650989/1000000000000 : ℚ), 10⟩,
    ⟨(4932259519/125000000000 : ℚ), (1170722464401/10000000000 : ℚ), (-4683937625073/1000000000000 : ℚ), 7⟩,
    ⟨(39862199529/1000000000000 : ℚ), (192341333577/5000000000 : ℚ), (-196460093217/125000000000 : ℚ), 5⟩,
    ⟨(20224447869/500000000000 : ℚ), (85295473289/5000000000 : ℚ), (-22292023607/31250000000 : ℚ), 4⟩,
    ⟨(10298904593/250000000000 : ℚ), (41851828091/5000000000 : ℚ), (-71833888593/200000000000 : ℚ), 4⟩,
    ⟨(42073671299/1000000000000 : ℚ), (8071371739/2000000000 : ℚ), (-178932735679/1000000000000 : ℚ), 3⟩,
    ⟨(43049311437/1000000000000 : ℚ), (3152502513/2000000000 : ℚ), (-74374247021/1000000000000 : ℚ), 3⟩,
    ⟨(44085045483/1000000000000 : ℚ), (511954889/10000000000 : ℚ), (-51167/6400000 : ℚ), 3⟩,
    ⟨(1128526769/25000000000 : ℚ), (-2393693663/2500000000 : ℚ), (36970923959/1000000000000 : ℚ), 3⟩,
    ⟨(23088402403/500000000000 : ℚ), (-8282856119/5000000000 : ℚ), (34436103547/500000000000 : ℚ), 2⟩,
    ⟨(9430488989/200000000000 : ℚ), (-4312950021/2000000000 : ℚ), (92190158619/1000000000000 : ℚ), 2⟩,
    ⟨(48030497871/1000000000000 : ℚ), (-6298348457/2500000000 : ℚ), (109454433937/1000000000000 : ℚ), 2⟩,
    ⟨(9755444101/200000000000 : ℚ), (-1112560337/400000000 : ℚ), (122136938267/1000000000000 : ℚ), 2⟩,
    ⟨(24681958357/500000000000 : ℚ), (-14820745511/5000000000 : ℚ), (26220722829/200000000000 : ℚ), 2⟩,
    ⟨(49768040091/1000000000000 : ℚ), (-7700595097/2500000000 : ℚ), (17107178587/125000000000 : ℚ), 2⟩,
    ⟨(24987030201/500000000000 : ℚ), (-7841774057/2500000000 : ℚ), (139673696079/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31436983003/10000000000 : ℚ), (140023039253/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (262499/1000000 : ℚ)
  x := (203545250209/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control22.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control22.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate22
