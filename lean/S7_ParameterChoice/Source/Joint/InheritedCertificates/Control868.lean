import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate868
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (9195680344683/103855965877600 : ℚ), (1143399761957/10000000000 : ℚ), (-40580571609/4000000000 : ℚ)⟩,
  ⟨(9195680344683/103855965877600 : ℚ), (736941823649/8205583991800 : ℚ), (104840103181/10000000000 : ℚ), (-949462557567/1000000000000 : ℚ)⟩,
  ⟨(736941823649/8205583991800 : ℚ), (204452857419/2228987224100 : ℚ), (22784263263/10000000000 : ℚ), (-106260366959/500000000000 : ℚ)⟩,
  ⟨(204452857419/2228987224100 : ℚ), (85207470393/906580803200 : ℚ), (247195511/5000000000 : ℚ), (-8067876499/1000000000000 : ℚ)⟩,
  ⟨(85207470393/906580803200 : ℚ), (43243910777/449282438800 : ℚ), (-857141701/1000000000 : ℚ), (38569796947/500000000000 : ℚ)⟩,
  ⟨(43243910777/449282438800 : ℚ), (4653644267/47405990360 : ℚ), (-6532120699/5000000000 : ℚ), (120383504671/1000000000000 : ℚ)⟩,
  ⟨(4653644267/47405990360 : ℚ), (5269570981/52992084250 : ℚ), (-3858635229/2500000000 : ℚ), (71825863003/500000000000 : ℚ)⟩,
  ⟨(5269570981/52992084250 : ℚ), (425930313/4261710700 : ℚ), (-16494382601/10000000000 : ℚ), (301154039/1953125000 : ℚ)⟩,
  ⟨(425930313/4261710700 : ℚ), (1/10 : ℚ), (-8311116961/5000000000 : ℚ), (155468658907/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1688883039/10000000000 : ℚ), (-1/5 : ℚ), (189246319687/1000000000000 : ℚ)⟩,
  ⟨(1688883039/10000000000 : ℚ), (3505617399/20000000000 : ℚ), (-425930313/2130855350 : ℚ), (8064317434629444463/42617107000000000000 : ℚ)⟩,
  ⟨(3505617399/20000000000 : ℚ), (1141364771/5000000000 : ℚ), (-5269570981/26496042125 : ℚ), (100182054375667921459/529920842500000000000 : ℚ)⟩,
  ⟨(1141364771/5000000000 : ℚ), (3467879301/10000000000 : ℚ), (-4653644267/23702995180 : ℚ), (55840966171786027781/296287439750000000000 : ℚ)⟩,
  ⟨(3467879301/10000000000 : ℚ), (1142858299/2000000000 : ℚ), (-43243910777/224641219400 : ℚ), (420395635927239485051/2246412194000000000000 : ℚ)⟩,
  ⟨(1142858299/2000000000 : ℚ), (10247195511/10000000000 : ℚ), (-85207470393/453290401600 : ℚ), (836566698331905885839/4532904016000000000000 : ℚ)⟩,
  ⟨(10247195511/10000000000 : ℚ), (42784263263/20000000000 : ℚ), (-204452857419/1114493612050 : ℚ), (572900695584474761137/3184267463000000000000 : ℚ)⟩,
  ⟨(42784263263/20000000000 : ℚ), (124840103181/20000000000 : ℚ), (-736941823649/4102791995900 : ℚ), (145267481143122209979/845936494000000000000 : ℚ)⟩,
  ⟨(124840103181/20000000000 : ℚ), (32/1 : ℚ), (-9195680344683/51927982938800 : ℚ), (161916173242347587978631/1038559658776000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (339460345119/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(88379437371/1000000000000 : ℚ), (1143399761957/10000000000 : ℚ), (-40580571609/4000000000 : ℚ), 11⟩,
    ⟨(89255419281/1000000000000 : ℚ), (104840103181/10000000000 : ℚ), (-949462557567/1000000000000 : ℚ), 8⟩,
    ⟨(18174804559/200000000000 : ℚ), (22784263263/10000000000 : ℚ), (-106260366959/500000000000 : ℚ), 7⟩,
    ⟨(46494415101/500000000000 : ℚ), (247195511/5000000000 : ℚ), (-8067876499/1000000000000 : ℚ), 6⟩,
    ⟨(23819470311/250000000000 : ℚ), (-857141701/1000000000 : ℚ), (38569796947/500000000000 : ℚ), 6⟩,
    ⟨(97392688651/1000000000000 : ℚ), (-6532120699/5000000000 : ℚ), (120383504671/1000000000000 : ℚ), 5⟩,
    ⟨(49505646083/500000000000 : ℚ), (-3858635229/2500000000 : ℚ), (71825863003/500000000000 : ℚ), 5⟩,
    ⟨(3995490963/40000000000 : ℚ), (-16494382601/10000000000 : ℚ), (301154039/1953125000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-8311116961/5000000000 : ℚ), (155468658907/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control868.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control868.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate868
