import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate794
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8678521335823/96829229707050 : ℚ), (532582080511/2500000000 : ℚ), (-4782125925247/250000000000 : ℚ)⟩,
  ⟨(8678521335823/96829229707050 : ℚ), (231853457077/2554169531850 : ℚ), (193743727903/10000000000 : ℚ), (-885730514671/500000000000 : ℚ)⟩,
  ⟨(231853457077/2554169531850 : ℚ), (128688741917/1391105852100 : ℚ), (5061694499/1250000000 : ℚ), (-2377126793/6250000000 : ℚ)⟩,
  ⟨(128688741917/1391105852100 : ℚ), (160978532177/1702444652400 : ℚ), (-1239619571/10000000000 : ℚ), (5725938871/1000000000000 : ℚ)⟩,
  ⟨(160978532177/1702444652400 : ℚ), (8173499607/84606299270 : ℚ), (-3652813219/2000000000 : ℚ), (20838058881/125000000000 : ℚ)⟩,
  ⟨(8173499607/84606299270 : ℚ), (439857896/4472848633 : ℚ), (-13362348011/5000000000 : ℚ), (124219733559/500000000000 : ℚ)⟩,
  ⟨(439857896/4472848633 : ℚ), (19921607633/200229835300 : ℚ), (-6239508931/2000000000 : ℚ), (146212628359/500000000000 : ℚ)⟩,
  ⟨(19921607633/200229835300 : ℚ), (603793753/6041027225 : ℚ), (-518747547/156250000 : ℚ), (312346864351/1000000000000 : ℚ)⟩,
  ⟨(603793753/6041027225 : ℚ), (1/10 : ℚ), (-33441484097/10000000000 : ℚ), (314762039363/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6558515903/40000000000 : ℚ), (-2/5 : ℚ), (380347198393/1000000000000 : ℚ)⟩,
  ⟨(6558515903/40000000000 : ℚ), (106252453/625000000 : ℚ), (-2415175012/6041027225 : ℚ), (91899405692266402143/241641089000000000000 : ℚ)⟩,
  ⟨(106252453/625000000 : ℚ), (1760491069/8000000000 : ℚ), (-19921607633/50057458825 : ℚ), (760881671492147233839/2002298353000000000000 : ℚ)⟩,
  ⟨(1760491069/8000000000 : ℚ), (6637651989/20000000000 : ℚ), (-1759431584/4472848633 : ℚ), (847578429267172889247/2236424316500000000000 : ℚ)⟩,
  ⟨(6637651989/20000000000 : ℚ), (4347186781/8000000000 : ℚ), (-16346999214/42303149635 : ℚ), (1593505654508184303423/4230314963500000000000 : ℚ)⟩,
  ⟨(4347186781/8000000000 : ℚ), (38760380429/40000000000 : ℚ), (-160978532177/425611163100 : ℚ), (6337070088191569998337/17024446524000000000000 : ℚ)⟩,
  ⟨(38760380429/40000000000 : ℚ), (10061694499/5000000000 : ℚ), (-128688741917/347776463025 : ℚ), (633459808044308551523/1738882315125000000000 : ℚ)⟩,
  ⟨(10061694499/5000000000 : ℚ), (233743727903/40000000000 : ℚ), (-463706914154/1277084765925 : ℚ), (1118521688040803148013/3192711914812500000000 : ℚ)⟩,
  ⟨(233743727903/40000000000 : ℚ), (32/1 : ℚ), (-17357042671646/48414614853525 : ℚ), (156628930224276908713279/484146148535250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (59965500521/125000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(89479296809/1000000000000 : ℚ), (532582080511/2500000000 : ℚ), (-4782125925247/250000000000 : ℚ), 11⟩,
    ⟨(22568092263/250000000000 : ℚ), (193743727903/10000000000 : ℚ), (-885730514671/500000000000 : ℚ), 8⟩,
    ⟨(91737775479/1000000000000 : ℚ), (5061694499/1250000000 : ℚ), (-2377126793/6250000000 : ℚ), 6⟩,
    ⟨(18730484249/200000000000 : ℚ), (-1239619571/10000000000 : ℚ), (5725938871/1000000000000 : ℚ), 5⟩,
    ⟨(11965602361/125000000000 : ℚ), (-3652813219/2000000000 : ℚ), (20838058881/125000000000 : ℚ), 5⟩,
    ⟨(48819732327/500000000000 : ℚ), (-13362348011/5000000000 : ℚ), (124219733559/500000000000 : ℚ), 5⟩,
    ⟨(99104871081/1000000000000 : ℚ), (-6239508931/2000000000 : ℚ), (146212628359/500000000000 : ℚ), 5⟩,
    ⟨(24974485831/250000000000 : ℚ), (-518747547/156250000 : ℚ), (312346864351/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-33441484097/10000000000 : ℚ), (314762039363/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control794.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control794.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate794
