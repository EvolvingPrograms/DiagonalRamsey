import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate826
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39516722413/250000000000 : ℚ), (1646791961957/5000000000 : ℚ), (-3263014033937/62500000000 : ℚ), 12⟩,
    ⟨(31774135603/200000000000 : ℚ), (174652620549/5000000000 : ℚ), (-225011181453/40000000000 : ℚ), 9⟩,
    ⟨(32089473121/200000000000 : ℚ), (57743881603/5000000000 : ℚ), (-379638613421/200000000000 : ℚ), 7⟩,
    ⟨(81368180601/500000000000 : ℚ), (3238088431/625000000 : ℚ), (-870782595667/1000000000000 : ℚ), 6⟩,
    ⟨(16564969999/100000000000 : ℚ), (25985645921/10000000000 : ℚ), (-447375990413/1000000000000 : ℚ), 6⟩,
    ⟨(169075423991/1000000000000 : ℚ), (13127069009/10000000000 : ℚ), (-46489162137/200000000000 : ℚ), 5⟩,
    ⟨(34576376911/200000000000 : ℚ), (1464073719/2500000000 : ℚ), (-108268994099/1000000000000 : ℚ), 5⟩,
    ⟨(1382209387/7812500000 : ℚ), (685250307/5000000000 : ℚ), (-7471134273/250000000000 : ℚ), 5⟩,
    ⟨(181042884761/1000000000000 : ℚ), (-1577663191/10000000000 : ℚ), (4568567163/200000000000 : ℚ), 5⟩,
    ⟨(92541900871/500000000000 : ℚ), (-1803448643/5000000000 : ℚ), (29984572591/500000000000 : ℚ), 4⟩,
    ⟨(94445131153/500000000000 : ℚ), (-5048409179/10000000000 : ℚ), (86912163461/1000000000000 : ℚ), 4⟩,
    ⟨(192315986307/1000000000000 : ℚ), (-608904621/1000000000 : ℚ), (53370662797/500000000000 : ℚ), 4⟩,
    ⟨(39045865019/200000000000 : ℚ), (-3418836863/5000000000 : ℚ), (1515563519/12500000000 : ℚ), 4⟩,
    ⟨(49379580173/250000000000 : ℚ), (-1471704299/2000000000 : ℚ), (8217010511/62500000000 : ℚ), 4⟩,
    ⟨(99547504141/500000000000 : ℚ), (-7689025379/10000000000 : ℚ), (34506500803/250000000000 : ℚ), 4⟩,
    ⟨(39979759329/200000000000 : ℚ), (-3924870301/5000000000 : ℚ), (141232188859/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-98370357/125000000 : ℚ), (141629847311/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (60656026127/100000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control826.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control826.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate826
