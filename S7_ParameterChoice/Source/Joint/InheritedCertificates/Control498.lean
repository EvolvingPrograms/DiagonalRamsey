import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate498
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65129242799/250000000000 : ℚ), (1352692887361/1000000000 : ℚ), (-353057450625133/1000000000000 : ℚ), 12⟩,
    ⟨(52237643069/200000000000 : ℚ), (92375474849/625000000 : ℚ), (-39013757819843/1000000000000 : ℚ), 9⟩,
    ⟨(65631059799/250000000000 : ℚ), (258878674997/5000000000 : ℚ), (-694505232781/50000000000 : ℚ), 7⟩,
    ⟨(264512176107/1000000000000 : ℚ), (254861338983/10000000000 : ℚ), (-6968080984459/1000000000000 : ℚ), 6⟩,
    ⟨(267132881161/1000000000000 : ℚ), (73802353103/5000000000 : ℚ), (-4119285525499/1000000000000 : ℚ), 6⟩,
    ⟨(135180557767/500000000000 : ℚ), (375578219/40000000 : ℚ), (-2676988393119/1000000000000 : ℚ), 5⟩,
    ⟨(54833157913/200000000000 : ℚ), (31696922231/5000000000 : ℚ), (-923601698091/500000000000 : ℚ), 5⟩,
    ⟨(278510262163/1000000000000 : ℚ), (22265491129/5000000000 : ℚ), (-1326335101537/1000000000000 : ℚ), 4⟩,
    ⟨(141676346841/500000000000 : ℚ), (6424427007/2000000000 : ℚ), (-488988238917/500000000000 : ℚ), 4⟩,
    ⟨(14432322443/50000000000 : ℚ), (23567082671/10000000000 : ℚ), (-733465005351/1000000000000 : ℚ), 4⟩,
    ⟨(14717027297/50000000000 : ℚ), (8723575039/5000000000 : ℚ), (-555184302019/1000000000000 : ℚ), 4⟩,
    ⟨(150190073827/500000000000 : ℚ), (12936317123/10000000000 : ℚ), (-421128011103/1000000000000 : ℚ), 3⟩,
    ⟨(306707089337/1000000000000 : ℚ), (1905619861/2000000000 : ℚ), (-317729309307/1000000000000 : ℚ), 3⟩,
    ⟨(156630219541/500000000000 : ℚ), (1379719007/2000000000 : ℚ), (-118129525067/500000000000 : ℚ), 3⟩,
    ⟨(319977084547/1000000000000 : ℚ), (2416666303/5000000000 : ℚ), (-170898165659/1000000000000 : ℚ), 3⟩,
    ⟨(163396170383/500000000000 : ℚ), (159304957/500000000 : ℚ), (-117650534171/1000000000000 : ℚ), 3⟩,
    ⟨(41705071637/125000000000 : ℚ), (927363849/5000000000 : ℚ), (-73702157619/1000000000000 : ℚ), 3⟩,
    ⟨(68091165863/200000000000 : ℚ), (766313471/10000000000 : ℚ), (-37028880177/1000000000000 : ℚ), 3⟩,
    ⟨(17358623739/50000000000 : ℚ), (-132109607/10000000000 : ℚ), (-6148265411/1000000000000 : ℚ), 3⟩,
    ⟨(14149032981/40000000000 : ℚ), (-879616533/10000000000 : ℚ), (20041903969/1000000000000 : ℚ), 3⟩,
    ⟨(703228059/1953125000 : ℚ), (-1505412247/10000000000 : ℚ), (42371446431/1000000000000 : ℚ), 3⟩,
    ⟨(183046183961/500000000000 : ℚ), (-1015782051/5000000000 : ℚ), (61471414899/1000000000000 : ℚ), 3⟩,
    ⟨(185893232501/500000000000 : ℚ), (-247489499/1000000000 : ℚ), (77825423501/1000000000000 : ℚ), 2⟩,
    ⟨(18854011009/50000000000 : ℚ), (-2848317651/10000000000 : ℚ), (11475761981/125000000000 : ℚ), 2⟩,
    ⟨(381922651699/1000000000000 : ℚ), (-3161789453/10000000000 : ℚ), (51850693809/500000000000 : ℚ), 2⟩,
    ⟨(386267124297/1000000000000 : ℚ), (-3423004527/10000000000 : ℚ), (1421673521/12500000000 : ℚ), 2⟩,
    ⟨(48758974791/125000000000 : ℚ), (-113684401/312500000 : ℚ), (3814847233/31250000000 : ℚ), 2⟩,
    ⟨(196650016351/500000000000 : ℚ), (-3811034329/10000000000 : ℚ), (64428144819/500000000000 : ℚ), 2⟩,
    ⟨(79184147551/200000000000 : ℚ), (-3945855803/10000000000 : ℚ), (26835275411/200000000000 : ℚ), 2⟩,
    ⟨(397908674667/1000000000000 : ℚ), (-4044914627/10000000000 : ℚ), (138108122921/1000000000000 : ℚ), 2⟩,
    ⟨(399244698517/1000000000000 : ℚ), (-1027501531/2500000000 : ℚ), (35175626309/250000000000 : ℚ), 2⟩,
    ⟨(199957971333/500000000000 : ℚ), (-1035568449/2500000000 : ℚ), (141991856333/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-414629437/1000000000 : ℚ), (142152662387/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (87496661889/250000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control498.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control498.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate498
