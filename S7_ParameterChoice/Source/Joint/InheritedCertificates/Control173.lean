import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate173
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(324320637279/1000000000000 : ℚ), (10492385504743/2500000000 : ℚ), (-1362394226681753/1000000000000 : ℚ), 13⟩,
    ⟨(324652655131/1000000000000 : ℚ), (578917758999/1250000000 : ℚ), (-151211266626399/1000000000000 : ℚ), 10⟩,
    ⟨(13012635639/40000000000 : ℚ), (412205752207/2500000000 : ℚ), (-54316645787667/1000000000000 : ℚ), 8⟩,
    ⟨(326308747017/1000000000000 : ℚ), (829196751471/10000000000 : ℚ), (-27621207917377/1000000000000 : ℚ), 7⟩,
    ⟨(327628831381/1000000000000 : ℚ), (98619203441/2000000000 : ℚ), (-665418060033/40000000000 : ℚ), 7⟩,
    ⟨(329272963867/1000000000000 : ℚ), (323731107703/10000000000 : ℚ), (-2768625172743/250000000000 : ℚ), 6⟩,
    ⟨(2587790497/7812500000 : ℚ), (113427143413/5000000000 : ℚ), (-3938075957677/500000000000 : ℚ), 6⟩,
    ⟨(83379189663/250000000000 : ℚ), (1040386787/62500000 : ℚ), (-183421994741/31250000000 : ℚ), 5⟩,
    ⟨(336106197277/1000000000000 : ℚ), (25278992817/2000000000 : ℚ), (-2264225162053/500000000000 : ℚ), 5⟩,
    ⟨(84749815327/250000000000 : ℚ), (98529720907/10000000000 : ℚ), (-224259416611/62500000000 : ℚ), 5⟩,
    ⟨(3421889811/10000000000 : ℚ), (78421554061/10000000000 : ℚ), (-145174633051/50000000000 : ℚ), 4⟩,
    ⟨(172833836169/500000000000 : ℚ), (31736955459/5000000000 : ℚ), (-37336857187/15625000000 : ℚ), 4⟩,
    ⟨(43678369319/125000000000 : ℚ), (52088215213/10000000000 : ℚ), (-398794252301/200000000000 : ℚ), 4⟩,
    ⟨(353457771299/1000000000000 : ℚ), (5404645391/1250000000 : ℚ), (-1682999471037/1000000000000 : ℚ), 4⟩,
    ⟨(357750411991/1000000000000 : ℚ), (7247308469/2000000000 : ℚ), (-143412618219/100000000000 : ℚ), 4⟩,
    ⟨(362294535279/1000000000000 : ℚ), (30616651613/10000000000 : ℚ), (-1231854250683/1000000000000 : ℚ), 3⟩,
    ⟨(91769798493/250000000000 : ℚ), (6511644677/2500000000 : ℚ), (-1065235188989/1000000000000 : ℚ), 3⟩,
    ⟨(372092861409/1000000000000 : ℚ), (22287895193/10000000000 : ℚ), (-926356322141/1000000000000 : ℚ), 3⟩,
    ⟨(188661729613/500000000000 : ℚ), (9582701271/5000000000 : ℚ), (-809384036139/1000000000000 : ℚ), 3⟩,
    ⟨(191379193227/500000000000 : ℚ), (8274058633/5000000000 : ℚ), (-709941207669/1000000000000 : ℚ), 3⟩,
    ⟨(388384549877/1000000000000 : ℚ), (14336597523/10000000000 : ℚ), (-312345889299/500000000000 : ℚ), 3⟩,
    ⟨(49273549447/125000000000 : ℚ), (12454306097/10000000000 : ℚ), (-551057291739/1000000000000 : ℚ), 3⟩,
    ⟨(400155941577/1000000000000 : ℚ), (10841605827/10000000000 : ℚ), (-60877445999/125000000000 : ℚ), 3⟩,
    ⟨(20313640577/50000000000 : ℚ), (147679839/156250000 : ℚ), (-430980854381/1000000000000 : ℚ), 3⟩,
    ⟨(103131067347/250000000000 : ℚ), (8246623737/10000000000 : ℚ), (-76332616013/200000000000 : ℚ), 3⟩,
    ⟨(418895254813/1000000000000 : ℚ), (7196915353/10000000000 : ℚ), (-33803420071/100000000000 : ℚ), 2⟩,
    ⟨(13292825611/31250000000 : ℚ), (784757773/1250000000 : ℚ), (-18703350987/62500000000 : ℚ), 2⟩,
    ⟨(431934164367/1000000000000 : ℚ), (5470215383/10000000000 : ℚ), (-52926243019/200000000000 : ℚ), 2⟩,
    ⟨(438570676621/1000000000000 : ℚ), (4757062771/10000000000 : ℚ), (-233596298671/1000000000000 : ℚ), 2⟩,
    ⟨(3562111747/8000000000 : ℚ), (165004469/400000000 : ℚ), (-205673739371/1000000000000 : ℚ), 2⟩,
    ⟨(451997914903/1000000000000 : ℚ), (3563134969/10000000000 : ℚ), (-90232760993/500000000000 : ℚ), 2⟩,
    ⟨(229378146769/500000000000 : ℚ), (3061738417/10000000000 : ℚ), (-2463067417/15625000000 : ℚ), 2⟩,
    ⟨(232761411377/500000000000 : ℚ), (13065107/50000000 : ℚ), (-6845104861/50000000000 : ℚ), 2⟩,
    ⟨(472281201389/1000000000000 : ℚ), (1105153731/5000000000 : ℚ), (-23604225373/200000000000 : ℚ), 2⟩,
    ⟨(119753786979/250000000000 : ℚ), (923964771/5000000000 : ℚ), (-100786709183/1000000000000 : ℚ), 2⟩,
    ⟨(485708439671/1000000000000 : ℚ), (760528697/5000000000 : ℚ), (-42510685821/500000000000 : ℚ), 2⟩,
    ⟨(19693798077/40000000000 : ℚ), (1225558083/10000000000 : ℚ), (-70572138473/1000000000000 : ℚ), 2⟩,
    ⟨(498908696739/1000000000000 : ℚ), (957882557/10000000000 : ℚ), (-28653337617/500000000000 : ℚ), 2⟩,
    ⟨(505383861479/1000000000000 : ℚ), (714972903/10000000000 : ℚ), (-45110123521/1000000000000 : ℚ), 2⟩,
    ⟨(63969355863/125000000000 : ℚ), (247093073/5000000000 : ℚ), (-33882490439/1000000000000 : ℚ), 2⟩,
    ⟨(32375394047/62500000000 : ℚ), (7330783/250000000 : ℚ), (-23536482647/1000000000000 : ℚ), 2⟩,
    ⟨(104824634943/200000000000 : ℚ), (27529319/2500000000 : ℚ), (-13995701827/1000000000000 : ℚ), 2⟩,
    ⟨(132522680179/250000000000 : ℚ), (-7111349/1250000000 : ℚ), (-519313407/100000000000 : ℚ), 2⟩,
    ⟨(267947283207/500000000000 : ℚ), (-2093077/100000000 : ℚ), (1465059859/500000000000 : ℚ), 2⟩,
    ⟨(270760364919/500000000000 : ℚ), (-348458793/10000000000 : ℚ), (5212958019/500000000000 : ℚ), 2⟩,
    ⟨(273477828533/500000000000 : ℚ), (-237752821/5000000000 : ℚ), (17339976241/1000000000000 : ℚ), 2⟩,
    ⟨(552186254883/1000000000000 : ℚ), (-7393347/125000000 : ℚ), (23712658301/1000000000000 : ℚ), 2⟩,
    ⟨(6964999029/12500000000 : ℚ), (-43577563/625000000 : ℚ), (14789807681/500000000000 : ℚ), 2⟩,
    ⟨(561984581013/1000000000000 : ℚ), (-79361323/1000000000 : ℚ), (1398894339/40000000000 : ℚ), 2⟩,
    ⟨(566528704301/1000000000000 : ℚ), (-881277569/10000000000 : ℚ), (39918739127/1000000000000 : ℚ), 2⟩,
    ⟨(570821344993/1000000000000 : ℚ), (-480421919/5000000000 : ℚ), (347213787/7812500000 : ℚ), 2⟩,
    ⟨(28742608087/50000000000 : ℚ), (-103284823/1000000000 : ℚ), (48567955239/1000000000000 : ℚ), 2⟩,
    ⟨(578611443953/1000000000000 : ℚ), (-548880821/5000000000 : ℚ), (52311652177/1000000000000 : ℚ), 2⟩,
    ⟨(72761266899/125000000000 : ℚ), (-1155996787/10000000000 : ℚ), (1113825671/20000000000 : ℚ), 2⟩,
    ⟨(73159981873/125000000000 : ℚ), (-150989287/1250000000 : ℚ), (58721593849/1000000000000 : ℚ), 2⟩,
    ⟨(117634583803/200000000000 : ℚ), (-1253827929/10000000000 : ℚ), (30707720721/500000000000 : ℚ), 2⟩,
    ⟨(14769058941/25000000000 : ℚ), (-20218891/156250000 : ℚ), (31891984333/500000000000 : ℚ), 2⟩,
    ⟨(23721677307/40000000000 : ℚ), (-53147611/400000000 : ℚ), (65836747183/1000000000000 : ℚ), 2⟩,
    ⟨(23800246097/40000000000 : ℚ), (-1358068927/10000000000 : ℚ), (33790951123/500000000000 : ℚ), 2⟩,
    ⟨(596650284911/1000000000000 : ℚ), (-691154717/5000000000 : ℚ), (17256553931/250000000000 : ℚ), 2⟩,
    ⟨(23918814771/40000000000 : ℚ), (-700772833/5000000000 : ℚ), (7017521353/100000000000 : ℚ), 2⟩,
    ⟨(598963225317/1000000000000 : ℚ), (-56635307/400000000 : ℚ), (35516617481/500000000000 : ℚ), 2⟩,
    ⟨(599626461161/1000000000000 : ℚ), (-712699039/5000000000 : ℚ), (71603487917/1000000000000 : ℚ), 2⟩,
    ⟨(149989619753/250000000000 : ℚ), (-178767883/1250000000 : ℚ), (35944044287/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1430735593/10000000000 : ℚ), (14384727819/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (268916124933/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control173.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control173.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate173
