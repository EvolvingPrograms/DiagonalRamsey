import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate791
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(204672356231/1000000000000 : ℚ), (928778008911/2000000000 : ℚ), (-95272422098727/1000000000000 : ℚ), 12⟩,
    ⟨(41108242437/200000000000 : ℚ), (246551389033/5000000000 : ℚ), (-2562688187877/250000000000 : ℚ), 9⟩,
    ⟨(41449106889/200000000000 : ℚ), (16307517143/1000000000 : ℚ), (-172419049573/50000000000 : ℚ), 7⟩,
    ⟨(13107489179/62500000000 : ℚ), (18257010671/2500000000 : ℚ), (-1573465513457/1000000000000 : ℚ), 6⟩,
    ⟨(21286900377/100000000000 : ℚ), (291422241/80000000 : ℚ), (-40052099971/50000000000 : ℚ), 6⟩,
    ⟨(216572044063/1000000000000 : ℚ), (9079533819/5000000000 : ℚ), (-204597561541/500000000000 : ℚ), 5⟩,
    ⟨(220686641979/1000000000000 : ℚ), (3902727129/5000000000 : ℚ), (-2288078437/12500000000 : ℚ), 5⟩,
    ⟨(56263668957/250000000000 : ℚ), (1405234677/10000000000 : ℚ), (-4051656261/100000000000 : ℚ), 5⟩,
    ⟨(5737707113/25000000000 : ℚ), (-2807272131/10000000000 : ℚ), (6895597549/125000000000 : ℚ), 4⟩,
    ⟨(233876318369/1000000000000 : ℚ), (-142737987/250000000 : ℚ), (61187204371/500000000000 : ℚ), 4⟩,
    ⟨(118995458143/500000000000 : ℚ), (-7772282883/10000000000 : ℚ), (85512173357/500000000000 : ℚ), 4⟩,
    ⟨(120846978289/500000000000 : ℚ), (-4630886857/5000000000 : ℚ), (103369919201/500000000000 : ℚ), 4⟩,
    ⟨(61210783371/250000000000 : ℚ), (-10333426673/10000000000 : ℚ), (58201441481/250000000000 : ℚ), 4⟩,
    ⟨(247317425903/1000000000000 : ℚ), (-11079076879/10000000000 : ℚ), (125576600359/500000000000 : ℚ), 4⟩,
    ⟨(62255437041/250000000000 : ℚ), (-11552269717/10000000000 : ℚ), (262895979313/1000000000000 : ℚ), 4⟩,
    ⟨(249890604117/1000000000000 : ℚ), (-11782387639/10000000000 : ℚ), (67159090399/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2952716223/2500000000 : ℚ), (269348137059/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (114325257667/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control791.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control791.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate791
