import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate874
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7217055637329/82887038173000 : ℚ), (913085050211/10000000000 : ℚ), (-7969610148041/1000000000000 : ℚ)⟩,
  ⟨(7217055637329/82887038173000 : ℚ), (115680227107/1307111914460 : ℚ), (84214668481/10000000000 : ℚ), (-94069313839/125000000000 : ℚ)⟩,
  ⟨(115680227107/1307111914460 : ℚ), (32098951857/354054368800 : ℚ), (9429536379/5000000000 : ℚ), (-174153375177/1000000000000 : ℚ)⟩,
  ⟨(32098951857/354054368800 : ℚ), (66905126471/717751755400 : ℚ), (578177159/5000000000 : ℚ), (-3414653973/250000000000 : ℚ)⟩,
  ⟨(66905126471/717751755400 : ℚ), (6791883103/70919468520 : ℚ), (-1505290809/2500000000 : ℚ), (53246510579/1000000000000 : ℚ)⟩,
  ⟨(6791883103/70919468520 : ℚ), (4566856428/46634006075 : ℚ), (-4783568331/5000000000 : ℚ), (43602963047/500000000000 : ℚ)⟩,
  ⟨(4566856428/46634006075 : ℚ), (4134793069/41610598050 : ℚ), (-2286499381/2000000000 : ℚ), (52736675903/500000000000 : ℚ)⟩,
  ⟨(4134793069/41610598050 : ℚ), (250575317/2507351625 : ℚ), (-6132354433/5000000000 : ℚ), (14217867243/125000000000 : ℚ)⟩,
  ⟨(250575317/2507351625 : ℚ), (1/10 : ℚ), (-12365002931/10000000000 : ℚ), (28686309803/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2634997069/15000000000 : ℚ), (-3/20 : ℚ), (70547604951/500000000000 : ℚ)⟩,
  ⟨(2634997069/15000000000 : ℚ), (1367645567/7500000000 : ℚ), (-250575317/1671567750 : ℚ), (884332961462741267/6268379062500000000 : ℚ)⟩,
  ⟨(1367645567/7500000000 : ℚ), (713500619/3000000000 : ℚ), (-4134793069/27740398700 : ℚ), (29319489770349562169/208052990250000000000 : ℚ)⟩,
  ⟨(713500619/3000000000 : ℚ), (905477223/2500000000 : ℚ), (-6850284642/46634006075 : ℚ), (130957447460053613749/932680121500000000000 : ℚ)⟩,
  ⟨(905477223/2500000000 : ℚ), (748236397/1250000000 : ℚ), (-6791883103/47279645680 : ℚ), (82287793341732644519/590995571000000000000 : ℚ)⟩,
  ⟨(748236397/1250000000 : ℚ), (8078177159/7500000000 : ℚ), (-200715379413/1435503510800 : ℚ), (98290797362790358361/717751755400000000000 : ℚ)⟩,
  ⟨(8078177159/7500000000 : ℚ), (5643178793/2500000000 : ℚ), (-96296855571/708108737600 : ℚ), (47024311315487897883/354054368800000000000 : ℚ)⟩,
  ⟨(5643178793/2500000000 : ℚ), (99214668481/15000000000 : ℚ), (-347040681321/2614223828920 : ℚ), (8202228549525428687559/65355595723000000000000 : ℚ)⟩,
  ⟨(99214668481/15000000000 : ℚ), (32/1 : ℚ), (-21651166911987/165774076346000 : ℚ), (92267637900040089235489/828870381730000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (181834870181/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(86886891913/1000000000000 : ℚ), (913085050211/10000000000 : ℚ), (-7969610148041/1000000000000 : ℚ), 11⟩,
    ⟨(87875384969/1000000000000 : ℚ), (84214668481/10000000000 : ℚ), (-94069313839/125000000000 : ℚ), 8⟩,
    ⟨(89701881973/1000000000000 : ℚ), (9429536379/5000000000 : ℚ), (-174153375177/1000000000000 : ℚ), 7⟩,
    ⟨(18417663063/200000000000 : ℚ), (578177159/5000000000 : ℚ), (-3414653973/250000000000 : ℚ), 6⟩,
    ⟨(94671372151/1000000000000 : ℚ), (-1505290809/2500000000 : ℚ), (53246510579/1000000000000 : ℚ), 6⟩,
    ⟨(97057805493/1000000000000 : ℚ), (-4783568331/5000000000 : ℚ), (43602963047/500000000000 : ℚ), 5⟩,
    ⟨(49442151249/500000000000 : ℚ), (-2286499381/2000000000 : ℚ), (52736675903/500000000000 : ℚ), 5⟩,
    ⟨(49936397777/500000000000 : ℚ), (-6132354433/5000000000 : ℚ), (14217867243/125000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-12365002931/10000000000 : ℚ), (28686309803/250000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control874.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control874.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate874
