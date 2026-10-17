import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate327
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(148580468887/500000000000 : ℚ), (14726428174239/10000000000 : ℚ), (-438449727058011/1000000000000 : ℚ), 12⟩,
    ⟨(37243072479/125000000000 : ℚ), (160891094463/1000000000 : ℚ), (-24229588878569/500000000000 : ℚ), 8⟩,
    ⟨(299504317047/1000000000000 : ℚ), (281796906231/5000000000 : ℚ), (-107873831743/6250000000 : ℚ), 7⟩,
    ⟨(301825128297/1000000000000 : ℚ), (55490735449/2000000000 : ℚ), (-433195745539/50000000000 : ℚ), 6⟩,
    ⟨(304884662901/1000000000000 : ℚ), (40185215873/2500000000 : ℚ), (-5126332109437/1000000000000 : ℚ), 5⟩,
    ⟨(77163363967/250000000000 : ℚ), (102313636603/10000000000 : ℚ), (-667084590707/200000000000 : ℚ), 5⟩,
    ⟨(313095211661/1000000000000 : ℚ), (34573778099/5000000000 : ℚ), (-2305184941759/1000000000000 : ℚ), 4⟩,
    ⟨(63633430749/200000000000 : ℚ), (48646633553/10000000000 : ℚ), (-829300002029/500000000000 : ℚ), 4⟩,
    ⟨(5059694321/15625000000 : ℚ), (35168472867/10000000000 : ℚ), (-38320951521/31250000000 : ℚ), 4⟩,
    ⟨(66000123171/200000000000 : ℚ), (6470757861/2500000000 : ℚ), (-922926081759/1000000000000 : ℚ), 4⟩,
    ⟨(84162043293/250000000000 : ℚ), (19246358853/10000000000 : ℚ), (-701850910647/1000000000000 : ℚ), 3⟩,
    ⟨(85924772221/250000000000 : ℚ), (717978293/500000000 : ℚ), (-33482128143/62500000000 : ℚ), 3⟩,
    ⟨(351085458819/1000000000000 : ℚ), (426861347/400000000 : ℚ), (-407665146663/1000000000000 : ℚ), 3⟩,
    ⟨(358736148197/1000000000000 : ℚ), (1957461569/2500000000 : ℚ), (-306861436807/1000000000000 : ℚ), 3⟩,
    ⟨(45822184587/125000000000 : ℚ), (350073071/625000000 : ℚ), (-11303697463/50000000000 : ℚ), 3⟩,
    ⟨(374533928037/1000000000000 : ℚ), (19132197/50000000 : ℚ), (-32067483183/200000000000 : ℚ), 3⟩,
    ⟨(382528877243/1000000000000 : ℚ), (2394514039/10000000000 : ℚ), (-53077214557/500000000000 : ℚ), 3⟩,
    ⟨(48810666073/125000000000 : ℚ), (122608077/1000000000 : ℚ), (-1525206263/25000000000 : ℚ), 3⟩,
    ⟨(398326657083/1000000000000 : ℚ), (263512183/10000000000 : ℚ), (-11527327597/500000000000 : ℚ), 2⟩,
    ⟨(405977346461/1000000000000 : ℚ), (-535714787/10000000000 : ℚ), (226965939/25000000000 : ℚ), 2⟩,
    ⟨(103340929099/250000000000 : ℚ), (-240678691/2000000000 : ℚ), (36425851111/1000000000000 : ℚ), 2⟩,
    ⟨(105103658027/250000000000 : ℚ), (-881779711/5000000000 : ℚ), (747182043/12500000000 : ℚ), 2⟩,
    ⟨(17082487577/40000000000 : ℚ), (-2234548949/10000000000 : ℚ), (39864698187/500000000000 : ℚ), 2⟩,
    ⟨(13538824023/31250000000 : ℚ), (-1315224523/5000000000 : ℚ), (12094651267/125000000000 : ℚ), 2⟩,
    ⟨(87779130307/200000000000 : ℚ), (-185133403/625000000 : ℚ), (27804926853/250000000000 : ℚ), 2⟩,
    ⟨(443967593619/1000000000000 : ℚ), (-3238018767/10000000000 : ℚ), (123397299899/1000000000000 : ℚ), 2⟩,
    ⟨(112102337353/250000000000 : ℚ), (-692920859/2000000000 : ℚ), (33376698367/250000000000 : ℚ), 2⟩,
    ⟨(452178142379/1000000000000 : ℚ), (-729377469/2000000000 : ℚ), (2834292213/20000000000 : ℚ), 2⟩,
    ⟨(455237676983/1000000000000 : ℚ), (-1894328909/5000000000 : ℚ), (148146712583/1000000000000 : ℚ), 2⟩,
    ⟨(457558488233/1000000000000 : ℚ), (-389271951/1000000000 : ℚ), (76448005953/500000000000 : ℚ), 2⟩,
    ⟨(57389778181/125000000000 : ℚ), (-792209861/2000000000 : ℚ), (31205562409/200000000000 : ℚ), 2⟩,
    ⟨(459901867507/1000000000000 : ℚ), (-998726883/2500000000 : ℚ), (615561053/3906250000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3999125597/10000000000 : ℚ), (157777639857/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (69955530343/250000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control327.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control327.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate327
