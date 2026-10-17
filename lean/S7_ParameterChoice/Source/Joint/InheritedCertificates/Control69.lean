import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate69
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7819278912967/96693304045060 : ℚ), (27035717739/25000000 : ℚ), (-87598294858903/1000000000000 : ℚ)⟩,
  ⟨(7819278912967/96693304045060 : ℚ), (208555082411/2561783513030 : ℚ), (572478345547/5000000000 : ℚ), (-9405505729233/1000000000000 : ℚ)⟩,
  ⟨(208555082411/2561783513030 : ℚ), (862648767919/10481814961600 : ℚ), (75284327437/2000000000 : ℚ), (-3148853256903/1000000000000 : ℚ)⟩,
  ⟨(862648767919/10481814961600 : ℚ), (711642057569/8522893465300 : ℚ), (166785337953/10000000000 : ℚ), (-284711144213/200000000000 : ℚ)⟩,
  ⟨(711642057569/8522893465300 : ℚ), (361869445163/4259378641000 : ℚ), (815564033/100000000 : ℚ), (-88989207937/125000000000 : ℚ)⟩,
  ⟨(361869445163/4259378641000 : ℚ), (69884926007/806751166900 : ℚ), (3896261689/1000000000 : ℚ), (-350044218333/1000000000000 : ℚ)⟩,
  ⟨(69884926007/806751166900 : ℚ), (132852333831/1502273582800 : ℚ), (14760081883/10000000000 : ℚ), (-17548680039/125000000000 : ℚ)⟩,
  ⟨(132852333831/1502273582800 : ℚ), (4489260046/49706290565 : ℚ), (-52530789/2000000000 : ℚ), (-7537106481/1000000000000 : ℚ)⟩,
  ⟨(4489260046/49706290565 : ℚ), (7941949141/86140864925 : ℚ), (-5101956029/5000000000 : ℚ), (82248094439/1000000000000 : ℚ)⟩,
  ⟨(7941949141/86140864925 : ℚ), (11581358571/123197922925 : ℚ), (-4273795313/2500000000 : ℚ), (145783687567/1000000000000 : ℚ)⟩,
  ⟨(11581358571/123197922925 : ℚ), (1369036571/14309580304 : ℚ), (-22023098169/10000000000 : ℚ), (192109121851/1000000000000 : ℚ)⟩,
  ⟨(1369036571/14309580304 : ℚ), (8367587293/86145666800 : ℚ), (-5120098649/2000000000 : ℚ), (113167518063/500000000000 : ℚ)⟩,
  ⟨(8367587293/86145666800 : ℚ), (17729681863/180306174100 : ℚ), (-28184863249/10000000000 : ℚ), (50287559601/200000000000 : ℚ)⟩,
  ⟨(17729681863/180306174100 : ℚ), (5685254511/57298989250 : ℚ), (-2998792499/1000000000 : ℚ), (67291869967/250000000000 : ℚ)⟩,
  ⟨(5685254511/57298989250 : ℚ), (198715009/1991757050 : ℚ), (-1245356191/400000000 : ℚ), (28053798889/100000000000 : ℚ)⟩,
  ⟨(198715009/1991757050 : ℚ), (345067977/3451480000 : ℚ), (-31691596749/10000000000 : ℚ), (143051004571/500000000000 : ℚ)⟩,
  ⟨(345067977/3451480000 : ℚ), (1/10 : ℚ), (-31760626349/10000000000 : ℚ), (35849018137/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8239373651/40000000000 : ℚ), (-2/5 : ℚ), (184592940803/500000000000 : ℚ)⟩,
  ⟨(8239373651/40000000000 : ℚ), (8308403251/40000000000 : ℚ), (-345067977/862870000 : ℚ), (12741717527057094827/34514800000000000000 : ℚ)⟩,
  ⟨(8308403251/40000000000 : ℚ), (354643809/1600000000 : ℚ), (-397430018/995878525 : ℚ), (734946136407552377/1991757050000000000 : ℚ)⟩,
  ⟨(354643809/1600000000 : ℚ), (1001207501/4000000000 : ℚ), (-11370509022/28649494625 : ℚ), (2111514399691341043/5729898925000000000 : ℚ)⟩,
  ⟨(1001207501/4000000000 : ℚ), (11815136751/40000000000 : ℚ), (-17729681863/45076543525 : ℚ), (331418244793585536909/901530870500000000000 : ℚ)⟩,
  ⟨(11815136751/40000000000 : ℚ), (2879901351/8000000000 : ℚ), (-8367587293/21536416700 : ℚ), (315466955821369252383/861456668000000000000 : ℚ)⟩,
  ⟨(2879901351/8000000000 : ℚ), (17976901831/40000000000 : ℚ), (-1369036571/3577395076 : ℚ), (1302526127562347943201/3577395076000000000000 : ℚ)⟩,
  ⟨(17976901831/40000000000 : ℚ), (5726204687/10000000000 : ℚ), (-46325434284/123197922925 : ℚ), (254212225125923861053/703988131000000000000 : ℚ)⟩,
  ⟨(5726204687/10000000000 : ℚ), (14898043971/20000000000 : ℚ), (-31767796564/86140864925 : ℚ), (1229952939880851137371/3445634597000000000000 : ℚ)⟩,
  ⟨(14898043971/20000000000 : ℚ), (7947469211/8000000000 : ℚ), (-17957040184/49706290565 : ℚ), (3492897278622958240247/9941258113000000000000 : ℚ)⟩,
  ⟨(7947469211/8000000000 : ℚ), (54760081883/40000000000 : ℚ), (-132852333831/375568395700 : ℚ), (5165971204085261185437/15022735828000000000000 : ℚ)⟩,
  ⟨(54760081883/40000000000 : ℚ), (7896261689/4000000000 : ℚ), (-69884926007/201687791725 : ℚ), (2694310822609277230453/8067511669000000000000 : ℚ)⟩,
  ⟨(7896261689/4000000000 : ℚ), (1215564033/400000000 : ℚ), (-361869445163/1064844660250 : ℚ), (22039434988502619917/68699655500000000000 : ℚ)⟩,
  ⟨(1215564033/400000000 : ℚ), (206785337953/40000000000 : ℚ), (-711642057569/2130723366325 : ℚ), (6457251462605191512703/21307233663250000000000 : ℚ)⟩,
  ⟨(206785337953/40000000000 : ℚ), (83284327437/8000000000 : ℚ), (-862648767919/2620453740400 : ℚ), (29168640451565546668767/104818149616000000000000 : ℚ)⟩,
  ⟨(83284327437/8000000000 : ℚ), (592478345547/20000000000 : ℚ), (-417110164822/1280891756515 : ℚ), (61800452759919726735741/256178351303000000000000 : ℚ)⟩,
  ⟨(592478345547/20000000000 : ℚ), (32/1 : ℚ), (-7819278912967/24173326011265 : ℚ), (855063078538315450517541/4834665202253000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (227865464027/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(80798918107/1000000000000 : ℚ), (27035717739/25000000 : ℚ), (-87598294858903/1000000000000 : ℚ), 10⟩,
    ⟨(40583485543/500000000000 : ℚ), (572478345547/5000000000 : ℚ), (-9405505729233/1000000000000 : ℚ), 7⟩,
    ⟨(40944466487/500000000000 : ℚ), (75284327437/2000000000 : ℚ), (-3148853256903/1000000000000 : ℚ), 6⟩,
    ⟨(41468529591/500000000000 : ℚ), (166785337953/10000000000 : ℚ), (-284711144213/200000000000 : ℚ), 5⟩,
    ⟨(42135535403/500000000000 : ℚ), (815564033/100000000 : ℚ), (-88989207937/125000000000 : ℚ), 4⟩,
    ⟨(167655669/1953125000 : ℚ), (3896261689/1000000000 : ℚ), (-350044218333/1000000000000 : ℚ), 4⟩,
    ⟨(87582672711/1000000000000 : ℚ), (14760081883/10000000000 : ℚ), (-17548680039/125000000000 : ℚ), 3⟩,
    ⟨(22358249997/250000000000 : ℚ), (-52530789/2000000000 : ℚ), (-7537106481/1000000000000 : ℚ), 3⟩,
    ⟨(91319577319/1000000000000 : ℚ), (-5101956029/5000000000 : ℚ), (82248094439/1000000000000 : ℚ), 3⟩,
    ⟨(18633980919/200000000000 : ℚ), (-4273795313/2500000000 : ℚ), (145783687567/1000000000000 : ℚ), 3⟩,
    ⟨(47456437389/500000000000 : ℚ), (-22023098169/10000000000 : ℚ), (192109121851/1000000000000 : ℚ), 3⟩,
    ⟨(192963013/2000000000 : ℚ), (-5120098649/2000000000 : ℚ), (113167518063/500000000000 : ℚ), 3⟩,
    ⟨(24453879531/250000000000 : ℚ), (-28184863249/10000000000 : ℚ), (50287559601/200000000000 : ℚ), 3⟩,
    ⟨(24715911083/250000000000 : ℚ), (-2998792499/1000000000 : ℚ), (67291869967/250000000000 : ℚ), 3⟩,
    ⟨(4979280311/50000000000 : ℚ), (-1245356191/400000000 : ℚ), (28053798889/100000000000 : ℚ), 2⟩,
    ⟨(99953659199/1000000000000 : ℚ), (-31691596749/10000000000 : ℚ), (143051004571/500000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31760626349/10000000000 : ℚ), (35849018137/125000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control69.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control69.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate69
