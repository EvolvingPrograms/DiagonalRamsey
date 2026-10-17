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

-- Control146
namespace DiagonalRamsey.JointInheritedCertificate146
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30258668307/125000000000 : ℚ), (9245697230733/10000000000 : ℚ), (-224559558612937/1000000000000 : ℚ), 11⟩,
    ⟨(121607178573/500000000000 : ℚ), (501198468063/5000000000 : ℚ), (-24840911968913/1000000000000 : ℚ), 8⟩,
    ⟨(30686668931/125000000000 : ℚ), (173760993137/5000000000 : ℚ), (-4431689732309/500000000000 : ℚ), 6⟩,
    ⟨(248884381401/1000000000000 : ℚ), (16916716979/1000000000 : ℚ), (-892269575003/200000000000 : ℚ), 5⟩,
    ⟨(63338697383/250000000000 : ℚ), (96918463007/10000000000 : ℚ), (-1324868261043/500000000000 : ℚ), 5⟩,
    ⟨(258861523367/1000000000000 : ℚ), (15264163071/2500000000 : ℚ), (-433152043019/250000000000 : ℚ), 4⟩,
    ⟨(5307031001/20000000000 : ℚ), (8179940613/2000000000 : ℚ), (-602506068559/500000000000 : ℚ), 4⟩,
    ⟨(10910494683/40000000000 : ℚ), (7143950399/2500000000 : ℚ), (-436933141659/500000000000 : ℚ), 3⟩,
    ⟨(4390978191/15625000000 : ℚ), (2571007257/1250000000 : ℚ), (-40775903537/62500000000 : ℚ), 3⟩,
    ⟨(290052710897/1000000000000 : ℚ), (755913801/500000000 : ℚ), (-124246189157/250000000000 : ℚ), 3⟩,
    ⟨(29976572223/100000000000 : ℚ), (11271086911/10000000000 : ℚ), (-191825566073/500000000000 : ℚ), 3⟩,
    ⟨(62013619323/200000000000 : ℚ), (2118235801/2500000000 : ℚ), (-149208347817/500000000000 : ℚ), 3⟩,
    ⟨(160430308277/500000000000 : ℚ), (6386378223/10000000000 : ℚ), (-7270420979/31250000000 : ℚ), 2⟩,
    ⟨(166019672091/500000000000 : ℚ), (4797003457/10000000000 : ℚ), (-90405767229/500000000000 : ℚ), 2⟩,
    ⟨(171748311119/500000000000 : ℚ), (3563913273/10000000000 : ℚ), (-139192839931/1000000000000 : ℚ), 2⟩,
    ⟨(177561055437/500000000000 : ℚ), (2591826367/10000000000 : ℚ), (-105259521213/1000000000000 : ℚ), 2⟩,
    ⟨(183401925139/500000000000 : ℚ), (453685063/2500000000 : ℚ), (-15445204789/200000000000 : ℚ), 2⟩,
    ⟨(189214669457/500000000000 : ℚ), (1185979551/10000000000 : ℚ), (-53809322139/1000000000000 : ℚ), 2⟩,
    ⟨(389886616971/1000000000000 : ℚ), (671941943/10000000000 : ℚ), (-6814170147/200000000000 : ℚ), 2⟩,
    ⟨(200532672299/500000000000 : ℚ), (248058729/10000000000 : ℚ), (-4328393299/250000000000 : ℚ), 2⟩,
    ⟨(205928932269/500000000000 : ℚ), (-20775431/2000000000 : ℚ), (-3013238757/1000000000000 : ℚ), 2⟩,
    ⟨(422160238923/1000000000000 : ℚ), (-198757919/5000000000 : ℚ), (9228564783/1000000000000 : ℚ), 2⟩,
    ⟨(26992078141/62500000000 : ℚ), (-643191977/10000000000 : ℚ), (985855941/50000000000 : ℚ), 2⟩,
    ⟨(440903356929/1000000000000 : ℚ), (-848792629/10000000000 : ℚ), (28687770391/1000000000000 : ℚ), 2⟩,
    ⟨(449163594077/1000000000000 : ℚ), (-31886641/312500000 : ℚ), (9080660591/250000000000 : ℚ), 2⟩,
    ⟨(228287205551/500000000000 : ℚ), (-581297717/5000000000 : ℚ), (42762836387/1000000000000 : ℚ), 2⟩,
    ⟨(92612887557/200000000000 : ℚ), (-63952703/500000000 : ℚ), (48117443673/1000000000000 : ℚ), 2⟩,
    ⟨(468571171621/1000000000000 : ℚ), (-1372503063/10000000000 : ℚ), (2623512447/50000000000 : ℚ), 2⟩,
    ⟨(59130197469/125000000000 : ℚ), (-722514751/5000000000 : ℚ), (55884732731/1000000000000 : ℚ), 2⟩,
    ⟨(59554076213/125000000000 : ℚ), (-749088361/5000000000 : ℚ), (58407784241/1000000000000 : ℚ), 2⟩,
    ⟨(239355802003/500000000000 : ℚ), (-1533032949/10000000000 : ℚ), (3003620377/50000000000 : ℚ), 2⟩,
    ⟨(479856614697/1000000000000 : ℚ), (-310058431/2000000000 : ℚ), (60899612269/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-776220863/5000000000 : ℚ), (61002776249/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (38505884943/125000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control146.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control146.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate146

-- Control147
namespace DiagonalRamsey.JointInheritedCertificate147
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254607816073/1000000000000 : ℚ), (9429686924221/10000000000 : ℚ), (-240876973714699/1000000000000 : ℚ), 11⟩,
    ⟨(255788734419/1000000000000 : ℚ), (127838299373/1250000000 : ℚ), (-26646059217587/1000000000000 : ℚ), 8⟩,
    ⟨(258139198223/1000000000000 : ℚ), (44342320711/1250000000 : ℚ), (-4753779186107/500000000000 : ℚ), 6⟩,
    ⟨(261636571233/1000000000000 : ℚ), (4319460873/250000000 : ℚ), (-957136900059/200000000000 : ℚ), 5⟩,
    ⟨(133123585917/500000000000 : ℚ), (99048126931/10000000000 : ℚ), (-2842468788511/1000000000000 : ℚ), 5⟩,
    ⟨(271926597423/1000000000000 : ℚ), (1560960971/250000000 : ℚ), (-46468531133/25000000000 : ℚ), 4⟩,
    ⟨(278620152027/1000000000000 : ℚ), (20926709563/5000000000 : ℚ), (-1292859730863/1000000000000 : ℚ), 4⟩,
    ⟨(1118216301/3906250000 : ℚ), (14631462473/5000000000 : ℚ), (-468856024963/500000000000 : ℚ), 3⟩,
    ⟨(18423915757/62500000000 : ℚ), (21078875079/10000000000 : ℚ), (-140047577461/200000000000 : ℚ), 3⟩,
    ⟨(152047971941/500000000000 : ℚ), (3101438519/2000000000 : ℚ), (-533591692909/1000000000000 : ℚ), 3⟩,
    ⟨(12564542251/40000000000 : ℚ), (11572814997/10000000000 : ℚ), (-412108419219/1000000000000 : ℚ), 3⟩,
    ⟨(324739014207/1000000000000 : ℚ), (4355322073/5000000000 : ℚ), (-10024172579/31250000000 : ℚ), 3⟩,
    ⟨(33586998871/100000000000 : ℚ), (1315213989/2000000000 : ℚ), (-62582839009/250000000000 : ℚ), 2⟩,
    ⟨(173699641207/500000000000 : ℚ), (4950090703/10000000000 : ℚ), (-97413929409/500000000000 : ℚ), 2⟩,
    ⟨(359215861919/1000000000000 : ℚ), (3688712901/10000000000 : ℚ), (-150295301447/1000000000000 : ℚ), 2⟩,
    ⟨(5800092611/15625000000 : ℚ), (2694525301/10000000000 : ℚ), (-57005169049/500000000000 : ℚ), 2⟩,
    ⟨(23953375443/62500000000 : ℚ), (1900018459/10000000000 : ℚ), (-5253532391/62500000000 : ℚ), 2⟩,
    ⟨(395244072273/1000000000000 : ℚ), (1257427487/10000000000 : ℚ), (-29528183941/500000000000 : ℚ), 2⟩,
    ⟨(203530325889/500000000000 : ℚ), (45771727/625000000 : ℚ), (-1520074091/40000000000 : ℚ), 2⟩,
    ⟨(209294972741/500000000000 : ℚ), (74902427/2500000000 : ℚ), (-10071989691/500000000000 : ℚ), 2⟩,
    ⟨(85944183997/200000000000 : ℚ), (-59448877/10000000000 : ℚ), (-614884983/125000000000 : ℚ), 2⟩,
    ⟨(440346377917/1000000000000 : ℚ), (-179413917/5000000000 : ℚ), (8101533873/1000000000000 : ℚ), 2⟩,
    ⟨(450363990309/1000000000000 : ℚ), (-152283167/2500000000 : ℚ), (9623316611/500000000000 : ℚ), 2⟩,
    ⟨(459677282079/1000000000000 : ℚ), (-10230773/125000000 : ℚ), (1798120931/62500000000 : ℚ), 2⟩,
    ⟨(29262285071/62500000000 : ℚ), (-496517957/5000000000 : ℚ), (368680057/10000000000 : ℚ), 2⟩,
    ⟨(95167956433/200000000000 : ℚ), (-568824547/5000000000 : ℚ), (21846666257/500000000000 : ℚ), 2⟩,
    ⟨(7539583387/15625000000 : ℚ), (-251199283/2000000000 : ℚ), (49363968269/1000000000000 : ℚ), 2⟩,
    ⟨(244106381179/500000000000 : ℚ), (-337728101/2500000000 : ℚ), (26985353283/500000000000 : ℚ), 2⟩,
    ⟨(492823362959/1000000000000 : ℚ), (-1424545527/10000000000 : ℚ), (14395607727/250000000000 : ℚ), 2⟩,
    ⟨(496320735969/1000000000000 : ℚ), (-1478485113/10000000000 : ℚ), (60250085321/1000000000000 : ℚ), 2⟩,
    ⟨(124667799943/250000000000 : ℚ), (-189231517/1250000000 : ℚ), (484449741/7812500000 : ℚ), 2⟩,
    ⟨(499852118119/1000000000000 : ℚ), (-1531361599/10000000000 : ℚ), (6288374553/100000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1533542213/10000000000 : ℚ), (62992760071/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (150240761071/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control147.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control147.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate147

-- Control148
namespace DiagonalRamsey.JointInheritedCertificate148
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1337505541/5000000000 : ℚ), (2407298907187/2500000000 : ℚ), (-258413388492909/1000000000000 : ℚ), 11⟩,
    ⟨(33589528333/125000000000 : ℚ), (20894636631/200000000 : ℚ), (-7146537768823/250000000000 : ℚ), 8⟩,
    ⟨(271134761339/1000000000000 : ℚ), (72513387383/2000000000 : ℚ), (-2549989855727/250000000000 : ℚ), 6⟩,
    ⟨(68683355103/250000000000 : ℚ), (35339470721/2000000000 : ℚ), (-641794117409/125000000000 : ℚ), 5⟩,
    ⟨(279477546829/1000000000000 : ℚ), (50680184603/5000000000 : ℚ), (-3049704388911/1000000000000 : ℚ), 5⟩,
    ⟨(14266072603/50000000000 : ℚ), (31969789819/5000000000 : ℚ), (-398881128573/200000000000 : ℚ), 4⟩,
    ⟨(292208856103/1000000000000 : ℚ), (42890216383/10000000000 : ℚ), (-138738230459/100000000000 : ℚ), 4⟩,
    ⟨(75018357373/250000000000 : ℚ), (3751307641/1250000000 : ℚ), (-503222048797/500000000000 : ℚ), 3⟩,
    ⟨(61767886417/200000000000 : ℚ), (5408760719/2500000000 : ℚ), (-751755634559/1000000000000 : ℚ), 3⟩,
    ⟨(159211221243/500000000000 : ℚ), (7965491543/5000000000 : ℚ), (-17908145011/31250000000 : ℚ), 3⟩,
    ⟨(328730171067/1000000000000 : ℚ), (11901868583/10000000000 : ℚ), (-44282514957/100000000000 : ℚ), 3⟩,
    ⟨(67932669753/200000000000 : ℚ), (897007987/1000000000 : ℚ), (-344940911383/1000000000000 : ℚ), 3⟩,
    ⟨(10972396347/31250000000 : ℚ), (6783263621/10000000000 : ℚ), (-269477675099/1000000000000 : ℚ), 2⟩,
    ⟨(90744968053/250000000000 : ℚ), (5117417881/10000000000 : ℚ), (-210046997667/1000000000000 : ℚ), 2⟩,
    ⟨(375138667093/1000000000000 : ℚ), (1912601101/5000000000 : ℚ), (-162391251489/1000000000000 : ℚ), 2⟩,
    ⟨(387475971907/1000000000000 : ℚ), (2806896671/10000000000 : ℚ), (-123587678647/1000000000000 : ℚ), 2⟩,
    ⟨(199936485831/500000000000 : ℚ), (1993358289/10000000000 : ℚ), (-22894767193/250000000000 : ℚ), 2⟩,
    ⟨(16488411059/40000000000 : ℚ), (333910239/2500000000 : ℚ), (-64886351939/1000000000000 : ℚ), 2⟩,
    ⟨(106092267839/250000000000 : ℚ), (99808719/1250000000 : ℚ), (-42426735289/1000000000000 : ℚ), 2⟩,
    ⟨(87246452093/200000000000 : ℚ), (178012063/5000000000 : ℚ), (-23395286581/1000000000000 : ℚ), 2⟩,
    ⟨(447685594803/1000000000000 : ℚ), (-339151/312500000 : ℚ), (-89823319/12500000000 : ℚ), 2⟩,
    ⟨(229309386251/500000000000 : ℚ), (-316540367/10000000000 : ℚ), (6662862989/1000000000000 : ℚ), 2⟩,
    ⟨(234463250541/500000000000 : ℚ), (-285969103/5000000000 : ℚ), (3701005287/200000000000 : ℚ), 2⟩,
    ⟨(478509511483/1000000000000 : ℚ), (-6282997/80000000 : ℚ), (447096801/15625000000 : ℚ), 2⟩,
    ⟨(487275514077/1000000000000 : ℚ), (-963250617/10000000000 : ℚ), (37202568313/1000000000000 : ℚ), 2⟩,
    ⟨(99028017493/200000000000 : ℚ), (-277625593/2500000000 : ℚ), (8886994569/200000000000 : ℚ), 2⟩,
    ⟨(125506872877/250000000000 : ℚ), (-246187301/2000000000 : ℚ), (50439191563/1000000000000 : ℚ), 2⟩,
    ⟨(507871396739/1000000000000 : ℚ), (-663737327/5000000000 : ℚ), (27656819509/500000000000 : ℚ), 2⟩,
    ⟨(512615523157/1000000000000 : ℚ), (-28046647/200000000 : ℚ), (14783271059/250000000000 : ℚ), 2⟩,
    ⟨(51621418223/100000000000 : ℚ), (-72857459/500000000 : ℚ), (968013969/15625000000 : ℚ), 2⟩,
    ⟨(64829089613/125000000000 : ℚ), (-746540967/5000000000 : ℚ), (63812124561/1000000000000 : ℚ), 2⟩,
    ⟨(519847835369/1000000000000 : ℚ), (-755434317/5000000000 : ℚ), (32367839941/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-756541821/5000000000 : ℚ), (64850843447/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (292688917921/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control148.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control148.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate148

-- Control149
namespace DiagonalRamsey.JointInheritedCertificate149
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287393284993/1000000000000 : ℚ), (9948369354769/10000000000 : ℚ), (-143402581627819/500000000000 : ℚ), 11⟩,
    ⟨(288657046057/1000000000000 : ℚ), (539985418217/5000000000 : ℚ), (-15863588227171/500000000000 : ℚ), 8⟩,
    ⟨(291172397477/1000000000000 : ℚ), (1875468037/50000000 : ℚ), (-1415118912141/125000000000 : ℚ), 6⟩,
    ⟨(147457557521/500000000000 : ℚ), (4574239513/250000000 : ℚ), (-5698838280033/1000000000000 : ℚ), 5⟩,
    ⟨(299849154337/1000000000000 : ℚ), (52531024017/5000000000 : ℚ), (-3385211579151/1000000000000 : ℚ), 5⟩,
    ⟨(152963498933/500000000000 : ℚ), (66343419847/10000000000 : ℚ), (-276755396251/125000000000 : ℚ), 4⟩,
    ⟨(313090112673/1000000000000 : ℚ), (44550926807/10000000000 : ℚ), (-770208541697/500000000000 : ℚ), 4⟩,
    ⟨(321269514047/1000000000000 : ℚ), (7802029079/2500000000 : ℚ), (-558865671567/500000000000 : ℚ), 3⟩,
    ⟨(165193214941/500000000000 : ℚ), (22526239283/10000000000 : ℚ), (-417590790889/500000000000 : ℚ), 3⟩,
    ⟨(340353059293/1000000000000 : ℚ), (8305045497/5000000000 : ℚ), (-79623683701/125000000000 : ℚ), 3⟩,
    ⟨(21942088637/62500000000 : ℚ), (12429108691/10000000000 : ℚ), (-492595184557/1000000000000 : ℚ), 3⟩,
    ⟨(181222131831/500000000000 : ℚ), (4692823521/5000000000 : ℚ), (-192059840327/500000000000 : ℚ), 3⟩,
    ⟨(74871217649/200000000000 : ℚ), (1778742403/2500000000 : ℚ), (-150270215279/500000000000 : ℚ), 2⟩,
    ⟨(386694174559/1000000000000 : ℚ), (5385078297/10000000000 : ℚ), (-2934570251/12500000000 : ℚ), 2⟩,
    ⟨(399339700087/1000000000000 : ℚ), (4043280437/10000000000 : ℚ), (-91034078593/500000000000 : ℚ), 2⟩,
    ⟨(412170881507/1000000000000 : ℚ), (746540999/2500000000 : ℚ), (-139202303263/1000000000000 : ℚ), 2⟩,
    ⟨(425064147527/1000000000000 : ℚ), (2141973171/10000000000 : ℚ), (-324633791/3125000000 : ℚ), 2⟩,
    ⟨(437895328947/1000000000000 : ℚ), (364968031/2500000000 : ℚ), (-37232988229/500000000000 : ℚ), 2⟩,
    ⟨(112635213619/250000000000 : ℚ), (903193353/10000000000 : ℚ), (-4974779993/100000000000 : ℚ), 2⟩,
    ⟨(46287894079/100000000000 : ℚ), (222536709/5000000000 : ℚ), (-5766521499/200000000000 : ℚ), 2⟩,
    ⟨(474790765373/1000000000000 : ℚ), (65563501/10000000000 : ℚ), (-11045312937/1000000000000 : ℚ), 2⟩,
    ⟨(486161610843/1000000000000 : ℚ), (-2503241/100000000 : ℚ), (4128466849/1000000000000 : ℚ), 2⟩,
    ⟨(248440984871/500000000000 : ℚ), (-2007661/39062500 : ℚ), (4271026883/250000000000 : ℚ), 2⟩,
    ⟨(506848599153/1000000000000 : ℚ), (-734045243/10000000000 : ℚ), (28127519459/1000000000000 : ℚ), 2⟩,
    ⟨(128991378747/250000000000 : ℚ), (-917267317/10000000000 : ℚ), (37496405547/1000000000000 : ℚ), 2⟩,
    ⟨(262072458181/500000000000 : ℚ), (-534396117/5000000000 : ℚ), (45375761029/1000000000000 : ℚ), 2⟩,
    ⟨(531308031169/1000000000000 : ℚ), (-596303247/5000000000 : ℚ), (25954649489/500000000000 : ℚ), 2⟩,
    ⟨(268692937349/500000000000 : ℚ), (-1291772371/10000000000 : ℚ), (572079361/10000000000 : ℚ), 2⟩,
    ⟨(542319913993/1000000000000 : ℚ), (-1368613793/10000000000 : ℚ), (15339028163/250000000000 : ℚ), 2⟩,
    ⟨(273031315779/500000000000 : ℚ), (-1424851681/10000000000 : ℚ), (6441647587/100000000000 : ℚ), 2⟩,
    ⟨(274288991489/500000000000 : ℚ), (-1461700847/10000000000 : ℚ), (33216644993/500000000000 : ℚ), 2⟩,
    ⟨(274920872021/500000000000 : ℚ), (-92496039/625000000 : ℚ), (1053668983/15625000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-741103671/5000000000 : ℚ), (16889921601/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (4384840701/15625000000 : ℚ)
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
theorem certOK : JointInheritedControls.control149.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control149.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate149

-- Control150
namespace DiagonalRamsey.JointInheritedCertificate150
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(20137593663/62500000000 : ℚ), (21169416339041/5000000000 : ℚ), (-1365418429038043/1000000000000 : ℚ), 13⟩,
    ⟨(32253606867/100000000000 : ℚ), (467173673153/1000000000 : ℚ), (-75773548009029/500000000000 : ℚ), 10⟩,
    ⟨(323204402787/1000000000000 : ℚ), (831505692699/5000000000 : ℚ), (-54437406940709/1000000000000 : ℚ), 8⟩,
    ⟨(324204890883/1000000000000 : ℚ), (836213514597/10000000000 : ℚ), (-553654393957/20000000000 : ℚ), 7⟩,
    ⟨(162767561347/500000000000 : ℚ), (124297294901/2500000000 : ℚ), (-3334517078067/200000000000 : ℚ), 7⟩,
    ⟨(13087675743/40000000000 : ℚ), (326362130061/10000000000 : ℚ), (-5549649639263/500000000000 : ℚ), 6⟩,
    ⟨(329171212221/1000000000000 : ℚ), (228656657497/10000000000 : ℚ), (-7893860671773/1000000000000 : ℚ), 6⟩,
    ⟨(331468310279/1000000000000 : ℚ), (20969161333/1250000000 : ℚ), (-1176553822297/200000000000 : ℚ), 5⟩,
    ⟨(167038826919/500000000000 : ℚ), (12735161391/1000000000 : ℚ), (-283671910087/62500000000 : ℚ), 5⟩,
    ⟨(168496478381/500000000000 : ℚ), (99256854239/10000000000 : ℚ), (-3596376282749/1000000000000 : ℚ), 5⟩,
    ⟨(340207195831/1000000000000 : ℚ), (78985675221/10000000000 : ℚ), (-2910211814407/1000000000000 : ℚ), 4⟩,
    ⟨(17185631383/50000000000 : ℚ), (63918958851/10000000000 : ℚ), (-2395151048849/1000000000000 : ℚ), 4⟩,
    ⟨(347500807359/1000000000000 : ℚ), (52444280143/10000000000 : ℚ), (-249837444019/125000000000 : ℚ), 4⟩,
    ⟨(351562608869/1000000000000 : ℚ), (43525467031/10000000000 : ℚ), (-52720371571/31250000000 : ℚ), 4⟩,
    ⟨(88972061739/250000000000 : ℚ), (3647242409/1000000000 : ℚ), (-718820306039/500000000000 : ℚ), 4⟩,
    ⟨(180233650389/500000000000 : ℚ), (30811429301/10000000000 : ℚ), (-617467009163/500000000000 : ℚ), 3⟩,
    ⟨(365288738993/1000000000000 : ℚ), (6552187949/2500000000 : ℚ), (-1067959172733/1000000000000 : ℚ), 3⟩,
    ⟨(11573154573/31250000000 : ℚ), (22423943529/10000000000 : ℚ), (-928785701379/1000000000000 : ℚ), 3⟩,
    ⟨(75122350319/200000000000 : ℚ), (1205020699/625000000 : ℚ), (-162313383847/200000000000 : ℚ), 3⟩,
    ⟨(381088456939/1000000000000 : ℚ), (8322918171/5000000000 : ℚ), (-8898948481/12500000000 : ℚ), 3⟩,
    ⟨(193378934253/500000000000 : ℚ), (3605048089/2500000000 : ℚ), (-626489021621/1000000000000 : ℚ), 3⟩,
    ⟨(78521265637/200000000000 : ℚ), (782889543/625000000 : ℚ), (-138175522179/250000000000 : ℚ), 3⟩,
    ⟨(398619746527/1000000000000 : ℚ), (10903834533/10000000000 : ℚ), (-488532355717/1000000000000 : ℚ), 3⟩,
    ⟨(202391818339/500000000000 : ℚ), (594102021/625000000 : ℚ), (-432378472897/1000000000000 : ℚ), 3⟩,
    ⟨(51385393661/125000000000 : ℚ), (4146967211/5000000000 : ℚ), (-76591899149/200000000000 : ℚ), 2⟩,
    ⟨(10437577707/25000000000 : ℚ), (7238472193/10000000000 : ℚ), (-339241065843/1000000000000 : ℚ), 2⟩,
    ⟨(26501752963/62500000000 : ℚ), (1578683717/2500000000 : ℚ), (-75095176457/250000000000 : ℚ), 2⟩,
    ⟨(17225689901/40000000000 : ℚ), (550272221/1000000000 : ℚ), (-265686774461/1000000000000 : ℚ), 2⟩,
    ⟨(218664887221/500000000000 : ℚ), (2392999853/5000000000 : ℚ), (-234587316349/1000000000000 : ℚ), 2⟩,
    ⟨(444074517321/1000000000000 : ℚ), (1037743843/2500000000 : ℚ), (-51651542699/250000000000 : ℚ), 2⟩,
    ⟨(450860227487/1000000000000 : ℚ), (3586340851/10000000000 : ℚ), (-181344468383/1000000000000 : ℚ), 2⟩,
    ⟨(457670557567/1000000000000 : ℚ), (1541317811/5000000000 : ℚ), (-158466170141/1000000000000 : ℚ), 2⟩,
    ⟨(232244550441/500000000000 : ℚ), (164494023/625000000 : ℚ), (-137686668743/1000000000000 : ℚ), 2⟩,
    ⟨(471299430963/1000000000000 : ℚ), (222742553/1000000000 : ℚ), (-118763734099/1000000000000 : ℚ), 2⟩,
    ⟨(59760642641/125000000000 : ℚ), (232936837/1250000000 : ℚ), (-101490266237/1000000000000 : ℚ), 2⟩,
    ⟨(484829884007/1000000000000 : ℚ), (383812651/2500000000 : ℚ), (-10711056993/125000000000 : ℚ), 2⟩,
    ⟨(122879352731/250000000000 : ℚ), (1238534489/10000000000 : ℚ), (-71205047787/1000000000000 : ℚ), 2⟩,
    ⟨(498131611041/1000000000000 : ℚ), (242443933/2500000000 : ℚ), (-57907475289/1000000000000 : ℚ), 2⟩,
    ⟨(50465655017/100000000000 : ℚ), (725898371/10000000000 : ℚ), (-22840344111/500000000000 : ℚ), 2⟩,
    ⟨(511076509161/1000000000000 : ℚ), (252122143/5000000000 : ℚ), (-688490701/20000000000 : ℚ), 2⟩,
    ⟨(129344005443/250000000000 : ℚ), (18906861/625000000 : ℚ), (-1503224493/62500000000 : ℚ), 2⟩,
    ⟨(523539911923/1000000000000 : ℚ), (118692959/10000000000 : ℚ), (-289707067/20000000000 : ℚ), 2⟩,
    ⟨(66194166283/125000000000 : ℚ), (-12237509/2500000000 : ℚ), (-226348729/40000000000 : ℚ), 2⟩,
    ⟨(66925223743/125000000000 : ℚ), (-40388341/2000000000 : ℚ), (2487284181/1000000000000 : ℚ), 2⟩,
    ⟨(54107120151/100000000000 : ℚ), (-21350869/625000000 : ℚ), (5002283827/500000000000 : ℚ), 2⟩,
    ⟨(109309581371/200000000000 : ℚ), (-469133747/10000000000 : ℚ), (4234725059/250000000000 : ℚ), 2⟩,
    ⟨(275909356057/500000000000 : ℚ), (-585525473/10000000000 : ℚ), (23330677379/1000000000000 : ℚ), 2⟩,
    ⟨(17402216233/31250000000 : ℚ), (-691688981/10000000000 : ℚ), (29215582059/1000000000000 : ℚ), 2⟩,
    ⟨(70211544709/125000000000 : ℚ), (-788415573/10000000000 : ℚ), (34625148953/1000000000000 : ℚ), 2⟩,
    ⟨(283135705747/500000000000 : ℚ), (-175280273/2000000000 : ℚ), (9896812197/250000000000 : ℚ), 2⟩,
    ⟨(570597049581/1000000000000 : ℚ), (-478129361/5000000000 : ℚ), (44126503623/1000000000000 : ℚ), 2⟩,
    ⟨(574658851091/1000000000000 : ℚ), (-514263021/5000000000 : ℚ), (48264645687/1000000000000 : ℚ), 2⟩,
    ⟨(578447030789/1000000000000 : ℚ), (-27341903/250000000 : ℚ), (26010412921/500000000000 : ℚ), 2⟩,
    ⟨(581952462619/1000000000000 : ℚ), (-115212331/1000000000 : ℚ), (27705939939/500000000000 : ℚ), 2⟩,
    ⟨(585166701687/1000000000000 : ℚ), (-602114829/5000000000 : ℚ), (58452558531/1000000000000 : ℚ), 2⟩,
    ⟨(588082004611/1000000000000 : ℚ), (-1250310141/10000000000 : ℚ), (61155725123/1000000000000 : ℚ), 2⟩,
    ⟨(590691348171/1000000000000 : ℚ), (-161329643/1250000000 : ℚ), (63532526453/1000000000000 : ℚ), 2⟩,
    ⟨(592988446229/1000000000000 : ℚ), (-331361063/2500000000 : ℚ), (8199067219/125000000000 : ℚ), 2⟩,
    ⟨(297483882437/500000000000 : ℚ), (-677464729/5000000000 : ℚ), (1052248231/15625000000 : ℚ), 2⟩,
    ⟨(119324907151/200000000000 : ℚ), (-344814461/2500000000 : ℚ), (17198339561/250000000000 : ℚ), 2⟩,
    ⟨(298977383783/500000000000 : ℚ), (-349640947/2500000000 : ℚ), (6994648009/100000000000 : ℚ), 2⟩,
    ⟨(299477627831/500000000000 : ℚ), (-70647637/500000000 : ℚ), (70807593213/1000000000000 : ℚ), 2⟩,
    ⟨(599623589779/1000000000000 : ℚ), (-1422502609/10000000000 : ℚ), (71379906471/1000000000000 : ℚ), 2⟩,
    ⟨(299979079921/500000000000 : ℚ), (-71363239/500000000 : ℚ), (35832768549/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-285571891/2000000000 : ℚ), (71701216371/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (129684633019/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control150.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control150.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate150

-- Control152
namespace DiagonalRamsey.JointInheritedCertificate152
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(124278362069/250000000000 : ℚ), (14939911481743/10000000000 : ℚ), (-372141056680111/500000000000 : ℚ), 11⟩,
    ⟨(249285525439/500000000000 : ℚ), (1631503987327/10000000000 : ℚ), (-41173154217629/500000000000 : ℚ), 8⟩,
    ⟨(125368054643/250000000000 : ℚ), (571451934209/10000000000 : ℚ), (-23513602883/800000000 : ℚ), 6⟩,
    ⟨(63223626441/125000000000 : ℚ), (17594122119/625000000 : ℚ), (-3700813558631/250000000000 : ℚ), 5⟩,
    ⟨(511479856669/1000000000000 : ℚ), (32675570579/2000000000 : ℚ), (-4400213752033/500000000000 : ℚ), 5⟩,
    ⟨(259244974023/500000000000 : ℚ), (104336147733/10000000000 : ℚ), (-5762614315429/1000000000000 : ℚ), 4⟩,
    ⟨(263375887323/500000000000 : ℚ), (35445646121/5000000000 : ℚ), (-16064966551/4000000000 : ℚ), 4⟩,
    ⟨(134046442641/250000000000 : ℚ), (2010927607/400000000 : ℚ), (-2921371783797/1000000000000 : ℚ), 4⟩,
    ⟨(546701081261/1000000000000 : ℚ), (9190780507/2500000000 : ℚ), (-1095231142487/500000000000 : ℚ), 3⟩,
    ⟨(558196438547/1000000000000 : ℚ), (27493673641/10000000000 : ℚ), (-209845017501/125000000000 : ℚ), 3⟩,
    ⟨(71320141981/125000000000 : ℚ), (20901026743/10000000000 : ℚ), (-261389976803/200000000000 : ℚ), 3⟩,
    ⟨(18239877949/31250000000 : ℚ), (16075029847/10000000000 : ℚ), (-514308861687/500000000000 : ℚ), 3⟩,
    ⟨(597415009889/1000000000000 : ℚ), (3114459127/2500000000 : ℚ), (-163027524841/200000000000 : ℚ), 2⟩,
    ⟨(611645569143/1000000000000 : ℚ), (9692825689/10000000000 : ℚ), (-324039577679/500000000000 : ℚ), 2⟩,
    ⟨(313115362033/500000000000 : ℚ), (1508784329/2000000000 : ℚ), (-257572090101/500000000000 : ℚ), 2⟩,
    ⟨(320515005821/500000000000 : ℚ), (1170039401/2000000000 : ℚ), (-25492187137/62500000000 : ℚ), 2⟩,
    ⟨(655900906643/1000000000000 : ℚ), (4499180767/10000000000 : ℚ), (-160151582267/500000000000 : ℚ), 2⟩,
    ⟨(670700194219/1000000000000 : ℚ), (3410564851/10000000000 : ℚ), (-49624454083/200000000000 : ℚ), 2⟩,
    ⟨(342642674571/500000000000 : ℚ), (1262965951/5000000000 : ℚ), (-11760286699/62500000000 : ℚ), 2⟩,
    ⟨(174878977099/250000000000 : ℚ), (1802095253/10000000000 : ℚ), (-5522419651/40000000000 : ℚ), 2⟩,
    ⟨(713254823917/1000000000000 : ℚ), (603337051/5000000000 : ℚ), (-24002800131/250000000000 : ℚ), 2⟩,
    ⟨(726369782437/1000000000000 : ℚ), (178772601/2500000000 : ℚ), (-60633805151/1000000000000 : ℚ), 2⟩,
    ⟨(369367239869/500000000000 : ℚ), (77123121/2500000000 : ℚ), (-30853578091/1000000000000 : ℚ), 2⟩,
    ⟨(23444682407/31250000000 : ℚ), (-27703751/10000000000 : ℚ), (-1456981601/250000000000 : ℚ), 2⟩,
    ⟨(760745147721/1000000000000 : ℚ), (-304853679/10000000000 : ℚ), (7554018163/500000000000 : ℚ), 2⟩,
    ⟨(770179143639/1000000000000 : ℚ), (-265915989/5000000000 : ℚ), (8120213071/250000000000 : ℚ), 2⟩,
    ⟨(778440970239/1000000000000 : ℚ), (-715575711/10000000000 : ℚ), (5838424807/125000000000 : ℚ), 2⟩,
    ⟨(49090691351/62500000000 : ℚ), (-430740303/5000000000 : ℚ), (29057930509/500000000000 : ℚ), 2⟩,
    ⟨(791141906757/1000000000000 : ℚ), (-194738081/2000000000 : ℚ), (13392212913/200000000000 : ℚ), 2⟩,
    ⟨(795458699713/1000000000000 : ℚ), (-263826721/2500000000 : ℚ), (73435596821/1000000000000 : ℚ), 2⟩,
    ⟨(798359867407/1000000000000 : ℚ), (-221707927/2000000000 : ℚ), (38838866649/500000000000 : ℚ), 2⟩,
    ⟨(799817470009/1000000000000 : ℚ), (-567404353/5000000000 : ℚ), (39888430601/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-71129763/625000000 : ℚ), (16007646309/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (152985659651/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control152.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control152.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate152

-- Control153
namespace DiagonalRamsey.JointInheritedCertificate153
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(257342273541/1000000000000 : ℚ), (11549360666177/10000000000 : ℚ), (-298020565285737/1000000000000 : ℚ), 11⟩,
    ⟨(258317537803/1000000000000 : ℚ), (628238802837/5000000000 : ℚ), (-4119560691531/125000000000 : ℚ), 8⟩,
    ⟨(130129337/500000000 : ℚ), (54705538687/1250000000 : ℚ), (-11751278435061/1000000000000 : ℚ), 6⟩,
    ⟨(32893373491/125000000000 : ℚ), (214127519113/10000000000 : ℚ), (-2954459920979/500000000000 : ℚ), 6⟩,
    ⟨(133477331773/500000000000 : ℚ), (6165232331/500000000 : ℚ), (-700905655457/200000000000 : ℚ), 5⟩,
    ⟨(54329006171/200000000000 : ℚ), (2439116951/312500000 : ℚ), (-2287281893373/1000000000000 : ℚ), 4⟩,
    ⟨(55434583811/200000000000 : ℚ), (52504318367/10000000000 : ℚ), (-1587021166833/1000000000000 : ℚ), 4⟩,
    ⟨(283485091561/1000000000000 : ℚ), (2300535833/625000000 : ℚ), (-71718384979/62500000000 : ℚ), 4⟩,
    ⟨(2905207587/10000000000 : ℚ), (13278382209/5000000000 : ℚ), (-426781334901/500000000000 : ℚ), 3⟩,
    ⟨(18638260197/62500000000 : ℚ), (4885497091/2500000000 : ℚ), (-40454275083/62500000000 : ℚ), 3⟩,
    ⟨(38310654061/125000000000 : ℚ), (14562828241/10000000000 : ℚ), (-496858450367/1000000000000 : ℚ), 3⟩,
    ⟨(315260292527/1000000000000 : ℚ), (10921619829/10000000000 : ℚ), (-383756756549/1000000000000 : ℚ), 3⟩,
    ⟨(81113208661/250000000000 : ℚ), (8191923191/10000000000 : ℚ), (-74127976447/250000000000 : ℚ), 3⟩,
    ⟨(166987164817/500000000000 : ℚ), (6102016247/10000000000 : ℚ), (-5693922267/25000000000 : ℚ), 2⟩,
    ⟨(171866540147/500000000000 : ℚ), (4472717649/10000000000 : ℚ), (-172581933899/1000000000000 : ℚ), 2⟩,
    ⟨(176817552261/500000000000 : ℚ), (3182427923/10000000000 : ℚ), (-63808327097/500000000000 : ℚ), 2⟩,
    ⟨(363585040411/1000000000000 : ℚ), (2146594101/10000000000 : ℚ), (-90488920837/1000000000000 : ℚ), 2⟩,
    ⟨(186743532319/500000000000 : ℚ), (652594537/5000000000 : ℚ), (-3718343169/62500000000 : ℚ), 2⟩,
    ⟨(383245815299/1000000000000 : ℚ), (76853659/1250000000 : ℚ), (-16691172329/500000000000 : ℚ), 2⟩,
    ⟨(392767310289/1000000000000 : ℚ), (43672823/10000000000 : ℚ), (-5614085631/500000000000 : ℚ), 2⟩,
    ⟨(200979926203/500000000000 : ℚ), (-863927/20000000 : ℚ), (7666798727/1000000000000 : ℚ), 2⟩,
    ⟨(82146982489/200000000000 : ℚ), (-829895691/10000000000 : ℚ), (5958264051/250000000000 : ℚ), 2⟩,
    ⟨(419007981781/1000000000000 : ℚ), (-290913439/2500000000 : ℚ), (37677200651/1000000000000 : ℚ), 2⟩,
    ⟨(426699386233/1000000000000 : ℚ), (-72179547/500000000 : ℚ), (49512722143/1000000000000 : ℚ), 2⟩,
    ⟨(108433763343/250000000000 : ℚ), (-1677673053/10000000000 : ℚ), (3723887069/62500000000 : ℚ), 2⟩,
    ⟨(220023612939/500000000000 : ℚ), (-936023511/5000000000 : ℚ), (17018372501/250000000000 : ℚ), 2⟩,
    ⟨(222787557039/500000000000 : ℚ), (-253931807/1250000000 : ℚ), (75131788969/1000000000000 : ℚ), 2⟩,
    ⟨(450265481387/1000000000000 : ℚ), (-215953447/1000000000 : ℚ), (80868507001/1000000000000 : ℚ), 2⟩,
    ⟨(90814631401/200000000000 : ℚ), (-2259045887/10000000000 : ℚ), (17073597153/200000000000 : ℚ), 2⟩,
    ⟨(456961470933/1000000000000 : ℚ), (-466405897/2000000000 : ℚ), (8869246459/100000000000 : ℚ), 2⟩,
    ⟨(45890260713/100000000000 : ℚ), (-475984887/2000000000 : ℚ), (90885713119/1000000000000 : ℚ), 2⟩,
    ⟨(14371183481/31250000000 : ℚ), (-2403648529/10000000000 : ℚ), (45987786501/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2406603687/10000000000 : ℚ), (23027873061/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (283002041159/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control153.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control153.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate153

-- Control154
namespace DiagonalRamsey.JointInheritedCertificate154
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65990637541/250000000000 : ℚ), (2913127978603/2500000000 : ℚ), (-15420535099801/50000000000 : ℚ), 11⟩,
    ⟨(26495407891/100000000000 : ℚ), (6339351143/50000000 : ℚ), (-3410560939189/100000000000 : ℚ), 8⟩,
    ⟨(3336594843/12500000000 : ℚ), (441696937537/10000000000 : ℚ), (-12161128477497/1000000000000 : ℚ), 6⟩,
    ⟨(134932034893/500000000000 : ℚ), (216158774357/10000000000 : ℚ), (-6115101565333/1000000000000 : ℚ), 6⟩,
    ⟨(273735246019/1000000000000 : ℚ), (124505011987/10000000000 : ℚ), (-3626906000177/1000000000000 : ℚ), 5⟩,
    ⟨(55700766919/200000000000 : ℚ), (78832491357/10000000000 : ℚ), (-473449753159/200000000000 : ℚ), 4⟩,
    ⟨(284123911399/1000000000000 : ℚ), (53044698877/10000000000 : ℚ), (-10266289403/6250000000 : ℚ), 4⟩,
    ⟨(290541352021/1000000000000 : ℚ), (18599544939/5000000000 : ℚ), (-1187792796419/1000000000000 : ℚ), 4⟩,
    ⟨(297694352997/1000000000000 : ℚ), (26848026133/10000000000 : ℚ), (-220913948569/250000000000 : ℚ), 3⟩,
    ⟨(305514027019/1000000000000 : ℚ), (123528141/62500000 : ℚ), (-134043234387/200000000000 : ℚ), 3⟩,
    ⟨(19620316647/62500000000 : ℚ), (7368036193/5000000000 : ℚ), (-257306865473/500000000000 : ℚ), 3⟩,
    ⟨(322846468087/1000000000000 : ℚ), (5529302103/5000000000 : ℚ), (-99406107933/250000000000 : ℚ), 3⟩,
    ⟨(332192314251/1000000000000 : ℚ), (8301659097/10000000000 : ℚ), (-960616247/3125000000 : ℚ), 3⟩,
    ⟨(68374519847/200000000000 : ℚ), (6190932147/10000000000 : ℚ), (-59076923093/250000000000 : ℚ), 2⟩,
    ⟨(351794096603/1000000000000 : ℚ), (2272756129/5000000000 : ℚ), (-44818601563/250000000000 : ℚ), 2⟩,
    ⟨(22616328557/62500000000 : ℚ), (810651401/2500000000 : ℚ), (-132808843891/1000000000000 : ℚ), 2⟩,
    ⟨(74395425581/200000000000 : ℚ), (137300803/625000000 : ℚ), (-11806939013/125000000000 : ℚ), 2⟩,
    ⟨(382044288213/1000000000000 : ℚ), (336873409/2500000000 : ℚ), (-624490141/10000000000 : ℚ), 2⟩,
    ⟨(391965785581/1000000000000 : ℚ), (650811517/10000000000 : ℚ), (-17748542893/500000000000 : ℚ), 2⟩,
    ⟨(80329214113/200000000000 : ℚ), (37292319/5000000000 : ℚ), (-2527865733/200000000000 : ℚ), 2⟩,
    ⟨(410991916729/1000000000000 : ℚ), (-202564521/5000000000 : ℚ), (6847123261/1000000000000 : ℚ), 2⟩,
    ⟨(83982663693/200000000000 : ℚ), (-806344861/10000000000 : ℚ), (23512026351/1000000000000 : ℚ), 2⟩,
    ⟨(428324357797/1000000000000 : ℚ), (-1142747839/10000000000 : ℚ), (18888457797/500000000000 : ℚ), 2⟩,
    ⟨(436144031819/1000000000000 : ℚ), (-712406319/5000000000 : ℚ), (49966947333/1000000000000 : ℚ), 2⟩,
    ⟨(110824258199/250000000000 : ℚ), (-1660600621/10000000000 : ℚ), (15083463157/250000000000 : ℚ), 2⟩,
    ⟨(449714473417/1000000000000 : ℚ), (-1856334047/10000000000 : ℚ), (8634089103/125000000000 : ℚ), 2⟩,
    ⟨(227667275111/500000000000 : ℚ), (-10084069/50000000 : ℚ), (19083590641/250000000000 : ℚ), 2⟩,
    ⟨(230051569399/500000000000 : ℚ), (-2145725301/10000000000 : ℚ), (16446926457/200000000000 : ℚ), 2⟩,
    ⟨(463974315031/1000000000000 : ℚ), (-2245863029/10000000000 : ℚ), (86861257503/1000000000000 : ℚ), 2⟩,
    ⟨(466910797377/1000000000000 : ℚ), (-28991181/125000000 : ℚ), (90279017929/1000000000000 : ℚ), 2⟩,
    ⟨(234442152953/500000000000 : ℚ), (-473495571/2000000000 : ℚ), (23133372783/250000000000 : ℚ), 2⟩,
    ⟨(469875834653/1000000000000 : ℚ), (-1195671587/5000000000 : ℚ), (46826839893/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-478863169/2000000000 : ℚ), (93793376829/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (27874823517/100000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control154.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control154.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate154
