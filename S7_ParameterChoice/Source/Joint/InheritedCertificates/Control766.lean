import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate766
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11933048423/62500000000 : ℚ), (182655971387/500000000 : ℚ), (-218686497123/3125000000 : ℚ), 11⟩,
    ⟨(38412214489/200000000000 : ℚ), (193606732339/5000000000 : ℚ), (-3777973809129/500000000000 : ℚ), 8⟩,
    ⟨(97141077117/500000000000 : ℚ), (32043709599/2500000000 : ℚ), (-80045607549/31250000000 : ℚ), 7⟩,
    ⟨(24688333151/125000000000 : ℚ), (28884056037/5000000000 : ℚ), (-1184695830113/1000000000000 : ℚ), 6⟩,
    ⟨(100805344609/500000000000 : ℚ), (14645326267/5000000000 : ℚ), (-617340834469/1000000000000 : ℚ), 5⟩,
    ⟨(206436510923/1000000000000 : ℚ), (3788760329/2500000000 : ℚ), (-82341894701/250000000000 : ℚ), 5⟩,
    ⟨(105899338351/500000000000 : ℚ), (179755021/250000000 : ℚ), (-1304182727/8000000000 : ℚ), 4⟩,
    ⟨(21749112153/100000000000 : ℚ), (458955339/2000000000 : ℚ), (-58058388009/1000000000000 : ℚ), 4⟩,
    ⟨(44659017589/200000000000 : ℚ), (-113726757/1250000000 : ℚ), (6253583807/500000000000 : ℚ), 4⟩,
    ⟨(228987532773/1000000000000 : ℚ), (-621302787/2000000000 : ℚ), (31075184123/500000000000 : ℚ), 4⟩,
    ⟨(29293712319/125000000000 : ℚ), (-4660551147/10000000000 : ℚ), (98134959449/1000000000000 : ℚ), 4⟩,
    ⟨(239175520257/1000000000000 : ℚ), (-5777905243/10000000000 : ℚ), (31145230479/250000000000 : ℚ), 4⟩,
    ⟨(243279544267/1000000000000 : ℚ), (-6578711797/10000000000 : ℚ), (143894568711/1000000000000 : ℚ), 4⟩,
    ⟨(246504055241/1000000000000 : ℚ), (-1783513093/2500000000 : ℚ), (31498571647/200000000000 : ℚ), 4⟩,
    ⟨(24872513703/100000000000 : ℚ), (-935694177/1250000000 : ℚ), (265913773/1600000000 : ℚ), 4⟩,
    ⟨(249857434707/1000000000000 : ℚ), (-1914051109/2500000000 : ℚ), (170450237809/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-3838654401/5000000000 : ℚ), (85488848213/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (51022577437/100000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control766.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control766.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate766
