import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate714
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43484575101/200000000000 : ℚ), (3378983986283/10000000000 : ℚ), (-73766057269969/1000000000000 : ℚ), 11⟩,
    ⟨(219005742389/1000000000000 : ℚ), (357534402253/10000000000 : ℚ), (-1996168128879/250000000000 : ℚ), 8⟩,
    ⟨(222110647471/1000000000000 : ℚ), (59178169737/5000000000 : ℚ), (-136077744423/50000000000 : ℚ), 6⟩,
    ⟨(226618270989/1000000000000 : ℚ), (53552214201/10000000000 : ℚ), (-1270760452073/1000000000000 : ℚ), 5⟩,
    ⟨(232355387501/1000000000000 : ℚ), (27448434327/10000000000 : ℚ), (-134583946751/200000000000 : ℚ), 5⟩,
    ⟨(119550761417/500000000000 : ℚ), (727677637/500000000 : ℚ), (-92374569799/250000000000 : ℚ), 4⟩,
    ⟨(246597426793/1000000000000 : ℚ), (7326344919/10000000000 : ℚ), (-97129958639/500000000000 : ℚ), 4⟩,
    ⟨(254555035991/1000000000000 : ℚ), (181817083/625000000 : ℚ), (-83718184227/1000000000000 : ℚ), 4⟩,
    ⟨(26266854397/100000000000 : ℚ), (33940157/10000000000 : ℚ), (-47209893/5000000000 : ℚ), 4⟩,
    ⟨(16914134573/62500000000 : ℚ), (-1925751393/10000000000 : ℚ), (42770474143/1000000000000 : ℚ), 3⟩,
    ⟨(278122057127/1000000000000 : ℚ), (-330447457/1000000000 : ℚ), (40288404847/500000000000 : ℚ), 3⟩,
    ⟨(14243409623/50000000000 : ℚ), (-4290616571/10000000000 : ℚ), (108325086977/1000000000000 : ℚ), 3⟩,
    ⟨(72651327243/250000000000 : ℚ), (-998811191/2000000000 : ℚ), (128560549147/1000000000000 : ℚ), 3⟩,
    ⟨(29511293249/100000000000 : ℚ), (-219197123/400000000 : ℚ), (142787801909/1000000000000 : ℚ), 3⟩,
    ⟨(74554459393/250000000000 : ℚ), (-5786521317/10000000000 : ℚ), (15188281909/100000000000 : ℚ), 3⟩,
    ⟨(37475088057/125000000000 : ℚ), (-5935084537/10000000000 : ℚ), (3126498637/20000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-595344377/1000000000 : ℚ), (78437762873/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (118519932437/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control714.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control714.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate714
