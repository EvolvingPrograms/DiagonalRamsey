import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate66
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252024517089/1000000000000 : ℚ), (30023848755987/10000000000 : ℚ), (-757757970182279/1000000000000 : ℚ), 12⟩,
    ⟨(63110901417/250000000000 : ℚ), (660502941907/2000000000 : ℚ), (-8410883887329/100000000000 : ℚ), 9⟩,
    ⟨(63320193301/250000000000 : ℚ), (36564915911/312500000 : ℚ), (-30216959416687/1000000000000 : ℚ), 8⟩,
    ⟨(254534002889/1000000000000 : ℚ), (116997872807/2000000000 : ℚ), (-15369260348561/1000000000000 : ℚ), 7⟩,
    ⟨(256200275581/1000000000000 : ℚ), (345592117971/10000000000 : ℚ), (-2314791428543/250000000000 : ℚ), 6⟩,
    ⟨(64568894271/250000000000 : ℚ), (225294250241/10000000000 : ℚ), (-6166317577053/1000000000000 : ℚ), 5⟩,
    ⟨(52150981563/200000000000 : ℚ), (156715469921/10000000000 : ℚ), (-4387543608391/1000000000000 : ℚ), 5⟩,
    ⟨(263632294849/1000000000000 : ℚ), (22291228/1953125 : ℚ), (-408949581939/125000000000 : ℚ), 5⟩,
    ⟨(66725201577/250000000000 : ℚ), (86003712147/10000000000 : ℚ), (-2525858733913/1000000000000 : ℚ), 4⟩,
    ⟨(270552568063/1000000000000 : ℚ), (66537823343/10000000000 : ℚ), (-1001512612459/500000000000 : ℚ), 4⟩,
    ⟨(137289391349/500000000000 : ℚ), (52565690077/10000000000 : ℚ), (-1622383405079/1000000000000 : ℚ), 4⟩,
    ⟨(34871218839/125000000000 : ℚ), (21119376311/5000000000 : ℚ), (-1336700350271/1000000000000 : ℚ), 3⟩,
    ⟨(70928723469/250000000000 : ℚ), (688407379/200000000 : ℚ), (-279210341201/250000000000 : ℚ), 3⟩,
    ⟨(11552111229/40000000000 : ℚ), (3547641611/1250000000 : ℚ), (-94404351223/100000000000 : ℚ), 3⟩,
    ⟨(58844230819/200000000000 : ℚ), (23636023873/10000000000 : ℚ), (-5036129033/6250000000 : ℚ), 3⟩,
    ⟨(299956960649/1000000000000 : ℚ), (19852688417/10000000000 : ℚ), (-86678921177/125000000000 : ℚ), 3⟩,
    ⟨(305996382327/1000000000000 : ℚ), (3359491297/2000000000 : ℚ), (-600904436663/1000000000000 : ℚ), 3⟩,
    ⟨(312324869633/1000000000000 : ℚ), (7151174597/5000000000 : ℚ), (-261898665089/500000000000 : ℚ), 3⟩,
    ⟨(19932948543/62500000000 : ℚ), (12244248569/10000000000 : ℚ), (-229432066709/500000000000 : ℚ), 2⟩,
    ⟨(162893698977/500000000000 : ℚ), (10531366953/10000000000 : ℚ), (-403669262839/1000000000000 : ℚ), 2⟩,
    ⟨(166444503279/500000000000 : ℚ), (2273558793/2500000000 : ℚ), (-356356404687/1000000000000 : ℚ), 2⟩,
    ⟨(170107447051/500000000000 : ℚ), (1575913099/2000000000 : ℚ), (-78872711257/250000000000 : ℚ), 2⟩,
    ⟨(347747411883/1000000000000 : ℚ), (6845988489/10000000000 : ℚ), (-139974852977/500000000000 : ℚ), 2⟩,
    ⟨(71093682681/200000000000 : ℚ), (5961038291/10000000000 : ℚ), (-62211036169/250000000000 : ℚ), 2⟩,
    ⟨(363359298099/1000000000000 : ℚ), (5198986093/10000000000 : ℚ), (-1771706419/8000000000 : ℚ), 2⟩,
    ⟨(371401056133/1000000000000 : ℚ), (4539260271/10000000000 : ℚ), (-98616659323/500000000000 : ℚ), 2⟩,
    ⟨(189787157103/500000000000 : ℚ), (3965278891/10000000000 : ℚ), (-8784347699/50000000000 : ℚ), 2⟩,
    ⟨(193929691113/500000000000 : ℚ), (3463576411/10000000000 : ℚ), (-7822039659/50000000000 : ℚ), 2⟩,
    ⟨(6191192199/15625000000 : ℚ), (755785783/2500000000 : ℚ), (-139177940499/1000000000000 : ℚ), 2⟩,
    ⟨(404684889007/1000000000000 : ℚ), (1317460221/5000000000 : ℚ), (-7727171539/62500000000 : ℚ), 2⟩,
    ⟨(413184793649/1000000000000 : ℚ), (2291411463/10000000000 : ℚ), (-109590514999/1000000000000 : ℚ), 2⟩,
    ⟨(26357221103/62500000000 : ℚ), (1986378087/10000000000 : ℚ), (-1937189637/20000000000 : ℚ), 2⟩,
    ⟨(215128284847/500000000000 : ℚ), (107162709/625000000 : ℚ), (-21321114563/250000000000 : ℚ), 2⟩,
    ⟨(438787313693/1000000000000 : ℚ), (1471703611/10000000000 : ℚ), (-14946360697/200000000000 : ℚ), 2⟩,
    ⟨(89457443667/200000000000 : ℚ), (1253979177/10000000000 : ℚ), (-16271847691/250000000000 : ℚ), 2⟩,
    ⟨(227867903303/500000000000 : ℚ), (1058294569/10000000000 : ℚ), (-28126678761/500000000000 : ℚ), 2⟩,
    ⟨(116028181279/250000000000 : ℚ), (55123883/625000000 : ℚ), (-3009091793/62500000000 : ℚ), 2⟩,
    ⟨(94479558627/200000000000 : ℚ), (722763883/10000000000 : ℚ), (-813819291/20000000000 : ℚ), 2⟩,
    ⟨(480571051209/1000000000000 : ℚ), (7233599/125000000 : ℚ), (-54122871/1600000000 : ℚ), 2⟩,
    ⟨(488612809243/1000000000000 : ℚ), (448076291/10000000000 : ℚ), (-2749815777/100000000000 : ℚ), 2⟩,
    ⟨(31031480871/62500000000 : ℚ), (32948219/1000000000 : ℚ), (-21657295939/1000000000000 : ℚ), 2⟩,
    ⟨(252112347729/500000000000 : ℚ), (8866183/400000000 : ℚ), (-16262483161/1000000000000 : ℚ), 2⟩,
    ⟨(511757213239/1000000000000 : ℚ), (61754421/5000000000 : ℚ), (-5638591863/500000000000 : ℚ), 1⟩,
    ⟨(32442693799/62500000000 : ℚ), (34102407/10000000000 : ℚ), (-1667335631/250000000000 : ℚ), 1⟩,
    ⟨(131546177347/250000000000 : ℚ), (-47385693/10000000000 : ℚ), (-1205393171/500000000000 : ℚ), 1⟩,
    ⟨(266522465327/500000000000 : ℚ), (-121671891/10000000000 : ℚ), (1523282413/1000000000000 : ℚ), 1⟩,
    ⟨(134911809427/250000000000 : ℚ), (-189382467/10000000000 : ℚ), (5154716731/1000000000000 : ℚ), 1⟩,
    ⟨(109195145003/200000000000 : ℚ), (-251065663/10000000000 : ℚ), (1700558309/200000000000 : ℚ), 1⟩,
    ⟨(552015146693/1000000000000 : ℚ), (-307201929/10000000000 : ℚ), (5792258761/500000000000 : ℚ), 1⟩,
    ⟨(557750953247/1000000000000 : ℚ), (-179106301/5000000000 : ℚ), (14414909599/1000000000000 : ℚ), 1⟩,
    ⟨(563169326617/1000000000000 : ℚ), (-404467273/10000000000 : ℚ), (17007217383/1000000000000 : ℚ), 1⟩,
    ⟨(284128606733/500000000000 : ℚ), (-446290051/10000000000 : ℚ), (2421640399/125000000000 : ℚ), 1⟩,
    ⟨(57300235663/100000000000 : ℚ), (-15123903/312500000 : ℚ), (21522912587/1000000000000 : ℚ), 1⟩,
    ⟨(577393324643/1000000000000 : ℚ), (-258870081/5000000000 : ℚ), (5866405319/250000000000 : ℚ), 1⟩,
    ⟨(581419539279/1000000000000 : ℚ), (-27391623/500000000 : ℚ), (1575572553/62500000000 : ℚ), 1⟩,
    ⟨(585071301033/1000000000000 : ℚ), (-11488599/200000000 : ℚ), (2676042753/100000000000 : ℚ), 1⟩,
    ⟨(588339812493/1000000000000 : ℚ), (-149423783/2500000000 : ℚ), (2812539503/100000000000 : ℚ), 1⟩,
    ⟨(591217199527/1000000000000 : ℚ), (-123553441/2000000000 : ℚ), (1831824607/62500000000 : ℚ), 1⟩,
    ⟨(593696530257/1000000000000 : ℚ), (-12695281/200000000 : ℚ), (6063235561/200000000000 : ℚ), 1⟩,
    ⟨(595771831761/1000000000000 : ℚ), (-648783881/10000000000 : ℚ), (15574990929/500000000000 : ℚ), 1⟩,
    ⟨(597438104453/1000000000000 : ℚ), (-164976649/2500000000 : ℚ), (31813566941/1000000000000 : ℚ), 1⟩,
    ⟨(598691334137/1000000000000 : ℚ), (-133638973/2000000000 : ℚ), (32309258343/1000000000000 : ℚ), 1⟩,
    ⟨(299764250837/500000000000 : ℚ), (-673694977/10000000000 : ℚ), (8159693827/250000000000 : ℚ), 1⟩,
    ⟨(599947590253/1000000000000 : ℚ), (-676437453/10000000000 : ℚ), (1640162601/50000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-169194977/2500000000 : ℚ), (2051487401/62500000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (62620042539/250000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control66.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control66.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate66
