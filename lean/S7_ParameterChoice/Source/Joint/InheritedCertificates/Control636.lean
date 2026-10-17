import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate636
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (18358518842879/211715579729900 : ℚ), (233104136067/1000000000 : ℚ), (-5065626383909/250000000000 : ℚ)⟩,
  ⟨(18358518842879/211715579729900 : ℚ), (7359426383/83456882927 : ℚ), (213885563371/10000000000 : ℚ), (-1903986692757/1000000000000 : ℚ)⟩,
  ⟨(7359426383/83456882927 : ℚ), (51122745988/565499404025 : ℚ), (46971797517/10000000000 : ℚ), (-432101416157/1000000000000 : ℚ)⟩,
  ⟨(51122745988/565499404025 : ℚ), (170887234581/1836955845800 : ℚ), (346369039/2000000000 : ℚ), (-23119448253/1000000000000 : ℚ)⟩,
  ⟨(170887234581/1836955845800 : ℚ), (8691193533/90862688500 : ℚ), (-16637713263/10000000000 : ℚ), (18470973291/125000000000 : ℚ)⟩,
  ⟨(8691193533/90862688500 : ℚ), (9353684239/95570316720 : ℚ), (-25723982113/10000000000 : ℚ), (117339860829/500000000000 : ℚ)⟩,
  ⟨(9353684239/95570316720 : ℚ), (2643950882/26612179625 : ℚ), (-30502497949/10000000000 : ℚ), (281448142853/1000000000000 : ℚ)⟩,
  ⟨(2643950882/26612179625 : ℚ), (640449074/6408689575 : ℚ), (-32631472319/10000000000 : ℚ), (302599749909/1000000000000 : ℚ)⟩,
  ⟨(640449074/6408689575 : ℚ), (1/10 : ℚ), (-16443909951/5000000000 : ℚ), (61032309241/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3556090049/20000000000 : ℚ), (-2/5 : ℚ), (75256669437/200000000000 : ℚ)⟩,
  ⟨(3556090049/20000000000 : ℚ), (7368527681/40000000000 : ℚ), (-2561796296/6408689575 : ℚ), (96447381425735889523/256347583000000000000 : ℚ)⟩,
  ⟨(7368527681/40000000000 : ℚ), (9497502051/40000000000 : ℚ), (-10575803528/26612179625 : ℚ), (400041657007220874733/1064487185000000000000 : ℚ)⟩,
  ⟨(9497502051/40000000000 : ℚ), (14276017887/40000000000 : ℚ), (-9353684239/23892579180 : ℚ), (596362527952465030351/1592838612000000000000 : ℚ)⟩,
  ⟨(14276017887/40000000000 : ℚ), (23362286737/40000000000 : ℚ), (-8691193533/22715672125 : ℚ), (337311938799262300101/908626885000000000000 : ℚ)⟩,
  ⟨(23362286737/40000000000 : ℚ), (8346369039/8000000000 : ℚ), (-170887234581/459238961450 : ℚ), (6706745563135753214421/18369558458000000000000 : ℚ)⟩,
  ⟨(8346369039/8000000000 : ℚ), (86971797517/40000000000 : ℚ), (-204490983952/565499404025 : ℚ), (8010824717719760213907/22619976161000000000000 : ℚ)⟩,
  ⟨(86971797517/40000000000 : ℚ), (253885563371/40000000000 : ℚ), (-29437705532/83456882927 : ℚ), (2540401529231701259051/7586989357000000000000 : ℚ)⟩,
  ⟨(253885563371/40000000000 : ℚ), (32/1 : ℚ), (-18358518842879/52928894932475 : ℚ), (314963217265410731560883/1058577898649500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (100675234573/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(86523949631/1000000000000 : ℚ), (233104136067/1000000000 : ℚ), (-5065626383909/250000000000 : ℚ), 10⟩,
    ⟨(87539802023/1000000000000 : ℚ), (213885563371/10000000000 : ℚ), (-1903986692757/1000000000000 : ℚ), 7⟩,
    ⟨(11177106561/125000000000 : ℚ), (46971797517/10000000000 : ℚ), (-432101416157/1000000000000 : ℚ), 5⟩,
    ⟨(91869337109/1000000000000 : ℚ), (346369039/2000000000 : ℚ), (-23119448253/1000000000000 : ℚ), 5⟩,
    ⟨(47261943667/500000000000 : ℚ), (-16637713263/10000000000 : ℚ), (18470973291/125000000000 : ℚ), 4⟩,
    ⟨(19395274391/200000000000 : ℚ), (-25723982113/10000000000 : ℚ), (117339860829/500000000000 : ℚ), 4⟩,
    ⟨(4942671121/50000000000 : ℚ), (-30502497949/10000000000 : ℚ), (281448142853/1000000000000 : ℚ), 4⟩,
    ⟨(24967318703/250000000000 : ℚ), (-32631472319/10000000000 : ℚ), (302599749909/1000000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16443909951/5000000000 : ℚ), (61032309241/200000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control636.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control636.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate636
