import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate21
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(239712541661/1000000000000 : ℚ), (8135136759737/2500000000 : ℚ), (-78124300030513/100000000000 : ℚ), 12⟩,
    ⟨(3001830729/12500000000 : ℚ), (55882316903/156250000 : ℚ), (-86706524508469/1000000000000 : ℚ), 9⟩,
    ⟨(120506623147/500000000000 : ℚ), (1265561305131/10000000000 : ℚ), (-7785937556299/250000000000 : ℚ), 7⟩,
    ⟨(30288852177/125000000000 : ℚ), (126348141161/2000000000 : ℚ), (-1583581892549/100000000000 : ℚ), 6⟩,
    ⟨(244036045723/1000000000000 : ℚ), (14901569323/400000000 : ℚ), (-9536456637487/1000000000000 : ℚ), 5⟩,
    ⟨(246184774989/1000000000000 : ℚ), (48475553469/2000000000 : ℚ), (-3173967684913/500000000000 : ℚ), 5⟩,
    ⟨(971686831/3906250000 : ℚ), (16823778099/1000000000 : ℚ), (-902854083819/200000000000 : ℚ), 4⟩,
    ⟨(62932755677/250000000000 : ℚ), (30561435803/2500000000 : ℚ), (-3364018185389/1000000000000 : ℚ), 4⟩,
    ⟨(51023035953/200000000000 : ℚ), (18380498469/2000000000 : ℚ), (-129774185123/50000000000 : ℚ), 4⟩,
    ⟨(258896147177/1000000000000 : ℚ), (70930522397/10000000000 : ℚ), (-1028395399959/500000000000 : ℚ), 3⟩,
    ⟨(263064816261/1000000000000 : ℚ), (27949680041/5000000000 : ℚ), (-1664719873417/1000000000000 : ℚ), 3⟩,
    ⟨(26761114433/100000000000 : ℚ), (22403789799/5000000000 : ℚ), (-685284601609/500000000000 : ℚ), 3⟩,
    ⟨(851638059/3125000000 : ℚ), (9106215407/2500000000 : ℚ), (-572148273333/500000000000 : ℚ), 3⟩,
    ⟨(13889604199/50000000000 : ℚ), (14980957239/5000000000 : ℚ), (-966553176759/1000000000000 : ℚ), 3⟩,
    ⟨(283402168787/1000000000000 : ℚ), (24894069413/10000000000 : ℚ), (-41221038257/50000000000 : ℚ), 2⟩,
    ⟨(144670459057/500000000000 : ℚ), (4172388029/2000000000 : ℚ), (-354503543563/500000000000 : ℚ), 2⟩,
    ⟨(147797012497/500000000000 : ℚ), (17612960329/10000000000 : ℚ), (-15350720747/25000000000 : ℚ), 2⟩,
    ⟨(60429285029/200000000000 : ℚ), (7482829199/5000000000 : ℚ), (-1044812713/1953125000 : ℚ), 2⟩,
    ⟨(15449116663/50000000000 : ℚ), (6393552307/5000000000 : ℚ), (-468403849473/1000000000000 : ℚ), 2⟩,
    ⟨(3951066013/12500000000 : ℚ), (10978263123/10000000000 : ℚ), (-82378956107/200000000000 : ℚ), 2⟩,
    ⟨(323438156859/1000000000000 : ℚ), (9464236971/10000000000 : ℚ), (-363501200753/1000000000000 : ℚ), 2⟩,
    ⟨(331023246997/1000000000000 : ℚ), (4093812803/5000000000 : ℚ), (-321742402919/1000000000000 : ℚ), 2⟩,
    ⟨(169411139153/500000000000 : ℚ), (1420782209/2000000000 : ℚ), (-285459486901/1000000000000 : ℚ), 2⟩,
    ⟨(173408231119/500000000000 : ℚ), (1544548861/2500000000 : ℚ), (-63433780727/250000000000 : ℚ), 2⟩,
    ⟨(354986540103/1000000000000 : ℚ), (5382856797/10000000000 : ℚ), (-112917868183/500000000000 : ℚ), 2⟩,
    ⟨(363312829467/1000000000000 : ℚ), (2347919809/5000000000 : ℚ), (-201169225277/1000000000000 : ℚ), 2⟩,
    ⟨(371775271571/1000000000000 : ℚ), (4099391963/10000000000 : ℚ), (-89626807077/500000000000 : ℚ), 2⟩,
    ⟨(7607069593/20000000000 : ℚ), (3579120877/10000000000 : ℚ), (-159693524247/1000000000000 : ℚ), 2⟩,
    ⟨(7780535761/20000000000 : ℚ), (780819533/2500000000 : ℚ), (-28432461727/200000000000 : ℚ), 1⟩,
    ⟨(39777430201/100000000000 : ℚ), (2722214579/10000000000 : ℚ), (-7899271387/62500000000 : ℚ), 1⟩,
    ⟨(101643737001/250000000000 : ℚ), (2367959417/10000000000 : ℚ), (-56072199049/500000000000 : ℚ), 1⟩,
    ⟨(83081504901/200000000000 : ℚ), (256736621/1250000000 : ℚ), (-99239339583/1000000000000 : ℚ), 1⟩,
    ⟨(424250753061/1000000000000 : ℚ), (887245081/5000000000 : ℚ), (-87511568619/1000000000000 : ℚ), 1⟩,
    ⟨(216541664781/500000000000 : ℚ), (381279489/2500000000 : ℚ), (-76823817797/1000000000000 : ℚ), 1⟩,
    ⟨(110470993889/250000000000 : ℚ), (260374851/2000000000 : ℚ), (-13411795921/200000000000 : ℚ), 1⟩,
    ⟨(112657872379/250000000000 : ℚ), (550729517/5000000000 : ℚ), (-58116745049/1000000000000 : ℚ), 1⟩,
    ⟨(114826199479/250000000000 : ℚ), (230267647/2500000000 : ℚ), (-49910874401/1000000000000 : ℚ), 1⟩,
    ⟨(93576601199/200000000000 : ℚ), (189580393/2500000000 : ℚ), (-21183485077/500000000000 : ℚ), 1⟩,
    ⟨(476345448099/1000000000000 : ℚ), (152792673/2500000000 : ℚ), (-17710324049/500000000000 : ℚ), 1⟩,
    ⟨(484671737463/1000000000000 : ℚ), (477866867/10000000000 : ℚ), (-29016028009/1000000000000 : ℚ), 1⟩,
    ⟨(15401306729/31250000000 : ℚ), (2855227/80000000 : ℚ), (-11552240777/500000000000 : ℚ), 1⟩,
    ⟨(25041799963/50000000000 : ℚ), (123490017/5000000000 : ℚ), (-17643588327/1000000000000 : ℚ), 1⟩,
    ⟨(508635030569/1000000000000 : ℚ), (1469719/100000000 : ℚ), (-12596263229/1000000000000 : ℚ), 1⟩,
    ⟨(516220120707/1000000000000 : ℚ), (55903237/10000000000 : ℚ), (-7930021347/1000000000000 : ℚ), 1⟩,
    ⟨(523572996527/1000000000000 : ℚ), (-27074177/10000000000 : ℚ), (-3616359417/1000000000000 : ℚ), 1⟩,
    ⟨(265337972153/500000000000 : ℚ), (-102699213/10000000000 : ℚ), (369769049/1000000000000 : ℚ), 1⟩,
    ⟨(268755926211/500000000000 : ℚ), (-171616631/10000000000 : ℚ), (126574973/31250000000 : ℚ), 1⟩,
    ⟨(136016063143/250000000000 : ℚ), (-234389907/10000000000 : ℚ), (7444933971/1000000000000 : ℚ), 1⟩,
    ⟨(137579339863/250000000000 : ℚ), (-145756029/5000000000 : ℚ), (10570469/1000000000 : ℚ), 1⟩,
    ⟨(556256108779/1000000000000 : ℚ), (-343414791/10000000000 : ℚ), (13442068941/1000000000000 : ℚ), 1⟩,
    ⟨(280933096793/500000000000 : ℚ), (-195238133/5000000000 : ℚ), (4018251633/250000000000 : ℚ), 1⟩,
    ⟨(283567049343/500000000000 : ℚ), (-17321107/400000000 : ℚ), (9237483271/500000000000 : ℚ), 1⟩,
    ⟨(143011783309/250000000000 : ℚ), (-29459927/625000000 : ℚ), (1032911059/50000000000 : ℚ), 1⟩,
    ⟨(115318692261/200000000000 : ℚ), (-252861467/5000000000 : ℚ), (4526356401/200000000000 : ℚ), 1⟩,
    ⟨(580762130389/1000000000000 : ℚ), (-536340597/10000000000 : ℚ), (3050441153/125000000000 : ℚ), 1⟩,
    ⟨(584543097801/1000000000000 : ℚ), (-563403287/10000000000 : ℚ), (25980323159/1000000000000 : ℚ), 1⟩,
    ⟨(293963627429/500000000000 : ℚ), (-587076229/10000000000 : ℚ), (342101249/12500000000 : ℚ), 1⟩,
    ⟨(59090644883/100000000000 : ℚ), (-303750429/5000000000 : ℚ), (28571952467/1000000000000 : ℚ), 1⟩,
    ⟨(296736751289/500000000000 : ℚ), (-624796877/10000000000 : ℚ), (2959619947/100000000000 : ℚ), 1⟩,
    ⟨(595622231843/1000000000000 : ℚ), (-127812793/2000000000 : ℚ), (30444442731/1000000000000 : ℚ), 1⟩,
    ⟨(11946949203/20000000000 : ℚ), (-32519159/500000000 : ℚ), (6223922999/200000000000 : ℚ), 1⟩,
    ⟨(74830628909/125000000000 : ℚ), (-329409041/5000000000 : ℚ), (31624018263/1000000000000 : ℚ), 1⟩,
    ⟨(299755909623/500000000000 : ℚ), (-664415601/10000000000 : ℚ), (31959353353/1000000000000 : ℚ), 1⟩,
    ⟨(119989147181/200000000000 : ℚ), (-667206677/10000000000 : ℚ), (3212674219/100000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-333777601/5000000000 : ℚ), (8036913181/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (262499/1000000 : ℚ)
  x := (40106752639/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control21.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control21.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate21
