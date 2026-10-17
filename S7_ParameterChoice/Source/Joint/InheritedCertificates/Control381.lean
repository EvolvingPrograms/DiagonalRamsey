import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate381
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133997645791/500000000000 : ℚ), (745237076187/625000000 : ℚ), (-16013222492627/50000000000 : ℚ), 12⟩,
    ⟨(53764608427/200000000000 : ℚ), (130054420889/1000000000 : ℚ), (-17702283587819/500000000000 : ℚ), 8⟩,
    ⟨(5409411431/20000000000 : ℚ), (454554304353/10000000000 : ℚ), (-6307825328661/500000000000 : ℚ), 7⟩,
    ⟨(136461006609/500000000000 : ℚ), (22322974647/1000000000 : ℚ), (-6336910090167/1000000000000 : ℚ), 6⟩,
    ⟨(17259609901/62500000000 : ℚ), (16126868693/1250000000 : ℚ), (-3752882850233/1000000000000 : ℚ), 5⟩,
    ⟨(35016835459/125000000000 : ℚ), (81936072669/10000000000 : ℚ), (-305581814991/125000000000 : ℚ), 5⟩,
    ⟨(142413225249/500000000000 : ℚ), (27633966737/5000000000 : ℚ), (-105751369383/62500000000 : ℚ), 4⟩,
    ⟨(58036774923/200000000000 : ℚ), (38821752963/10000000000 : ℚ), (-1219601082573/1000000000000 : ℚ), 4⟩,
    ⟨(296155361101/1000000000000 : ℚ), (5607201249/2000000000 : ℚ), (-903660013587/1000000000000 : ℚ), 4⟩,
    ⟨(75670850319/250000000000 : ℚ), (2062435773/1000000000 : ℚ), (-340958007287/500000000000 : ℚ), 4⟩,
    ⟨(61941025309/200000000000 : ℚ), (958782883/625000000 : ℚ), (-260123873707/500000000000 : ℚ), 3⟩,
    ⟨(63430582771/200000000000 : ℚ), (1145965501/1000000000 : ℚ), (-199346791261/500000000000 : ℚ), 3⟩,
    ⟨(162477518471/500000000000 : ℚ), (426892701/500000000 : ℚ), (-304947428173/1000000000000 : ℚ), 3⟩,
    ⟨(333036357097/1000000000000 : ℚ), (6291664443/10000000000 : ℚ), (-28886442427/125000000000 : ℚ), 3⟩,
    ⟨(341319046789/1000000000000 : ℚ), (1133425059/2500000000 : ℚ), (-171847980653/1000000000000 : ℚ), 3⟩,
    ⟨(87430834797/250000000000 : ℚ), (156822089/500000000 : ℚ), (-123592440769/1000000000000 : ℚ), 3⟩,
    ⟨(89542074091/250000000000 : ℚ), (502738347/2500000000 : ℚ), (-20943220419/250000000000 : ℚ), 3⟩,
    ⟨(183286294381/500000000000 : ℚ), (1093896427/10000000000 : ℚ), (-50553635201/1000000000000 : ℚ), 3⟩,
    ⟨(187427639227/500000000000 : ℚ), (3393451/100000000 : ℚ), (-22590273409/1000000000000 : ℚ), 2⟩,
    ⟨(382936598609/1000000000000 : ℚ), (-286517573/10000000000 : ℚ), (1116934521/1000000000000 : ℚ), 2⟩,
    ⟨(390738721697/1000000000000 : ℚ), (-202230611/2500000000 : ℚ), (21320856727/1000000000000 : ℚ), 2⟩,
    ⟨(199093254503/500000000000 : ℚ), (-623452421/5000000000 : ℚ), (38594304303/1000000000000 : ℚ), 2⟩,
    ⟨(16208329371/40000000000 : ℚ), (-807479067/5000000000 : ℚ), (13344146121/250000000000 : ℚ), 2⟩,
    ⟨(8234725489/20000000000 : ℚ), (-19241969/100000000 : ℚ), (16501635029/250000000000 : ℚ), 2⟩,
    ⟨(52213470117/125000000000 : ℚ), (-218318733/1000000000 : ℚ), (2398324617/31250000000 : ℚ), 2⟩,
    ⟨(211532592527/500000000000 : ℚ), (-479709521/2000000000 : ℚ), (85799169063/1000000000000 : ℚ), 2⟩,
    ⟨(10693923797/25000000000 : ℚ), (-2575386419/10000000000 : ℚ), (23330420371/250000000000 : ℚ), 2⟩,
    ⟨(86347575427/200000000000 : ℚ), (-54352511/200000000 : ℚ), (49717072187/500000000000 : ℚ), 2⟩,
    ⟨(434969622333/1000000000000 : ℚ), (-282823769/1000000000 : ℚ), (104227450037/1000000000000 : ℚ), 2⟩,
    ⟨(437421064001/1000000000000 : ℚ), (-1454710467/5000000000 : ℚ), (53884289389/500000000000 : ℚ), 2⟩,
    ⟨(54883574177/125000000000 : ℚ), (-1481362287/5000000000 : ℚ), (1376307121/12500000000 : ℚ), 2⟩,
    ⟨(439896343969/1000000000000 : ℚ), (-2989136129/10000000000 : ℚ), (13908163689/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2992426439/10000000000 : ℚ), (27852516531/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (171460592539/500000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control381.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control381.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate381
