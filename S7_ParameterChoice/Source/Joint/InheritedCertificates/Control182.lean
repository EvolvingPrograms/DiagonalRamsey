import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate182
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(221078798979/500000000000 : ℚ), (15299521320243/2500000000 : ℚ), (-1353817614237833/500000000000 : ℚ), 13⟩,
    ⟨(221234066823/500000000000 : ℚ), (3382284670477/5000000000 : ℚ), (-150252472849709/500000000000 : ℚ), 10⟩,
    ⟨(443088456913/1000000000000 : ℚ), (2414429593529/10000000000 : ℚ), (-26983650496411/250000000000 : ℚ), 9⟩,
    ⟨(111004268337/250000000000 : ℚ), (609007846741/5000000000 : ℚ), (-54879605246759/1000000000000 : ℚ), 8⟩,
    ⟨(44525174583/100000000000 : ℚ), (726864830571/10000000000 : ℚ), (-16523191589603/500000000000 : ℚ), 7⟩,
    ⟨(446789499927/1000000000000 : ℚ), (479020735453/10000000000 : ℚ), (-5498639826389/250000000000 : ℚ), 6⟩,
    ⟨(224313315527/500000000000 : ℚ), (84253489633/2500000000 : ℚ), (-3127649427101/200000000000 : ℚ), 6⟩,
    ⟨(225379356701/500000000000 : ℚ), (248314012793/10000000000 : ℚ), (-91018545289/7812500000 : ℚ), 5⟩,
    ⟨(113295152649/250000000000 : ℚ), (189336133223/10000000000 : ℚ), (-8985345974819/1000000000000 : ℚ), 5⟩,
    ⟨(18235459523/40000000000 : ℚ), (3705458349/250000000 : ℚ), (-1779203667093/250000000000 : ℚ), 5⟩,
    ⟨(458869827143/1000000000000 : ℚ), (118467735507/10000000000 : ℚ), (-2878190923269/500000000000 : ℚ), 5⟩,
    ⟨(231061720337/500000000000 : ℚ), (19257824723/2000000000 : ℚ), (-591910215629/125000000000 : ℚ), 4⟩,
    ⟨(465639490429/1000000000000 : ℚ), (396722671/50000000 : ℚ), (-493677251973/125000000000 : ℚ), 4⟩,
    ⟨(29338094121/62500000000 : ℚ), (66130472921/10000000000 : ℚ), (-1665877479707/500000000000 : ℚ), 4⟩,
    ⟨(473424404897/1000000000000 : ℚ), (11128960023/2000000000 : ℚ), (-709385445513/250000000000 : ℚ), 4⟩,
    ⟨(477674515069/1000000000000 : ℚ), (47198969877/10000000000 : ℚ), (-1217989780723/500000000000 : ℚ), 4⟩,
    ⟨(96429919513/200000000000 : ℚ), (629803511/156250000 : ℚ), (-1052654643689/500000000000 : ℚ), 3⟩,
    ⟨(243419435759/500000000000 : ℚ), (6923987603/2000000000 : ℚ), (-1829805189611/1000000000000 : ℚ), 3⟩,
    ⟨(491731040057/1000000000000 : ℚ), (14939428499/5000000000 : ℚ), (-1597873258733/1000000000000 : ℚ), 3⟩,
    ⟨(6210178969/12500000000 : ℚ), (161820633/62500000 : ℚ), (-1400813932559/1000000000000 : ℚ), 3⟩,
    ⟨(100415291569/200000000000 : ℚ), (562765669/250000000 : ℚ), (-246399293583/200000000000 : ℚ), 3⟩,
    ⟨(126876196019/250000000000 : ℚ), (9811894171/5000000000 : ℚ), (-217259116091/200000000000 : ℚ), 3⟩,
    ⟨(513086218899/1000000000000 : ℚ), (8571275437/5000000000 : ℚ), (-959699284763/1000000000000 : ℚ), 3⟩,
    ⟨(10376146323/20000000000 : ℚ), (3749316467/2500000000 : ℚ), (-849030958201/1000000000000 : ℚ), 3⟩,
    ⟨(524654293203/1000000000000 : ℚ), (820774557/625000000 : ℚ), (-75174912801/100000000000 : ℚ), 3⟩,
    ⟨(530613064179/1000000000000 : ℚ), (11503228779/10000000000 : ℚ), (-133160219699/200000000000 : ℚ), 3⟩,
    ⟨(536669273877/1000000000000 : ℚ), (2518371547/2500000000 : ℚ), (-294757241797/500000000000 : ℚ), 3⟩,
    ⟨(542808332357/1000000000000 : ℚ), (1101684909/1250000000 : ℚ), (-521515828077/1000000000000 : ℚ), 2⟩,
    ⟨(54901545009/100000000000 : ℚ), (3849374101/5000000000 : ℚ), (-460668851127/1000000000000 : ℚ), 2⟩,
    ⟨(34704729599/62500000000 : ℚ), (1677251429/2500000000 : ℚ), (-40602708523/100000000000 : ℚ), 2⟩,
    ⟨(280786960707/500000000000 : ℚ), (2913661181/5000000000 : ℚ), (-178398599711/500000000000 : ℚ), 2⟩,
    ⟨(141973755137/250000000000 : ℚ), (5039490669/10000000000 : ℚ), (-78077584227/250000000000 : ℚ), 2⟩,
    ⟨(287111871453/500000000000 : ℚ), (4333524799/10000000000 : ℚ), (-271999527349/1000000000000 : ℚ), 2⟩,
    ⟨(580544842041/1000000000000 : ℚ), (3699263737/10000000000 : ℚ), (-29422718187/125000000000 : ℚ), 2⟩,
    ⟨(586843089871/1000000000000 : ℚ), (3128054293/10000000000 : ℚ), (-101021777117/500000000000 : ℚ), 2⟩,
    ⟨(118620662673/200000000000 : ℚ), (1306248077/5000000000 : ℚ), (-42907384567/250000000000 : ℚ), 2⟩,
    ⟨(599310431097/1000000000000 : ℚ), (2146235527/10000000000 : ℚ), (-143832924639/1000000000000 : ℚ), 2⟩,
    ⟨(605449489577/1000000000000 : ℚ), (861898557/5000000000 : ℚ), (-59193965009/500000000000 : ℚ), 2⟩,
    ⟨(24460227971/40000000000 : ℚ), (268089309/2000000000 : ℚ), (-23765870649/250000000000 : ℚ), 2⟩,
    ⟨(617464470251/1000000000000 : ℚ), (19841543/200000000 : ℚ), (-36829021491/500000000000 : ℚ), 2⟩,
    ⟨(124662289461/200000000000 : ℚ), (337558157/5000000000 : ℚ), (-53995311187/1000000000000 : ℚ), 2⟩,
    ⟨(125806508911/200000000000 : ℚ), (19322383/500000000 : ℚ), (-898016243/25000000000 : ℚ), 2⟩,
    ⟨(634613979379/1000000000000 : ℚ), (986769/80000000 : ℚ), (-9649046337/500000000000 : ℚ), 2⟩,
    ⟨(64004230561/100000000000 : ℚ), (-58288223/5000000000 : ℚ), (-4007831629/1000000000000 : ℚ), 2⟩,
    ⟨(129060889187/200000000000 : ℚ), (-335417049/10000000000 : ℚ), (10055903819/1000000000000 : ℚ), 2⟩,
    ⟨(325193861699/500000000000 : ℚ), (-535020131/10000000000 : ℚ), (22986640139/1000000000000 : ℚ), 2⟩,
    ⟨(655279891937/1000000000000 : ℚ), (-717010283/10000000000 : ℚ), (17433591957/500000000000 : ℚ), 2⟩,
    ⟨(65996916589/100000000000 : ℚ), (-441409997/5000000000 : ℚ), (22885459479/500000000000 : ℚ), 2⟩,
    ⟨(132888849677/200000000000 : ℚ), (-516856649/5000000000 : ℚ), (27881458229/500000000000 : ℚ), 2⟩,
    ⟨(668694358557/1000000000000 : ℚ), (-585402971/5000000000 : ℚ), (16225220911/250000000000 : ℚ), 2⟩,
    ⟨(672709257519/1000000000000 : ℚ), (-1295082649/10000000000 : ℚ), (73235979901/1000000000000 : ℚ), 2⟩,
    ⟨(27059170921/40000000000 : ℚ), (-1407411901/10000000000 : ℚ), (20203379411/250000000000 : ℚ), 2⟩,
    ⟨(679995322781/1000000000000 : ℚ), (-1508558617/10000000000 : ℚ), (8767356549/100000000000 : ℚ), 2⟩,
    ⟨(85406117039/125000000000 : ℚ), (-1599195047/10000000000 : ℚ), (46925734913/500000000000 : ℚ), 2⟩,
    ⟨(34311613769/50000000000 : ℚ), (-1679910103/10000000000 : ℚ), (19875660351/200000000000 : ℚ), 2⟩,
    ⟨(688938152859/1000000000000 : ℚ), (-54725543/312500000 : ℚ), (5214062221/50000000000 : ℚ), 2⟩,
    ⟨(691360050053/1000000000000 : ℚ), (-1813561979/10000000000 : ℚ), (54291961937/500000000000 : ℚ), 2⟩,
    ⟨(1733730331/2500000000 : ℚ), (-933663191/5000000000 : ℚ), (2246133861/20000000000 : ℚ), 2⟩,
    ⟨(695329263527/1000000000000 : ℚ), (-1912835349/10000000000 : ℚ), (4618674921/40000000000 : ℚ), 2⟩,
    ⟨(87108377203/125000000000 : ℚ), (-195036007/1000000000 : ℚ), (7379934707/62500000000 : ℚ), 2⟩,
    ⟨(698101690107/1000000000000 : ℚ), (-1980121583/10000000000 : ℚ), (15019346369/125000000000 : ℚ), 2⟩,
    ⟨(699030306541/1000000000000 : ℚ), (-250286691/1250000000 : ℚ), (121703626227/1000000000000 : ℚ), 2⟩,
    ⟨(699650629809/1000000000000 : ℚ), (-2017004301/10000000000 : ℚ), (12273240971/100000000000 : ℚ), 2⟩,
    ⟨(87495145687/125000000000 : ℚ), (-2024338633/10000000000 : ℚ), (123245670513/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-50631361/250000000 : ℚ), (61654887607/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (175830287363/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control182.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control182.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate182
