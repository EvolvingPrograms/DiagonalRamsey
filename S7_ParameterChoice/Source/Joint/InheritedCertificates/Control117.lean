import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control117.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control117.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate117
