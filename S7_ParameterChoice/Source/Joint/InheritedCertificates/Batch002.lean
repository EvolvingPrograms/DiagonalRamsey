import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control21
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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

-- Control22
namespace DiagonalRamsey.JointInheritedCertificate22
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39252055841/1000000000000 : ℚ), (1383753322181/1250000000 : ℚ), (-43578354650989/1000000000000 : ℚ), 10⟩,
    ⟨(4932259519/125000000000 : ℚ), (1170722464401/10000000000 : ℚ), (-4683937625073/1000000000000 : ℚ), 7⟩,
    ⟨(39862199529/1000000000000 : ℚ), (192341333577/5000000000 : ℚ), (-196460093217/125000000000 : ℚ), 5⟩,
    ⟨(20224447869/500000000000 : ℚ), (85295473289/5000000000 : ℚ), (-22292023607/31250000000 : ℚ), 4⟩,
    ⟨(10298904593/250000000000 : ℚ), (41851828091/5000000000 : ℚ), (-71833888593/200000000000 : ℚ), 4⟩,
    ⟨(42073671299/1000000000000 : ℚ), (8071371739/2000000000 : ℚ), (-178932735679/1000000000000 : ℚ), 3⟩,
    ⟨(43049311437/1000000000000 : ℚ), (3152502513/2000000000 : ℚ), (-74374247021/1000000000000 : ℚ), 3⟩,
    ⟨(44085045483/1000000000000 : ℚ), (511954889/10000000000 : ℚ), (-51167/6400000 : ℚ), 3⟩,
    ⟨(1128526769/25000000000 : ℚ), (-2393693663/2500000000 : ℚ), (36970923959/1000000000000 : ℚ), 3⟩,
    ⟨(23088402403/500000000000 : ℚ), (-8282856119/5000000000 : ℚ), (34436103547/500000000000 : ℚ), 2⟩,
    ⟨(9430488989/200000000000 : ℚ), (-4312950021/2000000000 : ℚ), (92190158619/1000000000000 : ℚ), 2⟩,
    ⟨(48030497871/1000000000000 : ℚ), (-6298348457/2500000000 : ℚ), (109454433937/1000000000000 : ℚ), 2⟩,
    ⟨(9755444101/200000000000 : ℚ), (-1112560337/400000000 : ℚ), (122136938267/1000000000000 : ℚ), 2⟩,
    ⟨(24681958357/500000000000 : ℚ), (-14820745511/5000000000 : ℚ), (26220722829/200000000000 : ℚ), 2⟩,
    ⟨(49768040091/1000000000000 : ℚ), (-7700595097/2500000000 : ℚ), (17107178587/125000000000 : ℚ), 2⟩,
    ⟨(24987030201/500000000000 : ℚ), (-7841774057/2500000000 : ℚ), (139673696079/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31436983003/10000000000 : ℚ), (140023039253/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (262499/1000000 : ℚ)
  x := (203545250209/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control22.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control22.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate22

-- Control23
namespace DiagonalRamsey.JointInheritedCertificate23
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(78802622511/1000000000000 : ℚ), (1126980897799/1000000000 : ℚ), (-89062631839673/1000000000000 : ℚ), 10⟩,
    ⟨(39604470587/500000000000 : ℚ), (1192529966391/10000000000 : ℚ), (-59846958559/6250000000 : ℚ), 7⟩,
    ⟨(80005963903/1000000000000 : ℚ), (392268988559/10000000000 : ℚ), (-643051124951/200000000000 : ℚ), 5⟩,
    ⟨(2029076539/25000000000 : ℚ), (174279434867/10000000000 : ℚ), (-29226608483/20000000000 : ℚ), 4⟩,
    ⟨(20658941883/250000000000 : ℚ), (21452274687/2500000000 : ℚ), (-147560859701/200000000000 : ℚ), 4⟩,
    ⟨(42183743277/500000000000 : ℚ), (41681160231/10000000000 : ℚ), (-92450791749/250000000000 : ℚ), 3⟩,
    ⟨(17258333927/200000000000 : ℚ), (16655996751/10000000000 : ℚ), (-78251502777/500000000000 : ℚ), 3⟩,
    ⟨(44167185749/500000000000 : ℚ), (1151345403/10000000000 : ℚ), (-10626872597/500000000000 : ℚ), 3⟩,
    ⟨(90417092257/1000000000000 : ℚ), (-9091447507/10000000000 : ℚ), (35111602557/500000000000 : ℚ), 3⟩,
    ⟨(92459794121/1000000000000 : ℚ), (-647219767/400000000 : ℚ), (6750348747/50000000000 : ℚ), 2⟩,
    ⟨(47191988601/500000000000 : ℚ), (-2124190149/1000000000 : ℚ), (182271760133/1000000000000 : ℚ), 2⟩,
    ⟨(3003615507/31250000000 : ℚ), (-24910257031/10000000000 : ℚ), (217202792399/1000000000000 : ℚ), 2⟩,
    ⟨(24397100549/250000000000 : ℚ), (-107640377/39062500 : ℚ), (121411078317/500000000000 : ℚ), 2⟩,
    ⟨(98745499853/1000000000000 : ℚ), (-14699413173/5000000000 : ℚ), (260911466443/1000000000000 : ℚ), 2⟩,
    ⟨(49771261291/500000000000 : ℚ), (-3821067083/1250000000 : ℚ), (2128968339/7812500000 : ℚ), 2⟩,
    ⟨(19989768249/200000000000 : ℚ), (-973039319/312500000 : ℚ), (69545159833/250000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-3900953429/1250000000 : ℚ), (34860518933/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (262499/1000000 : ℚ)
  x := (6216094017/40000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control23.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control23.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate23

-- Control24
namespace DiagonalRamsey.JointInheritedCertificate24
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120418637783/500000000000 : ℚ), (4030034228361/1250000000 : ℚ), (-777657551480851/1000000000000 : ℚ), 12⟩,
    ⟨(120634918819/500000000000 : ℚ), (708751106901/2000000000 : ℚ), (-86310090705219/1000000000000 : ℚ), 9⟩,
    ⟨(242133919701/1000000000000 : ℚ), (1254147663117/10000000000 : ℚ), (-7750605853519/250000000000 : ℚ), 7⟩,
    ⟨(243427440107/1000000000000 : ℚ), (125229267503/2000000000 : ℚ), (-7882379285961/500000000000 : ℚ), 6⟩,
    ⟨(245147282651/1000000000000 : ℚ), (369311555221/10000000000 : ℚ), (-949429252421/100000000000 : ℚ), 5⟩,
    ⟨(123644652041/500000000000 : ℚ), (7510310087/312500000 : ℚ), (-1264075523389/200000000000 : ℚ), 5⟩,
    ⟨(249848344083/1000000000000 : ℚ), (2607122313/156250000 : ℚ), (-4495092386313/1000000000000 : ℚ), 4⟩,
    ⟨(126409118851/500000000000 : ℚ), (6063613277/500000000 : ℚ), (-1675038385269/500000000000 : ℚ), 4⟩,
    ⟨(128095915103/500000000000 : ℚ), (91194924903/10000000000 : ℚ), (-2585021652199/1000000000000 : ℚ), 4⟩,
    ⟨(129980497157/500000000000 : ℚ), (70403880157/10000000000 : ℚ), (-2048748835703/1000000000000 : ℚ), 3⟩,
    ⟨(13205832489/50000000000 : ℚ), (27750031013/5000000000 : ℚ), (-1658421462961/1000000000000 : ℚ), 3⟩,
    ⟨(134324392633/500000000000 : ℚ), (8900065417/2000000000 : ℚ), (-1365562069219/1000000000000 : ℚ), 3⟩,
    ⟨(136773241231/500000000000 : ℚ), (36185567831/10000000000 : ℚ), (-142533372073/125000000000 : ℚ), 3⟩,
    ⟨(17424871399/62500000000 : ℚ), (2977366623/1000000000 : ℚ), (-120409612293/125000000000 : ℚ), 3⟩,
    ⟨(284390513807/1000000000000 : ℚ), (12372353849/5000000000 : ℚ), (-821733386009/1000000000000 : ℚ), 3⟩,
    ⟨(58062144747/200000000000 : ℚ), (10371275503/5000000000 : ℚ), (-176696391889/250000000000 : ℚ), 2⟩,
    ⟨(59308861973/200000000000 : ℚ), (1751690087/1000000000 : ℚ), (-612179456303/1000000000000 : ℚ), 2⟩,
    ⟨(151538127471/500000000000 : ℚ), (465247169/312500000 : ℚ), (-533394448823/1000000000000 : ℚ), 2⟩,
    ⟨(154945411469/500000000000 : ℚ), (1590478643/1250000000 : ℚ), (-233548611127/500000000000 : ℚ), 2⟩,
    ⟨(316971596961/1000000000000 : ℚ), (10926498721/10000000000 : ℚ), (-205393184567/500000000000 : ℚ), 2⟩,
    ⟨(324301518807/1000000000000 : ℚ), (1177709609/1250000000 : ℚ), (-362555257511/1000000000000 : ℚ), 2⟩,
    ⟨(82965732513/250000000000 : ℚ), (1019057559/1250000000 : ℚ), (-320930204989/1000000000000 : ℚ), 2⟩,
    ⟨(169818807297/500000000000 : ℚ), (7074712749/10000000000 : ℚ), (-284757813987/1000000000000 : ℚ), 2⟩,
    ⟨(347606842537/1000000000000 : ℚ), (6153830591/10000000000 : ℚ), (-253125107327/1000000000000 : ℚ), 2⟩,
    ⟨(177875707657/500000000000 : ℚ), (1340605403/2500000000 : ℚ), (-11265099129/50000000000 : ℚ), 2⟩,
    ⟨(364051711933/1000000000000 : ℚ), (584826301/1250000000 : ℚ), (-40139825419/200000000000 : ℚ), 2⟩,
    ⟨(74497547251/200000000000 : ℚ), (255299193/625000000 : ℚ), (-89418410031/500000000000 : ℚ), 2⟩,
    ⟨(190519582579/500000000000 : ℚ), (1783335663/5000000000 : ℚ), (-79660757573/500000000000 : ℚ), 2⟩,
    ⟨(389685397499/1000000000000 : ℚ), (622520917/2000000000 : ℚ), (-70914030263/500000000000 : ℚ), 2⟩,
    ⟨(398405603749/1000000000000 : ℚ), (2713009421/10000000000 : ℚ), (-126086055487/1000000000000 : ℚ), 1⟩,
    ⟨(407178776167/1000000000000 : ℚ), (2359972553/10000000000 : ℚ), (-111869278501/1000000000000 : ℚ), 1⟩,
    ⟨(103995944853/250000000000 : ℚ), (2046920591/10000000000 : ℚ), (-98987420769/1000000000000 : ℚ), 1⟩,
    ⟨(424799401459/1000000000000 : ℚ), (353673161/2000000000 : ℚ), (-43639783193/500000000000 : ℚ), 1⟩,
    ⟨(13550137647/31250000000 : ℚ), (1519705347/10000000000 : ℚ), (-76609010713/1000000000000 : ℚ), 1⟩,
    ⟨(221188788561/500000000000 : ℚ), (259412319/2000000000 : ℚ), (-6685911129/100000000000 : ℚ), 1⟩,
    ⟨(112774445843/250000000000 : ℚ), (219430877/2000000000 : ℚ), (-57929942271/1000000000000 : ℚ), 1⟩,
    ⟨(229872007857/500000000000 : ℚ), (917198167/10000000000 : ℚ), (-49735580539/1000000000000 : ℚ), 1⟩,
    ⟨(58536930577/125000000000 : ℚ), (150963749/2000000000 : ℚ), (-21100944423/500000000000 : ℚ), 1⟩,
    ⟨(238365734469/500000000000 : ℚ), (151996387/2500000000 : ℚ), (-17632348661/500000000000 : ℚ), 1⟩,
    ⟨(242515882779/500000000000 : ℚ), (237478121/5000000000 : ℚ), (-28868301101/1000000000000 : ℚ), 1⟩,
    ⟨(246588169167/500000000000 : ℚ), (354231249/10000000000 : ℚ), (-5741053777/250000000000 : ℚ), 1⟩,
    ⟨(501145566277/1000000000000 : ℚ), (122258113/5000000000 : ℚ), (-8755067739/500000000000 : ℚ), 1⟩,
    ⟨(508920250819/1000000000000 : ℚ), (144691001/10000000000 : ℚ), (-12469071069/1000000000000 : ℚ), 1⟩,
    ⟨(32280103879/62500000000 : ℚ), (26891873/5000000000 : ℚ), (-7808612903/1000000000000 : ℚ), 1⟩,
    ⟨(52381158391/100000000000 : ℚ), (-29050569/10000000000 : ℚ), (-875079391/250000000000 : ℚ), 1⟩,
    ⟨(265446178967/500000000000 : ℚ), (-104548201/10000000000 : ℚ), (480814087/1000000000000 : ℚ), 1⟩,
    ⟨(537706925929/1000000000000 : ℚ), (-173351771/10000000000 : ℚ), (4156780347/1000000000000 : ℚ), 1⟩,
    ⟨(272119435503/500000000000 : ℚ), (-59005751/2500000000 : ℚ), (7546956133/1000000000000 : ℚ), 1⟩,
    ⟨(34404528571/62500000000 : ℚ), (-293053487/10000000000 : ℚ), (133355201/12500000000 : ℚ), 1⟩,
    ⟨(111278533413/200000000000 : ℚ), (-86218439/2500000000 : ℚ), (270724193/20000000000 : ℚ), 1⟩,
    ⟨(561985238487/1000000000000 : ℚ), (-195930507/5000000000 : ℚ), (505112469/31250000000 : ℚ), 1⟩,
    ⟨(56723669841/100000000000 : ℚ), (-43434567/1000000000 : ℚ), (9281130953/500000000000 : ℚ), 1⟩,
    ⟨(114426879121/200000000000 : ℚ), (-236308451/5000000000 : ℚ), (4148493369/200000000000 : ℚ), 1⟩,
    ⟨(576666531091/1000000000000 : ℚ), (-101385477/2000000000 : ℚ), (2839152933/125000000000 : ℚ), 1⟩,
    ⟨(290411093279/500000000000 : ℚ), (-537497311/10000000000 : ℚ), (24482411877/1000000000000 : ℚ), 1⟩,
    ⟨(292295675333/500000000000 : ℚ), (-2822589/50000000 : ℚ), (26056893343/1000000000000 : ℚ), 1⟩,
    ⟨(587964943169/1000000000000 : ℚ), (-588153799/10000000000 : ℚ), (1372130301/50000000000 : ℚ), 1⟩,
    ⟨(147733709197/250000000000 : ℚ), (-152136629/2500000000 : ℚ), (28644645037/1000000000000 : ℚ), 1⟩,
    ⟨(593493876789/1000000000000 : ℚ), (-625815473/10000000000 : ℚ), (3708416447/125000000000 : ℚ), 1⟩,
    ⟨(29781794911/50000000000 : ℚ), (-320030103/5000000000 : ℚ), (30514270003/1000000000000 : ℚ), 1⟩,
    ⟨(149338935191/250000000000 : ℚ), (-651361661/10000000000 : ℚ), (15594197677/500000000000 : ℚ), 1⟩,
    ⟨(59864926117/100000000000 : ℚ), (-41236457/625000000 : ℚ), (31692011459/1000000000000 : ℚ), 1⟩,
    ⟨(599513343233/1000000000000 : ℚ), (-66537203/1000000000 : ℚ), (32026820917/1000000000000 : ℚ), 1⟩,
    ⟨(119989181061/200000000000 : ℚ), (-133631743/2000000000 : ℚ), (16096973323/500000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-167126673/2500000000 : ℚ), (3221482433/100000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (42521143497/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control24.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control24.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate24

-- Control25
namespace DiagonalRamsey.JointInheritedCertificate25
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12289035261/40000000000 : ℚ), (18809051259979/5000000000 : ℚ), (-1157264656830429/1000000000000 : ℚ), 12⟩,
    ⟨(61539784779/200000000000 : ℚ), (1035015947443/2500000000 : ℚ), (-16055167014997/125000000000 : ℚ), 9⟩,
    ⟨(154321934517/500000000000 : ℚ), (1467938576723/10000000000 : ℚ), (-46135658789341/1000000000000 : ℚ), 7⟩,
    ⟨(310058440487/1000000000000 : ℚ), (73455529523/1000000000 : ℚ), (-5864960587399/250000000000 : ℚ), 6⟩,
    ⟨(77984807607/250000000000 : ℚ), (54294945641/1250000000 : ℚ), (-1412849333581/100000000000 : ℚ), 6⟩,
    ⟨(78570426967/250000000000 : ℚ), (283435168299/10000000000 : ℚ), (-9405254770751/1000000000000 : ℚ), 5⟩,
    ⟨(158540114787/500000000000 : ℚ), (49336851811/2500000000 : ℚ), (-836121592133/125000000000 : ℚ), 5⟩,
    ⟨(320328053663/1000000000000 : ℚ), (28771336589/2000000000 : ℚ), (-2492517187453/500000000000 : ℚ), 4⟩,
    ⟨(162008677921/500000000000 : ℚ), (108501608247/10000000000 : ℚ), (-480817382841/125000000000 : ℚ), 4⟩,
    ⟨(164069624129/500000000000 : ℚ), (84016594661/10000000000 : ℚ), (-762128552581/250000000000 : ℚ), 4⟩,
    ⟨(20792737557/62500000000 : ℚ), (33214782657/5000000000 : ℚ), (-1233844398451/500000000000 : ℚ), 3⟩,
    ⟨(168820032789/500000000000 : ℚ), (26710998923/5000000000 : ℚ), (-406384667941/200000000000 : ℚ), 3⟩,
    ⟨(17149805109/50000000000 : ℚ), (5445982343/1250000000 : ℚ), (-848359306219/500000000000 : ℚ), 3⟩,
    ⟨(174369503779/500000000000 : ℚ), (3595171683/1000000000 : ℚ), (-1433415532917/1000000000000 : ℚ), 3⟩,
    ⟨(7097098931/20000000000 : ℚ), (7491152397/2500000000 : ℚ), (-1222880123591/1000000000000 : ℚ), 3⟩,
    ⟨(361329185321/1000000000000 : ℚ), (12594531267/5000000000 : ℚ), (-1051941979151/1000000000000 : ℚ), 2⟩,
    ⟨(73629225373/200000000000 : ℚ), (21331406999/10000000000 : ℚ), (-911294950947/1000000000000 : ℚ), 2⟩,
    ⟨(93822337143/250000000000 : ℚ), (9090205589/5000000000 : ℚ), (-794212135343/1000000000000 : ℚ), 2⟩,
    ⟨(76548328359/200000000000 : ℚ), (3895289451/2500000000 : ℚ), (-695733207019/1000000000000 : ℚ), 2⟩,
    ⟨(390485053307/1000000000000 : ℚ), (13418073497/10000000000 : ℚ), (-24485424069/40000000000 : ℚ), 2⟩,
    ⟨(49812616069/125000000000 : ℚ), (5801811903/5000000000 : ℚ), (-270290819829/500000000000 : ℚ), 2⟩,
    ⟨(406769956583/1000000000000 : ℚ), (5035306481/5000000000 : ℚ), (-957755459/2000000000 : ℚ), 2⟩,
    ⟨(415272216589/1000000000000 : ℚ), (4383416771/5000000000 : ℚ), (-106326683163/250000000000 : ℚ), 2⟩,
    ⟨(10599680647/25000000000 : ℚ), (1530256367/2000000000 : ℚ), (-378509139173/1000000000000 : ℚ), 2⟩,
    ⟨(86578797847/200000000000 : ℚ), (6691437093/10000000000 : ℚ), (-337397455209/1000000000000 : ℚ), 2⟩,
    ⟨(441971049481/1000000000000 : ℚ), (5861276723/10000000000 : ℚ), (-301093598251/1000000000000 : ℚ), 2⟩,
    ⟨(90239307837/200000000000 : ℚ), (2569904439/5000000000 : ℚ), (-134441245457/500000000000 : ℚ), 2⟩,
    ⟨(92109646667/200000000000 : ℚ), (563746781/1250000000 : ℚ), (-240177230819/1000000000000 : ℚ), 2⟩,
    ⟨(1468761259/3125000000 : ℚ), (3957814921/10000000000 : ℚ), (-26811580991/125000000000 : ℚ), 2⟩,
    ⟨(239769934503/500000000000 : ℚ), (694367773/2000000000 : ℚ), (-191425015281/1000000000000 : ℚ), 1⟩,
    ⟨(489134058013/1000000000000 : ℚ), (1521264691/5000000000 : ℚ), (-170636329149/1000000000000 : ℚ), 1⟩,
    ⟨(24938152833/50000000000 : ℚ), (1330981561/5000000000 : ℚ), (-151842015511/1000000000000 : ℚ), 1⟩,
    ⟨(101680733569/200000000000 : ℚ), (9294041/40000000 : ℚ), (-6740061877/50000000000 : ℚ), 1⟩,
    ⟨(129508166623/250000000000 : ℚ), (1010798653/5000000000 : ℚ), (-59654595071/500000000000 : ℚ), 1⟩,
    ⟨(1055253711/2000000000 : ℚ), (875759181/5000000000 : ℚ), (-10519093099/100000000000 : ℚ), 1⟩,
    ⟨(268581560813/500000000000 : ℚ), (1509283661/10000000000 : ℚ), (-92296406807/1000000000000 : ℚ), 1⟩,
    ⟨(546618491171/1000000000000 : ℚ), (1291497561/10000000000 : ℚ), (-40248208249/500000000000 : ℚ), 1⟩,
    ⟨(13899254633/25000000000 : ℚ), (68453723/625000000 : ℚ), (-13935863209/200000000000 : ℚ), 1⟩,
    ⟨(22607827001/40000000000 : ℚ), (918083671/10000000000 : ℚ), (-59748313811/1000000000000 : ℚ), 1⟩,
    ⟨(574272735271/1000000000000 : ℚ), (378916127/5000000000 : ℚ), (-5061923631/100000000000 : ℚ), 1⟩,
    ⟨(291589749313/500000000000 : ℚ), (612661731/10000000000 : ℚ), (-10554669263/250000000000 : ℚ), 1⟩,
    ⟨(591894507917/1000000000000 : ℚ), (120244401/2500000000 : ℚ), (-34482451971/1000000000000 : ℚ), 1⟩,
    ⟨(300198383961/500000000000 : ℚ), (72279437/2000000000 : ℚ), (-27354308069/1000000000000 : ℚ), 1⟩,
    ⟨(304332897977/500000000000 : ℚ), (126359271/5000000000 : ℚ), (-2598104651/125000000000 : ℚ), 1⟩,
    ⟨(308340835599/500000000000 : ℚ), (19236819/1250000000 : ℚ), (-2946112133/200000000000 : ℚ), 1⟩,
    ⟨(62442508271/100000000000 : ℚ), (12802229/2000000000 : ℚ), (-9153154243/1000000000000 : ℚ), 1⟩,
    ⟨(315938687967/500000000000 : ℚ), (-8865497/5000000000 : ℚ), (-12558719/3125000000 : ℚ), 1⟩,
    ⟨(15975514941/25000000000 : ℚ), (-23007963/2500000000 : ℚ), (14048467/20000000000 : ℚ), 1⟩,
    ⟨(40364846199/62500000000 : ℚ), (-159505127/10000000000 : ℚ), (125922973/25000000000 : ℚ), 1⟩,
    ⟨(163077944489/250000000000 : ℚ), (-220689277/10000000000 : ℚ), (4504039911/500000000000 : ℚ), 1⟩,
    ⟨(658427716947/1000000000000 : ℚ), (-69014223/2500000000 : ℚ), (1263658923/100000000000 : ℚ), 1⟩,
    ⟨(26566824893/40000000000 : ℚ), (-163011329/5000000000 : ℚ), (7970365021/500000000000 : ℚ), 1⟩,
    ⟨(41845416183/62500000000 : ℚ), (-74190027/2000000000 : ℚ), (18936642571/1000000000000 : ℚ), 1⟩,
    ⟨(337241461797/500000000000 : ℚ), (-411157523/10000000000 : ℚ), (10819272701/500000000000 : ℚ), 1⟩,
    ⟨(84878434531/125000000000 : ℚ), (-1396633/31250000 : ℚ), (1503682737/62500000000 : ℚ), 1⟩,
    ⟨(85393671083/125000000000 : ℚ), (-95697339/2000000000 : ℚ), (6552173127/250000000000 : ℚ), 1⟩,
    ⟨(343419335421/500000000000 : ℚ), (-506058611/10000000000 : ℚ), (14048666439/500000000000 : ℚ), 1⟩,
    ⟨(690086494931/1000000000000 : ℚ), (-52981721/1000000000 : ℚ), (1189320429/40000000000 : ℚ), 1⟩,
    ⟨(346442508319/500000000000 : ℚ), (-137478527/2500000000 : ℚ), (15561337299/500000000000 : ℚ), 1⟩,
    ⟨(347613747039/500000000000 : ℚ), (-113295143/2000000000 : ℚ), (8068034683/250000000000 : ℚ), 1⟩,
    ⟨(348554142009/500000000000 : ℚ), (-144901233/2500000000 : ℚ), (16593075143/500000000000 : ℚ), 1⟩,
    ⟨(43657678467/62500000000 : ℚ), (-589382521/10000000000 : ℚ), (16934222373/500000000000 : ℚ), 1⟩,
    ⟨(699467800611/1000000000000 : ℚ), (-595868153/10000000000 : ℚ), (2145111691/62500000000 : ℚ), 1⟩,
    ⟨(699940842981/1000000000000 : ℚ), (-74887649/1250000000 : ℚ), (34548004183/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-119900973/2000000000 : ℚ), (34576260119/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (141502632487/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control25.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control25.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate25

-- Control26
namespace DiagonalRamsey.JointInheritedCertificate26
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39345927037/1000000000000 : ℚ), (11004813653849/10000000000 : ℚ), (-21711856591641/500000000000 : ℚ), 10⟩,
    ⟨(4943768499/125000000000 : ℚ), (1163823012591/10000000000 : ℚ), (-4666357577623/1000000000000 : ℚ), 7⟩,
    ⟨(39950741807/1000000000000 : ℚ), (95586581561/2500000000 : ℚ), (-1565065350687/1000000000000 : ℚ), 5⟩,
    ⟨(10133078471/250000000000 : ℚ), (169467703993/10000000000 : ℚ), (-141950119467/200000000000 : ℚ), 4⟩,
    ⟨(2579532171/62500000000 : ℚ), (41528393843/5000000000 : ℚ), (-356819858231/1000000000000 : ℚ), 4⟩,
    ⟨(42142898859/1000000000000 : ℚ), (39938280319/10000000000 : ℚ), (-11075951953/62500000000 : ℚ), 3⟩,
    ⟨(43110017879/1000000000000 : ℚ), (15467679079/10000000000 : ℚ), (-3651138263/50000000000 : ℚ), 3⟩,
    ⟨(22068352977/500000000000 : ℚ), (58027303/2000000000 : ℚ), (-6875314977/1000000000000 : ℚ), 3⟩,
    ⟨(22591754019/500000000000 : ℚ), (-2437700489/2500000000 : ℚ), (18966940457/500000000000 : ℚ), 3⟩,
    ⟨(46210196113/1000000000000 : ℚ), (-16711777371/10000000000 : ℚ), (69725008757/1000000000000 : ℚ), 2⟩,
    ⟨(47177315133/1000000000000 : ℚ), (-216907061/100000000 : ℚ), (92963762083/1000000000000 : ℚ), 2⟩,
    ⟨(6005962407/125000000000 : ℚ), (-1012229579/400000000 : ℚ), (13771367173/125000000000 : ℚ), 2⟩,
    ⟨(12196975027/250000000000 : ℚ), (-27917233761/10000000000 : ℚ), (30703242127/250000000000 : ℚ), 2⟩,
    ⟨(24684736093/500000000000 : ℚ), (-3717351701/1250000000 : ℚ), (2635043411/20000000000 : ℚ), 2⟩,
    ⟨(24885033/500000000 : ℚ), (-1931011949/625000000 : ℚ), (137489020871/1000000000000 : ℚ), 2⟩,
    ⟨(12493571739/250000000000 : ℚ), (-31459274933/10000000000 : ℚ), (35074303173/250000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-394112043/125000000 : ℚ), (17580695697/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (26699316799/125000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control26.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control26.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate26

-- Control27
namespace DiagonalRamsey.JointInheritedCertificate27
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1580472251/20000000000 : ℚ), (11227370539469/10000000000 : ℚ), (-17794555715153/200000000000 : ℚ), 10⟩,
    ⟨(99282119/1250000000 : ℚ), (1188154277163/10000000000 : ℚ), (-1912963237529/200000000000 : ℚ), 7⟩,
    ⟨(80214408689/1000000000000 : ℚ), (39083668973/1000000000 : ℚ), (-802722999743/250000000000 : ℚ), 5⟩,
    ⟨(81359443201/1000000000000 : ℚ), (86807214821/5000000000 : ℚ), (-364678690141/250000000000 : ℚ), 4⟩,
    ⟨(828167957/10000000000 : ℚ), (21359386049/2500000000 : ℚ), (-735913544379/1000000000000 : ℚ), 4⟩,
    ⟨(84530460949/1000000000000 : ℚ), (41445903203/10000000000 : ℚ), (-184143659493/500000000000 : ℚ), 3⟩,
    ⟨(86434583751/1000000000000 : ℚ), (8246111867/5000000000 : ℚ), (-77606113003/500000000000 : ℚ), 3⟩,
    ⟨(88455989737/1000000000000 : ℚ), (514234289/5000000000 : ℚ), (-5028451597/250000000000 : ℚ), 3⟩,
    ⟨(90516997407/1000000000000 : ℚ), (-4594664817/5000000000 : ℚ), (17813460359/250000000000 : ℚ), 3⟩,
    ⟨(1445912553/15625000000 : ℚ), (-16262345163/10000000000 : ℚ), (6797732521/50000000000 : ℚ), 2⟩,
    ⟨(18888505239/200000000000 : ℚ), (-21313164953/10000000000 : ℚ), (5723607011/31250000000 : ℚ), 2⟩,
    ⟨(96156191443/1000000000000 : ℚ), (-3121808327/1250000000 : ℚ), (43607506433/200000000000 : ℚ), 2⟩,
    ⟨(48806771971/500000000000 : ℚ), (-13807753377/5000000000 : ℚ), (60905173007/250000000000 : ℚ), 2⟩,
    ⟨(49379289227/500000000000 : ℚ), (-2945546127/1000000000 : ℚ), (16355295431/62500000000 : ℚ), 2⟩,
    ⟨(99547291943/1000000000000 : ℚ), (-3827933361/1250000000 : ℚ), (136632677937/500000000000 : ℚ), 2⟩,
    ⟨(99949374593/1000000000000 : ℚ), (-1559570571/500000000 : ℚ), (278930448873/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-1953855441/625000000 : ℚ), (55926605447/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (2552440541/15625000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control27.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control27.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate27

-- Control28
namespace DiagonalRamsey.JointInheritedCertificate28
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30252276221/125000000000 : ℚ), (15972668979337/5000000000 : ℚ), (-154862654425417/200000000000 : ℚ), 12⟩,
    ⟨(242449349567/1000000000000 : ℚ), (3511629663403/10000000000 : ℚ), (-10742532007333/125000000000 : ℚ), 9⟩,
    ⟨(243310590511/1000000000000 : ℚ), (310735226583/2500000000 : ℚ), (-30870531129559/1000000000000 : ℚ), 7⟩,
    ⟨(61149964449/250000000000 : ℚ), (31032711827/500000000 : ℚ), (-15698405337229/1000000000000 : ℚ), 6⟩,
    ⟨(30789255683/125000000000 : ℚ), (366143172039/10000000000 : ℚ), (-9454891875831/1000000000000 : ℚ), 6⟩,
    ⟨(49689804777/200000000000 : ℚ), (238319703083/10000000000 : ℚ), (-629460132083/100000000000 : ℚ), 5⟩,
    ⟨(15687478107/62500000000 : ℚ), (165499119211/10000000000 : ℚ), (-279820806063/62500000000 : ℚ), 5⟩,
    ⟨(253959778261/1000000000000 : ℚ), (120316344859/10000000000 : ℚ), (-3337002594323/1000000000000 : ℚ), 4⟩,
    ⟨(128661139163/500000000000 : ℚ), (90499854243/10000000000 : ℚ), (-2575193885229/1000000000000 : ℚ), 4⟩,
    ⟨(261079049347/1000000000000 : ℚ), (2183945609/312500000 : ℚ), (-408235914679/200000000000 : ℚ), 4⟩,
    ⟨(53044208187/200000000000 : ℚ), (2204292921/400000000 : ℚ), (-413119945229/250000000000 : ℚ), 3⟩,
    ⟨(26973827467/100000000000 : ℚ), (44197847709/10000000000 : ℚ), (-272165239221/200000000000 : ℚ), 3⟩,
    ⟨(274619868139/1000000000000 : ℚ), (7189945917/2000000000 : ℚ), (-1136444370391/1000000000000 : ℚ), 3⟩,
    ⟨(69963515289/250000000000 : ℚ), (5917577873/2000000000 : ℚ), (-960158426809/1000000000000 : ℚ), 3⟩,
    ⟨(71357061023/250000000000 : ℚ), (983883039/400000000 : ℚ), (-409582878277/500000000000 : ℚ), 3⟩,
    ⟨(291328988253/1000000000000 : ℚ), (824973217/400000000 : ℚ), (-140930809379/200000000000 : ℚ), 2⟩,
    ⟨(297542078227/1000000000000 : ℚ), (2177697979/1250000000 : ℚ), (-152599163751/250000000000 : ℚ), 2⟩,
    ⟨(152026273069/500000000000 : ℚ), (14810579533/10000000000 : ℚ), (-265946408747/500000000000 : ℚ), 2⟩,
    ⟨(310844707699/1000000000000 : ℚ), (2532145659/2000000000 : ℚ), (-465823896319/1000000000000 : ℚ), 2⟩,
    ⟨(79475549999/250000000000 : ℚ), (10874725221/10000000000 : ℚ), (-3277596341/8000000000 : ℚ), 2⟩,
    ⟨(20325501307/62500000000 : ℚ), (9378971017/10000000000 : ℚ), (-14464863129/40000000000 : ℚ), 2⟩,
    ⟨(332744570087/1000000000000 : ℚ), (162340989/200000000 : ℚ), (-320122867889/1000000000000 : ℚ), 2⟩,
    ⟨(340493691311/1000000000000 : ℚ), (1761299203/2500000000 : ℚ), (-284055142689/1000000000000 : ℚ), 2⟩,
    ⟨(174218358137/500000000000 : ℚ), (6129098377/10000000000 : ℚ), (-63127370517/250000000000 : ℚ), 2⟩,
    ⟨(89138627383/250000000000 : ℚ), (5341586413/10000000000 : ℚ), (-56189754853/250000000000 : ℚ), 2⟩,
    ⟨(364827514611/1000000000000 : ℚ), (2330480851/5000000000 : ℚ), (-100108520909/500000000000 : ℚ), 2⟩,
    ⟨(93308950279/250000000000 : ℚ), (2034876671/5000000000 : ℚ), (-178405929981/1000000000000 : ℚ), 2⟩,
    ⟨(1527036451/4000000000 : ℚ), (3553791221/10000000000 : ℚ), (-4966682671/31250000000 : ℚ), 2⟩,
    ⟨(390376916107/1000000000000 : ℚ), (3101504587/10000000000 : ℚ), (-141477029727/1000000000000 : ℚ), 2⟩,
    ⟨(79813690029/200000000000 : ℚ), (2703386203/10000000000 : ℚ), (-1006129787/8000000000 : ℚ), 2⟩,
    ⟨(407812776197/1000000000000 : ℚ), (2351579133/10000000000 : ℚ), (-5578807117/50000000000 : ℚ), 1⟩,
    ⟨(1627300111/3906250000 : ℚ), (127472209/625000000 : ℚ), (-49358624531/500000000000 : ℚ), 1⟩,
    ⟨(212687732261/500000000000 : ℚ), (880931861/5000000000 : ℚ), (-87029263423/1000000000000 : ℚ), 1⟩,
    ⟨(21707575837/50000000000 : ℚ), (1513931053/10000000000 : ℚ), (-9547000701/125000000000 : ℚ), 1⟩,
    ⟨(55361980349/125000000000 : ℚ), (645951873/5000000000 : ℚ), (-520634891/7812500000 : ℚ), 1⟩,
    ⟨(45158737683/100000000000 : ℚ), (546260583/5000000000 : ℚ), (-28862738139/500000000000 : ℚ), 1⟩,
    ⟨(115051295047/250000000000 : ℚ), (913013657/10000000000 : ℚ), (-49543007593/1000000000000 : ℚ), 1⟩,
    ⟨(468728491821/1000000000000 : ℚ), (751019983/10000000000 : ℚ), (-1680798617/40000000000 : ℚ), 1⟩,
    ⟨(477136778327/1000000000000 : ℚ), (12090403/200000000 : ℚ), (-35092379017/1000000000000 : ℚ), 1⟩,
    ⟨(242704891703/500000000000 : ℚ), (471780467/10000000000 : ℚ), (-5740941291/200000000000 : ℚ), 1⟩,
    ⟨(61690947083/125000000000 : ℚ), (87827107/2500000000 : ℚ), (-4561719153/200000000000 : ℚ), 1⟩,
    ⟨(501470601627/1000000000000 : ℚ), (120907741/5000000000 : ℚ), (-17361851327/1000000000000 : ℚ), 1⟩,
    ⟨(509219722851/1000000000000 : ℚ), (142186201/10000000000 : ℚ), (-12327569167/1000000000000 : ℚ), 1⟩,
    ⟨(20670250881/40000000000 : ℚ), (10290529/2000000000 : ℚ), (-767340997/100000000000 : ℚ), 1⟩,
    ⟨(262031046471/500000000000 : ℚ), (-1249081/400000000 : ℚ), (-16854929/5000000000 : ℚ), 1⟩,
    ⟨(531119585239/1000000000000 : ℚ), (-53293223/5000000000 : ℚ), (120931757/200000000000 : ℚ), 1⟩,
    ⟨(537911746799/1000000000000 : ℚ), (-17526609/1000000000 : ℚ), (4275488457/1000000000000 : ℚ), 1⟩,
    ⟨(54442221471/100000000000 : ℚ), (-118912959/5000000000 : ℚ), (3830426331/500000000000 : ℚ), 1⟩,
    ⟨(110127060937/200000000000 : ℚ), (-58951213/2000000000 : ℚ), (431112271/40000000000 : ℚ), 1⟩,
    ⟨(111307209769/200000000000 : ℚ), (-346485879/10000000000 : ℚ), (13641386939/1000000000000 : ℚ), 1⟩,
    ⟨(281055115891/500000000000 : ℚ), (-196695791/5000000000 : ℚ), (1016552853/62500000000 : ℚ), 1⟩,
    ⟨(567344424799/1000000000000 : ℚ), (-217901391/5000000000 : ℚ), (4664963753/250000000000 : ℚ), 1⟩,
    ⟨(143056504567/250000000000 : ℚ), (-118501999/2500000000 : ℚ), (10418340059/500000000000 : ℚ), 1⟩,
    ⟨(576743252003/1000000000000 : ℚ), (-127064839/2500000000 : ℚ), (4560865839/200000000000 : ℚ), 1⟩,
    ⟨(580885243591/1000000000000 : ℚ), (-53877661/1000000000 : ℚ), (24570682631/1000000000000 : ℚ), 1⟩,
    ⟨(146160503653/250000000000 : ℚ), (-141437629/2500000000 : ℚ), (6535650799/250000000000 : ℚ), 1⟩,
    ⟨(147001128669/250000000000 : ℚ), (-589345721/10000000000 : ℚ), (5505206141/200000000000 : ℚ), 1⟩,
    ⟨(295482321613/500000000000 : ℚ), (-609703193/10000000000 : ℚ), (14363031433/500000000000 : ℚ), 1⟩,
    ⟨(148378817263/250000000000 : ℚ), (-626942259/10000000000 : ℚ), (3718377927/125000000000 : ℚ), 1⟩,
    ⟨(297825123737/500000000000 : ℚ), (-641162297/10000000000 : ℚ), (611850379/20000000000 : ℚ), 1⟩,
    ⟨(298682217571/500000000000 : ℚ), (-652444133/10000000000 : ℚ), (7816371763/250000000000 : ℚ), 1⟩,
    ⟨(299326851213/500000000000 : ℚ), (-660851147/10000000000 : ℚ), (3176823339/100000000000 : ℚ), 1⟩,
    ⟨(599514943371/1000000000000 : ℚ), (-666430143/10000000000 : ℚ), (6420492421/200000000000 : ℚ), 1⟩,
    ⟨(599946083169/1000000000000 : ℚ), (-334605989/5000000000 : ℚ), (2016831077/62500000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-669559349/10000000000 : ℚ), (8072534637/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (287499/1000000 : ℚ)
  x := (179839580241/1000000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control28.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control28.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate28
