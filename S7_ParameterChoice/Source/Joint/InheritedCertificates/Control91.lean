import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate91
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27993809897/100000000000 : ℚ), (10318355600207/2500000000 : ℚ), (-1156581336032961/1000000000000 : ℚ), 13⟩,
    ⟨(140131675681/500000000000 : ℚ), (2275623913967/5000000000 : ℚ), (-128368023430621/1000000000000 : ℚ), 9⟩,
    ⟨(140456536293/500000000000 : ℚ), (1618536899291/10000000000 : ℚ), (-23055488857273/500000000000 : ℚ), 8⟩,
    ⟨(56377139481/200000000000 : ℚ), (812874300731/10000000000 : ℚ), (-4689669225739/200000000000 : ℚ), 7⟩,
    ⟨(7079472067/25000000000 : ℚ), (30166046379/625000000 : ℚ), (-112977486951/8000000000 : ℚ), 6⟩,
    ⟨(284789513017/1000000000000 : ℚ), (158178553337/5000000000 : ℚ), (-4700662317961/500000000000 : ℚ), 6⟩,
    ⟨(57342741653/200000000000 : ℚ), (221302998727/10000000000 : ℚ), (-6686155728427/1000000000000 : ℚ), 5⟩,
    ⟨(72236708217/250000000000 : ℚ), (81048540571/5000000000 : ℚ), (-1245665357357/250000000000 : ℚ), 5⟩,
    ⟨(58296701407/200000000000 : ℚ), (6142748209/500000000 : ℚ), (-961052991203/250000000000 : ℚ), 5⟩,
    ⟨(58863523939/200000000000 : ℚ), (19118459021/2000000000 : ℚ), (-3045974355241/1000000000000 : ℚ), 4⟩,
    ⟨(297442343223/1000000000000 : ℚ), (37970828393/5000000000 : ℚ), (-2464757106087/1000000000000 : ℚ), 4⟩,
    ⟨(60170029977/200000000000 : ℚ), (7669022753/1250000000 : ℚ), (-126779376923/62500000000 : ℚ), 4⟩,
    ⟨(304532829977/1000000000000 : ℚ), (25126917283/5000000000 : ℚ), (-26447605837/15625000000 : ℚ), 4⟩,
    ⟨(308481511601/1000000000000 : ℚ), (41637951183/10000000000 : ℚ), (-285730316853/200000000000 : ℚ), 3⟩,
    ⟨(78171670509/250000000000 : ℚ), (8708239821/2500000000 : ℚ), (-1217367927461/1000000000000 : ℚ), 3⟩,
    ⟨(158569105329/500000000000 : ℚ), (29378007721/10000000000 : ℚ), (-522819491771/500000000000 : ℚ), 3⟩,
    ⟨(64365074669/200000000000 : ℚ), (24948556069/10000000000 : ℚ), (-4520847589/5000000000 : ℚ), 3⟩,
    ⟨(326736878311/1000000000000 : ℚ), (852435087/400000000 : ℚ), (-786241587431/1000000000000 : ℚ), 3⟩,
    ⟨(2592663229/7812500000 : ℚ), (1829331751/1000000000 : ℚ), (-34345116491/50000000000 : ℚ), 3⟩,
    ⟨(67437014829/200000000000 : ℚ), (985476201/625000000 : ℚ), (-602435447193/1000000000000 : ℚ), 3⟩,
    ⟨(342696594393/1000000000000 : ℚ), (6818236551/5000000000 : ℚ), (-16562766869/31250000000 : ℚ), 3⟩,
    ⟨(174191088161/500000000000 : ℚ), (11825037227/10000000000 : ℚ), (-116858116113/250000000000 : ℚ), 2⟩,
    ⟨(70845624573/200000000000 : ℚ), (2055008289/2000000000 : ℚ), (-206496909343/500000000000 : ℚ), 2⟩,
    ⟨(180110175313/500000000000 : ℚ), (1788123087/2000000000 : ℚ), (-182668106691/500000000000 : ℚ), 2⟩,
    ⟨(366344423803/1000000000000 : ℚ), (15205641/19531250 : ℚ), (-161687371333/500000000000 : ℚ), 2⟩,
    ⟨(46573198621/125000000000 : ℚ), (6779798089/10000000000 : ℚ), (-71558362737/250000000000 : ℚ), 2⟩,
    ⟨(378928810607/1000000000000 : ℚ), (1475118237/2500000000 : ℚ), (-506397979/2000000000 : ℚ), 2⟩,
    ⟨(385358807343/1000000000000 : ℚ), (5128016969/10000000000 : ℚ), (-27960730429/125000000000 : ℚ), 2⟩,
    ⟨(24491255547/62500000000 : ℚ), (4446592031/10000000000 : ℚ), (-24651242511/125000000000 : ℚ), 2⟩,
    ⟨(99604248169/250000000000 : ℚ), (153724587/400000000 : ℚ), (-173368406387/1000000000000 : ℚ), 2⟩,
    ⟨(5062671537/12500000000 : ℚ), (3306712947/10000000000 : ℚ), (-75911944657/500000000000 : ℚ), 2⟩,
    ⟨(411634387503/1000000000000 : ℚ), (2828303021/10000000000 : ℚ), (-132292300779/1000000000000 : ℚ), 2⟩,
    ⟨(3267679973/7812500000 : ℚ), (120012823/500000000 : ℚ), (-57266578661/500000000000 : ℚ), 2⟩,
    ⟨(424883701087/1000000000000 : ℚ), (2016136699/10000000000 : ℚ), (-98341904183/1000000000000 : ℚ), 2⟩,
    ⟨(431480431371/1000000000000 : ℚ), (1670488877/10000000000 : ℚ), (-41771886223/500000000000 : ℚ), 2⟩,
    ⟨(1711083341/3906250000 : ℚ), (1358671081/10000000000 : ℚ), (-34994413381/500000000000 : ℚ), 2⟩,
    ⟨(3472957943/7812500000 : ℚ), (538359013/5000000000 : ℚ), (-11509589843/200000000000 : ℚ), 2⟩,
    ⟨(1409276917/3125000000 : ℚ), (12831723/156250000 : ℚ), (-46109559883/1000000000000 : ℚ), 2⟩,
    ⟨(457311835079/1000000000000 : ℚ), (294641867/5000000000 : ℚ), (-35576926227/1000000000000 : ℚ), 2⟩,
    ⟨(115888250061/250000000000 : ℚ), (378355369/10000000000 : ℚ), (-25865941337/1000000000000 : ℚ), 2⟩,
    ⟨(469677073421/1000000000000 : ℚ), (93130933/5000000000 : ℚ), (-8451640371/500000000000 : ℚ), 2⟩,
    ⟨(237834650591/500000000000 : ℚ), (694303/625000000 : ℚ), (-8624866933/1000000000000 : ℚ), 2⟩,
    ⟨(19260609909/40000000000 : ℚ), (-148751413/10000000000 : ℚ), (-243645577/250000000000 : ℚ), 2⟩,
    ⟨(243600414827/500000000000 : ℚ), (-29475531/1000000000 : ℚ), (6096811949/1000000000000 : ℚ), 2⟩,
    ⟨(246356174951/500000000000 : ℚ), (-214078761/5000000000 : ℚ), (3158147453/250000000000 : ℚ), 2⟩,
    ⟨(99607306147/200000000000 : ℚ), (-550055927/10000000000 : ℚ), (9335417043/500000000000 : ℚ), 2⟩,
    ⟨(62895068217/125000000000 : ℚ), (-661412631/10000000000 : ℚ), (12122547323/500000000000 : ℚ), 2⟩,
    ⟨(254036025351/500000000000 : ℚ), (-381535887/5000000000 : ℚ), (3673118833/125000000000 : ℚ), 2⟩,
    ⟨(512759213389/1000000000000 : ℚ), (-855774631/10000000000 : ℚ), (1066140331/31250000000 : ℚ), 2⟩,
    ⟨(517210742011/1000000000000 : ℚ), (-940172467/10000000000 : ℚ), (2403920309/62500000000 : ℚ), 2⟩,
    ⟨(260707956223/500000000000 : ℚ), (-63552343/625000000 : ℚ), (5305492573/125000000000 : ℚ), 2⟩,
    ⟨(52536459407/100000000000 : ℚ), (-1086272193/10000000000 : ℚ), (46078006237/1000000000000 : ℚ), 2⟩,
    ⟨(264523637081/500000000000 : ℚ), (-143614671/1250000000 : ℚ), (24690318063/500000000000 : ℚ), 2⟩,
    ⟨(66556885103/125000000000 : ℚ), (-301289729/2500000000 : ℚ), (52365616861/1000000000000 : ℚ), 2⟩,
    ⟨(8368434443/15625000000 : ℚ), (-156916713/1250000000 : ℚ), (55045004069/1000000000000 : ℚ), 2⟩,
    ⟨(134603479253/250000000000 : ℚ), (-25994691/200000000 : ℚ), (14357322797/250000000000 : ℚ), 2⟩,
    ⟨(540950591179/1000000000000 : ℚ), (-1338614473/10000000000 : ℚ), (29763777369/500000000000 : ℚ), 2⟩,
    ⟨(543183715783/1000000000000 : ℚ), (-1372190301/10000000000 : ℚ), (61347578891/1000000000000 : ℚ), 2⟩,
    ⟨(54510791103/100000000000 : ℚ), (-1400645711/10000000000 : ℚ), (62895961177/1000000000000 : ℚ), 2⟩,
    ⟨(546718541367/1000000000000 : ℚ), (-356033441/2500000000 : ℚ), (32089100539/500000000000 : ℚ), 2⟩,
    ⟨(548011726643/1000000000000 : ℚ), (-1442778997/10000000000 : ℚ), (13039754819/200000000000 : ℚ), 2⟩,
    ⟨(548984351461/1000000000000 : ℚ), (-1456679103/10000000000 : ℚ), (16490297821/250000000000 : ℚ), 2⟩,
    ⟨(109926814537/200000000000 : ℚ), (-732953121/5000000000 : ℚ), (66468046299/1000000000000 : ℚ), 2⟩,
    ⟨(549959325077/1000000000000 : ℚ), (-735253997/5000000000 : ℚ), (66721049081/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-1471082661/10000000000 : ℚ), (66752654621/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (241584772081/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control91.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control91.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate91
