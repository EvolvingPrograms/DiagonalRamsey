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

-- Control117
namespace DiagonalRamsey.JointInheritedCertificate117
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(396331150147/1000000000000 : ℚ), (24907440792473/5000000000 : ℚ), (-987972942607647/500000000000 : ℚ), 13⟩,
    ⟨(99174219371/250000000000 : ℚ), (2750012196211/5000000000 : ℚ), (-27413983195067/125000000000 : ℚ), 10⟩,
    ⟨(397427451089/1000000000000 : ℚ), (97984585227/500000000 : ℚ), (-39390608548701/500000000000 : ℚ), 8⟩,
    ⟨(199260555473/500000000000 : ℚ), (123316361851/1250000000 : ℚ), (-20031840970781/500000000000 : ℚ), 7⟩,
    ⟨(399975222333/1000000000000 : ℚ), (587333994871/10000000000 : ℚ), (-24130642943571/1000000000000 : ℚ), 7⟩,
    ⟨(401786282167/1000000000000 : ℚ), (77217446059/2000000000 : ℚ), (-16065473874169/1000000000000 : ℚ), 6⟩,
    ⟨(50493740931/125000000000 : ℚ), (4233041013/156250000 : ℚ), (-2856730130629/250000000000 : ℚ), 6⟩,
    ⟨(101615236441/250000000000 : ℚ), (24884288469/1250000000 : ℚ), (-8516770788511/1000000000000 : ℚ), 5⟩,
    ⟨(409313287853/1000000000000 : ℚ), (151380983041/10000000000 : ℚ), (-32859942621/5000000000 : ℚ), 5⟩,
    ⟨(412500082171/1000000000000 : ℚ), (29547024551/2500000000 : ℚ), (-2604231339697/500000000000 : ℚ), 4⟩,
    ⟨(416013651453/1000000000000 : ℚ), (94217133371/10000000000 : ℚ), (-4215729908467/1000000000000 : ℚ), 4⟩,
    ⟨(419845531203/1000000000000 : ℚ), (9547977103/1250000000 : ℚ), (-867657501139/250000000000 : ℚ), 4⟩,
    ⟨(211993245043/500000000000 : ℚ), (31394462687/5000000000 : ℚ), (-2897196155783/1000000000000 : ℚ), 4⟩,
    ⟨(428426552169/1000000000000 : ℚ), (26105834819/5000000000 : ℚ), (-489301394191/200000000000 : ℚ), 4⟩,
    ⟨(108288755239/250000000000 : ℚ), (21919379983/5000000000 : ℚ), (-2085903860613/1000000000000 : ℚ), 3⟩,
    ⟨(438160505149/1000000000000 : ℚ), (4638965243/1250000000 : ℚ), (-1792909847029/1000000000000 : ℚ), 3⟩,
    ⟨(443430946099/1000000000000 : ℚ), (31636971357/10000000000 : ℚ), (-310329005637/200000000000 : ℚ), 3⟩,
    ⟨(112238411713/250000000000 : ℚ), (27130818467/10000000000 : ℚ), (-5275907949/3906250000 : ℚ), 3⟩,
    ⟨(454715302739/1000000000000 : ℚ), (23384720367/10000000000 : ℚ), (-1181410413347/1000000000000 : ℚ), 3⟩,
    ⟨(18428081337/40000000000 : ℚ), (20242692823/10000000000 : ℚ), (-103762968593/100000000000 : ℚ), 3⟩,
    ⟨(14590606761/31250000000 : ℚ), (17586253617/10000000000 : ℚ), (-228612711019/250000000000 : ℚ), 3⟩,
    ⟨(236646260741/500000000000 : ℚ), (7662080053/5000000000 : ℚ), (-161626646143/200000000000 : ℚ), 3⟩,
    ⟨(3748952713/7812500000 : ℚ), (13385273721/10000000000 : ℚ), (-715748756103/1000000000000 : ℚ), 3⟩,
    ⟨(486603857741/1000000000000 : ℚ), (2928377233/2500000000 : ℚ), (-634979068077/1000000000000 : ℚ), 2⟩,
    ⟨(98698004139/200000000000 : ℚ), (10264199321/10000000000 : ℚ), (-563969439897/1000000000000 : ℚ), 2⟩,
    ⟨(500507846757/1000000000000 : ℚ), (9001444381/10000000000 : ℚ), (-62652743261/125000000000 : ℚ), 2⟩,
    ⟨(507640429369/1000000000000 : ℚ), (3948073081/5000000000 : ℚ), (-445516301011/1000000000000 : ℚ), 2⟩,
    ⟨(257435292757/500000000000 : ℚ), (3462269187/5000000000 : ℚ), (-395850462321/1000000000000 : ℚ), 2⟩,
    ⟨(104436179423/200000000000 : ℚ), (6067071907/10000000000 : ℚ), (-175697777939/500000000000 : ℚ), 2⟩,
    ⟨(132388438247/250000000000 : ℚ), (2653780759/5000000000 : ℚ), (-77865325799/250000000000 : ℚ), 2⟩,
    ⟨(6712142391/12500000000 : ℚ), (4632526171/10000000000 : ℚ), (-275469246957/1000000000000 : ℚ), 2⟩,
    ⟨(544415942249/1000000000000 : ℚ), (503834311/1250000000 : ℚ), (-242931824741/1000000000000 : ℚ), 2⟩,
    ⟨(13796736783/25000000000 : ℚ), (873125013/2500000000 : ℚ), (-213435876051/1000000000000 : ℚ), 2⟩,
    ⟨(55931402229/100000000000 : ℚ), (300996063/1000000000 : ℚ), (-93314769491/500000000000 : ℚ), 2⟩,
    ⟨(566731660581/1000000000000 : ℚ), (2576222097/10000000000 : ℚ), (-20276470669/125000000000 : ℚ), 2⟩,
    ⟨(114820903291/200000000000 : ℚ), (546363153/2500000000 : ℚ), (-139923870369/1000000000000 : ℚ), 2⟩,
    ⟨(116282965611/200000000000 : ℚ), (916328079/5000000000 : ℚ), (-59771339769/500000000000 : ℚ), 2⟩,
    ⟨(588644984201/1000000000000 : ℚ), (756768561/5000000000 : ℚ), (-50437468383/500000000000 : ℚ), 2⟩,
    ⟨(595777566813/1000000000000 : ℚ), (306097379/2500000000 : ℚ), (-83752714839/1000000000000 : ℚ), 2⟩,
    ⟨(4822363143/8000000000 : ℚ), (962005897/10000000000 : ℚ), (-68029629539/1000000000000 : ℚ), 2⟩,
    ⟨(609681555829/1000000000000 : ℚ), (361801057/5000000000 : ℚ), (-5357769993/100000000000 : ℚ), 2⟩,
    ⟨(123283893261/200000000000 : ℚ), (25337743/500000000 : ℚ), (-40284733411/1000000000000 : ℚ), 2⟩,
    ⟨(622992892087/1000000000000 : ℚ), (309349623/10000000000 : ℚ), (-14026068559/500000000000 : ℚ), 2⟩,
    ⟨(629385997217/1000000000000 : ℚ), (6476857/500000000 : ℚ), (-1679307947/100000000000 : ℚ), 2⟩,
    ⟨(127116676029/200000000000 : ℚ), (-34303171/10000000000 : ℚ), (-3215469807/500000000000 : ℚ), 2⟩,
    ⟨(641570110831/1000000000000 : ℚ), (-22949253/1250000000 : ℚ), (3102004999/1000000000000 : ℚ), 2⟩,
    ⟨(647331766717/1000000000000 : ℚ), (-159793153/5000000000 : ℚ), (11865692553/1000000000000 : ℚ), 2⟩,
    ⟨(652854467471/1000000000000 : ℚ), (-13855661/312500000 : ℚ), (19913225683/1000000000000 : ℚ), 2⟩,
    ⟨(658124908421/1000000000000 : ℚ), (-138987177/2500000000 : ℚ), (13645841031/500000000000 : ℚ), 2⟩,
    ⟨(331565196307/500000000000 : ℚ), (-658144107/10000000000 : ℚ), (34042807373/1000000000000 : ℚ), 2⟩,
    ⟨(3339294307/5000000000 : ℚ), (-375360551/5000000000 : ℚ), (20101804733/500000000000 : ℚ), 2⟩,
    ⟨(168074730871/250000000000 : ℚ), (-834343727/10000000000 : ℚ), (11451717469/250000000000 : ℚ), 2⟩,
    ⟨(676439882367/1000000000000 : ℚ), (-909596259/10000000000 : ℚ), (25440790777/500000000000 : ℚ), 2⟩,
    ⟨(170067940529/250000000000 : ℚ), (-976991761/10000000000 : ℚ), (27726663767/500000000000 : ℚ), 2⟩,
    ⟨(341892665699/500000000000 : ℚ), (-51848969/500000000 : ℚ), (29772302387/500000000000 : ℚ), 2⟩,
    ⟨(686972125717/1000000000000 : ℚ), (-544975297/5000000000 : ℚ), (1263502071/20000000000 : ℚ), 2⟩,
    ⟨(137964893561/200000000000 : ℚ), (-1136244529/10000000000 : ℚ), (66361945459/1000000000000 : ℚ), 2⟩,
    ⟨(692335486121/1000000000000 : ℚ), (-588076243/5000000000 : ℚ), (69119888107/1000000000000 : ℚ), 2⟩,
    ⟨(347249565701/500000000000 : ℚ), (-1209921751/10000000000 : ℚ), (71461497233/1000000000000 : ℚ), 2⟩,
    ⟨(696310191237/1000000000000 : ℚ), (-1237758781/10000000000 : ℚ), (18349322859/250000000000 : ℚ), 2⟩,
    ⟨(697764302623/1000000000000 : ℚ), (-157478979/1250000000 : ℚ), (74935862389/1000000000000 : ℚ), 2⟩,
    ⟨(8735724531/12500000000 : ℚ), (-1276273069/10000000000 : ℚ), (19020992749/250000000000 : ℚ), 2⟩,
    ⟨(139917707217/200000000000 : ℚ), (-643590109/5000000000 : ℚ), (19211655963/250000000000 : ℚ), 2⟩,
    ⟨(349977131711/500000000000 : ℚ), (-161577221/1250000000 : ℚ), (19306781997/250000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-1293296713/10000000000 : ℚ), (9659331577/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (194479071833/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control117.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control117.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate117

-- Control118
namespace DiagonalRamsey.JointInheritedCertificate118
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(246044207691/500000000000 : ℚ), (12201960680553/2000000000 : ℚ), (-1502133184341917/500000000000 : ℚ), 13⟩,
    ⟨(492459252509/1000000000000 : ℚ), (6742231545189/10000000000 : ℚ), (-20840734334913/62500000000 : ℚ), 10⟩,
    ⟨(61650004173/125000000000 : ℚ), (601421216057/2500000000 : ℚ), (-119786735575321/1000000000000 : ℚ), 8⟩,
    ⟨(494308973401/1000000000000 : ℚ), (48526521609/400000000 : ℚ), (-15230010797693/250000000000 : ℚ), 7⟩,
    ⟨(495783401027/1000000000000 : ℚ), (144739735407/2000000000 : ℚ), (-3669529018759/100000000000 : ℚ), 7⟩,
    ⟨(124404941059/250000000000 : ℚ), (238381765343/5000000000 : ℚ), (-12216499098333/500000000000 : ℚ), 6⟩,
    ⟨(124953409767/250000000000 : ℚ), (335318389713/10000000000 : ℚ), (-4345153317907/250000000000 : ℚ), 6⟩,
    ⟨(502359740287/1000000000000 : ℚ), (61749909527/2500000000 : ℚ), (-1295614690971/100000000000 : ℚ), 5⟩,
    ⟨(505251934111/1000000000000 : ℚ), (94149369197/5000000000 : ℚ), (-999946722981/100000000000 : ℚ), 5⟩,
    ⟨(254241626497/500000000000 : ℚ), (1473928007/100000000 : ℚ), (-7926566170469/1000000000000 : ℚ), 5⟩,
    ⟨(512045912403/1000000000000 : ℚ), (117810814203/10000000000 : ℚ), (-6417452425899/1000000000000 : ℚ), 4⟩,
    ⟨(515931329581/1000000000000 : ℚ), (23942663183/2500000000 : ℚ), (-2642435870661/500000000000 : ℚ), 4⟩,
    ⟨(260065072109/500000000000 : ℚ), (39471311173/5000000000 : ℚ), (-1103330849161/250000000000 : ℚ), 4⟩,
    ⟨(524632241001/1000000000000 : ℚ), (65828692891/10000000000 : ℚ), (-3728426880387/1000000000000 : ℚ), 4⟩,
    ⟨(105885354797/200000000000 : ℚ), (27715236193/5000000000 : ℚ), (-795131951329/250000000000 : ℚ), 3⟩,
    ⟨(6681277409/12500000000 : ℚ), (4706206829/1000000000 : ℚ), (-2735451951439/1000000000000 : ℚ), 3⟩,
    ⟨(539846270077/1000000000000 : ℚ), (4023985383/1000000000 : ℚ), (-2369055270839/1000000000000 : ℚ), 3⟩,
    ⟨(272723065853/500000000000 : ℚ), (6923008253/2000000000 : ℚ), (-4031030989/1953125000 : ℚ), 3⟩,
    ⟨(11025765741/20000000000 : ℚ), (29931072859/10000000000 : ℚ), (-90354211511/50000000000 : ℚ), 3⟩,
    ⟨(278679330923/500000000000 : ℚ), (5199183481/2000000000 : ℚ), (-158899039797/100000000000 : ℚ), 3⟩,
    ⟨(140910658007/250000000000 : ℚ), (2266360041/1000000000 : ℚ), (-175280985747/125000000000 : ℚ), 3⟩,
    ⟨(570125058961/1000000000000 : ℚ), (19821612827/10000000000 : ℚ), (-620584311621/500000000000 : ℚ), 3⟩,
    ⟨(72098790739/125000000000 : ℚ), (17382154541/10000000000 : ℚ), (-275324959163/250000000000 : ℚ), 3⟩,
    ⟨(583622375669/1000000000000 : ℚ), (15275934529/10000000000 : ℚ), (-195823133993/200000000000 : ℚ), 2⟩,
    ⟨(295302374613/500000000000 : ℚ), (13447709427/10000000000 : ℚ), (-871795038997/1000000000000 : ℚ), 2⟩,
    ⟨(74715078179/125000000000 : ℚ), (94824203/80000000 : ℚ), (-9713240283/12500000000 : ℚ), 2⟩,
    ⟨(604952861519/1000000000000 : ℚ), (261395159/250000000 : ℚ), (-693051510949/1000000000000 : ℚ), 2⟩,
    ⟨(612284034397/1000000000000 : ℚ), (369061879/400000000 : ℚ), (-30912345379/50000000000 : ℚ), 2⟩,
    ⟨(154924120657/250000000000 : ℚ), (8140942649/10000000000 : ℚ), (-137845900709/250000000000 : ℚ), 2⟩,
    ⟨(25086893959/40000000000 : ℚ), (7178840533/10000000000 : ℚ), (-491410418547/1000000000000 : ℚ), 2⟩,
    ⟨(634693623421/1000000000000 : ℚ), (3161714077/5000000000 : ℚ), (-43744610629/100000000000 : ℚ), 2⟩,
    ⟨(642242186557/1000000000000 : ℚ), (1390150071/2500000000 : ℚ), (-194373768939/500000000000 : ℚ), 2⟩,
    ⟨(324899926617/500000000000 : ℚ), (4878460737/10000000000 : ℚ), (-344684634789/1000000000000 : ℚ), 2⟩,
    ⟨(657348416371/1000000000000 : ℚ), (4266927283/10000000000 : ℚ), (-76180113299/250000000000 : ℚ), 2⟩,
    ⟨(664869690817/1000000000000 : ℚ), (1858708021/5000000000 : ℚ), (-268395245573/1000000000000 : ℚ), 2⟩,
    ⟨(168086389291/250000000000 : ℚ), (3222587669/10000000000 : ℚ), (-2941420233/12500000000 : ℚ), 2⟩,
    ⟨(135951601079/200000000000 : ℚ), (2776141923/10000000000 : ℚ), (-41026823451/200000000000 : ℚ), 2⟩,
    ⟨(687089178273/1000000000000 : ℚ), (2372650419/10000000000 : ℚ), (-177560726257/1000000000000 : ℚ), 2⟩,
    ⟨(17358035359/25000000000 : ℚ), (2007419701/10000000000 : ℚ), (-7616794823/50000000000 : ℚ), 2⟩,
    ⟨(350718645283/500000000000 : ℚ), (335275711/2000000000 : ℚ), (-64617395409/500000000000 : ℚ), 2⟩,
    ⟨(354209832061/500000000000 : ℚ), (1375984833/10000000000 : ℚ), (-6753782223/62500000000 : ℚ), 2⟩,
    ⟨(715251713879/1000000000000 : ℚ), (1103148043/10000000000 : ℚ), (-88640146813/1000000000000 : ℚ), 2⟩,
    ⟨(721916980831/1000000000000 : ℚ), (855164781/10000000000 : ℚ), (-70821407909/1000000000000 : ℚ), 2⟩,
    ⟨(182099851941/250000000000 : ℚ), (39354041/625000000 : ℚ), (-27234939437/500000000000 : ℚ), 2⟩,
    ⟨(367341688973/500000000000 : ℚ), (10614121/250000000 : ℚ), (-616666317/15625000000 : ℚ), 2⟩,
    ⟨(740753752741/1000000000000 : ℚ), (238031741/10000000000 : ℚ), (-25706304229/1000000000000 : ℚ), 2⟩,
    ⟨(373297954043/500000000000 : ℚ), (13689719/2000000000 : ℚ), (-2619057763/200000000000 : ℚ), 2⟩,
    ⟨(150439153943/200000000000 : ℚ), (-21403007/2500000000 : ℚ), (-775211821/500000000000 : ℚ), 2⟩,
    ⟨(23673120221/31250000000 : ℚ), (-22541159/1000000000 : ℚ), (562643229/62500000000 : ℚ), 2⟩,
    ⟨(762615265807/1000000000000 : ℚ), (-352065487/10000000000 : ℚ), (2328590749/125000000000 : ℚ), 2⟩,
    ⟨(767409798791/1000000000000 : ℚ), (-466560029/10000000000 : ℚ), (27387507911/1000000000000 : ℚ), 2⟩,
    ⟨(385955947787/500000000000 : ℚ), (-284883471/5000000000 : ℚ), (4416348467/125000000000 : ℚ), 2⟩,
    ⟨(77611071021/100000000000 : ℚ), (-662455767/10000000000 : ℚ), (5313111271/125000000000 : ℚ), 2⟩,
    ⟨(779996127389/1000000000000 : ℚ), (-372652227/5000000000 : ℚ), (24475435889/500000000000 : ℚ), 2⟩,
    ⟨(391779393399/500000000000 : ℚ), (-163781683/2000000000 : ℚ), (27352498911/500000000000 : ℚ), 2⟩,
    ⟨(9834876321/12500000000 : ℚ), (-3535153/40000000 : ℚ), (3737446843/62500000000 : ℚ), 2⟩,
    ⟨(157936459901/200000000000 : ℚ), (-940396313/10000000000 : ℚ), (32130584601/500000000000 : ℚ), 2⟩,
    ⟨(198057100181/250000000000 : ℚ), (-24728057/250000000 : ℚ), (68115153887/1000000000000 : ℚ), 2⟩,
    ⟨(198605568889/250000000000 : ℚ), (-515148917/5000000000 : ℚ), (14276340283/200000000000 : ℚ), 2⟩,
    ⟨(159251727753/200000000000 : ℚ), (-212840113/2000000000 : ℚ), (74078115049/1000000000000 : ℚ), 2⟩,
    ⟨(79773306639/100000000000 : ℚ), (-54552859/500000000 : ℚ), (76218572169/1000000000000 : ℚ), 2⟩,
    ⟨(99855250801/125000000000 : ℚ), (-1111046083/10000000000 : ℚ), (77814259727/1000000000000 : ℚ), 2⟩,
    ⟨(799582787283/1000000000000 : ℚ), (-1798879/16000000 : ℚ), (2464796211/31250000000 : ℚ), 2⟩,
    ⟨(79995362441/100000000000 : ℚ), (-1130904323/10000000000 : ℚ), (79401721399/1000000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1131728927/10000000000 : ℚ), (79467687823/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (139122627961/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control118.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control118.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate118

-- Control119
namespace DiagonalRamsey.JointInheritedCertificate119
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(176507353387/500000000000 : ℚ), (5455798331591/1000000000 : ℚ), (-1927427485276819/1000000000000 : ℚ), 13⟩,
    ⟨(44164020821/125000000000 : ℚ), (1205196226967/2000000000 : ℚ), (-213910821206919/1000000000000 : ℚ), 10⟩,
    ⟨(7078127391/20000000000 : ℚ), (1074138346091/5000000000 : ℚ), (-3073180660561/40000000000 : ℚ), 8⟩,
    ⟨(44349485529/125000000000 : ℚ), (1082166355521/10000000000 : ℚ), (-39062255186481/1000000000000 : ℚ), 7⟩,
    ⟨(22248660481/62500000000 : ℚ), (644718432383/10000000000 : ℚ), (-47040425991/2000000000 : ℚ), 7⟩,
    ⟨(357451570753/1000000000000 : ℚ), (424108858483/10000000000 : ℚ), (-3130579864983/200000000000 : ℚ), 6⟩,
    ⟨(359211344811/1000000000000 : ℚ), (297799556677/10000000000 : ℚ), (-556403647767/50000000000 : ℚ), 6⟩,
    ⟨(361253650419/1000000000000 : ℚ), (6842867723/312500000 : ℚ), (-2072301412531/250000000000 : ℚ), 5⟩,
    ⟨(72714713497/200000000000 : ℚ), (20826047313/1250000000 : ℚ), (-399499429479/62500000000 : ℚ), 5⟩,
    ⟨(91541376781/250000000000 : ℚ), (65070353577/5000000000 : ℚ), (-2530873172311/500000000000 : ℚ), 5⟩,
    ⟨(46127903141/125000000000 : ℚ), (103784977471/10000000000 : ℚ), (-2046587639589/500000000000 : ℚ), 4⟩,
    ⟨(372139837003/1000000000000 : ℚ), (84161250209/10000000000 : ℚ), (-1683070581107/500000000000 : ℚ), 4⟩,
    ⟨(375507834559/1000000000000 : ℚ), (69187931457/10000000000 : ℚ), (-280654251537/100000000000 : ℚ), 4⟩,
    ⟨(379119103993/1000000000000 : ℚ), (57526788757/10000000000 : ℚ), (-473331891261/200000000000 : ℚ), 4⟩,
    ⟨(382964945443/1000000000000 : ℚ), (24143065591/5000000000 : ℚ), (-503658933727/250000000000 : ℚ), 4⟩,
    ⟨(193518046969/500000000000 : ℚ), (1634141031/400000000 : ℚ), (-54017087621/31250000000 : ℚ), 3⟩,
    ⟨(195661370863/500000000000 : ℚ), (17398633577/5000000000 : ℚ), (-1492903261423/1000000000000 : ℚ), 3⟩,
    ⟨(49476820237/125000000000 : ℚ), (47689783/16000000 : ℚ), (-25930211231/20000000000 : ℚ), 3⟩,
    ⟨(400500733261/1000000000000 : ℚ), (25651212087/10000000000 : ℚ), (-1131115452353/1000000000000 : ℚ), 3⟩,
    ⟨(50671245803/125000000000 : ℚ), (22161334777/10000000000 : ℚ), (-198105039941/200000000000 : ℚ), 3⟩,
    ⟨(205205265487/500000000000 : ℚ), (3841276751/2000000000 : ℚ), (-108752483461/125000000000 : ℚ), 3⟩,
    ⟨(332488227/800000000 : ℚ), (8343068913/5000000000 : ℚ), (-153190258543/200000000000 : ℚ), 3⟩,
    ⟨(420956698093/1000000000000 : ℚ), (7261215419/5000000000 : ℚ), (-675463925517/1000000000000 : ℚ), 3⟩,
    ⟨(213218447011/500000000000 : ℚ), (12653613793/10000000000 : ℚ), (-596296981609/1000000000000 : ℚ), 3⟩,
    ⟨(86407533853/200000000000 : ℚ), (689410639/625000000 : ℚ), (-526641918131/1000000000000 : ℚ), 3⟩,
    ⟨(87549106213/200000000000 : ℚ), (9613806619/10000000000 : ℚ), (-46503823547/100000000000 : ℚ), 2⟩,
    ⟨(443546728681/1000000000000 : ℚ), (8371299079/10000000000 : ℚ), (-410296261771/1000000000000 : ℚ), 2⟩,
    ⟨(449427286521/1000000000000 : ℚ), (454804993/625000000 : ℚ), (-72287843753/200000000000 : ℚ), 2⟩,
    ⟨(91074607561/200000000000 : ℚ), (1261802971/2000000000 : ℚ), (-79414813999/250000000000 : ℚ), 2⟩,
    ⟨(461369658699/1000000000000 : ℚ), (5449867047/10000000000 : ℚ), (-34785466477/125000000000 : ℚ), 2⟩,
    ⟨(233701351409/500000000000 : ℚ), (2342286437/5000000000 : ℚ), (-121374549827/500000000000 : ℚ), 2⟩,
    ⟨(118364409007/250000000000 : ℚ), (1000169329/2500000000 : ℚ), (-210580498827/1000000000000 : ℚ), 2⟩,
    ⟨(479519871467/1000000000000 : ℚ), (84692241/250000000 : ℚ), (-90687834979/500000000000 : ℚ), 2⟩,
    ⟨(242787402339/500000000000 : ℚ), (354591397/1250000000 : ℚ), (-154792177291/1000000000000 : ℚ), 2⟩,
    ⟨(122901962199/250000000000 : ℚ), (585063513/2500000000 : ℚ), (-130537182913/1000000000000 : ℚ), 2⟩,
    ⟨(49760446969/100000000000 : ℚ), (1891815077/10000000000 : ℚ), (-108359206799/1000000000000 : ℚ), 2⟩,
    ⟨(20142008839/40000000000 : ℚ), (371473203/2500000000 : ℚ), (-22010361033/250000000000 : ℚ), 2⟩,
    ⟨(101886155763/200000000000 : ℚ), (111773869/1000000000 : ℚ), (-34698155447/500000000000 : ℚ), 2⟩,
    ⟨(515231976431/1000000000000 : ℚ), (979069/12500000 : ℚ), (-653262113/12500000000 : ℚ), 2⟩,
    ⟨(52093983823/100000000000 : ℚ), (478895669/10000000000 : ℚ), (-7298726469/200000000000 : ℚ), 2⟩,
    ⟨(526540613473/1000000000000 : ℚ), (50395359/2500000000 : ℚ), (-21970503957/1000000000000 : ℚ), 2⟩,
    ⟨(532020809403/1000000000000 : ℚ), (-12841733/2500000000 : ℚ), (-2145805837/250000000000 : ℚ), 2⟩,
    ⟨(268683611873/500000000000 : ℚ), (-282286997/10000000000 : ℚ), (940817637/250000000000 : ℚ), 2⟩,
    ⟨(271283488261/500000000000 : ℚ), (-246611237/5000000000 : ℚ), (3030507171/200000000000 : ℚ), 2⟩,
    ⟨(34225471317/62500000000 : ℚ), (-137192719/2000000000 : ℚ), (25658144609/1000000000000 : ℚ), 2⟩,
    ⟨(276238387117/500000000000 : ℚ), (-862081143/10000000000 : ℚ), (8836241773/250000000000 : ℚ), 2⟩,
    ⟨(557162945599/1000000000000 : ℚ), (-51147763/500000000 : ℚ), (44270265167/1000000000000 : ℚ), 2⟩,
    ⟨(56165476577/100000000000 : ℚ), (-292449971/2500000000 : ℚ), (10496924753/200000000000 : ℚ), 2⟩,
    ⟨(282970706779/500000000000 : ℚ), (-26073671/200000000 : ℚ), (60032748623/1000000000000 : ℚ), 2⟩,
    ⟨(570012562053/1000000000000 : ℚ), (-142554713/1000000000 : ℚ), (33477075171/500000000000 : ℚ), 2⟩,
    ⟨(286929201751/500000000000 : ℚ), (-768109499/5000000000 : ℚ), (73283732827/1000000000000 : ℚ), 2⟩,
    ⟨(577469672937/1000000000000 : ℚ), (-818214007/5000000000 : ℚ), (39526150161/500000000000 : ℚ), 2⟩,
    ⟨(145209417623/250000000000 : ℚ), (-34536293/200000000 : ℚ), (84286994459/1000000000000 : ℚ), 2⟩,
    ⟨(583954282367/1000000000000 : ℚ), (-1807940537/10000000000 : ℚ), (44505836091/500000000000 : ℚ), 2⟩,
    ⟨(586812000371/1000000000000 : ℚ), (-235037081/1250000000 : ℚ), (11655903957/125000000000 : ℚ), 2⟩,
    ⟨(589403940011/1000000000000 : ℚ), (-1944310309/10000000000 : ℚ), (19402378723/200000000000 : ℚ), 2⟩,
    ⟨(147930964269/250000000000 : ℚ), (-400070237/2000000000 : ℚ), (50160721463/500000000000 : ℚ), 2⟩,
    ⟨(148441540671/250000000000 : ℚ), (-102436819/500000000 : ℚ), (12898679541/125000000000 : ℚ), 2⟩,
    ⟨(297762968371/500000000000 : ℚ), (-2089734741/10000000000 : ℚ), (52813689177/500000000000 : ℚ), 2⟩,
    ⟨(2984994699/5000000000 : ℚ), (-530892617/2500000000 : ℚ), (26911217587/250000000000 : ℚ), 2⟩,
    ⟨(18693175727/31250000000 : ℚ), (-537606521/2500000000 : ℚ), (6828108323/62500000000 : ℚ), 2⟩,
    ⟨(299535568973/500000000000 : ℚ), (-2170444837/10000000000 : ℚ), (5522405369/50000000000 : ℚ), 2⟩,
    ⟨(1171221369/1953125000 : ℚ), (-2183732571/10000000000 : ℚ), (111244531621/1000000000000 : ℚ), 2⟩,
    ⟨(299981400361/500000000000 : ℚ), (-2190359097/10000000000 : ℚ), (22328399987/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1095593301/5000000000 : ℚ), (27922912173/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (101480911773/500000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control119.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control119.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate119

-- Control121
namespace DiagonalRamsey.JointInheritedCertificate121
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(88707985601/500000000000 : ℚ), (6035256479571/10000000000 : ℚ), (-53808502169051/500000000000 : ℚ), 10⟩,
    ⟨(178727746807/1000000000000 : ℚ), (129614845699/2000000000 : ℚ), (-11909885286369/1000000000000 : ℚ), 7⟩,
    ⟨(181338664901/1000000000000 : ℚ), (221767028799/10000000000 : ℚ), (-425332036029/100000000000 : ℚ), 6⟩,
    ⟨(37044716183/200000000000 : ℚ), (53200063603/5000000000 : ℚ), (-1071927444419/500000000000 : ℚ), 5⟩,
    ⟨(38069016197/200000000000 : ℚ), (12012905473/2000000000 : ℚ), (-255148668693/200000000000 : ℚ), 4⟩,
    ⟨(39330768453/200000000000 : ℚ), (37302241403/10000000000 : ℚ), (-836268568467/1000000000000 : ℚ), 4⟩,
    ⟨(40817821587/200000000000 : ℚ), (24657872763/10000000000 : ℚ), (-29172307853/50000000000 : ℚ), 3⟩,
    ⟨(212579272323/1000000000000 : ℚ), (17024936069/10000000000 : ℚ), (-424743233241/1000000000000 : ℚ), 3⟩,
    ⟨(222042570503/1000000000000 : ℚ), (12130516131/10000000000 : ℚ), (-159290453487/500000000000 : ℚ), 3⟩,
    ⟨(232387865743/1000000000000 : ℚ), (4421837547/5000000000 : ℚ), (-122014209071/500000000000 : ℚ), 3⟩,
    ⟨(30439440899/125000000000 : ℚ), (3276726181/5000000000 : ℚ), (-11851194949/62500000000 : ℚ), 2⟩,
    ⟨(63829597347/250000000000 : ℚ), (4908306393/10000000000 : ℚ), (-148646045271/1000000000000 : ℚ), 2⟩,
    ⟨(66920696079/250000000000 : ℚ), (1847819157/5000000000 : ℚ), (-58488168063/500000000000 : ℚ), 2⟩,
    ⟨(140244818047/500000000000 : ℚ), (1390798413/5000000000 : ℚ), (-22988286749/250000000000 : ℚ), 2⟩,
    ⟨(293615607739/1000000000000 : ℚ), (415812973/2000000000 : ℚ), (-71807780901/1000000000000 : ℚ), 2⟩,
    ⟨(38366786121/125000000000 : ℚ), (76486941/500000000 : ℚ), (-55327977777/1000000000000 : ℚ), 2⟩,
    ⟨(400396767/1250000000 : ℚ), (1093658903/10000000000 : ℚ), (-41662259533/1000000000000 : ℚ), 2⟩,
    ⟨(83409023707/250000000000 : ℚ), (742868159/10000000000 : ℚ), (-3775008821/125000000000 : ℚ), 2⟩,
    ⟨(346762066473/1000000000000 : ℚ), (228726033/5000000000 : ℚ), (-20495904901/1000000000000 : ℚ), 2⟩,
    ⟨(359568918251/1000000000000 : ℚ), (222998551/10000000000 : ℚ), (-3054971003/250000000000 : ℚ), 2⟩,
    ⟨(18596665659/50000000000 : ℚ), (28930973/10000000000 : ℚ), (-1281185469/250000000000 : ℚ), 2⟩,
    ⟨(23983510961/62500000000 : ℚ), (-66304141/5000000000 : ℚ), (97672593/100000000000 : ℚ), 2⟩,
    ⟨(15794553473/40000000000 : ℚ), (-267518931/10000000000 : ℚ), (778422029/125000000000 : ℚ), 2⟩,
    ⟨(12662785377/31250000000 : ℚ), (-380269913/10000000000 : ℚ), (10736860411/1000000000000 : ℚ), 2⟩,
    ⟨(103668107561/250000000000 : ℚ), (-94853909/2000000000 : ℚ), (7294825083/500000000000 : ℚ), 2⟩,
    ⟨(52895324329/125000000000 : ℚ), (-69016067/1250000000 : ℚ), (278920219/15625000000 : ℚ), 2⟩,
    ⟨(215298930151/500000000000 : ℚ), (-615848687/10000000000 : ℚ), (20570737167/1000000000000 : ℚ), 2⟩,
    ⟨(218453310791/500000000000 : ℚ), (-666959183/10000000000 : ℚ), (569688259/25000000000 : ℚ), 2⟩,
    ⟨(110507030413/250000000000 : ℚ), (-141323057/2000000000 : ℚ), (6132554781/250000000000 : ℚ), 2⟩,
    ⟨(222956518833/500000000000 : ℚ), (-147133897/2000000000 : ℚ), (12910056143/500000000000 : ℚ), 2⟩,
    ⟨(5606549447/12500000000 : ℚ), (-754722001/10000000000 : ℚ), (26672167941/1000000000000 : ℚ), 2⟩,
    ⟨(89967146273/200000000000 : ℚ), (-382077617/5000000000 : ℚ), (13547944379/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-765330077/10000000000 : ℚ), (6787186761/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (69677767621/200000000000 : ℚ)
  μ := (9/20 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control121.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control121.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate121

-- Control122
namespace DiagonalRamsey.JointInheritedCertificate122
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(93745009339/500000000000 : ℚ), (6154613625707/10000000000 : ℚ), (-57983370960603/500000000000 : ℚ), 10⟩,
    ⟨(188849561653/1000000000000 : ℚ), (661222061671/10000000000 : ℚ), (-12833841937637/1000000000000 : ℚ), 7⟩,
    ⟨(191555554463/1000000000000 : ℚ), (113209995089/5000000000 : ℚ), (-2291611066243/500000000000 : ℚ), 6⟩,
    ⟨(195581936917/1000000000000 : ℚ), (21742991233/2000000000 : ℚ), (-1155048902163/500000000000 : ℚ), 5⟩,
    ⟨(803559731/4000000000 : ℚ), (61419591651/10000000000 : ℚ), (-687323422127/500000000000 : ℚ), 4⟩,
    ⟨(207428423061/1000000000000 : ℚ), (38173881419/10000000000 : ℚ), (-225273704849/250000000000 : ℚ), 4⟩,
    ⟨(43026887723/200000000000 : ℚ), (25253757563/10000000000 : ℚ), (-628682352963/1000000000000 : ℚ), 3⟩,
    ⟨(223933766269/1000000000000 : ℚ), (4362478609/2500000000 : ℚ), (-57212153073/125000000000 : ℚ), 3⟩,
    ⟨(233741663687/1000000000000 : ℚ), (12443168441/10000000000 : ℚ), (-343334511479/1000000000000 : ℚ), 3⟩,
    ⟨(3819744929/15625000000 : ℚ), (4539619589/5000000000 : ℚ), (-263039337049/1000000000000 : ℚ), 3⟩,
    ⟨(255996542741/1000000000000 : ℚ), (3367170697/5000000000 : ℚ), (-204455110417/1000000000000 : ℚ), 2⟩,
    ⟨(10729167909/40000000000 : ℚ), (2524703669/5000000000 : ℚ), (-32070820551/200000000000 : ℚ), 2⟩,
    ⟨(56208766651/200000000000 : ℚ), (951796137/2500000000 : ℚ), (-31570578419/250000000000 : ℚ), 2⟩,
    ⟨(36789629673/125000000000 : ℚ), (1435410309/5000000000 : ℚ), (-99376201629/1000000000000 : ℚ), 2⟩,
    ⟨(153960490951/500000000000 : ℚ), (43023907/200000000 : ℚ), (-4858076371/62500000000 : ℚ), 2⟩,
    ⟨(160862326693/500000000000 : ℚ), (397157383/2500000000 : ℚ), (-60034392893/1000000000000 : ℚ), 2⟩,
    ⟨(335595114933/1000000000000 : ℚ), (571097981/5000000000 : ℚ), (-5671684057/125000000000 : ℚ), 2⟩,
    ⟨(21837424151/62500000000 : ℚ), (783243481/10000000000 : ℚ), (-6617561799/200000000000 : ℚ), 2⟩,
    ⟨(181501365467/500000000000 : ℚ), (122837687/2500000000 : ℚ), (-22696590667/1000000000000 : ℚ), 2⟩,
    ⟨(376275935063/1000000000000 : ℚ), (2013841/80000000 : ℚ), (-3460899237/250000000000 : ℚ), 2⟩,
    ⟨(389090570593/1000000000000 : ℚ), (2676153/500000000 : ℚ), (-3130815299/500000000000 : ℚ), 2⟩,
    ⟨(401323225577/1000000000000 : ℚ), (-111342039/10000000000 : ℚ), (62943709/250000000000 : ℚ), 2⟩,
    ⟨(206428046431/500000000000 : ℚ), (-248928827/10000000000 : ℚ), (22856557/3906250000 : ℚ), 2⟩,
    ⟨(423578104631/1000000000000 : ℚ), (-363832809/10000000000 : ℚ), (5327865739/500000000000 : ℚ), 2⟩,
    ⟨(433386002049/1000000000000 : ℚ), (-14361267/312500000 : ℚ), (14756813917/1000000000000 : ℚ), 2⟩,
    ⟨(442185329703/1000000000000 : ℚ), (-269399613/5000000000 : ℚ), (4556334587/250000000000 : ℚ), 2⟩,
    ⟨(449891345257/1000000000000 : ℚ), (-150902543/2500000000 : ℚ), (21115895371/1000000000000 : ℚ), 2⟩,
    ⟨(28526864723/62500000000 : ℚ), (-163892157/2500000000 : ℚ), (23470303159/1000000000000 : ℚ), 2⟩,
    ⟨(461737831401/1000000000000 : ℚ), (-695865047/10000000000 : ℚ), (395627731/15625000000 : ℚ), 2⟩,
    ⟨(93152842771/200000000000 : ℚ), (-145075627/2000000000 : ℚ), (13344408843/500000000000 : ℚ), 2⟩,
    ⟨(93694041333/200000000000 : ℚ), (-7447267/100000000 : ℚ), (13796306917/500000000000 : ℚ), 2⟩,
    ⟨(469829749641/1000000000000 : ℚ), (-754305051/10000000000 : ℚ), (1402099053/50000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-755497899/10000000000 : ℚ), (28098034763/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (68611974499/200000000000 : ℚ)
  μ := (47/100 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control122.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control122.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate122

-- Control123
namespace DiagonalRamsey.JointInheritedCertificate123
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(96318755577/500000000000 : ℚ), (6217191792929/10000000000 : ℚ), (-60178351887531/500000000000 : ℚ), 10⟩,
    ⟨(97010203099/500000000000 : ℚ), (167029034179/2500000000 : ℚ), (-1331962389623/100000000000 : ℚ), 7⟩,
    ⟨(196772878253/1000000000000 : ℚ), (228860293119/10000000000 : ℚ), (-951334779087/200000000000 : ℚ), 6⟩,
    ⟨(100434209753/500000000000 : ℚ), (27482341867/2500000000 : ℚ), (-1198752279873/500000000000 : ℚ), 5⟩,
    ⟨(25783448457/125000000000 : ℚ), (31065380203/5000000000 : ℚ), (-1426649636393/1000000000000 : ℚ), 4⟩,
    ⟨(53229596441/250000000000 : ℚ), (38631539091/10000000000 : ℚ), (-467590851087/500000000000 : ℚ), 4⟩,
    ⟨(220756763007/1000000000000 : ℚ), (5113355547/2000000000 : ℚ), (-130494052117/200000000000 : ℚ), 3⟩,
    ⟨(229707231529/1000000000000 : ℚ), (17673266009/10000000000 : ℚ), (-475028486523/1000000000000 : ℚ), 3⟩,
    ⟨(239683593423/1000000000000 : ℚ), (12607564619/10000000000 : ℚ), (-71271068377/200000000000 : ℚ), 3⟩,
    ⟨(250589770871/1000000000000 : ℚ), (4601578357/5000000000 : ℚ), (-273042054033/1000000000000 : ℚ), 3⟩,
    ⟨(8197522857/31250000000 : ℚ), (6829534491/10000000000 : ℚ), (-106132065101/500000000000 : ℚ), 2⟩,
    ⟨(274763499517/1000000000000 : ℚ), (1280921281/2500000000 : ℚ), (-6660801439/40000000000 : ℚ), 2⟩,
    ⟨(71949561123/250000000000 : ℚ), (1932958387/5000000000 : ℚ), (-131186915293/1000000000000 : ℚ), 2⟩,
    ⟨(30129943463/100000000000 : ℚ), (2917803757/10000000000 : ℚ), (-51646269209/500000000000 : ℚ), 2⟩,
    ⟨(39392130761/125000000000 : ℚ), (437835123/2000000000 : ℚ), (-3234314727/40000000000 : ℚ), 2⟩,
    ⟨(65835563021/200000000000 : ℚ), (323926349/2000000000 : ℚ), (-62526102459/1000000000000 : ℚ), 2⟩,
    ⟨(343286521399/1000000000000 : ℚ), (1167737481/10000000000 : ℚ), (-23671938393/500000000000 : ℚ), 2⟩,
    ⟨(22332955651/62500000000 : ℚ), (201119349/2500000000 : ℚ), (-34627230913/1000000000000 : ℚ), 2⟩,
    ⟨(185582450937/500000000000 : ℚ), (101832821/2000000000 : ℚ), (-23876768019/1000000000000 : ℚ), 2⟩,
    ⟨(96166523003/250000000000 : ℚ), (33351593/1250000000 : ℚ), (-7361197579/500000000000 : ℚ), 2⟩,
    ⟨(397700836987/1000000000000 : ℚ), (33208323/5000000000 : ℚ), (-6886412749/1000000000000 : ℚ), 2⟩,
    ⟨(10253590127/25000000000 : ℚ), (-5010413/500000000 : ℚ), (-158306983/1000000000000 : ℚ), 2⟩,
    ⟨(421874565633/1000000000000 : ℚ), (-14950741/625000000 : ℚ), (2811404977/500000000000 : ℚ), 2⟩,
    ⟨(432780743081/1000000000000 : ℚ), (-88814063/2500000000 : ℚ), (10580647903/1000000000000 : ℚ), 2⟩,
    ⟨(27672319061/62500000000 : ℚ), (-225949873/5000000000 : ℚ), (7405349743/500000000000 : ℚ), 2⟩,
    ⟨(451707573497/1000000000000 : ℚ), (-531869839/10000000000 : ℚ), (2298346983/125000000000 : ℚ), 2⟩,
    ⟨(22977297537/50000000000 : ℚ), (-597259231/10000000000 : ℚ), (10682911923/500000000000 : ℚ), 2⟩,
    ⟨(29137296803/62500000000 : ℚ), (-649667479/10000000000 : ℚ), (23791502367/1000000000000 : ℚ), 2⟩,
    ⟨(471595916999/1000000000000 : ℚ), (-690303619/10000000000 : ℚ), (1606052627/62500000000 : ℚ), 2⟩,
    ⟨(118922864563/250000000000 : ℚ), (-720060207/10000000000 : ℚ), (27106213497/1000000000000 : ℚ), 2⟩,
    ⟨(239221965153/500000000000 : ℚ), (-739565883/10000000000 : ℚ), (28036757409/1000000000000 : ℚ), 2⟩,
    ⟨(9596536507/20000000000 : ℚ), (-749221253/10000000000 : ℚ), (14249689633/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-750423657/10000000000 : ℚ), (28557084251/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (340325588023/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control123.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control123.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate123

-- Control124
namespace DiagonalRamsey.JointInheritedCertificate124
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8126174557/40000000000 : ℚ), (6347955610649/10000000000 : ℚ), (-25917069829707/200000000000 : ℚ), 10⟩,
    ⟨(51145723849/250000000000 : ℚ), (136504706893/2000000000 : ℚ), (-358521010041/25000000000 : ℚ), 7⟩,
    ⟨(207426200801/1000000000000 : ℚ), (116980557243/5000000000 : ℚ), (-2560652625849/500000000000 : ℚ), 6⟩,
    ⟨(105828448777/500000000000 : ℚ), (112468503937/10000000000 : ℚ), (-516250264209/200000000000 : ℚ), 5⟩,
    ⟨(217234241731/1000000000000 : ℚ), (63618225271/10000000000 : ℚ), (-61438818249/40000000000 : ℚ), 4⟩,
    ⟨(224104520461/1000000000000 : ℚ), (39589151537/10000000000 : ℚ), (-1006840509811/1000000000000 : ℚ), 4⟩,
    ⟨(116100784601/500000000000 : ℚ), (6555507169/2500000000 : ℚ), (-140495956253/200000000000 : ℚ), 3⟩,
    ⟨(241447408949/1000000000000 : ℚ), (18141013453/10000000000 : ℚ), (-511466426859/1000000000000 : ℚ), 3⟩,
    ⟨(62938249303/250000000000 : ℚ), (12951986859/10000000000 : ℚ), (-383733815967/1000000000000 : ℚ), 3⟩,
    ⟨(263019085541/1000000000000 : ℚ), (4731433289/5000000000 : ℚ), (-7351952533/25000000000 : ℚ), 3⟩,
    ⟨(68784293837/250000000000 : ℚ), (7029100113/10000000000 : ℚ), (-5717278761/25000000000 : ℚ), 2⟩,
    ⟨(287990562803/1000000000000 : ℚ), (5279432779/10000000000 : ℚ), (-179495812021/1000000000000 : ℚ), 2⟩,
    ⟨(150727731379/500000000000 : ℚ), (498634553/1250000000 : ℚ), (-141514235599/1000000000000 : ℚ), 2⟩,
    ⟨(315402200867/1000000000000 : ℚ), (188519889/625000000 : ℚ), (-27886418759/250000000000 : ℚ), 2⟩,
    ⟨(329696462417/1000000000000 : ℚ), (1134396521/5000000000 : ℚ), (-8745866373/100000000000 : ℚ), 2⟩,
    ⟨(68840117171/200000000000 : ℚ), (1684592513/10000000000 : ℚ), (-16947907257/250000000000 : ℚ), 2⟩,
    ⟨(71754977709/200000000000 : ℚ), (244244207/2000000000 : ℚ), (-25758665301/500000000000 : ℚ), 2⟩,
    ⟨(373279011983/1000000000000 : ℚ), (212225343/2500000000 : ℚ), (-37898561527/1000000000000 : ℚ), 2⟩,
    ⟨(387573273533/1000000000000 : ℚ), (68298693/1250000000 : ℚ), (-26396811901/1000000000000 : ℚ), 2⟩,
    ⟨(200760005821/500000000000 : ℚ), (298287879/10000000000 : ℚ), (-16612780421/1000000000000 : ℚ), 2⟩,
    ⟨(414984911597/1000000000000 : ℚ), (1457493/156250000 : ℚ), (-257707617/31250000000 : ℚ), 2⟩,
    ⟨(106959574763/250000000000 : ℚ), (-77055171/10000000000 : ℚ), (-535462287/500000000000 : ℚ), 2⟩,
    ⟨(439956388859/1000000000000 : ℚ), (-27380867/1250000000 : ℚ), (1017680921/200000000000 : ℚ), 2⟩,
    ⟨(112805619297/250000000000 : ℚ), (-337497577/10000000000 : ℚ), (5182657081/500000000000 : ℚ), 2⟩,
    ⟨(461528065451/1000000000000 : ℚ), (-87214799/2000000000 : ℚ), (2972670863/200000000000 : ℚ), 2⟩,
    ⟨(235386952599/500000000000 : ℚ), (-129397091/2500000000 : ℚ), (2332835277/125000000000 : ℚ), 2⟩,
    ⟨(478870953939/1000000000000 : ℚ), (-292099683/5000000000 : ℚ), (4365047543/200000000000 : ℚ), 2⟩,
    ⟨(485741232669/1000000000000 : ℚ), (-127511539/2000000000 : ℚ), (24398584033/1000000000000 : ℚ), 2⟩,
    ⟨(245659288423/500000000000 : ℚ), (-135782303/2000000000 : ℚ), (26418763161/1000000000000 : ℚ), 2⟩,
    ⟨(495549273599/1000000000000 : ℚ), (-177295641/2500000000 : ℚ), (5582481409/200000000000 : ℚ), 2⟩,
    ⟨(498392579003/1000000000000 : ℚ), (-729020197/10000000000 : ℚ), (14449135137/500000000000 : ℚ), 2⟩,
    ⟨(19992844419/40000000000 : ℚ), (-738838303/10000000000 : ℚ), (29388297511/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-370030449/5000000000 : ℚ), (5889883261/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (41839337923/125000000000 : ℚ)
  μ := (1/2 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control124.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control124.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate124

-- Control125
namespace DiagonalRamsey.JointInheritedCertificate125
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42797516627/200000000000 : ℚ), (1621750576609/2500000000 : ℚ), (-34868103256683/250000000000 : ℚ), 10⟩,
    ⟨(215460228561/1000000000000 : ℚ), (139569135871/2000000000 : ℚ), (-7717457974447/500000000000 : ℚ), 7⟩,
    ⟨(218391337033/1000000000000 : ℚ), (47877455099/2000000000 : ℚ), (-1102390412483/200000000000 : ℚ), 6⟩,
    ⟨(111376340187/500000000000 : ℚ), (57585322609/5000000000 : ℚ), (-111124364359/40000000000 : ℚ), 5⟩,
    ⟨(14281391029/62500000000 : ℚ), (65201949911/10000000000 : ℚ), (-1653093488067/1000000000000 : ℚ), 4⟩,
    ⟨(235584693741/1000000000000 : ℚ), (10152325167/2500000000 : ℚ), (-1083615990991/1000000000000 : ℚ), 4⟩,
    ⟨(243931784463/1000000000000 : ℚ), (26920485263/10000000000 : ℚ), (-756063248357/1000000000000 : ℚ), 3⟩,
    ⟨(15841446349/62500000000 : ℚ), (18639902713/10000000000 : ℚ), (-550512297361/1000000000000 : ℚ), 3⟩,
    ⟨(264086972923/1000000000000 : ℚ), (13319551503/10000000000 : ℚ), (-413076540197/1000000000000 : ℚ), 3⟩,
    ⟨(137850482589/500000000000 : ℚ), (60876063/62500000 : ℚ), (-316628986269/1000000000000 : ℚ), 3⟩,
    ⟨(144096634627/500000000000 : ℚ), (7242275647/10000000000 : ℚ), (-246307673703/1000000000000 : ℚ), 2⟩,
    ⟨(150721788717/500000000000 : ℚ), (5445852253/10000000000 : ℚ), (-193418744579/1000000000000 : ℚ), 2⟩,
    ⟨(315324282007/1000000000000 : ℚ), (412069413/1000000000 : ℚ), (-2384437411/15625000000 : ℚ), 2⟩,
    ⟨(1648508521/5000000000 : ℚ), (390199217/1250000000 : ℚ), (-60208908343/500000000000 : ℚ), 2⟩,
    ⟨(172218690789/500000000000 : ℚ), (2353852237/10000000000 : ℚ), (-94565394241/1000000000000 : ℚ), 2⟩,
    ⟨(44923675189/125000000000 : ℚ), (43848939/250000000 : ℚ), (-36736428677/500000000000 : ℚ), 2⟩,
    ⟨(374413767877/1000000000000 : ℚ), (63914263/500000000 : ℚ), (-56033764661/1000000000000 : ℚ), 2⟩,
    ⟨(389365787811/1000000000000 : ℚ), (448123587/5000000000 : ℚ), (-20726902921/500000000000 : ℚ), 2⟩,
    ⟨(101025366297/250000000000 : ℚ), (586006537/10000000000 : ℚ), (-5830501437/200000000000 : ℚ), 2⟩,
    ⟨(418478887381/1000000000000 : ℚ), (331725783/10000000000 : ℚ), (-18699214077/1000000000000 : ℚ), 2⟩,
    ⟨(216179795977/500000000000 : ℚ), (121757361/10000000000 : ℚ), (-977033823/100000000000 : ℚ), 2⟩,
    ⟨(89121980027/200000000000 : ℚ), (-52569929/10000000000 : ℚ), (-2120165559/1000000000000 : ℚ), 2⟩,
    ⟨(458102204211/1000000000000 : ℚ), (-197779773/10000000000 : ℚ), (1109868011/250000000000 : ℚ), 2⟩,
    ⟨(234858098233/500000000000 : ℚ), (-15941167/500000000 : ℚ), (10053599667/1000000000000 : ℚ), 2⟩,
    ⟨(96068005561/200000000000 : ℚ), (-419483719/10000000000 : ℚ), (7417230661/500000000000 : ℚ), 2⟩,
    ⟨(244935692463/500000000000 : ℚ), (-62832969/1250000000 : ℚ), (3773814159/200000000000 : ℚ), 2⟩,
    ⟨(3892331841/7812500000 : ℚ), (-11411857/200000000 : ℚ), (22224771751/1000000000000 : ℚ), 2⟩,
    ⟨(20212036517/40000000000 : ℚ), (-312488291/5000000000 : ℚ), (24953360139/1000000000000 : ℚ), 2⟩,
    ⟨(255525244507/500000000000 : ℚ), (-667105137/10000000000 : ℚ), (13547073731/500000000000 : ℚ), 2⟩,
    ⟨(103082366471/200000000000 : ℚ), (-5583453/80000000 : ℚ), (28676224549/1000000000000 : ℚ), 2⟩,
    ⟨(129585735207/250000000000 : ℚ), (-718127691/10000000000 : ℚ), (14860051743/500000000000 : ℚ), 2⟩,
    ⟨(259907793127/500000000000 : ℚ), (-364060761/5000000000 : ℚ), (3023886133/100000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-4558537/62500000 : ℚ), (30303558507/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (10278147397/31250000000 : ℚ)
  μ := (13/25 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control125.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control125.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate125
