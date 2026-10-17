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

-- Control683
namespace DiagonalRamsey.JointInheritedCertificate683
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252027103761/1000000000000 : ℚ), (359514955429/250000000 : ℚ), (-181461575258061/500000000000 : ℚ), 13⟩,
    ⟨(252498585733/1000000000000 : ℚ), (1574878605991/10000000000 : ℚ), (-40073173210297/1000000000000 : ℚ), 10⟩,
    ⟨(126718504523/500000000000 : ℚ), (553250240087/10000000000 : ℚ), (-17806277367/1250000000 : ℚ), 8⟩,
    ⟨(63708334043/250000000000 : ℚ), (273067738941/10000000000 : ℚ), (-3564454146921/500000000000 : ℚ), 7⟩,
    ⟨(128337059859/500000000000 : ℚ), (79244363139/5000000000 : ℚ), (-2100124622759/500000000000 : ℚ), 6⟩,
    ⟨(25894163193/100000000000 : ℚ), (78861769/7812500 : ℚ), (-543507317271/200000000000 : ℚ), 6⟩,
    ⟨(65403508857/250000000000 : ℚ), (68151369569/10000000000 : ℚ), (-932260254419/500000000000 : ℚ), 5⟩,
    ⟨(52933118701/200000000000 : ℚ), (5974092089/1250000000 : ℚ), (-1329093085651/1000000000000 : ℚ), 5⟩,
    ⟨(268066917987/1000000000000 : ℚ), (34343013083/10000000000 : ℚ), (-971022665141/1000000000000 : ℚ), 5⟩,
    ⟨(135892626131/500000000000 : ℚ), (6257111873/2500000000 : ℚ), (-719721315129/1000000000000 : ℚ), 5⟩,
    ⟨(275784786737/1000000000000 : ℚ), (18333833339/10000000000 : ℚ), (-4292138489/8000000000 : ℚ), 4⟩,
    ⟨(280027003709/1000000000000 : ℚ), (2675132263/2000000000 : ℚ), (-199393080549/500000000000 : ℚ), 4⟩,
    ⟨(28447104831/100000000000 : ℚ), (961127181/1000000000 : ℚ), (-292579077881/1000000000000 : ℚ), 4⟩,
    ⟨(7226853049/25000000000 : ℚ), (418309069/625000000 : ℚ), (-104460098737/500000000000 : ℚ), 4⟩,
    ⟨(18361993409/62500000000 : ℚ), (219496251/500000000 : ℚ), (-141825036609/1000000000000 : ℚ), 4⟩,
    ⟨(298578931333/1000000000000 : ℚ), (1272254693/5000000000 : ℚ), (-87183005789/1000000000000 : ℚ), 4⟩,
    ⟨(303389130547/1000000000000 : ℚ), (1046210957/10000000000 : ℚ), (-42098759593/1000000000000 : ℚ), 3⟩,
    ⟨(38522020917/125000000000 : ℚ), (-1472243/80000000 : ℚ), (-561132091/125000000000 : ℚ), 3⟩,
    ⟨(3911174249/12500000000 : ℚ), (-1203812467/10000000000 : ℚ), (543443733/20000000000 : ℚ), 3⟩,
    ⟨(317497013571/1000000000000 : ℚ), (-256967681/1250000000 : ℚ), (54019811453/1000000000000 : ℚ), 3⟩,
    ⟨(321941058171/1000000000000 : ℚ), (-346467443/1250000000 : ℚ), (1922704223/25000000000 : ℚ), 3⟩,
    ⟨(326183275143/1000000000000 : ℚ), (-421997181/1250000000 : ℚ), (24121690091/250000000000 : ℚ), 3⟩,
    ⟨(165091404809/500000000000 : ℚ), (-2429319/6250000 : ℚ), (14156622343/125000000000 : ℚ), 3⟩,
    ⟨(333901143893/1000000000000 : ℚ), (-172748693/400000000 : ℚ), (127589592267/1000000000000 : ℚ), 3⟩,
    ⟨(2698419747/8000000000 : ℚ), (-4682334287/10000000000 : ℚ), (4368495397/31250000000 : ℚ), 3⟩,
    ⟨(85088506613/250000000000 : ℚ), (-623275873/1250000000 : ℚ), (75043706747/500000000000 : ℚ), 3⟩,
    ⟨(6860528599/20000000000 : ℚ), (-40912851/78125000 : ℚ), (31730232481/200000000000 : ℚ), 3⟩,
    ⟨(172646971081/500000000000 : ℚ), (-5439232901/10000000000 : ℚ), (5175511889/31250000000 : ℚ), 3⟩,
    ⟨(86783681427/250000000000 : ℚ), (-5597137377/10000000000 : ℚ), (17108317513/100000000000 : ℚ), 3⟩,
    ⟨(174265526417/500000000000 : ℚ), (-2856666823/5000000000 : ℚ), (175124828607/1000000000000 : ℚ), 3⟩,
    ⟨(349469476147/1000000000000 : ℚ), (-2894885593/5000000000 : ℚ), (11112030663/62500000000 : ℚ), 3⟩,
    ⟨(349940958119/1000000000000 : ℚ), (-5827689061/10000000000 : ℚ), (179118497213/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2916207431/5000000000 : ℚ), (22410485787/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (104594529787/250000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control683.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control683.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate683

-- Control685
namespace DiagonalRamsey.JointInheritedCertificate685
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(222596820163/1000000000000 : ℚ), (8039490238471/5000000000 : ℚ), (-358347966351759/1000000000000 : ℚ), 13⟩,
    ⟨(111484656509/500000000000 : ℚ), (880857267117/5000000000 : ℚ), (-39552008845807/1000000000000 : ℚ), 10⟩,
    ⟨(223710711417/1000000000000 : ℚ), (154790441447/2500000000 : ℚ), (-439004789343/31250000000 : ℚ), 8⟩,
    ⟨(22481387529/100000000000 : ℚ), (305662473207/10000000000 : ℚ), (-1755338491591/250000000000 : ℚ), 7⟩,
    ⟨(45253636113/200000000000 : ℚ), (177371831327/10000000000 : ℚ), (-4129413367571/1000000000000 : ℚ), 7⟩,
    ⟨(228059621487/1000000000000 : ℚ), (14110531441/1250000000 : ℚ), (-533049741049/200000000000 : ℚ), 6⟩,
    ⟨(230170945501/1000000000000 : ℚ), (4756170937/625000000 : ℚ), (-1822860153763/1000000000000 : ℚ), 6⟩,
    ⟨(232581819403/1000000000000 : ℚ), (5323309373/1000000000 : ℚ), (-647029654947/500000000000 : ℚ), 5⟩,
    ⟨(117634512579/500000000000 : ℚ), (9526649383/2500000000 : ℚ), (-940375857827/1000000000000 : ℚ), 5⟩,
    ⟨(119103341753/500000000000 : ℚ), (13807491709/5000000000 : ℚ), (-346054376831/500000000000 : ℚ), 5⟩,
    ⟨(30170812899/125000000000 : ℚ), (1003098227/500000000 : ℚ), (-511072469409/1000000000000 : ℚ), 4⟩,
    ⟨(9788722137/40000000000 : ℚ), (2891617531/2000000000 : ℚ), (-93731824731/250000000000 : ℚ), 4⟩,
    ⟨(15514316059/62500000000 : ℚ), (10195374083/10000000000 : ℚ), (-6747510267/25000000000 : ℚ), 4⟩,
    ⟨(50373140173/200000000000 : ℚ), (6884074801/10000000000 : ℚ), (-187129580243/1000000000000 : ℚ), 4⟩,
    ⟨(3194912029/12500000000 : ℚ), (4265417261/10000000000 : ℚ), (-120706546609/1000000000000 : ℚ), 4⟩,
    ⟨(259374945743/1000000000000 : ℚ), (540616021/2500000000 : ℚ), (-66573573293/1000000000000 : ℚ), 4⟩,
    ⟨(263175228567/1000000000000 : ℚ), (451190053/10000000000 : ℚ), (-21873079739/1000000000000 : ℚ), 4⟩,
    ⟨(26695721199/100000000000 : ℚ), (-478596823/5000000000 : ℚ), (15450430511/1000000000000 : ℚ), 4⟩,
    ⟨(54136894689/200000000000 : ℚ), (-2127398743/10000000000 : ℚ), (46902116481/1000000000000 : ℚ), 3⟩,
    ⟨(137160558683/500000000000 : ℚ), (-3107308219/10000000000 : ℚ), (73600639677/1000000000000 : ℚ), 3⟩,
    ⟨(69458030221/250000000000 : ℚ), (-786560773/2000000000 : ℚ), (19277508961/200000000000 : ℚ), 3⟩,
    ⟨(281183671117/1000000000000 : ℚ), (-578881759/1250000000 : ℚ), (14487746983/125000000000 : ℚ), 3⟩,
    ⟨(284343490803/1000000000000 : ℚ), (-163212443/312500000 : ℚ), (132632790713/1000000000000 : ℚ), 3⟩,
    ⟨(8977535911/31250000000 : ℚ), (-2861981197/5000000000 : ℚ), (918472603/6250000000 : ℚ), 3⟩,
    ⟨(289968354907/1000000000000 : ℚ), (-3073410721/5000000000 : ℚ), (19894958379/125000000000 : ℚ), 3⟩,
    ⟨(36547403601/125000000000 : ℚ), (-1300169083/2000000000 : ℚ), (3389349303/20000000000 : ℚ), 3⟩,
    ⟨(147245276411/500000000000 : ℚ), (-1358664883/2000000000 : ℚ), (35609909281/200000000000 : ℚ), 3⟩,
    ⟨(18517624609/62500000000 : ℚ), (-7029833091/10000000000 : ℚ), (185035535519/1000000000000 : ℚ), 3⟩,
    ⟨(297736299019/1000000000000 : ℚ), (-7214577233/10000000000 : ℚ), (95261264827/500000000000 : ℚ), 3⟩,
    ⟨(74709865723/250000000000 : ℚ), (-7350651161/10000000000 : ℚ), (194581418711/1000000000000 : ℚ), 3⟩,
    ⟨(74895215323/250000000000 : ℚ), (-7440225461/10000000000 : ℚ), (197261563687/1000000000000 : ℚ), 3⟩,
    ⟨(299953354147/1000000000000 : ℚ), (-7484678201/10000000000 : ℚ), (4964852737/25000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-7490219313/10000000000 : ℚ), (49690082479/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (105059149191/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control685.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control685.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate685

-- Control686
namespace DiagonalRamsey.JointInheritedCertificate686
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(261744016159/1000000000000 : ℚ), (8291363741641/5000000000 : ℚ), (-434555634134449/1000000000000 : ℚ), 13⟩,
    ⟨(262168736739/1000000000000 : ℚ), (1817433929461/10000000000 : ℚ), (-47967471637113/1000000000000 : ℚ), 10⟩,
    ⟨(131507043803/500000000000 : ℚ), (1997003551/31250000 : ℚ), (-17040257012773/1000000000000 : ℚ), 8⟩,
    ⟨(26427192757/100000000000 : ℚ), (157835145173/5000000000 : ℚ), (-4259644341441/500000000000 : ℚ), 7⟩,
    ⟨(8310316967/31250000000 : ℚ), (22915040041/1250000000 : ℚ), (-1002497631217/200000000000 : ℚ), 7⟩,
    ⟨(267972764209/1000000000000 : ℚ), (4671244433/400000000 : ℚ), (-1618554323613/500000000000 : ℚ), 6⟩,
    ⟨(67595029951/250000000000 : ℚ), (78818864027/10000000000 : ℚ), (-5539382537/2500000000 : ℚ), 6⟩,
    ⟨(273129025579/1000000000000 : ℚ), (27609097593/5000000000 : ℚ), (-157469536033/100000000000 : ℚ), 5⟩,
    ⟨(276193008069/1000000000000 : ℚ), (39603685741/10000000000 : ℚ), (-573009177299/500000000000 : ℚ), 5⟩,
    ⟨(34942819931/125000000000 : ℚ), (14386511357/5000000000 : ℚ), (-105649694339/125000000000 : ℚ), 5⟩,
    ⟨(35393177713/125000000000 : ℚ), (20976153177/10000000000 : ℚ), (-312962795133/500000000000 : ℚ), 4⟩,
    ⟨(57393379461/200000000000 : ℚ), (759606053/500000000 : ℚ), (-230555141709/500000000000 : ℚ), 4⟩,
    ⟨(290970183351/1000000000000 : ℚ), (10793479639/10000000000 : ℚ), (-66809564271/200000000000 : ℚ), 4⟩,
    ⟨(295116726011/1000000000000 : ℚ), (1844477331/2500000000 : ℚ), (-233988977869/1000000000000 : ℚ), 4⟩,
    ⟨(29936659181/100000000000 : ℚ), (467821581/1000000000 : ℚ), (-153766394407/1000000000000 : ℚ), 4⟩,
    ⟨(151839426109/500000000000 : ℚ), (1255819557/5000000000 : ℚ), (-11057063251/125000000000 : ℚ), 4⟩,
    ⟨(30801197781/100000000000 : ℚ), (187504419/2500000000 : ℚ), (-34590893691/1000000000000 : ℚ), 4⟩,
    ⟨(156162119109/500000000000 : ℚ), (-87305719/1250000000 : ℚ), (322700253/31250000000 : ℚ), 3⟩,
    ⟨(316574104017/1000000000000 : ℚ), (-950348057/5000000000 : ℚ), (48124152919/1000000000000 : ℚ), 3⟩,
    ⟨(320720646677/1000000000000 : ℚ), (-2906303557/10000000000 : ℚ), (80162517041/1000000000000 : ℚ), 3⟩,
    ⟨(324723932723/1000000000000 : ℚ), (-469055453/1250000000 : ℚ), (6716605407/62500000000 : ℚ), 3⟩,
    ⟨(82136352081/250000000000 : ℚ), (-4467288993/10000000000 : ℚ), (16351550389/125000000000 : ℚ), 3⟩,
    ⟨(16607413529/50000000000 : ℚ), (-5072366071/10000000000 : ℚ), (75399550217/500000000000 : ℚ), 3⟩,
    ⟨(335497821959/1000000000000 : ℚ), (-5584222083/10000000000 : ℚ), (167884777131/1000000000000 : ℚ), 3⟩,
    ⟨(338561804449/1000000000000 : ℚ), (-6015623573/10000000000 : ℚ), (91211728939/500000000000 : ℚ), 3⟩,
    ⟨(21331919389/62500000000 : ℚ), (-637643031/1000000000 : ℚ), (194688053617/1000000000000 : ℚ), 3⟩,
    ⟨(343718065819/1000000000000 : ℚ), (-6674240043/10000000000 : ℚ), (8195525731/40000000000 : ℚ), 3⟩,
    ⟨(86440171771/250000000000 : ℚ), (-1728717053/2500000000 : ℚ), (213183363839/1000000000000 : ℚ), 3⟩,
    ⟨(173709451229/500000000000 : ℚ), (-7102706061/10000000000 : ℚ), (21969354251/100000000000 : ℚ), 3⟩,
    ⟨(174338371211/500000000000 : ℚ), (-724098677/1000000000 : ℚ), (44901267117/200000000000 : ℚ), 3⟩,
    ⟨(349522093289/1000000000000 : ℚ), (-916497463/1250000000 : ℚ), (28460360359/125000000000 : ℚ), 3⟩,
    ⟨(349946813869/1000000000000 : ℚ), (-7377126291/10000000000 : ℚ), (5731545331/25000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1476550683/2000000000 : ℚ), (229458747587/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (381259388269/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control686.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control686.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate686

-- Control687
namespace DiagonalRamsey.JointInheritedCertificate687
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7855454903/50000000000 : ℚ), (4894376290799/10000000000 : ℚ), (-77119139871461/1000000000000 : ℚ), 11⟩,
    ⟨(19741405713/125000000000 : ℚ), (259440143167/5000000000 : ℚ), (-8309772717227/1000000000000 : ℚ), 8⟩,
    ⟨(79771973159/500000000000 : ℚ), (85736378823/5000000000 : ℚ), (-2804259748411/1000000000000 : ℚ), 7⟩,
    ⟨(161885224723/1000000000000 : ℚ), (7688438249/1000000000 : ℚ), (-257297470797/200000000000 : ℚ), 6⟩,
    ⟨(82432553451/500000000000 : ℚ), (38535144767/10000000000 : ℚ), (-660870167461/1000000000000 : ℚ), 5⟩,
    ⟨(33673815531/200000000000 : ℚ), (4860602399/2500000000 : ℚ), (-343169122763/1000000000000 : ℚ), 5⟩,
    ⟨(3445249627/20000000000 : ℚ), (8646206129/10000000000 : ℚ), (-79751068259/500000000000 : ℚ), 4⟩,
    ⟨(176395696667/1000000000000 : ℚ), (1983810127/10000000000 : ℚ), (-8693644783/200000000000 : ℚ), 4⟩,
    ⟨(180609886459/1000000000000 : ℚ), (-2396542487/10000000000 : ℚ), (4332752989/125000000000 : ℚ), 4⟩,
    ⟨(11546443861/62500000000 : ℚ), (-5412859451/10000000000 : ℚ), (17946071203/200000000000 : ℚ), 4⟩,
    ⟨(188636505471/1000000000000 : ℚ), (-302253023/400000000 : ℚ), (129729386697/1000000000000 : ℚ), 4⟩,
    ⟨(3002194941/15625000000 : ℚ), (-91039781/100000000 : ℚ), (31837246869/200000000000 : ℚ), 4⟩,
    ⟨(195120358403/1000000000000 : ℚ), (-5108651983/5000000000 : ℚ), (22592456659/125000000000 : ℚ), 3⟩,
    ⟨(24682704601/125000000000 : ℚ), (-5495860199/5000000000 : ℚ), (195939225611/1000000000000 : ℚ), 3⟩,
    ⟨(99537168711/500000000000 : ℚ), (-11482986389/10000000000 : ℚ), (25709879267/125000000000 : ℚ), 3⟩,
    ⟨(99948242533/500000000000 : ℚ), (-2930454959/2500000000 : ℚ), (105221681057/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-5875685821/5000000000 : ℚ), (211034245177/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (226892645511/500000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control687.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control687.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate687

-- Control688
namespace DiagonalRamsey.JointInheritedCertificate688
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(238251205147/1000000000000 : ℚ), (5157005686729/10000000000 : ℚ), (-24641563898903/200000000000 : ℚ), 11⟩,
    ⟨(47886965481/200000000000 : ℚ), (17111807043/312500000 : ℚ), (-13287018845637/1000000000000 : ℚ), 8⟩,
    ⟨(12087829299/50000000000 : ℚ), (22684124209/1250000000 : ℚ), (-1123143561469/250000000000 : ℚ), 7⟩,
    ⟨(122563628497/500000000000 : ℚ), (16350877611/2000000000 : ℚ), (-413729641949/200000000000 : ℚ), 6⟩,
    ⟨(249417307449/1000000000000 : ℚ), (1291132229/312500000 : ℚ), (-214022471321/200000000000 : ℚ), 5⟩,
    ⟨(254461873111/1000000000000 : ℚ), (10594024771/5000000000 : ℚ), (-563636459331/1000000000000 : ℚ), 5⟩,
    ⟨(260067094153/1000000000000 : ℚ), (2454235639/2500000000 : ℚ), (-271416492771/1000000000000 : ℚ), 4⟩,
    ⟨(16626097817/62500000000 : ℚ), (1406250137/5000000000 : ℚ), (-17467771027/200000000000 : ℚ), 4⟩,
    ⟨(272084612609/1000000000000 : ℚ), (-1780151741/10000000000 : ℚ), (36135241379/1000000000000 : ℚ), 4⟩,
    ⟨(34754385441/125000000000 : ℚ), (-4931539753/10000000000 : ℚ), (30691876883/250000000000 : ℚ), 4⟩,
    ⟨(283640304569/1000000000000 : ℚ), (-44762649/62500000 : ℚ), (185381567223/1000000000000 : ℚ), 4⟩,
    ⟨(36085608779/125000000000 : ℚ), (-8765896327/10000000000 : ℚ), (57816295829/250000000000 : ℚ), 3⟩,
    ⟨(292974920687/1000000000000 : ℚ), (-1983053251/2000000000 : ℚ), (26468627097/100000000000 : ℚ), 3⟩,
    ⟨(2963455917/10000000000 : ℚ), (-10712195021/10000000000 : ℚ), (144083135997/500000000000 : ℚ), 3⟩,
    ⟨(74666837569/250000000000 : ℚ), (-5608269069/5000000000 : ℚ), (303170161541/1000000000000 : ℚ), 3⟩,
    ⟨(149925486267/500000000000 : ℚ), (-5730686213/5000000000 : ℚ), (310496974503/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5745825057/5000000000 : ℚ), (311405079367/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (356209467109/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control688.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control688.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate688

-- Control689
namespace DiagonalRamsey.JointInheritedCertificate689
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(24393732633/200000000000 : ℚ), (2908022307/5000000 : ℚ), (-35555478297617/500000000000 : ℚ), 11⟩,
    ⟨(4900239101/40000000000 : ℚ), (308326859737/5000000000 : ℚ), (-3821573452957/500000000000 : ℚ), 8⟩,
    ⟨(24711991511/200000000000 : ℚ), (203326816801/10000000000 : ℚ), (-2564973393671/1000000000000 : ℚ), 7⟩,
    ⟨(25018019879/200000000000 : ℚ), (90567159073/10000000000 : ℚ), (-1164955903011/1000000000000 : ℚ), 6⟩,
    ⟨(2540752011/20000000000 : ℚ), (44729201843/10000000000 : ℚ), (-587816930049/1000000000000 : ℚ), 5⟩,
    ⟨(25865523929/200000000000 : ℚ), (85291437/39062500 : ℚ), (-147336511383/500000000000 : ℚ), 5⟩,
    ⟨(131872152529/1000000000000 : ℚ), (4420581931/5000000000 : ℚ), (-31285613053/250000000000 : ℚ), 5⟩,
    ⟨(134573414231/1000000000000 : ℚ), (395440581/5000000000 : ℚ), (-1123830691/62500000000 : ℚ), 4⟩,
    ⟨(68663798389/500000000000 : ℚ), (-4524110071/10000000000 : ℚ), (54229001847/1000000000000 : ℚ), 4⟩,
    ⟨(1750360731/12500000000 : ℚ), (-4099790083/5000000000 : ℚ), (26293521327/250000000000 : ℚ), 4⟩,
    ⟨(35643347841/250000000000 : ℚ), (-1082237631/1000000000 : ℚ), (71110442137/500000000000 : ℚ), 4⟩,
    ⟨(72431705229/500000000000 : ℚ), (-12723614887/10000000000 : ℚ), (42384588213/250000000000 : ℚ), 4⟩,
    ⟨(73405455807/500000000000 : ℚ), (-7048088363/5000000000 : ℚ), (189552290893/1000000000000 : ℚ), 4⟩,
    ⟨(148341053453/1000000000000 : ℚ), (-15053784641/10000000000 : ℚ), (50920770951/250000000000 : ℚ), 4⟩,
    ⟨(37348758371/250000000000 : ℚ), (-1566264909/1000000000 : ℚ), (212746796801/1000000000000 : ℚ), 4⟩,
    ⟨(37483086961/250000000000 : ℚ), (-797953853/500000000 : ℚ), (217183207219/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3199155069/2000000000 : ℚ), (54433389319/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (232609794337/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control689.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control689.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate689

-- Control690
namespace DiagonalRamsey.JointInheritedCertificate690
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43669966903/1000000000000 : ℚ), (561393186757/2500000000 : ℚ), (-1231104989777/125000000000 : ℚ), 10⟩,
    ⟨(5518392227/125000000000 : ℚ), (205291571713/10000000000 : ℚ), (-460402681421/500000000000 : ℚ), 7⟩,
    ⟨(5628604337/125000000000 : ℚ), (44236851907/10000000000 : ℚ), (-51232987691/250000000000 : ℚ), 6⟩,
    ⟨(23090413593/500000000000 : ℚ), (246563939/5000000000 : ℚ), (-5932123117/1000000000000 : ℚ), 5⟩,
    ⟨(47427734873/1000000000000 : ℚ), (-17320343769/10000000000 : ℚ), (77301550963/1000000000000 : ℚ), 4⟩,
    ⟨(48579727363/1000000000000 : ℚ), (-13081103641/5000000000 : ℚ), (119705322117/1000000000000 : ℚ), 4⟩,
    ⟨(49461424243/1000000000000 : ℚ), (-7707135033/2500000000 : ℚ), (71285361433/500000000000 : ℚ), 4⟩,
    ⟨(12484648789/250000000000 : ℚ), (-1316524591/400000000 : ℚ), (9558129957/62500000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-33164402901/10000000000 : ℚ), (154185746629/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (541029907463/1000000000000 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control690.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control690.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate690

-- Control691
namespace DiagonalRamsey.JointInheritedCertificate691
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(87463433203/1000000000000 : ℚ), (2271325142211/10000000000 : ℚ), (-4987607372243/250000000000 : ℚ), 10⟩,
    ⟨(8840846539/100000000000 : ℚ), (207940418439/10000000000 : ℚ), (-1867038104917/1000000000000 : ℚ), 7⟩,
    ⟨(45077328591/500000000000 : ℚ), (22534821901/5000000000 : ℚ), (-208691794017/500000000000 : ℚ), 6⟩,
    ⟨(92436166707/1000000000000 : ℚ), (859809071/10000000000 : ℚ), (-3688772509/250000000000 : ℚ), 5⟩,
    ⟨(94905654821/1000000000000 : ℚ), (-85582937/50000000 : ℚ), (76674479567/500000000000 : ℚ), 4⟩,
    ⟨(48593582173/500000000000 : ℚ), (-13010227527/5000000000 : ℚ), (14924145403/62500000000 : ℚ), 4⟩,
    ⟨(98933356137/1000000000000 : ℚ), (-3838760051/1250000000 : ℚ), (28475442469/100000000000 : ℚ), 4⟩,
    ⟨(3995135533/40000000000 : ℚ), (-512536511/156250000 : ℚ), (38193839467/125000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16527214869/5000000000 : ℚ), (308070109599/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (428236192463/1000000000000 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control691.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control691.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate691
