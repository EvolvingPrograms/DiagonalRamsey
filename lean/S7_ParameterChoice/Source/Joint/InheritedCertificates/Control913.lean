import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate913
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2020154656357/44477903598400 : ℚ), (15331914153/312500000 : ℚ), (-2232846415511/1000000000000 : ℚ)⟩,
  ⟨(2020154656357/44477903598400 : ℚ), (80919501981/1761953105050 : ℚ), (2865138557/625000000 : ℚ), (-106345879577/500000000000 : ℚ)⟩,
  ⟨(80919501981/1761953105050 : ℚ), (44830949323/960150737400 : ℚ), (10603154811/10000000000 : ℚ), (-6356594399/125000000000 : ℚ)⟩,
  ⟨(44830949323/960150737400 : ℚ), (9307184673/195544478450 : ℚ), (1001647437/10000000000 : ℚ), (-6021805869/1000000000000 : ℚ)⟩,
  ⟨(9307184673/195544478450 : ℚ), (9389195769/193587796300 : ℚ), (-727310533/2500000000 : ℚ), (12592563477/1000000000000 : ℚ)⟩,
  ⟨(9389195769/193587796300 : ℚ), (5015711587/101807841200 : ℚ), (-969024019/2000000000 : ℚ), (10990879623/500000000000 : ℚ)⟩,
  ⟨(5015711587/101807841200 : ℚ), (2258702139/45377039200 : ℚ), (-5863198507/10000000000 : ℚ), (26997470833/1000000000000 : ℚ)⟩,
  ⟨(2258702139/45377039200 : ℚ), (273171099/5465891200 : ℚ), (-6316968899/10000000000 : ℚ), (7314043243/250000000000 : ℚ)⟩,
  ⟨(273171099/5465891200 : ℚ), (1/20 : ℚ), (-6371627811/10000000000 : ℚ), (29529344071/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1628372189/8000000000 : ℚ), (-1/25 : ℚ), (4708900627/125000000000 : ℚ)⟩,
  ⟨(1628372189/8000000000 : ℚ), (1683031101/8000000000 : ℚ), (-273171099/6832364000 : ℚ), (2058866039444676463/54658912000000000000 : ℚ)⟩,
  ⟨(1683031101/8000000000 : ℚ), (2136801493/8000000000 : ℚ), (-2258702139/56721299000 : ℚ), (17077051025756470063/453770392000000000000 : ℚ)⟩,
  ⟨(2136801493/8000000000 : ℚ), (630975981/1600000000 : ℚ), (-5015711587/127259801500 : ℚ), (38203122241235956587/1018078412000000000000 : ℚ)⟩,
  ⟨(630975981/1600000000 : ℚ), (1272689467/2000000000 : ℚ), (-9389195769/241984745375 : ℚ), (72175788368032017843/1935877963000000000000 : ℚ)⟩,
  ⟨(1272689467/2000000000 : ℚ), (9001647437/8000000000 : ℚ), (-18614369346/488861196125 : ℚ), (144009372355177185741/3910889569000000000000 : ℚ)⟩,
  ⟨(9001647437/8000000000 : ℚ), (18603154811/8000000000 : ℚ), (-44830949323/1200188421750 : ℚ), (69146797323131971429/1920301474800000000000 : ℚ)⟩,
  ⟨(18603154811/8000000000 : ℚ), (3365138557/500000000 : ℚ), (-161839003962/4404882762625 : ℚ), (121871264694529018279/3523906210100000000000 : ℚ)⟩,
  ⟨(3365138557/500000000 : ℚ), (32/1 : ℚ), (-2020154656357/55597379498000 : ℚ), (885548100318949144503/27798689749000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (949999/1000000 : ℚ)
  x := (909767993009/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(22677003967/500000000000 : ℚ), (15331914153/312500000 : ℚ), (-2232846415511/1000000000000 : ℚ), 13⟩,
    ⟨(45704232371/1000000000000 : ℚ), (2865138557/625000000 : ℚ), (-106345879577/500000000000 : ℚ), 10⟩,
    ⟨(46351362749/1000000000000 : ℚ), (10603154811/10000000000 : ℚ), (-6356594399/125000000000 : ℚ), 9⟩,
    ⟨(23598439667/500000000000 : ℚ), (1001647437/10000000000 : ℚ), (-6021805869/1000000000000 : ℚ), 8⟩,
    ⟨(48112059891/1000000000000 : ℚ), (-727310533/2500000000 : ℚ), (12592563477/1000000000000 : ℚ), 8⟩,
    ⟨(12239394119/250000000000 : ℚ), (-969024019/2000000000 : ℚ), (10990879623/500000000000 : ℚ), 8⟩,
    ⟨(24802353427/500000000000 : ℚ), (-5863198507/10000000000 : ℚ), (26997470833/1000000000000 : ℚ), 7⟩,
    ⟨(49954931291/1000000000000 : ℚ), (-6316968899/10000000000 : ℚ), (7314043243/250000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-6371627811/10000000000 : ℚ), (29529344071/1000000000000 : ℚ), 7⟩]
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
theorem certOK : JointInheritedControls.control913.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control913.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate913
