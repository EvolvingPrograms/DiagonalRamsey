import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate870
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (15870024243999/171189001825100 : ℚ), (376003602547/2000000000 : ℚ), (-8725086143399/500000000000 : ℚ)⟩,
  ⟨(15870024243999/171189001825100 : ℚ), (2254682002/24111161025 : ℚ), (42031998621/2500000000 : ℚ), (-1580148042799/1000000000000 : ℚ)⟩,
  ⟨(2254682002/24111161025 : ℚ), (176314395833/1861200482650 : ℚ), (32141046303/10000000000 : ℚ), (-308507393671/1000000000000 : ℚ)⟩,
  ⟨(176314395833/1861200482650 : ℚ), (73438790933/763613014600 : ℚ), (-101659267/200000000 : ℚ), (8824279599/200000000000 : ℚ)⟩,
  ⟨(73438790933/763613014600 : ℚ), (9320822684/95486601375 : ℚ), (-10177611821/5000000000 : ℚ), (190998979861/1000000000000 : ℚ)⟩,
  ⟨(9320822684/95486601375 : ℚ), (10051289996/101699924375 : ℚ), (-3499268969/1250000000 : ℚ), (265565561333/1000000000000 : ℚ)⟩,
  ⟨(10051289996/101699924375 : ℚ), (9131941451/91645532400 : ℚ), (-32062148727/10000000000 : ℚ), (305770721317/1000000000000 : ℚ)⟩,
  ⟨(9131941451/91645532400 : ℚ), (184826618/1848931175 : ℚ), (-10846419/3200000 : ℚ), (324034604219/1000000000000 : ℚ)⟩,
  ⟨(184826618/1848931175 : ℚ), (1/10 : ℚ), (-8529232779/2500000000 : ℚ), (65250504727/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1470767221/10000000000 : ℚ), (-2/5 : ℚ), (15403328499/40000000000 : ℚ)⟩,
  ⟨(1470767221/10000000000 : ℚ), (1953581/12800000 : ℚ), (-739306472/1848931175 : ℚ), (4068304196572864299/10565321000000000000 : ℚ)⟩,
  ⟨(1953581/12800000 : ℚ), (7937851273/40000000000 : ℚ), (-9131941451/22911383100 : ℚ), (352713198546066758831/916455324000000000000 : ℚ)⟩,
  ⟨(7937851273/40000000000 : ℚ), (1500731031/5000000000 : ℚ), (-40205159984/101699924375 : ℚ), (1563016949721287075707/4067996975000000000000 : ℚ)⟩,
  ⟨(1500731031/5000000000 : ℚ), (9822388179/20000000000 : ℚ), (-37283290736/95486601375 : ℚ), (487311882173257205281/1273154685000000000000 : ℚ)⟩,
  ⟨(9822388179/20000000000 : ℚ), (698340733/800000000 : ℚ), (-73438790933/190903253650 : ℚ), (72529542296313303793/190903253650000000000 : ℚ)⟩,
  ⟨(698340733/800000000 : ℚ), (72141046303/40000000000 : ℚ), (-352628791666/930600241325 : ℚ), (2791025557463334280927/7444801930600000000000 : ℚ)⟩,
  ⟨(72141046303/40000000000 : ℚ), (52031998621/10000000000 : ℚ), (-9018728008/24111161025 : ℚ), (353081616971109079513/964446441000000000000 : ℚ)⟩,
  ⟨(52031998621/10000000000 : ℚ), (32/1 : ℚ), (-15870024243999/42797250456275 : ℚ), (597956656489508102976967/1711890018251000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (549277468453/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(46300343147/500000000000 : ℚ), (376003602547/2000000000 : ℚ), (-8725086143399/500000000000 : ℚ), 12⟩,
    ⟨(93158461779/1000000000000 : ℚ), (42031998621/2500000000 : ℚ), (-1580148042799/1000000000000 : ℚ), 9⟩,
    ⟨(47094548243/500000000000 : ℚ), (32141046303/10000000000 : ℚ), (-308507393671/1000000000000 : ℚ), 7⟩,
    ⟨(47767842813/500000000000 : ℚ), (-101659267/200000000 : ℚ), (8824279599/200000000000 : ℚ), 7⟩,
    ⟨(96993223207/1000000000000 : ℚ), (-10177611821/5000000000 : ℚ), (190998979861/1000000000000 : ℚ), 6⟩,
    ⟨(98339812347/1000000000000 : ℚ), (-3499268969/1250000000 : ℚ), (265565561333/1000000000000 : ℚ), 6⟩,
    ⟨(19874089411/200000000000 : ℚ), (-32062148727/10000000000 : ℚ), (305770721317/1000000000000 : ℚ), 6⟩,
    ⟨(99928222539/1000000000000 : ℚ), (-10846419/3200000 : ℚ), (324034604219/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-8529232779/2500000000 : ℚ), (65250504727/200000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control870.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control870.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate870
