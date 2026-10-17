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

-- Control525
namespace DiagonalRamsey.JointInheritedCertificate525
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(138445266009/500000000000 : ℚ), (2722708913873/2000000000 : ℚ), (-7552535667637/20000000000 : ℚ), 12⟩,
    ⟨(277579227939/1000000000000 : ℚ), (59520293961/400000000 : ℚ), (-41728448811443/1000000000000 : ℚ), 9⟩,
    ⟨(4358593551/15625000000 : ℚ), (260762285273/5000000000 : ℚ), (-3714109645721/250000000000 : ℚ), 7⟩,
    ⟨(280989608831/1000000000000 : ℚ), (51373142321/2000000000 : ℚ), (-7452743224269/1000000000000 : ℚ), 6⟩,
    ⟨(28367844997/100000000000 : ℚ), (148858996587/10000000000 : ℚ), (-4405750063339/1000000000000 : ℚ), 6⟩,
    ⟨(286990615669/1000000000000 : ℚ), (94754555039/10000000000 : ℚ), (-2863148496973/1000000000000 : ℚ), 5⟩,
    ⟨(72723551991/250000000000 : ℚ), (1280359813/200000000 : ℚ), (-246962238943/125000000000 : ℚ), 5⟩,
    ⟨(472562613/1600000000 : ℚ), (45001397051/10000000000 : ℚ), (-283735038911/200000000000 : ℚ), 4⟩,
    ⟨(300319963713/1000000000000 : ℚ), (32486174203/10000000000 : ℚ), (-1046180321411/1000000000000 : ℚ), 4⟩,
    ⟨(305751351987/1000000000000 : ℚ), (5963575277/2500000000 : ℚ), (-784772022729/1000000000000 : ℚ), 4⟩,
    ⟨(31159349071/100000000000 : ℚ), (8838573187/5000000000 : ℚ), (-594215505259/1000000000000 : ℚ), 4⟩,
    ⟨(79447529223/250000000000 : ℚ), (13122718077/10000000000 : ℚ), (-450972110401/1000000000000 : ℚ), 3⟩,
    ⟨(64856310727/200000000000 : ℚ), (4840369789/5000000000 : ℚ), (-340529814559/1000000000000 : ℚ), 3⟩,
    ⟨(66201056971/200000000000 : ℚ), (351239197/500000000 : ℚ), (-126775360503/500000000000 : ℚ), 3⟩,
    ⟨(10559267417/31250000000 : ℚ), (4938628783/10000000000 : ℚ), (-91904665051/500000000000 : ℚ), 3⟩,
    ⟨(344889004383/1000000000000 : ℚ), (654961107/2000000000 : ℚ), (-31757443063/250000000000 : ℚ), 3⟩,
    ⟨(175957642441/500000000000 : ℚ), (482555071/2500000000 : ℚ), (-16040083321/200000000000 : ℚ), 3⟩,
    ⟨(358907731921/1000000000000 : ℚ), (831267203/10000000000 : ℚ), (-10288580039/250000000000 : ℚ), 3⟩,
    ⟨(36579900441/100000000000 : ℚ), (-7556053/1000000000 : ℚ), (-8303873391/1000000000000 : ℚ), 3⟩,
    ⟨(37252273563/100000000000 : ℚ), (-165952349/2000000000 : ℚ), (1953190273/100000000000 : ℚ), 3⟩,
    ⟨(189507086187/500000000000 : ℚ), (-73043883/500000000 : ℚ), (5405330133/125000000000 : ℚ), 3⟩,
    ⟨(77042159711/200000000000 : ℚ), (-995622407/5000000000 : ℚ), (63505348427/1000000000000 : ℚ), 3⟩,
    ⟨(195526468639/500000000000 : ℚ), (-97516111/400000000 : ℚ), (40419633157/500000000000 : ℚ), 3⟩,
    ⟨(24780270347/62500000000 : ℚ), (-2813939129/10000000000 : ℚ), (95644822439/1000000000000 : ℚ), 3⟩,
    ⟨(20072632807/50000000000 : ℚ), (-391181529/1250000000 : ℚ), (54115876941/500000000000 : ℚ), 2⟩,
    ⟨(202955040651/500000000000 : ℚ), (-3392249461/10000000000 : ℚ), (59419860031/500000000000 : ℚ), 2⟩,
    ⟨(102453418399/250000000000 : ℚ), (-1804179523/5000000000 : ℚ), (63826801299/500000000000 : ℚ), 2⟩,
    ⟨(82625167859/200000000000 : ℚ), (-945602007/2500000000 : ℚ), (134814966371/1000000000000 : ℚ), 2⟩,
    ⟨(207907340217/500000000000 : ℚ), (-1958951051/5000000000 : ℚ), (140430680629/1000000000000 : ℚ), 2⟩,
    ⟨(417854302001/1000000000000 : ℚ), (-2008715893/5000000000 : ℚ), (14457937491/100000000000 : ℚ), 2⟩,
    ⟨(209612530663/500000000000 : ℚ), (-1020705413/2500000000 : ℚ), (368290467/2500000000 : ℚ), 2⟩,
    ⟨(6561152457/15625000000 : ℚ), (-4115233937/10000000000 : ℚ), (148676105443/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-514909047/1250000000 : ℚ), (148845702469/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (21748852711/62500000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control525.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control525.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate525

-- Control526
namespace DiagonalRamsey.JointInheritedCertificate526
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(14665203471/50000000000 : ℚ), (14746427214/9765625 : ℚ), (-443622202680111/1000000000000 : ℚ), 12⟩,
    ⟨(293961901017/1000000000000 : ℚ), (165196530787/1000000000 : ℚ), (-24506515208799/500000000000 : ℚ), 9⟩,
    ⟨(147635614467/500000000000 : ℚ), (28982889457/500000000 : ℚ), (-17444156755169/1000000000000 : ℚ), 7⟩,
    ⟨(148609721813/500000000000 : ℚ), (285846098013/10000000000 : ℚ), (-8746432233787/1000000000000 : ℚ), 7⟩,
    ⟨(149893891361/500000000000 : ℚ), (33169115341/2000000000 : ℚ), (-5166922269139/1000000000000 : ℚ), 6⟩,
    ⟨(302951511711/1000000000000 : ℚ), (105673240029/10000000000 : ℚ), (-3354767834087/1000000000000 : ℚ), 5⟩,
    ⟨(61336032431/200000000000 : ℚ), (71450082289/10000000000 : ℚ), (-578072876271/250000000000 : ℚ), 5⟩,
    ⟨(31093782511/100000000000 : ℚ), (50249236609/10000000000 : ℚ), (-25906442839/15625000000 : ℚ), 5⟩,
    ⟨(315683496957/1000000000000 : ℚ), (906934393/250000000 : ℚ), (-1220528348373/1000000000000 : ℚ), 4⟩,
    ⟨(320871474279/1000000000000 : ℚ), (26627102837/10000000000 : ℚ), (-456780474231/500000000000 : ℚ), 4⟩,
    ⟨(16322589701/50000000000 : ℚ), (19711182037/10000000000 : ℚ), (-689841876897/1000000000000 : ℚ), 4⟩,
    ⟨(6647414293/20000000000 : ℚ), (584190811/400000000 : ℚ), (-104343406381/200000000000 : ℚ), 4⟩,
    ⟨(338571233727/1000000000000 : ℚ), (1342536503/1250000000 : ℚ), (-98034112963/250000000000 : ℚ), 3⟩,
    ⟨(673815697/1953125000 : ℚ), (387720203/500000000 : ℚ), (-145064228383/500000000000 : ℚ), 3⟩,
    ⟨(351576072807/1000000000000 : ℚ), (540623257/1000000000 : ℚ), (-52094396141/250000000000 : ℚ), 3⟩,
    ⟨(358255149101/1000000000000 : ℚ), (3531344381/10000000000 : ℚ), (-141858624827/1000000000000 : ℚ), 3⟩,
    ⟨(91241635647/250000000000 : ℚ), (1007334633/5000000000 : ℚ), (-21757867863/250000000000 : ℚ), 3⟩,
    ⟨(371645618881/1000000000000 : ℚ), (773961349/10000000000 : ℚ), (-41348285567/1000000000000 : ℚ), 3⟩,
    ⟨(47278506853/125000000000 : ℚ), (-125317543/5000000000 : ℚ), (-36772577/12500000000 : ℚ), 3⟩,
    ⟨(384650457961/1000000000000 : ℚ), (-137919633/1250000000 : ℚ), (29577494091/1000000000000 : ℚ), 3⟩,
    ⟨(390850977039/1000000000000 : ℚ), (-1817327789/10000000000 : ℚ), (57256801789/1000000000000 : ℚ), 3⟩,
    ⟨(396769897669/1000000000000 : ℚ), (-2417620129/10000000000 : ℚ), (40446702007/500000000000 : ℚ), 3⟩,
    ⟨(40235021741/100000000000 : ℚ), (-58467619/200000000 : ℚ), (101099106823/1000000000000 : ℚ), 3⟩,
    ⟨(101884548683/250000000000 : ℚ), (-1674665017/5000000000 : ℚ), (118345969237/1000000000000 : ℚ), 3⟩,
    ⟨(206141933289/500000000000 : ℚ), (-463354261/1250000000 : ℚ), (26599865087/200000000000 : ℚ), 3⟩,
    ⟨(208270764767/500000000000 : ℚ), (-4004686591/10000000000 : ℚ), (29068398097/200000000000 : ℚ), 3⟩,
    ⟨(420270179977/1000000000000 : ℚ), (-849936047/2000000000 : ℚ), (77796116279/500000000000 : ℚ), 2⟩,
    ⟨(423433908967/1000000000000 : ℚ), (-4447030313/10000000000 : ℚ), (20489655341/125000000000 : ℚ), 2⟩,
    ⟨(213001124031/500000000000 : ℚ), (-184027549/400000000 : ℚ), (170443272291/1000000000000 : ℚ), 2⟩,
    ⟨(85590092551/200000000000 : ℚ), (-942715149/2000000000 : ℚ), (35052646241/200000000000 : ℚ), 2⟩,
    ⟨(429259790671/1000000000000 : ℚ), (-598468509/1250000000 : ℚ), (44610570161/250000000000 : ℚ), 2⟩,
    ⟨(429917622269/1000000000000 : ℚ), (-2412257841/5000000000 : ℚ), (45005443457/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-4829096873/10000000000 : ℚ), (180218746153/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (320679602219/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control526.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control526.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate526

-- Control527
namespace DiagonalRamsey.JointInheritedCertificate527
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60176383009/200000000000 : ℚ), (380526265987/250000000 : ℚ), (-458716052442599/1000000000000 : ℚ), 12⟩,
    ⟨(301551402949/1000000000000 : ℚ), (166531219779/1000000000 : ℚ), (-50681362599371/1000000000000 : ℚ), 9⟩,
    ⟨(151441965611/500000000000 : ℚ), (36526015177/625000000 : ℚ), (-18038456116161/1000000000000 : ℚ), 7⟩,
    ⟨(304866666889/1000000000000 : ℚ), (57647806777/2000000000 : ℚ), (-4522417704199/500000000000 : ℚ), 7⟩,
    ⟨(307480515121/1000000000000 : ℚ), (167265805433/10000000000 : ℚ), (-667946203511/125000000000 : ℚ), 6⟩,
    ⟨(310700303131/1000000000000 : ℚ), (106601878287/10000000000 : ℚ), (-1734897798771/500000000000 : ℚ), 5⟩,
    ⟨(314495022601/1000000000000 : ℚ), (72096787483/10000000000 : ℚ), (-298986554117/125000000000 : ℚ), 5⟩,
    ⟨(318828128307/1000000000000 : ℚ), (12679963681/2500000000 : ℚ), (-1715400126683/1000000000000 : ℚ), 4⟩,
    ⟨(323657890073/1000000000000 : ℚ), (36631095993/10000000000 : ℚ), (-126308493949/100000000000 : ℚ), 4⟩,
    ⟨(82234448663/250000000000 : ℚ), (13449807901/5000000000 : ℚ), (-945732589103/1000000000000 : ℚ), 4⟩,
    ⟨(167308496839/500000000000 : ℚ), (1992529189/1000000000 : ℚ), (-714466263097/1000000000000 : ℚ), 4⟩,
    ⟨(340640793359/1000000000000 : ℚ), (3693932617/2500000000 : ℚ), (-540690564491/1000000000000 : ℚ), 4⟩,
    ⟨(346951181211/1000000000000 : ℚ), (1087868983/1000000000 : ℚ), (-406774943377/1000000000000 : ℚ), 3⟩,
    ⟨(1413949539/4000000000 : ℚ), (7867814099/10000000000 : ℚ), (-301373857739/1000000000000 : ℚ), 3⟩,
    ⟨(360186456763/1000000000000 : ℚ), (5500211619/10000000000 : ℚ), (-216922305643/1000000000000 : ℚ), 3⟩,
    ⟨(366983881523/1000000000000 : ℚ), (3610054773/10000000000 : ℚ), (-74111694261/500000000000 : ℚ), 3⟩,
    ⟨(93453549029/250000000000 : ℚ), (2081283423/10000000000 : ℚ), (-45807887829/500000000000 : ℚ), 3⟩,
    ⟨(95152905219/250000000000 : ℚ), (415466201/5000000000 : ℚ), (-11116026709/250000000000 : ℚ), 3⟩,
    ⟨(387310692889/1000000000000 : ℚ), (-50346833/2500000000 : ℚ), (-2418353691/500000000000 : ℚ), 3⟩,
    ⟨(98461724107/250000000000 : ℚ), (-530157599/5000000000 : ℚ), (5740829043/200000000000 : ℚ), 3⟩,
    ⟨(10003932107/25000000000 : ℚ), (-444820639/2500000000 : ℚ), (57242207303/1000000000000 : ℚ), 3⟩,
    ⟨(406181083961/1000000000000 : ℚ), (-2383601201/10000000000 : ℚ), (20400710109/250000000000 : ℚ), 3⟩,
    ⟨(411860282987/1000000000000 : ℚ), (-2892605081/10000000000 : ℚ), (20483921059/200000000000 : ℚ), 3⟩,
    ⟨(208570093783/500000000000 : ℚ), (-3321161519/10000000000 : ℚ), (120181534731/1000000000000 : ℚ), 3⟩,
    ⟨(105492487333/250000000000 : ℚ), (-3680754081/10000000000 : ℚ), (135267262973/1000000000000 : ℚ), 3⟩,
    ⟨(213151527519/500000000000 : ℚ), (-1990134449/5000000000 : ℚ), (18496254903/125000000000 : ℚ), 3⟩,
    ⟨(107524443627/250000000000 : ℚ), (-845314381/2000000000 : ℚ), (158516297001/1000000000000 : ℚ), 2⟩,
    ⟨(216658781259/500000000000 : ℚ), (-2212467911/5000000000 : ℚ), (104424731/625000000 : ℚ), 2⟩,
    ⟨(1743725643/4000000000 : ℚ), (-1144839219/2500000000 : ℚ), (678870947/3906250000 : ℚ), 2⟩,
    ⟨(437914146417/1000000000000 : ℚ), (-4692788609/10000000000 : ℚ), (178747001979/1000000000000 : ℚ), 2⟩,
    ⟨(43924667469/100000000000 : ℚ), (-2383655717/5000000000 : ℚ), (182015412159/1000000000000 : ℚ), 2⟩,
    ⟨(219958081297/500000000000 : ℚ), (-600531321/1250000000 : ℚ), (45909796499/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-4808853027/10000000000 : ℚ), (91920837451/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (78630657579/250000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control527.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control527.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate527

-- Control528
namespace DiagonalRamsey.JointInheritedCertificate528
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(308481706339/1000000000000 : ℚ), (1534110481297/1000000000 : ℚ), (-237003168348557/500000000000 : ℚ), 12⟩,
    ⟨(309162744939/1000000000000 : ℚ), (419646372041/2500000000 : ℚ), (-13092838146981/250000000000 : ℚ), 9⟩,
    ⟨(77629565841/250000000000 : ℚ), (58914760869/1000000000 : ℚ), (-9320215919643/500000000000 : ℚ), 7⟩,
    ⟨(4883362613/15625000000 : ℚ), (290617695837/10000000000 : ℚ), (-584191485953/62500000000 : ℚ), 7⟩,
    ⟨(315194152271/1000000000000 : ℚ), (42169258159/2500000000 : ℚ), (-1380614572429/250000000000 : ℚ), 6⟩,
    ⟨(63693898277/200000000000 : ℚ), (860193467/80000000 : ℚ), (-3586263922277/1000000000000 : ℚ), 5⟩,
    ⟨(322329681269/1000000000000 : ℚ), (72738693861/10000000000 : ℚ), (-2472474434301/1000000000000 : ℚ), 5⟩,
    ⟨(40842193273/125000000000 : ℚ), (5118663663/1000000000 : ℚ), (-886740888587/500000000000 : ℚ), 4⟩,
    ⟨(165825317991/500000000000 : ℚ), (7396324727/2000000000 : ℚ), (-326536134329/250000000000 : ℚ), 4⟩,
    ⟨(168510817461/500000000000 : ℚ), (13584693993/5000000000 : ℚ), (-195654899189/200000000000 : ℚ), 4⟩,
    ⟨(85699704337/250000000000 : ℚ), (4027398177/2000000000 : ℚ), (-147873067467/200000000000 : ℚ), 4⟩,
    ⟨(174463272917/500000000000 : ℚ), (1868066083/1250000000 : ℚ), (-279934048321/500000000000 : ℚ), 4⟩,
    ⟨(355345807007/1000000000000 : ℚ), (11015118657/10000000000 : ℚ), (-421564057069/1000000000000 : ℚ), 3⟩,
    ⟨(11312336871/31250000000 : ℚ), (1994852137/2500000000 : ℚ), (-156364461733/500000000000 : ℚ), 3⟩,
    ⟨(73761886237/200000000000 : ℚ), (5592499633/10000000000 : ℚ), (-225544879383/1000000000000 : ℚ), 3⟩,
    ⟨(375724132129/1000000000000 : ℚ), (1843588611/5000000000 : ℚ), (-77320536827/500000000000 : ℚ), 3⟩,
    ⟨(191336145177/500000000000 : ℚ), (1073198207/5000000000 : ℚ), (-96233341129/1000000000000 : ℚ), 3⟩,
    ⟨(389586991299/1000000000000 : ℚ), (886476389/10000000000 : ℚ), (-9519525211/200000000000 : ℚ), 3⟩,
    ⟨(99100410653/250000000000 : ℚ), (-15350261/1000000000 : ℚ), (-6736965161/1000000000000 : ℚ), 3⟩,
    ⟨(403050615477/1000000000000 : ℚ), (-509290259/5000000000 : ℚ), (27835224847/1000000000000 : ℚ), 3⟩,
    ⟨(409469876649/1000000000000 : ℚ), (-108905969/625000000 : ℚ), (57239786127/1000000000000 : ℚ), 3⟩,
    ⟨(25974850321/62500000000 : ℚ), (-2350797311/10000000000 : ℚ), (82330559689/1000000000000 : ℚ), 3⟩,
    ⟨(210687393781/500000000000 : ℚ), (-2863006267/10000000000 : ℚ), (5188159169/50000000000 : ℚ), 3⟩,
    ⟨(213372893251/500000000000 : ℚ), (-1647068367/5000000000 : ℚ), (122043923081/1000000000000 : ℚ), 3⟩,
    ⟨(431658876299/1000000000000 : ℚ), (-456973597/1250000000 : ℚ), (34391230579/250000000000 : ℚ), 3⟩,
    ⟨(87213348243/200000000000 : ℚ), (-3956940917/10000000000 : ℚ), (150630033653/1000000000000 : ℚ), 2⟩,
    ⟨(439926931099/1000000000000 : ℚ), (-4204532143/10000000000 : ℚ), (10092124497/62500000000 : ℚ), 2⟩,
    ⟨(443202270213/1000000000000 : ℚ), (-4403892463/10000000000 : ℚ), (170276781491/1000000000000 : ℚ), 2⟩,
    ⟨(445861215251/1000000000000 : ℚ), (-569882791/1250000000 : ℚ), (44293611747/250000000000 : ℚ), 2⟩,
    ⟨(447878159119/1000000000000 : ℚ), (-934605693/2000000000 : ℚ), (91133597793/500000000000 : ℚ), 2⟩,
    ⟨(89846735509/200000000000 : ℚ), (-4747894947/10000000000 : ℚ), (185625360597/1000000000000 : ℚ), 2⟩,
    ⟨(89982943229/200000000000 : ℚ), (-4785002193/10000000000 : ℚ), (93646802351/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2394812747/5000000000 : ℚ), (187501633559/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (308367478671/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control528.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control528.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate528

-- Control529
namespace DiagonalRamsey.JointInheritedCertificate529
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117094455217/500000000000 : ℚ), (14229178530501/10000000000 : ℚ), (-333806218496731/1000000000000 : ℚ), 12⟩,
    ⟨(117373118209/500000000000 : ℚ), (1555644244143/10000000000 : ℚ), (-7375220548943/200000000000 : ℚ), 9⟩,
    ⟨(235855521033/1000000000000 : ℚ), (109063989493/2000000000 : ℚ), (-13121510574913/1000000000000 : ℚ), 7⟩,
    ⟨(11875304063/50000000000 : ℚ), (16786254307/625000000 : ℚ), (-3288322723817/500000000000 : ℚ), 7⟩,
    ⟨(239682021303/1000000000000 : ℚ), (77799620463/5000000000 : ℚ), (-970756048421/250000000000 : ℚ), 6⟩,
    ⟨(242362385669/1000000000000 : ℚ), (49487128083/5000000000 : ℚ), (-2519239249693/1000000000000 : ℚ), 5⟩,
    ⟨(49104272197/200000000000 : ℚ), (66785264433/10000000000 : ℚ), (-1734572962791/1000000000000 : ℚ), 5⟩,
    ⟨(249128524591/1000000000000 : ℚ), (23427313569/5000000000 : ℚ), (-248394999099/200000000000 : ℚ), 5⟩,
    ⟨(25314913753/100000000000 : ℚ), (4215719529/1250000000 : ℚ), (-912472634571/1000000000000 : ℚ), 4⟩,
    ⟨(128772239551/500000000000 : ℚ), (24660860719/10000000000 : ℚ), (-170286502819/250000000000 : ℚ), 4⟩,
    ⟨(65568054941/250000000000 : ℚ), (18165719973/10000000000 : ℚ), (-64053696961/125000000000 : ℚ), 4⟩,
    ⟨(267286828789/1000000000000 : ℚ), (13369998183/10000000000 : ℚ), (-385517171313/1000000000000 : ℚ), 4⟩,
    ⟨(272540012751/1000000000000 : ℚ), (4869903949/5000000000 : ℚ), (-28758231023/100000000000 : ℚ), 3⟩,
    ⟨(277981180617/1000000000000 : ℚ), (1733389783/2500000000 : ℚ), (-105186310387/500000000000 : ℚ), 3⟩,
    ⟨(283557930967/1000000000000 : ℚ), (944990047/2000000000 : ℚ), (-9274207409/62500000000 : ℚ), 3⟩,
    ⟨(72304139161/250000000000 : ℚ), (739904883/2500000000 : ℚ), (-6115583967/62500000000 : ℚ), 3⟩,
    ⟨(36862820249/125000000000 : ℚ), (1529647131/10000000000 : ℚ), (-56099481999/1000000000000 : ℚ), 3⟩,
    ⟨(300561187669/1000000000000 : ℚ), (71596563/2000000000 : ℚ), (-10612739453/500000000000 : ℚ), 3⟩,
    ⟨(306137938019/1000000000000 : ℚ), (-76422149/1250000000 : ℚ), (4086277587/500000000000 : ℚ), 3⟩,
    ⟨(62315821177/200000000000 : ℚ), (-88735273/625000000 : ℚ), (33134846501/1000000000000 : ℚ), 3⟩,
    ⟨(316832289847/1000000000000 : ℚ), (-2098077811/10000000000 : ℚ), (6805489483/125000000000 : ℚ), 3⟩,
    ⟨(40230862359/125000000000 : ℚ), (-10428387/39062500 : ℚ), (36347112449/500000000000 : ℚ), 3⟩,
    ⟨(163287319767/500000000000 : ℚ), (-3152330813/10000000000 : ℚ), (88340741023/1000000000000 : ℚ), 3⟩,
    ⟨(165484990553/500000000000 : ℚ), (-889931671/2500000000 : ℚ), (101733444849/1000000000000 : ℚ), 3⟩,
    ⟨(66998118809/200000000000 : ℚ), (-1951190583/5000000000 : ℚ), (28285567519/250000000000 : ℚ), 3⟩,
    ⟨(338597757651/1000000000000 : ℚ), (-523552807/1250000000 : ℚ), (61387701841/500000000000 : ℚ), 3⟩,
    ⟨(341756732967/1000000000000 : ℚ), (-4424118067/10000000000 : ℚ), (65396443737/500000000000 : ℚ), 3⟩,
    ⟨(344437097333/1000000000000 : ℚ), (-1153568017/2500000000 : ℚ), (68658410043/500000000000 : ℚ), 3⟩,
    ⟨(5415828709/15625000000 : ℚ), (-1190629841/2500000000 : ℚ), (8902440001/62500000000 : ℚ), 2⟩,
    ⟨(348263597603/1000000000000 : ℚ), (-1217885651/2500000000 : ℚ), (146226885611/1000000000000 : ℚ), 2⟩,
    ⟨(174686441109/500000000000 : ℚ), (-2471614617/5000000000 : ℚ), (148727434503/1000000000000 : ℚ), 2⟩,
    ⟨(174965104101/500000000000 : ℚ), (-4978780553/10000000000 : ℚ), (74985245221/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4983210941/10000000000 : ℚ), (75062769281/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (369549284311/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control529.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control529.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate529

-- Control530
namespace DiagonalRamsey.JointInheritedCertificate530
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(256059657457/1000000000000 : ℚ), (1453832721687/1000000000 : ℚ), (-372897298987919/1000000000000 : ℚ), 12⟩,
    ⟨(256656104427/1000000000000 : ℚ), (1589824952417/10000000000 : ℚ), (-8239250235403/200000000000 : ℚ), 9⟩,
    ⟨(51568650851/200000000000 : ℚ), (557504732201/10000000000 : ℚ), (-14659995897091/1000000000000 : ℚ), 7⟩,
    ⟨(6490241851/25000000000 : ℚ), (54941329727/2000000000 : ℚ), (-918596069251/125000000000 : ℚ), 7⟩,
    ⟨(130969176097/500000000000 : ℚ), (159234827279/10000000000 : ℚ), (-4339788035897/1000000000000 : ℚ), 6⟩,
    ⟨(264806862273/1000000000000 : ℚ), (50675547341/5000000000 : ℚ), (-352048250303/125000000000 : ℚ), 5⟩,
    ⟨(134093789479/500000000000 : ℚ), (17110088311/2500000000 : ℚ), (-1939934284779/1000000000000 : ℚ), 5⟩,
    ⟨(272047944097/1000000000000 : ℚ), (48059083263/10000000000 : ℚ), (-694884014139/500000000000 : ℚ), 5⟩,
    ⟨(138175390133/500000000000 : ℚ), (34631195317/10000000000 : ℚ), (-1021810988159/1000000000000 : ℚ), 4⟩,
    ⟨(281054648799/1000000000000 : ℚ), (5071741523/2000000000 : ℚ), (-76354029831/100000000000 : ℚ), 4⟩,
    ⟨(286114248871/1000000000000 : ℚ), (9357194223/5000000000 : ℚ), (-143806171321/250000000000 : ℚ), 4⟩,
    ⟨(291480853767/1000000000000 : ℚ), (13808556413/10000000000 : ℚ), (-2168102239/5000000000 : ℚ), 4⟩,
    ⟨(297102780149/1000000000000 : ℚ), (10095366781/10000000000 : ℚ), (-324397810881/1000000000000 : ℚ), 3⟩,
    ⟨(9466433931/31250000000 : ℚ), (7225507861/10000000000 : ℚ), (-59584144451/250000000000 : ℚ), 3⟩,
    ⟨(61778818201/200000000000 : ℚ), (4967504953/10000000000 : ℚ), (-84645092287/500000000000 : ℚ), 3⟩,
    ⟨(314949918711/1000000000000 : ℚ), (3163420809/10000000000 : ℚ), (-14129685201/125000000000 : ℚ), 3⟩,
    ⟨(321035047977/1000000000000 : ℚ), (1702796933/10000000000 : ℚ), (-66605920707/1000000000000 : ℚ), 3⟩,
    ⟨(327090875683/1000000000000 : ℚ), (7917789/156250000 : ℚ), (-696431381/25000000000 : ℚ), 3⟩,
    ⟨(5204048139/15625000000 : ℚ), (-120531431/2500000000 : ℚ), (2387249659/500000000000 : ℚ), 3⟩,
    ⟨(338882186539/1000000000000 : ℚ), (-261231701/2000000000 : ℚ), (32453620101/1000000000000 : ℚ), 3⟩,
    ⟨(344504112921/1000000000000 : ℚ), (-1997048159/10000000000 : ℚ), (2802827051/50000000000 : ℚ), 3⟩,
    ⟨(349870717817/1000000000000 : ℚ), (-161172219/625000000 : ℚ), (76249617653/1000000000000 : ℚ), 3⟩,
    ⟨(354930317889/1000000000000 : ℚ), (-1534778587/5000000000 : ℚ), (18708668331/200000000000 : ℚ), 3⟩,
    ⟨(179817093211/500000000000 : ℚ), (-3483487137/10000000000 : ℚ), (27082712493/250000000000 : ℚ), 3⟩,
    ⟨(363937022591/1000000000000 : ℚ), (-1915684679/5000000000 : ℚ), (60457873877/500000000000 : ℚ), 3⟩,
    ⟨(367797387731/1000000000000 : ℚ), (-4121567399/10000000000 : ℚ), (2055195573/15625000000 : ℚ), 3⟩,
    ⟨(74235620883/200000000000 : ℚ), (-174421377/400000000 : ℚ), (28072335509/200000000000 : ℚ), 3⟩,
    ⟨(187023307247/500000000000 : ℚ), (-2276609879/5000000000 : ℚ), (73770580021/500000000000 : ℚ), 2⟩,
    ⟨(47046911581/125000000000 : ℚ), (-1175842549/2500000000 : ℚ), (76587431961/500000000000 : ℚ), 2⟩,
    ⟨(378141712433/1000000000000 : ℚ), (-4813752209/10000000000 : ℚ), (157339075893/1000000000000 : ℚ), 2⟩,
    ⟨(379328862261/1000000000000 : ℚ), (-2443156457/5000000000 : ℚ), (160087193173/1000000000000 : ℚ), 2⟩,
    ⟨(379925309231/1000000000000 : ℚ), (-2461145957/5000000000 : ℚ), (161453051911/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-153961729/312500000 : ℚ), (10101462807/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (35130305803/100000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control530.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control530.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate530

-- Control531
namespace DiagonalRamsey.JointInheritedCertificate531
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(285749864957/1000000000000 : ℚ), (14979161668329/10000000000 : ℚ), (-428733299704399/1000000000000 : ℚ), 12⟩,
    ⟨(143197963239/500000000000 : ℚ), (819282661901/5000000000 : ℚ), (-5920913518437/125000000000 : ℚ), 9⟩,
    ⟨(287681827593/1000000000000 : ℚ), (143719913593/2500000000 : ℚ), (-16857881338833/1000000000000 : ℚ), 7⟩,
    ⟨(289595184373/1000000000000 : ℚ), (283442685291/10000000000 : ℚ), (-8452035240231/1000000000000 : ℚ), 7⟩,
    ⟨(58423514029/200000000000 : ℚ), (82209329183/5000000000 : ℚ), (-2496314318177/500000000000 : ℚ), 6⟩,
    ⟨(73806173239/250000000000 : ℚ), (52369914349/5000000000 : ℚ), (-1620629163977/500000000000 : ℚ), 5⟩,
    ⟨(59777325903/200000000000 : ℚ), (8849963257/1250000000 : ℚ), (-279216169587/125000000000 : ℚ), 5⟩,
    ⟨(30306811337/100000000000 : ℚ), (24887819447/5000000000 : ℚ), (-1601363568991/1000000000000 : ℚ), 5⟩,
    ⟨(153864437273/500000000000 : ℚ), (35921138297/10000000000 : ℚ), (-3682848441/3125000000 : ℚ), 4⟩,
    ⟨(156412013683/500000000000 : ℚ), (13176198823/5000000000 : ℚ), (-881790398059/1000000000000 : ℚ), 4⟩,
    ⟨(159152251361/500000000000 : ℚ), (19495117539/10000000000 : ℚ), (-166379670247/250000000000 : ℚ), 4⟩,
    ⟨(253216813/781250000 : ℚ), (7216017533/5000000000 : ℚ), (-502970741879/1000000000000 : ℚ), 4⟩,
    ⟨(330207098581/1000000000000 : ℚ), (165629047/156250000 : ℚ), (-75533860371/200000000000 : ℚ), 3⟩,
    ⟨(16825729529/50000000000 : ℚ), (7639470457/10000000000 : ℚ), (-139505721337/500000000000 : ℚ), 3⟩,
    ⟨(342979252041/1000000000000 : ℚ), (663852649/1250000000 : ℚ), (-99963913709/500000000000 : ℚ), 3⟩,
    ⟨(349538824741/1000000000000 : ℚ), (690255553/2000000000 : ℚ), (-135562573513/1000000000000 : ℚ), 3⟩,
    ⟨(356130136407/1000000000000 : ℚ), (243345441/1250000000 : ℚ), (-82495121999/1000000000000 : ℚ), 3⟩,
    ⟨(181344854553/500000000000 : ℚ), (8946931/125000000 : ℚ), (-2391495839/62500000000 : ℚ), 3⟩,
    ⟨(369154370567/1000000000000 : ℚ), (-301069947/10000000000 : ℚ), (-532624811/500000000000 : ℚ), 3⟩,
    ⟨(187730931283/500000000000 : ℚ), (-229508617/2000000000 : ℚ), (15221476533/500000000000 : ℚ), 3⟩,
    ⟨(381551440507/1000000000000 : ℚ), (-1856479069/10000000000 : ℚ), (57271826573/1000000000000 : ℚ), 3⟩,
    ⟨(193682229213/500000000000 : ℚ), (-2452711197/10000000000 : ℚ), (80191003233/1000000000000 : ℚ), 3⟩,
    ⟨(196422466891/500000000000 : ℚ), (-1477599407/5000000000 : ℚ), (24947717133/250000000000 : ℚ), 3⟩,
    ⟨(397940086601/1000000000000 : ℚ), (-3378513857/10000000000 : ℚ), (23305355031/200000000000 : ℚ), 3⟩,
    ⟨(201300423889/500000000000 : ℚ), (-3733905971/10000000000 : ℚ), (65375486539/500000000000 : ℚ), 3⟩,
    ⟨(406782331633/1000000000000 : ℚ), (-806015169/2000000000 : ℚ), (142736017351/1000000000000 : ℚ), 3⟩,
    ⟨(410444268191/1000000000000 : ℚ), (-2136871419/5000000000 : ℚ), (152692151117/1000000000000 : ℚ), 2⟩,
    ⟨(206775695501/500000000000 : ℚ), (-1117516187/2500000000 : ℚ), (2512192727/15625000000 : ℚ), 2⟩,
    ⟨(208036888387/500000000000 : ℚ), (-288934319/625000000 : ℚ), (167122052273/1000000000000 : ℚ), 2⟩,
    ⟨(208993566777/500000000000 : ℚ), (-4735282881/10000000000 : ℚ), (85903332169/500000000000 : ℚ), 2⟩,
    ⟨(41927303467/100000000000 : ℚ), (-961819807/2000000000 : ℚ), (43724204113/250000000000 : ℚ), 2⟩,
    ⟨(41991909619/100000000000 : ℚ), (-4845692289/10000000000 : ℚ), (176432253251/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4850251859/10000000000 : ℚ), (176623736743/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (20427302057/62500000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control531.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control531.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate531

-- Control532
namespace DiagonalRamsey.JointInheritedCertificate532
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300916415393/1000000000000 : ℚ), (512761382047/312500000 : ℚ), (-98899513076763/200000000000 : ℚ), 12⟩,
    ⟨(301537613553/1000000000000 : ℚ), (1796155309263/10000000000 : ℚ), (-1365628488967/25000000000 : ℚ), 9⟩,
    ⟨(302774027397/1000000000000 : ℚ), (157685665107/2500000000 : ℚ), (-9717601812661/500000000000 : ℚ), 8⟩,
    ⟨(152306874791/500000000000 : ℚ), (311281417127/10000000000 : ℚ), (-9739837114473/1000000000000 : ℚ), 7⟩,
    ⟨(153519531289/500000000000 : ℚ), (180727560311/10000000000 : ℚ), (-1149954484241/200000000000 : ℚ), 6⟩,
    ⟨(62005321859/200000000000 : ℚ), (14401905329/1250000000 : ℚ), (-372979352421/100000000000 : ℚ), 5⟩,
    ⟨(156773809013/500000000000 : ℚ), (15584579933/2000000000 : ℚ), (-2567785350111/1000000000000 : ℚ), 5⟩,
    ⟨(317568179531/1000000000000 : ℚ), (13699616067/2500000000 : ℚ), (-183850942957/100000000000 : ℚ), 5⟩,
    ⟨(64409914721/200000000000 : ℚ), (39542994209/10000000000 : ℚ), (-2161444829/1600000000 : ℚ), 4⟩,
    ⟨(163474320987/500000000000 : ℚ), (28994530189/10000000000 : ℚ), (-201758129491/200000000000 : ℚ), 4⟩,
    ⟨(33221820393/100000000000 : ℚ), (10713162971/5000000000 : ℚ), (-379740825611/500000000000 : ℚ), 4⟩,
    ⟨(42225938839/125000000000 : ℚ), (7915938463/5000000000 : ℚ), (-143037300069/250000000000 : ℚ), 4⟩,
    ⟨(343662734241/1000000000000 : ℚ), (5796611767/5000000000 : ℚ), (-427786803857/1000000000000 : ℚ), 3⟩,
    ⟨(43715935689/125000000000 : ℚ), (1039321173/1250000000 : ℚ), (-78540833997/250000000000 : ℚ), 3⟩,
    ⟨(71188671531/200000000000 : ℚ), (1433344081/2500000000 : ℚ), (-111561588453/500000000000 : ℚ), 3⟩,
    ⟨(45281311053/125000000000 : ℚ), (114697123/312500000 : ℚ), (-149063594777/1000000000000 : ℚ), 3⟩,
    ⟨(184294068351/500000000000 : ℚ), (199977779/1000000000 : ℚ), (-44018638977/500000000000 : ℚ), 3⟩,
    ⟨(23430954217/62500000000 : ℚ), (315978783/5000000000 : ℚ), (-18601500513/500000000000 : ℚ), 3⟩,
    ⟨(76222227923/200000000000 : ℚ), (-249288217/5000000000 : ℚ), (1380446087/250000000000 : ℚ), 3⟩,
    ⟨(193587945443/500000000000 : ℚ), (-1440213243/10000000000 : ℚ), (41687031009/1000000000000 : ℚ), 3⟩,
    ⟨(196515557207/500000000000 : ℚ), (-69662869/312500000 : ℚ), (7246099427/100000000000 : ℚ), 3⟩,
    ⟨(99655105299/250000000000 : ℚ), (-2893037601/10000000000 : ℚ), (49366628327/500000000000 : ℚ), 3⟩,
    ⟨(403889983153/1000000000000 : ℚ), (-86316937/250000000 : ℚ), (1514831523/12500000000 : ℚ), 3⟩,
    ⟨(204394525761/500000000000 : ℚ), (-3924274039/10000000000 : ℚ), (140347587963/1000000000000 : ℚ), 3⟩,
    ⟨(103317611399/250000000000 : ℚ), (-1080074383/2500000000 : ℚ), (156624157619/1000000000000 : ℚ), 3⟩,
    ⟨(417291007101/1000000000000 : ℚ), (-4650397601/10000000000 : ℚ), (170331827749/1000000000000 : ℚ), 3⟩,
    ⟨(420812015831/1000000000000 : ℚ), (-4922029139/10000000000 : ℚ), (36342827121/200000000000 : ℚ), 3⟩,
    ⟨(423799562549/1000000000000 : ℚ), (-1285228943/2500000000 : ℚ), (190957591887/1000000000000 : ℚ), 3⟩,
    ⟨(85244975109/200000000000 : ℚ), (-1062278811/2000000000 : ℚ), (99101500717/500000000000 : ℚ), 3⟩,
    ⟨(42806459773/100000000000 : ℚ), (-2718333937/5000000000 : ℚ), (203553954739/1000000000000 : ℚ), 2⟩,
    ⟨(429301011573/1000000000000 : ℚ), (-5518993169/10000000000 : ℚ), (103541541723/500000000000 : ℚ), 2⟩,
    ⟨(214961104867/500000000000 : ℚ), (-2779903263/5000000000 : ℚ), (52209117699/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1391223003/2500000000 : ℚ), (52263781723/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (300893025619/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control532.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control532.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate532
