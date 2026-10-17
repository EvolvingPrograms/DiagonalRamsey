import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate470
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137339231277/500000000000 : ℚ), (16332782091411/10000000000 : ℚ), (-449342610177107/1000000000000 : ℚ), 12⟩,
    ⟨(137640778173/500000000000 : ℚ), (223368238889/1250000000 : ℚ), (-6204794559159/125000000000 : ℚ), 9⟩,
    ⟨(4320030247/15625000000 : ℚ), (25082010673/400000000 : ℚ), (-3532368383683/200000000000 : ℚ), 7⟩,
    ⟨(69567010157/250000000000 : ℚ), (309201301823/10000000000 : ℚ), (-8851764008731/1000000000000 : ℚ), 6⟩,
    ⟨(140311334821/500000000000 : ℚ), (44840277957/2500000000 : ℚ), (-522596819433/100000000000 : ℚ), 6⟩,
    ⟨(283523146483/1000000000000 : ℚ), (22848037673/2000000000 : ℚ), (-339033030977/100000000000 : ℚ), 5⟩,
    ⟨(35867692247/125000000000 : ℚ), (38596018853/5000000000 : ℚ), (-233429135281/100000000000 : ℚ), 5⟩,
    ⟨(290844923141/1000000000000 : ℚ), (10846641767/2000000000 : ℚ), (-13058164321/7812500000 : ℚ), 4⟩,
    ⟨(59039142049/200000000000 : ℚ), (4887065361/1250000000 : ℚ), (-614088307561/500000000000 : ℚ), 4⟩,
    ⟨(299951998831/1000000000000 : ℚ), (7159147219/2500000000 : ℚ), (-183418808217/200000000000 : ℚ), 4⟩,
    ⟨(152533991619/500000000000 : ℚ), (845445119/400000000 : ℚ), (-690319457987/1000000000000 : ℚ), 4⟩,
    ⟨(15524719687/50000000000 : ℚ), (3898613543/2500000000 : ℚ), (-519842655771/1000000000000 : ℚ), 3⟩,
    ⟨(316178971039/1000000000000 : ℚ), (11397404779/10000000000 : ℚ), (-15535789061/40000000000 : ℚ), 3⟩,
    ⟨(161033484773/500000000000 : ℚ), (4075894387/5000000000 : ℚ), (-17803986149/62500000000 : ℚ), 3⟩,
    ⟨(164050842309/500000000000 : ℚ), (5596933053/10000000000 : ℚ), (-25230199759/125000000000 : ℚ), 3⟩,
    ⟨(334224998649/1000000000000 : ℚ), (1777442279/5000000000 : ℚ), (-134240038267/1000000000000 : ℚ), 3⟩,
    ⟨(340377940779/1000000000000 : ℚ), (380222703/2000000000 : ℚ), (-78475456449/1000000000000 : ℚ), 3⟩,
    ⟨(346501254811/1000000000000 : ℚ), (68327261/1250000000 : ℚ), (-7992371643/250000000000 : ℚ), 3⟩,
    ⟨(352535969883/1000000000000 : ℚ), (-286683429/5000000000 : ℚ), (1791677301/250000000000 : ℚ), 3⟩,
    ⟨(35842396839/100000000000 : ℚ), (-753349151/5000000000 : ℚ), (20168972937/500000000000 : ℚ), 3⟩,
    ⟨(364108545689/1000000000000 : ℚ), (-457840249/2000000000 : ℚ), (68602203921/1000000000000 : ℚ), 3⟩,
    ⟨(369534956191/1000000000000 : ℚ), (-1473992633/5000000000 : ℚ), (46382157717/500000000000 : ℚ), 3⟩,
    ⟨(187325470299/500000000000 : ℚ), (-218984049/625000000 : ℚ), (113441267369/1000000000000 : ℚ), 3⟩,
    ⟨(379407229183/1000000000000 : ℚ), (-993095609/2500000000 : ℚ), (2622171571/20000000000 : ℚ), 2⟩,
    ⟨(11992438009/31250000000 : ℚ), (-2183086247/5000000000 : ℚ), (146133798307/1000000000000 : ℚ), 2⟩,
    ⟨(387661401453/1000000000000 : ℚ), (-586825723/1250000000 : ℚ), (19850133901/125000000000 : ℚ), 2⟩,
    ⟨(78215958589/200000000000 : ℚ), (-4965009951/10000000000 : ℚ), (169329380689/1000000000000 : ℚ), 2⟩,
    ⟨(393980269787/1000000000000 : ℚ), (-5183008241/10000000000 : ℚ), (177886225891/1000000000000 : ℚ), 2⟩,
    ⟨(396334898801/1000000000000 : ℚ), (-5352859743/10000000000 : ℚ), (184597916247/1000000000000 : ℚ), 2⟩,
    ⟨(398121003621/1000000000000 : ℚ), (-5477710469/10000000000 : ℚ), (189557286311/1000000000000 : ℚ), 2⟩,
    ⟨(199660691541/500000000000 : ℚ), (-44478203/80000000 : ℚ), (96414686759/500000000000 : ℚ), 2⟩,
    ⟨(199962238437/500000000000 : ℚ), (-2800232449/5000000000 : ℚ), (9722770919/50000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-7006919/12500000 : ℚ), (38931642263/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (302667427121/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control470.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control470.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate470
