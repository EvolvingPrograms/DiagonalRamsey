import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate797
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1192175523609/7724963324165 : ℚ), (3456239831479/10000000000 : ℚ), (-53452554673213/1000000000000 : ℚ)⟩,
  ⟨(1192175523609/7724963324165 : ℚ), (3815477045649/24517229175700 : ℚ), (366254501813/10000000000 : ℚ), (-5765533728853/1000000000000 : ℚ)⟩,
  ⟨(3815477045649/24517229175700 : ℚ), (262960658823/1666976357900 : ℚ), (15135276257/1250000000 : ℚ), (-487514170801/250000000000 : ℚ)⟩,
  ⟨(262960658823/1666976357900 : ℚ), (433546202493/2699429675800 : ℚ), (2720157787/500000000 : ℚ), (-112276755989/125000000000 : ℚ)⟩,
  ⟨(433546202493/2699429675800 : ℚ), (73382416621/447201726800 : ℚ), (13704429491/5000000000 : ℚ), (-464667845419/1000000000000 : ℚ)⟩,
  ⟨(73382416621/447201726800 : ℚ), (12725605151/75715780200 : ℚ), (6996403589/5000000000 : ℚ), (-61130148889/250000000000 : ℚ)⟩,
  ⟨(12725605151/75715780200 : ℚ), (40192533443/233150817450 : ℚ), (3210614579/5000000000 : ℚ), (-58632272023/500000000000 : ℚ)⟩,
  ⟨(40192533443/233150817450 : ℚ), (27059821879/152984277900 : ℚ), (1758212809/10000000000 : ℚ), (-921986929/25000000000 : ℚ)⟩,
  ⟨(27059821879/152984277900 : ℚ), (9535429089/52574112500 : ℚ), (-1301472749/10000000000 : ℚ), (8620083299/500000000000 : ℚ)⟩,
  ⟨(9535429089/52574112500 : ℚ), (13851939311/74597274550 : ℚ), (-3404437249/10000000000 : ℚ), (27690941477/500000000000 : ℚ)⟩,
  ⟨(13851939311/74597274550 : ℚ), (10201772417/53787354400 : ℚ), (-244819137/500000000 : ℚ), (10385720197/125000000000 : ℚ)⟩,
  ⟨(10201772417/53787354400 : ℚ), (4977059137/25767167500 : ℚ), (-1493032457/2500000000 : ℚ), (10348930641/100000000000 : ℚ)⟩,
  ⟨(4977059137/25767167500 : ℚ), (10531345619/53727166600 : ℚ), (-6745144853/10000000000 : ℚ), (118420483821/1000000000000 : ℚ)⟩,
  ⟨(10531345619/53727166600 : ℚ), (6749551243/34064581300 : ℚ), (-7282416519/10000000000 : ℚ), (402974467/3125000000 : ℚ)⟩,
  ⟨(6749551243/34064581300 : ℚ), (3302004589/16555732800 : ℚ), (-1905765583/2500000000 : ℚ), (135701380683/1000000000000 : ℚ)⟩,
  ⟨(3302004589/16555732800 : ℚ), (20477109/102413885 : ℚ), (-389430983/500000000 : ℚ), (17375423159/125000000000 : ℚ)⟩,
  ⟨(20477109/102413885 : ℚ), (1/5 : ℚ), (-7809102437/10000000000 : ℚ), (34853231863/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2190897563/10000000000 : ℚ), (-1/5 : ℚ), (22903859839/125000000000 : ℚ)⟩,
  ⟨(2190897563/10000000000 : ℚ), (110569017/500000000 : ℚ), (-20477109/102413885 : ℚ), (469103608503025193/2560347125000000000 : ℚ)⟩,
  ⟨(110569017/500000000 : ℚ), (594234417/2500000000 : ℚ), (-3302004589/16555732800 : ℚ), (2526251423274271123/13796444000000000000 : ℚ)⟩,
  ⟨(594234417/2500000000 : ℚ), (2717583481/10000000000 : ℚ), (-6749551243/34064581300 : ℚ), (62269369739565951603/340645813000000000000 : ℚ)⟩,
  ⟨(2717583481/10000000000 : ℚ), (3254855147/10000000000 : ℚ), (-10531345619/53727166600 : ℚ), (97901975123872766779/537271666000000000000 : ℚ)⟩,
  ⟨(3254855147/10000000000 : ℚ), (1006967543/2500000000 : ℚ), (-4977059137/25767167500 : ℚ), (23356605484727649157/128835837500000000000 : ℚ)⟩,
  ⟨(1006967543/2500000000 : ℚ), (255180863/500000000 : ℚ), (-10201772417/53787354400 : ℚ), (24188893706203815691/134468386000000000000 : ℚ)⟩,
  ⟨(255180863/500000000 : ℚ), (6595562751/10000000000 : ℚ), (-13851939311/74597274550 : ℚ), (8292169389181202173/46623296593750000000 : ℚ)⟩,
  ⟨(6595562751/10000000000 : ℚ), (8698527251/10000000000 : ℚ), (-9535429089/52574112500 : ℚ), (92008054363064547089/525741125000000000000 : ℚ)⟩,
  ⟨(8698527251/10000000000 : ℚ), (11758212809/10000000000 : ℚ), (-27059821879/152984277900 : ℚ), (261755342400394820471/1529842779000000000000 : ℚ)⟩,
  ⟨(11758212809/10000000000 : ℚ), (8210614579/5000000000 : ℚ), (-40192533443/233150817450 : ℚ), (386607559085817426967/2331508174500000000000 : ℚ)⟩,
  ⟨(8210614579/5000000000 : ℚ), (11996403589/5000000000 : ℚ), (-12725605151/75715780200 : ℚ), (60091156968197322983/378578901000000000000 : ℚ)⟩,
  ⟨(11996403589/5000000000 : ℚ), (18704429491/5000000000 : ℚ), (-73382416621/447201726800 : ℚ), (66714984653523924453/447201726800000000000 : ℚ)⟩,
  ⟨(18704429491/5000000000 : ℚ), (3220157787/500000000 : ℚ), (-433546202493/2699429675800 : ℚ), (83524705411393113421/613506744500000000000 : ℚ)⟩,
  ⟨(3220157787/500000000 : ℚ), (16385276257/1250000000 : ℚ), (-262960658823/1666976357900 : ℚ), (70088587201466267749/595348699250000000000 : ℚ)⟩,
  ⟨(16385276257/1250000000 : ℚ), (32/1 : ℚ), (-3815477045649/24517229175700 : ℚ), (5510324371107427324229/61293072939250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (114819170079/200000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(30833129563/200000000000 : ℚ), (3456239831479/10000000000 : ℚ), (-53452554673213/1000000000000 : ℚ), 12⟩,
    ⟨(155044216531/1000000000000 : ℚ), (366254501813/10000000000 : ℚ), (-5765533728853/1000000000000 : ℚ), 8⟩,
    ⟨(7838379553/50000000000 : ℚ), (15135276257/1250000000 : ℚ), (-487514170801/250000000000 : ℚ), 7⟩,
    ⟨(31853908617/200000000000 : ℚ), (2720157787/500000000 : ℚ), (-112276755989/125000000000 : ℚ), 6⟩,
    ⟨(162453923993/1000000000000 : ℚ), (13704429491/5000000000 : ℚ), (-464667845419/1000000000000 : ℚ), 5⟩,
    ⟨(41549589953/250000000000 : ℚ), (6996403589/5000000000 : ℚ), (-61130148889/250000000000 : ℚ), 5⟩,
    ⟨(170358953973/1000000000000 : ℚ), (3210614579/5000000000 : ℚ), (-58632272023/500000000000 : ℚ), 5⟩,
    ⟨(6991032687/40000000000 : ℚ), (1758212809/10000000000 : ℚ), (-921986929/25000000000 : ℚ), 4⟩,
    ⟨(179279211843/1000000000000 : ℚ), (-1301472749/10000000000 : ℚ), (8620083299/500000000000 : ℚ), 4⟩,
    ⟨(91848037523/500000000000 : ℚ), (-3404437249/10000000000 : ℚ), (27690941477/500000000000 : ℚ), 4⟩,
    ⟨(93928334603/500000000000 : ℚ), (-244819137/500000000 : ℚ), (10385720197/125000000000 : ℚ), 4⟩,
    ⟨(7664044201/40000000000 : ℚ), (-1493032457/2500000000 : ℚ), (10348930641/100000000000 : ℚ), 4⟩,
    ⟨(194785485933/1000000000000 : ℚ), (-6745144853/10000000000 : ℚ), (118420483821/1000000000000 : ℚ), 4⟩,
    ⟨(98643718979/500000000000 : ℚ), (-7282416519/10000000000 : ℚ), (402974467/3125000000 : ℚ), 4⟩,
    ⟨(199010812487/1000000000000 : ℚ), (-1905765583/2500000000 : ℚ), (135701380683/1000000000000 : ℚ), 4⟩,
    ⟨(199889381203/1000000000000 : ℚ), (-389430983/500000000 : ℚ), (17375423159/125000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7809102437/10000000000 : ℚ), (34853231863/250000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control797.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control797.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate797
