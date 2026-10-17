import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate80
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (120007273703579/982613068098400 : ℚ), (5495315710139/5000000000 : ℚ), (-33611766432411/250000000000 : ℚ)⟩,
  ⟨(120007273703579/982613068098400 : ℚ), (87293020817/710148888080 : ℚ), (582250369647/5000000000 : ℚ), (-2887958405213/200000000000 : ℚ)⟩,
  ⟨(87293020817/710148888080 : ℚ), (2647561867051/21313883162800 : ℚ), (191668481203/5000000000 : ℚ), (-967511947239/200000000000 : ℚ)⟩,
  ⟨(2647561867051/21313883162800 : ℚ), (1091737092037/8667131105200 : ℚ), (85099065389/5000000000 : ℚ), (-273749733643/125000000000 : ℚ)⟩,
  ⟨(1091737092037/8667131105200 : ℚ), (554830196107/4331554563300 : ℚ), (41763409863/5000000000 : ℚ), (-1098260777107/1000000000000 : ℚ)⟩,
  ⟨(554830196107/4331554563300 : ℚ), (16057363447/123027795940 : ℚ), (40211274093/10000000000 : ℚ), (-543430581/1000000000 : ℚ)⟩,
  ⟨(16057363447/123027795940 : ℚ), (203227495889/1526269030700 : ℚ), (3121142981/2000000000 : ℚ), (-11114165603/50000000000 : ℚ)⟩,
  ⟨(203227495889/1526269030700 : ℚ), (13710974191/100894849700 : ℚ), (171512299/5000000000 : ℚ), (-19055816171/1000000000000 : ℚ)⟩,
  ⟨(13710974191/100894849700 : ℚ), (48415483297/349231824900 : ℚ), (-2436615093/2500000000 : ℚ), (118053925739/1000000000000 : ℚ)⟩,
  ⟨(48415483297/349231824900 : ℚ), (23484612453/166240333700 : ℚ), (-1673109687/1000000000 : ℚ), (214884892333/1000000000000 : ℚ)⟩,
  ⟨(23484612453/166240333700 : ℚ), (8657845179/60250846100 : ℚ), (-21718306881/10000000000 : ℚ), (71334682423/250000000000 : ℚ)⟩,
  ⟨(8657845179/60250846100 : ℚ), (9508017273/65202113975 : ℚ), (-25333357647/10000000000 : ℚ), (168642900383/500000000000 : ℚ)⟩,
  ⟨(9508017273/65202113975 : ℚ), (26822617507/181763481600 : ℚ), (-13970721103/5000000000 : ℚ), (187658934929/500000000000 : ℚ)⟩,
  ⟨(26822617507/181763481600 : ℚ), (17184073613/115433906500 : ℚ), (-14879538511/5000000000 : ℚ), (80428097473/200000000000 : ℚ)⟩,
  ⟨(17184073613/115433906500 : ℚ), (8403553361/56149811100 : ℚ), (-30913416087/10000000000 : ℚ), (209662280489/500000000000 : ℚ)⟩,
  ⟨(8403553361/56149811100 : ℚ), (1042095163/6948865600 : ℚ), (-15737457099/5000000000 : ℚ), (427728114339/1000000000000 : ℚ)⟩,
  ⟨(1042095163/6948865600 : ℚ), (3/20 : ℚ), (-15772201427/5000000000 : ℚ), (214385104751/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (4227798573/20000000000 : ℚ), (-3/5 : ℚ), (138901041673/250000000000 : ℚ)⟩,
  ⟨(4227798573/20000000000 : ℚ), (4262542901/20000000000 : ℚ), (-1042095163/1737216400 : ℚ), (3860620247725561411/6948865600000000000 : ℚ)⟩,
  ⟨(4262542901/20000000000 : ℚ), (9086583913/40000000000 : ℚ), (-8403553361/14037452775 : ℚ), (311809541667150994151/561498111000000000000 : ℚ)⟩,
  ⟨(9086583913/40000000000 : ℚ), (5120461489/20000000000 : ℚ), (-17184073613/28858476625 : ℚ), (58198840772961235749/104939915000000000000 : ℚ)⟩,
  ⟨(5120461489/20000000000 : ℚ), (6029278897/20000000000 : ℚ), (-26822617507/45440870400 : ℚ), (502816455357686737843/908817408000000000000 : ℚ)⟩,
  ⟨(6029278897/20000000000 : ℚ), (14666642353/40000000000 : ℚ), (-38032069092/65202113975 : ℚ), (143747264426470442567/260808455900000000000 : ℚ)⟩,
  ⟨(14666642353/40000000000 : ℚ), (18281693119/40000000000 : ℚ), (-8657845179/15062711525 : ℚ), (330199067524713547313/602508461000000000000 : ℚ)⟩,
  ⟨(18281693119/40000000000 : ℚ), (2326890313/4000000000 : ℚ), (-23484612453/41560083425 : ℚ), (31161604631024606659/57324253000000000000 : ℚ)⟩,
  ⟨(2326890313/4000000000 : ℚ), (7563384907/10000000000 : ℚ), (-48415483297/87307956225 : ℚ), (1877021621758962104527/3492318249000000000000 : ℚ)⟩,
  ⟨(7563384907/10000000000 : ℚ), (20171512299/20000000000 : ℚ), (-13710974191/25223712425 : ℚ), (533915831965217405231/1008948497000000000000 : ℚ)⟩,
  ⟨(20171512299/20000000000 : ℚ), (11121142981/8000000000 : ℚ), (-203227495889/381567257675 : ℚ), (12652750151799640517/24420304491200000000 : ℚ)⟩,
  ⟨(11121142981/8000000000 : ℚ), (80211274093/40000000000 : ℚ), (-16057363447/30756948985 : ℚ), (619410914389999867171/1230277959400000000000 : ℚ)⟩,
  ⟨(80211274093/40000000000 : ℚ), (61763409863/20000000000 : ℚ), (-554830196107/1082888640825 : ℚ), (20964644805338315782951/43315545633000000000000 : ℚ)⟩,
  ⟨(61763409863/20000000000 : ℚ), (105099065389/20000000000 : ℚ), (-1091737092037/2166782776300 : ℚ), (19835554763694965717649/43335655526000000000000 : ℚ)⟩,
  ⟨(105099065389/20000000000 : ℚ), (211668481203/20000000000 : ℚ), (-2647561867051/5328470790700 : ℚ), (44869484238035077354623/106569415814000000000000 : ℚ)⟩,
  ⟨(211668481203/20000000000 : ℚ), (602250369647/20000000000 : ℚ), (-87293020817/177537222020 : ℚ), (1300242797558965302573/3550744440400000000000 : ℚ)⟩,
  ⟨(602250369647/20000000000 : ℚ), (32/1 : ℚ), (-120007273703579/245653267024600 : ℚ), (13176071496400492009333/48644211292000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (179946267243/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(122031860277/1000000000000 : ℚ), (5495315710139/5000000000 : ℚ), (-33611766432411/250000000000 : ℚ), 10⟩,
    ⟨(122567963253/1000000000000 : ℚ), (582250369647/5000000000 : ℚ), (-2887958405213/200000000000 : ℚ), 7⟩,
    ⟨(30904891767/250000000000 : ℚ), (191668481203/5000000000 : ℚ), (-967511947239/200000000000 : ℚ), 6⟩,
    ⟨(62573129589/500000000000 : ℚ), (85099065389/5000000000 : ℚ), (-273749733643/125000000000 : ℚ), 5⟩,
    ⟨(6354468483/50000000000 : ℚ), (41763409863/5000000000 : ℚ), (-1098260777107/1000000000000 : ℚ), 4⟩,
    ⟨(129374225869/1000000000000 : ℚ), (40211274093/10000000000 : ℚ), (-543430581/1000000000 : ℚ), 4⟩,
    ⟨(131913022061/1000000000000 : ℚ), (3121142981/2000000000 : ℚ), (-11114165603/50000000000 : ℚ), 3⟩,
    ⟨(33652048431/250000000000 : ℚ), (171512299/5000000000 : ℚ), (-19055816171/1000000000000 : ℚ), 3⟩,
    ⟨(137356166921/1000000000000 : ℚ), (-2436615093/2500000000 : ℚ), (118053925739/1000000000000 : ℚ), 3⟩,
    ⟨(140051338583/1000000000000 : ℚ), (-1673109687/1000000000 : ℚ), (214884892333/1000000000000 : ℚ), 3⟩,
    ⟨(17823766847/125000000000 : ℚ), (-21718306881/10000000000 : ℚ), (71334682423/250000000000 : ℚ), 3⟩,
    ⟨(18109373873/125000000000 : ℚ), (-25333357647/10000000000 : ℚ), (168642900383/500000000000 : ℚ), 3⟩,
    ⟨(73409050733/500000000000 : ℚ), (-13970721103/5000000000 : ℚ), (187658934929/500000000000 : ℚ), 3⟩,
    ⟨(18543099197/125000000000 : ℚ), (-14879538511/5000000000 : ℚ), (80428097473/200000000000 : ℚ), 3⟩,
    ⟨(149396397391/1000000000000 : ℚ), (-30913416087/10000000000 : ℚ), (209662280489/500000000000 : ℚ), 3⟩,
    ⟨(149932500367/1000000000000 : ℚ), (-15737457099/5000000000 : ℚ), (427728114339/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15772201427/5000000000 : ℚ), (214385104751/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control80.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control80.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate80
