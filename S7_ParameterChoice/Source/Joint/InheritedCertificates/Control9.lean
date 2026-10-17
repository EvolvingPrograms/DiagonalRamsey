import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate9
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38933915393/1000000000000 : ℚ), (11205586409261/10000000000 : ℚ), (-10939820421547/250000000000 : ℚ), 10⟩,
    ⟨(3914603393/100000000000 : ℚ), (740474373/6250000 : ℚ), (-4705076934469/1000000000000 : ℚ), 6⟩,
    ⟨(2472632463/62500000000 : ℚ), (194651652009/5000000000 : ℚ), (-1580040770727/1000000000000 : ℚ), 5⟩,
    ⟨(5020772737/125000000000 : ℚ), (10796846467/625000000 : ℚ), (-359092801707/500000000000 : ℚ), 4⟩,
    ⟨(4093500761/100000000000 : ℚ), (16983437991/2000000000 : ℚ), (-362559910923/1000000000000 : ℚ), 4⟩,
    ⟨(4183905101/100000000000 : ℚ), (20564918313/5000000000 : ℚ), (-181582904073/1000000000000 : ℚ), 3⟩,
    ⟨(21421785107/500000000000 : ℚ), (16303784649/10000000000 : ℚ), (-38294838721/500000000000 : ℚ), 3⟩,
    ⟨(21954981057/500000000000 : ℚ), (920530347/10000000000 : ℚ), (-9927589891/1000000000000 : ℚ), 3⟩,
    ⟨(22498622933/500000000000 : ℚ), (-9247187143/10000000000 : ℚ), (7047201431/200000000000 : ℚ), 2⟩,
    ⟨(23031818883/500000000000 : ℚ), (-16289866431/10000000000 : ℚ), (67282311921/1000000000000 : ℚ), 2⟩,
    ⟨(4706815697/100000000000 : ℚ), (-10661438071/5000000000 : ℚ), (90708715819/1000000000000 : ℚ), 2⟩,
    ⟨(4797220037/100000000000 : ℚ), (-24973997301/10000000000 : ℚ), (21610747879/200000000000 : ℚ), 2⟩,
    ⟨(12185256521/250000000000 : ℚ), (-3451161511/1250000000 : ℚ), (6039738019/50000000000 : ℚ), 2⟩,
    ⟨(12336272143/250000000000 : ℚ), (-29446004501/10000000000 : ℚ), (8112602433/62500000000 : ℚ), 2⟩,
    ⟨(995223481/20000000000 : ℚ), (-6122445479/2000000000 : ℚ), (33895095331/250000000000 : ℚ), 2⟩,
    ⟨(49973292587/1000000000000 : ℚ), (-15589683229/5000000000 : ℚ), (34602128969/250000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-3124954473/1000000000 : ℚ), (138759313463/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (224999/1000000 : ℚ)
  x := (173520137841/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control9.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control9.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate9
