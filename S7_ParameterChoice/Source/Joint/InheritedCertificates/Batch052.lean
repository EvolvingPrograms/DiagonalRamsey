import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control447
namespace DiagonalRamsey.JointInheritedCertificate447
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(34408862501/125000000000 : ℚ), (13251404288789/10000000000 : ℚ), (-182743787572439/500000000000 : ℚ), 12⟩,
    ⟨(55203102783/200000000000 : ℚ), (90458010807/625000000 : ℚ), (-40393955413569/1000000000000 : ℚ), 9⟩,
    ⟨(277497570691/1000000000000 : ℚ), (253385141519/5000000000 : ℚ), (-1798290836943/125000000000 : ℚ), 7⟩,
    ⟨(139851398659/500000000000 : ℚ), (249347331577/10000000000 : ℚ), (-7220782103139/1000000000000 : ℚ), 6⟩,
    ⟨(282609956259/1000000000000 : ℚ), (36092430919/2500000000 : ℚ), (-213589897853/50000000000 : ℚ), 6⟩,
    ⟨(286191049983/1000000000000 : ℚ), (18366006729/2000000000 : ℚ), (-347351522971/125000000000 : ℚ), 5⟩,
    ⟨(290411590601/1000000000000 : ℚ), (62013869329/10000000000 : ℚ), (-383980137081/200000000000 : ℚ), 5⟩,
    ⟨(295230931999/1000000000000 : ℚ), (2179427117/500000000 : ℚ), (-690392484839/500000000000 : ℚ), 4⟩,
    ⟨(150301330643/500000000000 : ℚ), (15739006183/5000000000 : ℚ), (-510128813493/500000000000 : ℚ), 4⟩,
    ⟨(30647504577/100000000000 : ℚ), (11568295729/5000000000 : ℚ), (-767239428493/1000000000000 : ℚ), 4⟩,
    ⟨(312791531181/1000000000000 : ℚ), (17175656643/10000000000 : ℚ), (-145697423187/250000000000 : ℚ), 3⟩,
    ⟨(319491286309/1000000000000 : ℚ), (12786889187/10000000000 : ℚ), (-222063518689/500000000000 : ℚ), 3⟩,
    ⟨(81627447213/250000000000 : ℚ), (2368700399/2500000000 : ℚ), (-168603287133/500000000000 : ℚ), 3⟩,
    ⟨(333779446793/1000000000000 : ℚ), (3461313831/5000000000 : ℚ), (-126495649999/500000000000 : ℚ), 3⟩,
    ⟨(341230249351/1000000000000 : ℚ), (984138919/2000000000 : ℚ), (-185456649163/1000000000000 : ℚ), 3⟩,
    ⟨(13951617649/40000000000 : ℚ), (3326114591/10000000000 : ℚ), (-65232542799/500000000000 : ℚ), 3⟩,
    ⟨(71277442727/200000000000 : ℚ), (2039082131/10000000000 : ℚ), (-85102708427/1000000000000 : ℚ), 3⟩,
    ⟨(363947405509/1000000000000 : ℚ), (988403789/10000000000 : ℚ), (-47273148611/1000000000000 : ℚ), 3⟩,
    ⟨(92849552017/250000000000 : ℚ), (122374267/10000000000 : ℚ), (-15440702767/1000000000000 : ℚ), 3⟩,
    ⟨(47333483251/125000000000 : ℚ), (-29857029/500000000 : ℚ), (5768427201/500000000000 : ℚ), 3⟩,
    ⟨(385686368551/1000000000000 : ℚ), (-299659181/2500000000 : ℚ), (34519879929/1000000000000 : ℚ), 2⟩,
    ⟨(392386123679/1000000000000 : ℚ), (-851821821/5000000000 : ℚ), (2708153677/50000000000 : ℚ), 2⟩,
    ⟨(39870260909/100000000000 : ℚ), (-2128574479/10000000000 : ℚ), (2217768371/31250000000 : ℚ), 2⟩,
    ⟨(16182999743/40000000000 : ℚ), (-2486029357/10000000000 : ℚ), (85323729449/1000000000000 : ℚ), 2⟩,
    ⟨(409946722861/1000000000000 : ℚ), (-174107959/625000000 : ℚ), (48764085143/500000000000 : ℚ), 2⟩,
    ⟨(414766064259/1000000000000 : ℚ), (-758795387/2500000000 : ℚ), (107813881497/1000000000000 : ℚ), 2⟩,
    ⟨(418986604877/1000000000000 : ℚ), (-3240193263/10000000000 : ℚ), (58179958317/500000000000 : ℚ), 2⟩,
    ⟨(422567698601/1000000000000 : ℚ), (-3405216291/10000000000 : ℚ), (3082586877/25000000000 : ℚ), 2⟩,
    ⟨(212737428771/500000000000 : ℚ), (-3533626213/10000000000 : ℚ), (128748212851/1000000000000 : ℚ), 2⟩,
    ⟨(427680084169/1000000000000 : ℚ), (-3627918427/10000000000 : ℚ), (16596307299/125000000000 : ℚ), 2⟩,
    ⟨(85832428189/200000000000 : ℚ), (-1844925623/5000000000 : ℚ), (27084755427/200000000000 : ℚ), 2⟩,
    ⟨(107476688713/250000000000 : ℚ), (-3720545107/10000000000 : ℚ), (136742182457/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-372436921/1000000000 : ℚ), (5476264043/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (33445764887/100000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control447.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control447.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate447

-- Control448
namespace DiagonalRamsey.JointInheritedCertificate448
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(282475499961/1000000000000 : ℚ), (3339299359157/2500000000 : ℚ), (-189021104501321/500000000000 : ℚ), 12⟩,
    ⟨(70808391593/250000000000 : ℚ), (58360845173/400000000 : ℚ), (-10445472208161/250000000000 : ℚ), 9⟩,
    ⟨(1423711993/5000000000 : ℚ), (255467886689/5000000000 : ℚ), (-14880930877967/1000000000000 : ℚ), 7⟩,
    ⟨(57397493153/200000000000 : ℚ), (10057584389/400000000 : ℚ), (-7469273377019/1000000000000 : ℚ), 6⟩,
    ⟨(72486786661/250000000000 : ℚ), (29121915807/2000000000 : ℚ), (-441901762687/100000000000 : ℚ), 6⟩,
    ⟨(73398234473/250000000000 : ℚ), (23159794051/2500000000 : ℚ), (-574955677459/200000000000 : ℚ), 5⟩,
    ⟨(148944864273/500000000000 : ℚ), (62576077553/10000000000 : ℚ), (-79455960581/40000000000 : ℚ), 5⟩,
    ⟨(302796138163/1000000000000 : ℚ), (43996601727/10000000000 : ℚ), (-1428805646011/1000000000000 : ℚ), 4⟩,
    ⟨(308264915337/1000000000000 : ℚ), (1589190497/500000000 : ℚ), (-1055940306619/1000000000000 : ℚ), 4⟩,
    ⟨(314243392753/1000000000000 : ℚ), (23371413379/10000000000 : ℚ), (-99285249357/125000000000 : ℚ), 4⟩,
    ⟨(320673994407/1000000000000 : ℚ), (8679745023/5000000000 : ℚ), (-3772200821/6250000000 : ℚ), 3⟩,
    ⟨(327494790089/1000000000000 : ℚ), (6466549609/5000000000 : ℚ), (-115046608129/250000000000 : ℚ), 3⟩,
    ⟨(334640091807/1000000000000 : ℚ), (4796330153/5000000000 : ℚ), (-69931427429/200000000000 : ℚ), 3⟩,
    ⟨(342041086401/1000000000000 : ℚ), (438672747/625000000 : ℚ), (-65654080233/250000000000 : ℚ), 3⟩,
    ⟨(174813249123/500000000000 : ℚ), (2499983419/5000000000 : ℚ), (-3012998593/15625000000 : ℚ), 3⟩,
    ⟨(2233270473/6250000000 : ℚ), (1696078837/5000000000 : ℚ), (-8501476083/62500000000 : ℚ), 3⟩,
    ⟨(5704020227/15625000000 : ℚ), (1047331307/5000000000 : ℚ), (-2786773989/31250000000 : ℚ), 3⟩,
    ⟨(186377035981/500000000000 : ℚ), (1035657599/10000000000 : ℚ), (-12530562531/250000000000 : ℚ), 3⟩,
    ⟨(11885608869/31250000000 : ℚ), (162970121/10000000000 : ℚ), (-3454167707/200000000000 : ℚ), 3⟩,
    ⟨(387740478401/1000000000000 : ℚ), (-561886097/10000000000 : ℚ), (1055972961/100000000000 : ℚ), 3⟩,
    ⟨(9872144503/25000000000 : ℚ), (-46707053/400000000 : ℚ), (34260184277/1000000000000 : ℚ), 2⟩,
    ⟨(401706575801/1000000000000 : ℚ), (-1676138511/10000000000 : ℚ), (13627134749/250000000000 : ℚ), 2⟩,
    ⟨(81627435491/200000000000 : ℚ), (-2103848749/10000000000 : ℚ), (35912505433/500000000000 : ℚ), 2⟩,
    ⟨(414115654871/1000000000000 : ℚ), (-2463535441/10000000000 : ℚ), (2165275063/25000000000 : ℚ), 2⟩,
    ⟨(83916886409/200000000000 : ℚ), (-2765019079/10000000000 : ℚ), (99177234183/1000000000000 : ℚ), 2⟩,
    ⟨(212245420831/500000000000 : ℚ), (-753973263/2500000000 : ℚ), (109764348573/1000000000000 : ℚ), 2⟩,
    ⟨(107196908079/250000000000 : ℚ), (-3222022021/10000000000 : ℚ), (59279094791/500000000000 : ℚ), 2⟩,
    ⟨(108108355891/250000000000 : ℚ), (-3387909409/10000000000 : ℚ), (125701235157/1000000000000 : ℚ), 2⟩,
    ⟨(435393104443/1000000000000 : ℚ), (-1758484531/5000000000 : ℚ), (131301185339/1000000000000 : ℚ), 2⟩,
    ⟨(54704771451/125000000000 : ℚ), (-3611725069/10000000000 : ℚ), (27087476801/200000000000 : ℚ), 2⟩,
    ⟨(109786750959/250000000000 : ℚ), (-3673956189/10000000000 : ℚ), (138165535811/1000000000000 : ℚ), 2⟩,
    ⟨(439905070247/1000000000000 : ℚ), (-3704795991/10000000000 : ℚ), (69760511813/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3708638187/10000000000 : ℚ), (139690062007/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (328963628883/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control448.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control448.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate448

-- Control449
namespace DiagonalRamsey.JointInheritedCertificate449
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289773900541/1000000000000 : ℚ), (6735787828623/5000000000 : ℚ), (-24445293467451/62500000000 : ℚ), 12⟩,
    ⟨(290544968051/1000000000000 : ℚ), (367916295277/2500000000 : ℚ), (-10807081894673/250000000000 : ℚ), 9⟩,
    ⟨(292079677271/1000000000000 : ℚ), (515441649179/10000000000 : ℚ), (-3079298600407/200000000000 : ℚ), 7⟩,
    ⟨(18397703007/62500000000 : ℚ), (126852022227/5000000000 : ℚ), (-3864189457123/500000000000 : ℚ), 6⟩,
    ⟨(297373688537/1000000000000 : ℚ), (146952392137/10000000000 : ℚ), (-2286298023521/500000000000 : ℚ), 6⟩,
    ⟨(7527050159/25000000000 : ℚ), (93516280821/10000000000 : ℚ), (-594990087183/200000000000 : ℚ), 5⟩,
    ⟨(305452488453/1000000000000 : ℚ), (31593076713/5000000000 : ℚ), (-2055866237061/1000000000000 : ℚ), 5⟩,
    ⟨(62088608937/200000000000 : ℚ), (8887990937/2000000000 : ℚ), (-92438779529/62500000000 : ℚ), 4⟩,
    ⟨(316005613271/1000000000000 : ℚ), (32116530501/10000000000 : ℚ), (-1093300722559/1000000000000 : ℚ), 4⟩,
    ⟨(161043311817/500000000000 : ℚ), (5906830269/2500000000 : ℚ), (-411320788019/500000000000 : ℚ), 4⟩,
    ⟨(64185061/195312500 : ℚ), (8780094949/5000000000 : ℚ), (-156342578171/250000000000 : ℚ), 3⟩,
    ⟨(83891321749/250000000000 : ℚ), (13093038179/10000000000 : ℚ), (-238553414381/500000000000 : ℚ), 3⟩,
    ⟨(3428331331/10000000000 : ℚ), (607616329/625000000 : ℚ), (-566906527/1562500000 : ℚ), 3⟩,
    ⟨(350361057299/1000000000000 : ℚ), (7124393257/10000000000 : ℚ), (-34104803063/125000000000 : ℚ), 3⟩,
    ⟨(35807656157/100000000000 : ℚ), (1271819409/2500000000 : ℚ), (-25089155183/125000000000 : ℚ), 3⟩,
    ⟨(365905341387/1000000000000 : ℚ), (433135157/1250000000 : ℚ), (-7100778107/50000000000 : ℚ), 3⟩,
    ⟨(186886000661/500000000000 : ℚ), (2156192303/10000000000 : ℚ), (-9362566841/100000000000 : ℚ), 3⟩,
    ⟨(19080039057/50000000000 : ℚ), (68006603/625000000 : ℚ), (-13324653613/250000000000 : ℚ), 3⟩,
    ⟨(38931628541/100000000000 : ℚ), (208144299/10000000000 : ℚ), (-4847340411/250000000000 : ℚ), 3⟩,
    ⟨(39684420961/100000000000 : ℚ), (-522558173/10000000000 : ℚ), (9326115077/1000000000000 : ℚ), 3⟩,
    ⟨(404112055713/1000000000000 : ℚ), (-113305773/1000000000 : ℚ), (16885120489/500000000000 : ℚ), 2⟩,
    ⟨(411049830389/1000000000000 : ℚ), (-164531733/1000000000 : ℚ), (27322685251/500000000000 : ℚ), 2⟩,
    ⟨(104397679769/250000000000 : ℚ), (-519022239/2500000000 : ℚ), (9061324237/125000000000 : ℚ), 2⟩,
    ⟨(423671729439/1000000000000 : ℚ), (-2438239489/10000000000 : ℚ), (43861025833/500000000000 : ℚ), 2⟩,
    ⟨(53654287253/125000000000 : ℚ), (-2741698941/10000000000 : ℚ), (5033101289/50000000000 : ℚ), 2⟩,
    ⟨(27139053391/62500000000 : ℚ), (-1497073711/5000000000 : ℚ), (892481939/8000000000 : ℚ), 2⟩,
    ⟨(438595336349/1000000000000 : ℚ), (-3201518079/10000000000 : ℚ), (24121933157/200000000000 : ℚ), 2⟩,
    ⟨(442303654173/1000000000000 : ℚ), (-3368368003/10000000000 : ℚ), (127958315713/1000000000000 : ℚ), 2⟩,
    ⟨(222657047299/500000000000 : ℚ), (-1749076223/5000000000 : ℚ), (33429535461/250000000000 : ℚ), 2⟩,
    ⟨(223798832719/500000000000 : ℚ), (-359342657/1000000000 : ℚ), (27594332109/200000000000 : ℚ), 2⟩,
    ⟨(224566187329/500000000000 : ℚ), (-3655991289/10000000000 : ℚ), (140776828929/1000000000000 : ℚ), 2⟩,
    ⟨(449903442169/1000000000000 : ℚ), (-368699441/1000000000 : ℚ), (71085236467/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3690856859/10000000000 : ℚ), (142344264479/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (161709637009/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control449.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control449.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate449

-- Control450
namespace DiagonalRamsey.JointInheritedCertificate450
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(119921664157/500000000000 : ℚ), (12745060854191/10000000000 : ℚ), (-306302836667011/1000000000000 : ℚ), 12⟩,
    ⟨(240517814283/1000000000000 : ℚ), (86960092259/625000000 : ℚ), (-33851005902051/1000000000000 : ℚ), 9⟩,
    ⟨(241860290553/1000000000000 : ℚ), (486831065637/10000000000 : ℚ), (-12054696018941/1000000000000 : ℚ), 7⟩,
    ⟨(121928914171/500000000000 : ℚ), (9573228303/400000000 : ℚ), (-6049381708187/1000000000000 : ℚ), 6⟩,
    ⟨(246491190271/1000000000000 : ℚ), (34608197009/2500000000 : ℚ), (-3577823820257/1000000000000 : ℚ), 6⟩,
    ⟨(31216876953/125000000000 : ℚ), (87954396277/10000000000 : ℚ), (-145404586827/62500000000 : ℚ), 5⟩,
    ⟨(25355806459/100000000000 : ℚ), (59319920101/10000000000 : ℚ), (-803249730557/500000000000 : ℚ), 5⟩,
    ⟨(128961759559/500000000000 : ℚ), (4163218189/1000000000 : ℚ), (-1154514734573/1000000000000 : ℚ), 4⟩,
    ⟨(262789337493/1000000000000 : ℚ), (6002178547/2000000000 : ℚ), (-426089053777/500000000000 : ℚ), 4⟩,
    ⟨(134054329613/500000000000 : ℚ), (4401793729/2000000000 : ℚ), (-127984231153/200000000000 : ℚ), 4⟩,
    ⟨(273830256339/1000000000000 : ℚ), (16291870363/10000000000 : ℚ), (-485110110653/1000000000000 : ℚ), 4⟩,
    ⟨(11195961069/40000000000 : ℚ), (12082977383/10000000000 : ℚ), (-184327057369/500000000000 : ℚ), 3⟩,
    ⟨(35782065601/125000000000 : ℚ), (8906396239/10000000000 : ℚ), (-34848048193/125000000000 : ℚ), 3⟩,
    ⟨(146420762203/500000000000 : ℚ), (6458014381/10000000000 : ℚ), (-25991171523/125000000000 : ℚ), 3⟩,
    ⟨(299590608373/1000000000000 : ℚ), (9073271/20000000 : ℚ), (-75521210799/500000000000 : ℚ), 3⟩,
    ⟨(306438779341/1000000000000 : ℚ), (3005229301/10000000000 : ℚ), (-13082323827/125000000000 : ℚ), 3⟩,
    ⟨(313320085679/1000000000000 : ℚ), (1768147241/10000000000 : ℚ), (-66338653011/1000000000000 : ℚ), 3⟩,
    ⟨(320168256647/1000000000000 : ℚ), (757214533/10000000000 : ℚ), (-4291090821/125000000000 : ℚ), 3⟩,
    ⟨(163458670307/500000000000 : ℚ), (-7703823/1000000000 : ℚ), (-1836241281/250000000000 : ℚ), 3⟩,
    ⟨(333502340211/1000000000000 : ℚ), (-4819129/62500000 : ℚ), (7783299889/500000000000 : ℚ), 3⟩,
    ⟨(67971967659/200000000000 : ℚ), (-676030507/5000000000 : ℚ), (702472901/20000000000 : ℚ), 2⟩,
    ⟨(345928608681/1000000000000 : ℚ), (-1840572663/10000000000 : ℚ), (10374295857/200000000000 : ℚ), 2⟩,
    ⟨(175825102897/500000000000 : ℚ), (-1126115341/5000000000 : ℚ), (13245522081/200000000000 : ℚ), 2⟩,
    ⟨(356969527527/1000000000000 : ℚ), (-1299511611/5000000000 : ℚ), (15702679757/200000000000 : ℚ), 2⟩,
    ⟨(180917672951/500000000000 : ℚ), (-2890185971/10000000000 : ℚ), (3559076797/40000000000 : ℚ), 2⟩,
    ⟨(36620080043/100000000000 : ℚ), (-783212451/2500000000 : ℚ), (19561944571/200000000000 : ℚ), 2⟩,
    ⟨(92505962349/250000000000 : ℚ), (-16662573/50000000 : ℚ), (1314490853/12500000000 : ℚ), 2⟩,
    ⟨(373267674749/1000000000000 : ℚ), (-3493398341/10000000000 : ℚ), (55569121079/500000000000 : ℚ), 2⟩,
    ⟨(375901036677/1000000000000 : ℚ), (-3618694923/10000000000 : ℚ), (115831555579/1000000000000 : ℚ), 2⟩,
    ⟨(377898574467/1000000000000 : ℚ), (-371076359/1000000000 : ℚ), (119301580381/1000000000000 : ℚ), 2⟩,
    ⟨(379241050737/1000000000000 : ℚ), (-3771265693/10000000000 : ℚ), (121591995241/1000000000000 : ℚ), 2⟩,
    ⟨(189957768353/500000000000 : ℚ), (-3801259411/10000000000 : ℚ), (122730490197/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1902498351/5000000000 : ℚ), (61436245737/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (361599718491/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control450.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control450.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate450

-- Control451
namespace DiagonalRamsey.JointInheritedCertificate451
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63470233433/250000000000 : ℚ), (16176303947/12500000 : ℚ), (-329206619583093/1000000000000 : ℚ), 12⟩,
    ⟨(254584112959/1000000000000 : ℚ), (35325582377/250000000 : ℚ), (-36382996452899/1000000000000 : ℚ), 9⟩,
    ⟨(255983699411/1000000000000 : ℚ), (247274146267/5000000000 : ℚ), (-6478475565653/500000000000 : ℚ), 7⟩,
    ⟨(64516553577/250000000000 : ℚ), (48641474933/2000000000 : ℚ), (-6502638278541/1000000000000 : ℚ), 6⟩,
    ⟨(65202900473/250000000000 : ℚ), (17591303627/1250000000 : ℚ), (-3846318766313/1000000000000 : ℚ), 6⟩,
    ⟨(264193422579/1000000000000 : ℚ), (89454246293/10000000000 : ℚ), (-1250727241879/500000000000 : ℚ), 5⟩,
    ⟨(268179107587/1000000000000 : ℚ), (12072488541/2000000000 : ℚ), (-1727708908083/1000000000000 : ℚ), 5⟩,
    ⟨(17045642037/62500000000 : ℚ), (21194636373/5000000000 : ℚ), (-1242000424299/1000000000000 : ℚ), 4⟩,
    ⟨(138901543693/500000000000 : ℚ), (15289339821/5000000000 : ℚ), (-458569471929/500000000000 : ℚ), 4⟩,
    ⟨(28334869799/100000000000 : ℚ), (11222706469/5000000000 : ℚ), (-27564060653/40000000000 : ℚ), 4⟩,
    ⟨(289313697143/1000000000000 : ℚ), (8316999379/5000000000 : ℚ), (-130703425767/250000000000 : ℚ), 4⟩,
    ⟨(3695507983/12500000000 : ℚ), (6177773243/5000000000 : ℚ), (-397756497169/1000000000000 : ℚ), 3⟩,
    ⟨(151134295289/500000000000 : ℚ), (9126577657/10000000000 : ℚ), (-60256067837/200000000000 : ℚ), 3⟩,
    ⟨(77283430539/250000000000 : ℚ), (6638081171/10000000000 : ℚ), (-14077913959/62500000000 : ℚ), 3⟩,
    ⟨(316169918403/1000000000000 : ℚ), (4685579117/10000000000 : ℚ), (-82115161277/500000000000 : ℚ), 3⟩,
    ⟨(64661883381/200000000000 : ℚ), (4890271/15625000 : ℚ), (-114506283043/1000000000000 : ℚ), 3⟩,
    ⟨(165241730193/500000000000 : ℚ), (1873406191/10000000000 : ℚ), (-73451668089/1000000000000 : ℚ), 3⟩,
    ⟨(337622958887/1000000000000 : ℚ), (423566959/5000000000 : ℚ), (-9795036799/250000000000 : ℚ), 3⟩,
    ⟨(68931831027/200000000000 : ℚ), (621657/10000000000 : ℚ), (-5155252721/500000000000 : ℚ), 3⟩,
    ⟨(351524286713/1000000000000 : ℚ), (-351616113/5000000000 : ℚ), (14183976829/1000000000000 : ℚ), 3⟩,
    ⟨(7163044773/20000000000 : ℚ), (-646067179/5000000000 : ℚ), (7015217167/200000000000 : ℚ), 2⟩,
    ⟨(91119795037/250000000000 : ℚ), (-1787003453/10000000000 : ℚ), (52953355019/1000000000000 : ℚ), 2⟩,
    ⟨(3704441793/10000000000 : ℚ), (-1101887757/5000000000 : ℚ), (68265940063/1000000000000 : ℚ), 2⟩,
    ⟨(23499361869/62500000000 : ℚ), (-2554675271/10000000000 : ℚ), (40680307413/500000000000 : ℚ), 2⟩,
    ⟨(381062604699/1000000000000 : ℚ), (-284912519/1000000000 : ℚ), (92505319033/1000000000000 : ℚ), 2⟩,
    ⟨(385613769703/1000000000000 : ℚ), (-773600941/2500000000 : ℚ), (10190714751/100000000000 : ℚ), 2⟩,
    ⟨(48699931839/125000000000 : ℚ), (-3296127217/10000000000 : ℚ), (13715712239/125000000000 : ℚ), 2⟩,
    ⟨(392981275399/1000000000000 : ℚ), (-3458604509/10000000000 : ℚ), (116083063297/1000000000000 : ℚ), 2⟩,
    ⟨(395726662983/1000000000000 : ℚ), (-717019919/2000000000 : ℚ), (118233731/976562500 : ℚ), 2⟩,
    ⟨(397809177879/1000000000000 : ℚ), (-1839012099/5000000000 : ℚ), (24951649337/200000000000 : ℚ), 2⟩,
    ⟨(99802191083/250000000000 : ℚ), (-3739077031/10000000000 : ℚ), (127191244027/1000000000000 : ℚ), 2⟩,
    ⟨(399911943559/1000000000000 : ℚ), (-3769340253/10000000000 : ℚ), (128400440793/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-47163887/125000000 : ℚ), (128551252471/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (350817260999/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control451.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control451.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate451

-- Control452
namespace DiagonalRamsey.JointInheritedCertificate452
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(268092266149/1000000000000 : ℚ), (13145246359989/10000000000 : ℚ), (-353109786465369/1000000000000 : ℚ), 12⟩,
    ⟨(53764660519/200000000000 : ℚ), (287118811967/2000000000 : ℚ), (-19512765436119/500000000000 : ℚ), 9⟩,
    ⟨(54055667041/200000000000 : ℚ), (502589537311/10000000000 : ℚ), (-13898645403381/1000000000000 : ℚ), 7⟩,
    ⟨(272443351221/1000000000000 : ℚ), (123623465757/5000000000 : ℚ), (-6975746845219/1000000000000 : ℚ), 6⟩,
    ⟨(137648750177/500000000000 : ℚ), (71562339793/5000000000 : ℚ), (-4126608391371/1000000000000 : ℚ), 6⟩,
    ⟨(69703323897/250000000000 : ℚ), (45508592393/5000000000 : ℚ), (-2684155124929/1000000000000 : ℚ), 5⟩,
    ⟨(141478438947/500000000000 : ℚ), (61448805377/10000000000 : ℚ), (-1854297709271/1000000000000 : ℚ), 5⟩,
    ⟨(71922085577/250000000000 : ℚ), (5397269899/1250000000 : ℚ), (-53336036573/40000000000 : ℚ), 4⟩,
    ⟨(146481061121/500000000000 : ℚ), (7792561319/2500000000 : ℚ), (-985039544927/1000000000000 : ℚ), 4⟩,
    ⟨(37340928539/125000000000 : ℚ), (2862505947/1250000000 : ℚ), (-370270865589/500000000000 : ℚ), 4⟩,
    ⟨(304928737469/1000000000000 : ℚ), (16990281147/10000000000 : ℚ), (-112457165319/200000000000 : ℚ), 3⟩,
    ⟨(62301265543/200000000000 : ℚ), (6319636057/5000000000 : ℚ), (-428262304623/1000000000000 : ℚ), 3⟩,
    ⟨(159198426631/500000000000 : ℚ), (1871128043/2000000000 : ℚ), (-324902330231/1000000000000 : ℚ), 3⟩,
    ⟨(16276697729/50000000000 : ℚ), (6825271489/10000000000 : ℚ), (-243475420993/1000000000000 : ℚ), 3⟩,
    ⟨(83212224371/250000000000 : ℚ), (4840269729/10000000000 : ℚ), (-178161575219/1000000000000 : ℚ), 3⟩,
    ⟨(170135617537/500000000000 : ℚ), (3258974741/10000000000 : ℚ), (-3124099309/25000000000 : ℚ), 3⟩,
    ⟨(347729486181/1000000000000 : ℚ), (1982452199/10000000000 : ℚ), (-81068040627/1000000000000 : ℚ), 3⟩,
    ⟨(355151823771/1000000000000 : ℚ), (3672427/39062500 : ℚ), (-8889819909/200000000000 : ℚ), 3⟩,
    ⟨(14498670667/40000000000 : ℚ), (80805409/10000000000 : ℚ), (-3406046251/250000000000 : ℚ), 3⟩,
    ⟨(184801933997/500000000000 : ℚ), (-126667307/2000000000 : ℚ), (12509486729/1000000000000 : ℚ), 3⟩,
    ⟨(18824719677/50000000000 : ℚ), (-153813813/1250000000 : ℚ), (34782359907/1000000000000 : ℚ), 2⟩,
    ⟨(383071983787/1000000000000 : ℚ), (-433009259/2500000000 : ℚ), (53826181891/1000000000000 : ℚ), 2⟩,
    ⟨(389273292943/1000000000000 : ℚ), (-538541503/2500000000 : ℚ), (70125327857/1000000000000 : ℚ), 2⟩,
    ⟨(395038599013/1000000000000 : ℚ), (-2509369073/10000000000 : ℚ), (42026619313/500000000000 : ℚ), 2⟩,
    ⟨(400312378947/1000000000000 : ℚ), (-2807263741/10000000000 : ℚ), (95898724103/1000000000000 : ℚ), 2⟩,
    ⟨(405043843361/1000000000000 : ℚ), (-3055282773/10000000000 : ℚ), (827228393/7812500000 : ℚ), 2⟩,
    ⟨(409187425667/1000000000000 : ℚ), (-407395507/1250000000 : ℚ), (14273144187/125000000000 : ℚ), 2⟩,
    ⟨(412703220901/1000000000000 : ℚ), (-13693247/40000000 : ℚ), (24186099817/200000000000 : ℚ), 2⟩,
    ⟨(83111474007/200000000000 : ℚ), (-3551063167/10000000000 : ℚ), (2524419187/20000000000 : ℚ), 2⟩,
    ⟨(8354447721/20000000000 : ℚ), (-1822442503/5000000000 : ℚ), (130129904679/1000000000000 : ℚ), 2⟩,
    ⟨(419177418661/1000000000000 : ℚ), (-1853257569/5000000000 : ℚ), (829430021/6250000000 : ℚ), 2⟩,
    ⟨(209954227553/500000000000 : ℚ), (-1868530433/5000000000 : ℚ), (6699516307/50000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3740866601/10000000000 : ℚ), (26830029919/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (339937549299/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control452.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control452.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate452

-- Control453
namespace DiagonalRamsey.JointInheritedCertificate453
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36903503961/125000000000 : ℚ), (7105259486521/5000000000 : ℚ), (-84060658677531/200000000000 : ℚ), 12⟩,
    ⟨(295972851893/1000000000000 : ℚ), (310630673707/2000000000 : ℚ), (-46448877285403/1000000000000 : ℚ), 9⟩,
    ⟨(297455319279/1000000000000 : ℚ), (21773384791/400000000 : ℚ), (-3308079413003/200000000000 : ℚ), 7⟩,
    ⟨(299661156873/1000000000000 : ℚ), (67026996253/2500000000 : ℚ), (-8300143809529/1000000000000 : ℚ), 6⟩,
    ⟨(151284560627/500000000000 : ℚ), (38848848241/2500000000 : ℚ), (-4908910558733/1000000000000 : ℚ), 6⟩,
    ⟨(61230241427/200000000000 : ℚ), (98943533213/10000000000 : ℚ), (-798019579291/250000000000 : ℚ), 5⟩,
    ⟨(31037291707/100000000000 : ℚ), (6688056127/1000000000 : ℚ), (-1102221201469/500000000000 : ℚ), 5⟩,
    ⟨(157596796843/500000000000 : ℚ), (11762192109/2500000000 : ℚ), (-198073173067/125000000000 : ℚ), 4⟩,
    ⟨(10017712851/31250000000 : ℚ), (34001353709/10000000000 : ℚ), (-1170119662169/1000000000000 : ℚ), 4⟩,
    ⟨(81610205671/250000000000 : ℚ), (5001186343/2000000000 : ℚ), (-439652060079/500000000000 : ℚ), 4⟩,
    ⟨(166379529051/500000000000 : ℚ), (18571535201/10000000000 : ℚ), (-667356405201/1000000000000 : ℚ), 4⟩,
    ⟨(13578426777/40000000000 : ℚ), (13829915661/10000000000 : ℚ), (-508076940477/1000000000000 : ℚ), 3⟩,
    ⟨(43310139559/125000000000 : ℚ), (2049717961/2000000000 : ℚ), (-38531277691/100000000000 : ℚ), 3⟩,
    ⟨(353752788501/1000000000000 : ℚ), (7486944873/10000000000 : ℚ), (-288669741927/1000000000000 : ℚ), 3⟩,
    ⟨(180602827667/500000000000 : ℚ), (5319374631/10000000000 : ℚ), (-103133651/488281250 : ℚ), 3⟩,
    ⟨(36876794179/100000000000 : ℚ), (3592017931/10000000000 : ℚ), (-148196458457/1000000000000 : ℚ), 3⟩,
    ⟨(94091704729/250000000000 : ℚ), (2197315259/10000000000 : ℚ), (-96252732871/1000000000000 : ℚ), 3⟩,
    ⟨(95982276343/250000000000 : ℚ), (264618193/2500000000 : ℚ), (-52973342353/1000000000000 : ℚ), 3⟩,
    ⟨(78276394441/200000000000 : ℚ), (119664049/10000000000 : ℚ), (-2073721409/125000000000 : ℚ), 3⟩,
    ⟨(199326822117/500000000000 : ℚ), (-660325949/10000000000 : ℚ), (7107017653/500000000000 : ℚ), 3⟩,
    ⟨(405674091281/1000000000000 : ℚ), (-1312327109/10000000000 : ℚ), (20214989071/500000000000 : ℚ), 2⟩,
    ⟨(103093925651/250000000000 : ℚ), (-1859656207/10000000000 : ℚ), (62813403073/1000000000000 : ℚ), 2⟩,
    ⟨(209346969011/500000000000 : ℚ), (-72503337/312500000 : ℚ), (819441369/10000000000 : ℚ), 2⟩,
    ⟨(212283974737/500000000000 : ℚ), (-338418959/1250000000 : ℚ), (98269805153/1000000000000 : ℚ), 2⟩,
    ⟨(21497058351/50000000000 : ℚ), (-3031946611/10000000000 : ℚ), (28034273189/250000000000 : ℚ), 2⟩,
    ⟨(108690460909/250000000000 : ℚ), (-1651028911/5000000000 : ℚ), (30953659771/250000000000 : ℚ), 2⟩,
    ⟨(109745888393/250000000000 : ℚ), (-880998773/2500000000 : ℚ), (2670200361/20000000000 : ℚ), 2⟩,
    ⟨(110641409863/250000000000 : ℚ), (-1851302609/5000000000 : ℚ), (141382444831/1000000000000 : ℚ), 2⟩,
    ⟨(445473603833/1000000000000 : ℚ), (-960390791/2500000000 : ℚ), (147552324041/1000000000000 : ℚ), 2⟩,
    ⟨(447679441427/1000000000000 : ℚ), (-3943586461/10000000000 : ℚ), (152108392887/1000000000000 : ℚ), 2⟩,
    ⟨(449161908813/1000000000000 : ℚ), (-4010590329/10000000000 : ℚ), (77556484821/500000000000 : ℚ), 2⟩,
    ⟨(224953364509/500000000000 : ℚ), (-4043795339/10000000000 : ℚ), (156605646937/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-809586441/2000000000 : ℚ), (156791786607/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (312162478471/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control453.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control453.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate453

-- Control454
namespace DiagonalRamsey.JointInheritedCertificate454
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3783763633/12500000000 : ℚ), (14336480046853/10000000000 : ℚ), (-434755803468947/1000000000000 : ℚ), 12⟩,
    ⟨(12138322857/40000000000 : ℚ), (15670803707/100000000 : ℚ), (-2402339267749/50000000000 : ℚ), 9⟩,
    ⟨(60992948571/200000000000 : ℚ), (274649745389/5000000000 : ℚ), (-17109946125823/1000000000000 : ℚ), 7⟩,
    ⟨(153603297431/500000000000 : ℚ), (135302216633/5000000000 : ℚ), (-8586380763381/1000000000000 : ℚ), 6⟩,
    ⟨(62032407437/200000000000 : ℚ), (19609605251/1250000000 : ℚ), (-1269642714649/250000000000 : ℚ), 6⟩,
    ⟨(313802607299/1000000000000 : ℚ), (99912039577/10000000000 : ℚ), (-660548251553/200000000000 : ℚ), 5⟩,
    ⟨(318093244523/1000000000000 : ℚ), (8444363477/1250000000 : ℚ), (-285148405233/125000000000 : ℚ), 5⟩,
    ⟨(80748156919/250000000000 : ℚ), (47539407137/10000000000 : ℚ), (-1640064229389/1000000000000 : ℚ), 4⟩,
    ⟨(16422678651/50000000000 : ℚ), (17185023683/5000000000 : ℚ), (-1211400855531/1000000000000 : ℚ), 4⟩,
    ⟨(66884697733/200000000000 : ℚ), (2528991989/1000000000 : ℚ), (-910645125399/1000000000000 : ℚ), 4⟩,
    ⟨(17042244053/50000000000 : ℚ), (9397304329/5000000000 : ℚ), (-138294905803/200000000000 : ℚ), 4⟩,
    ⟨(347655908687/1000000000000 : ℚ), (28015969/20000000 : ℚ), (-526788210733/1000000000000 : ℚ), 3⟩,
    ⟨(177395488813/500000000000 : ℚ), (10392693987/10000000000 : ℚ), (-99969327997/250000000000 : ℚ), 3⟩,
    ⟨(362181373263/1000000000000 : ℚ), (7604980137/10000000000 : ℚ), (-299989684991/1000000000000 : ℚ), 3⟩,
    ⟨(369755922047/1000000000000 : ℚ), (5417131037/10000000000 : ℚ), (-13747266911/62500000000 : ℚ), 3⟩,
    ⟨(188720838467/500000000000 : ℚ), (1836915391/5000000000 : ℚ), (-19356552633/125000000000 : ℚ), 3⟩,
    ⟨(192582309951/500000000000 : ℚ), (226648759/1000000000 : ℚ), (-50604406961/500000000000 : ℚ), 3⟩,
    ⟨(392850374789/1000000000000 : ℚ), (1117558009/10000000000 : ℚ), (-56528424011/1000000000000 : ℚ), 3⟩,
    ⟨(400424923573/1000000000000 : ℚ), (170660273/10000000000 : ℚ), (-3796205319/200000000000 : ℚ), 3⟩,
    ⟨(40781531921/100000000000 : ℚ), (-76979907/1250000000 : ℚ), (6397811311/500000000000 : ℚ), 3⟩,
    ⟨(414950388149/1000000000000 : ℚ), (-636545343/5000000000 : ℚ), (39828492667/1000000000000 : ℚ), 2⟩,
    ⟨(13180044243/31250000000 : ℚ), (-182465879/1000000000 : ℚ), (62899872793/1000000000000 : ℚ), 2⟩,
    ⟨(428182808171/1000000000000 : ℚ), (-572132771/2500000000 : ℚ), (8261049113/100000000000 : ℚ), 2⟩,
    ⟨(54269090477/125000000000 : ℚ), (-2678533231/10000000000 : ℚ), (4971215217/50000000000 : ℚ), 2⟩,
    ⟨(10990341729/25000000000 : ℚ), (-1502670967/5000000000 : ℚ), (56850408249/500000000000 : ℚ), 2⟩,
    ⟨(55564131539/125000000000 : ℚ), (-3277219281/10000000000 : ℚ), (7857421569/62500000000 : ℚ), 2⟩,
    ⟨(448803689537/1000000000000 : ℚ), (-875137707/2500000000 : ℚ), (27138713783/200000000000 : ℚ), 2⟩,
    ⟨(452444259651/1000000000000 : ℚ), (-920060699/2500000000 : ℚ), (14379065913/100000000000 : ℚ), 2⟩,
    ⟨(227699850987/500000000000 : ℚ), (-1910008017/5000000000 : ℚ), (37533785997/250000000000 : ℚ), 2⟩,
    ⟨(457641553981/1000000000000 : ℚ), (-3922622529/10000000000 : ℚ), (483810277/3125000000 : ℚ), 2⟩,
    ⟨(459148225411/1000000000000 : ℚ), (-997500521/2500000000 : ℚ), (19738489677/125000000000 : ℚ), 2⟩,
    ⟨(114976301549/250000000000 : ℚ), (-125730971/312500000 : ℚ), (1594422287/10000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-805510151/2000000000 : ℚ), (159633554361/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (306425266501/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control454.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control454.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate454
