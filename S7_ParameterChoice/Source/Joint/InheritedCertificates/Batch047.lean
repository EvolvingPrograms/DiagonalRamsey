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

-- Control406
namespace DiagonalRamsey.JointInheritedCertificate406
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133176216217/500000000000 : ℚ), (2654030010549/2000000000 : ℚ), (-354163913333383/1000000000000 : ℚ), 12⟩,
    ⟨(133545920803/500000000000 : ℚ), (724489744867/5000000000 : ℚ), (-39143306669111/1000000000000 : ℚ), 9⟩,
    ⟨(134281769517/500000000000 : ℚ), (507157794297/10000000000 : ℚ), (-13941511693149/1000000000000 : ℚ), 7⟩,
    ⟨(270753351469/1000000000000 : ℚ), (249432996327/10000000000 : ℚ), (-6997972837527/1000000000000 : ℚ), 6⟩,
    ⟨(273640189819/1000000000000 : ℚ), (5774259617/400000000 : ℚ), (-4140337842429/1000000000000 : ℚ), 6⟩,
    ⟨(138598126127/500000000000 : ℚ), (91782056767/10000000000 : ℚ), (-1346790184537/500000000000 : ℚ), 5⟩,
    ⟨(281387291947/1000000000000 : ℚ), (30977858189/5000000000 : ℚ), (-372248683251/200000000000 : ℚ), 5⟩,
    ⟨(17885809181/62500000000 : ℚ), (21765240793/5000000000 : ℚ), (-1338786256749/1000000000000 : ℚ), 4⟩,
    ⟨(291507128627/1000000000000 : ℚ), (3928044211/1250000000 : ℚ), (-989376738249/1000000000000 : ℚ), 4⟩,
    ⟨(148669233027/500000000000 : ℚ), (11544466931/5000000000 : ℚ), (-372069046719/500000000000 : ℚ), 4⟩,
    ⟨(303610800211/1000000000000 : ℚ), (3426861363/2000000000 : ℚ), (-70667054421/125000000000 : ℚ), 3⟩,
    ⟨(31026372509/100000000000 : ℚ), (12751534291/10000000000 : ℚ), (-215448318581/500000000000 : ℚ), 3⟩,
    ⟨(317233169387/1000000000000 : ℚ), (4722423757/5000000000 : ℚ), (-163604762541/500000000000 : ℚ), 3⟩,
    ⟨(64890402709/200000000000 : ℚ), (862171943/1250000000 : ℚ), (-245518794023/1000000000000 : ℚ), 3⟩,
    ⟨(331850736149/1000000000000 : ℚ), (2449717267/5000000000 : ℚ), (-179987377433/1000000000000 : ℚ), 3⟩,
    ⟨(169679041727/500000000000 : ℚ), (3308174779/10000000000 : ℚ), (-63303445409/500000000000 : ℚ), 3⟩,
    ⟨(173450877801/500000000000 : ℚ), (31622707/156250000 : ℚ), (-41277385687/500000000000 : ℚ), 3⟩,
    ⟨(354409102907/1000000000000 : ℚ), (243837313/2500000000 : ℚ), (-45800731953/1000000000000 : ℚ), 3⟩,
    ⟨(36180782551/100000000000 : ℚ), (111032333/10000000000 : ℚ), (-14857828393/1000000000000 : ℚ), 3⟩,
    ⟨(92256667417/250000000000 : ℚ), (-121431883/2000000000 : ℚ), (568978771/50000000000 : ℚ), 2⟩,
    ⟨(187998056983/500000000000 : ℚ), (-1207654947/10000000000 : ℚ), (33743985317/1000000000000 : ℚ), 2⟩,
    ⟨(76529807769/200000000000 : ℚ), (-1711923303/10000000000 : ℚ), (52868651207/1000000000000 : ℚ), 2⟩,
    ⟨(388921373001/1000000000000 : ℚ), (-2136324343/10000000000 : ℚ), (69239054431/1000000000000 : ℚ), 2⟩,
    ⟨(394752710429/1000000000000 : ℚ), (-77919129/312500000 : ℚ), (650230157/7812500000 : ℚ), 2⟩,
    ⟨(625135769/1562500000 : ℚ), (-349108331/1250000000 : ℚ), (3805172073/40000000000 : ℚ), 2⟩,
    ⟨(404872547109/1000000000000 : ℚ), (-3042168467/10000000000 : ℚ), (21032501851/200000000000 : ℚ), 2⟩,
    ⟨(204531793401/500000000000 : ℚ), (-405886539/1250000000 : ℚ), (22700368323/200000000000 : ℚ), 2⟩,
    ⟨(103154912309/250000000000 : ℚ), (-136482831/400000000 : ℚ), (60139806197/500000000000 : ℚ), 2⟩,
    ⟨(415506487587/1000000000000 : ℚ), (-3540462953/10000000000 : ℚ), (3139893583/25000000000 : ℚ), 2⟩,
    ⟨(417696300021/1000000000000 : ℚ), (-3634751893/10000000000 : ℚ), (2023809161/15625000000 : ℚ), 2⟩,
    ⟨(8383359949/20000000000 : ℚ), (-739337431/2000000000 : ℚ), (132115342939/1000000000000 : ℚ), 2⟩,
    ⟨(209953703311/500000000000 : ℚ), (-1863691797/5000000000 : ℚ), (66701586281/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1865604041/5000000000 : ℚ), (16695472921/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (66071008287/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control406.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control406.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate406

-- Control407
namespace DiagonalRamsey.JointInheritedCertificate407
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(286036952267/1000000000000 : ℚ), (2844807070899/2000000000 : ℚ), (-203812405535771/500000000000 : ℚ), 12⟩,
    ⟨(143388939823/500000000000 : ℚ), (1243378819/8000000 : ℚ), (-9009722421893/200000000000 : ℚ), 9⟩,
    ⟨(288252598869/1000000000000 : ℚ), (136128217761/2500000000 : ℚ), (-3208475934917/200000000000 : ℚ), 7⟩,
    ⟨(4538232931/15625000000 : ℚ), (268086904513/10000000000 : ℚ), (-4025346124467/500000000000 : ℚ), 6⟩,
    ⟨(293339673397/1000000000000 : ℚ), (77658827883/5000000000 : ℚ), (-148804215271/31250000000 : ℚ), 6⟩,
    ⟨(296903037393/1000000000000 : ℚ), (49426243587/5000000000 : ℚ), (-3096658462839/1000000000000 : ℚ), 5⟩,
    ⟨(75275670607/250000000000 : ℚ), (13358343001/2000000000 : ℚ), (-2138772490057/1000000000000 : ℚ), 5⟩,
    ⟨(152949081813/500000000000 : ℚ), (46967820293/10000000000 : ℚ), (-1537562444769/1000000000000 : ℚ), 4⟩,
    ⟨(7781082447/25000000000 : ℚ), (33930058077/10000000000 : ℚ), (-567769758887/500000000000 : ℚ), 4⟩,
    ⟨(158543304313/500000000000 : ℚ), (24944344137/10000000000 : ℚ), (-426714309963/500000000000 : ℚ), 4⟩,
    ⟨(323371821587/1000000000000 : ℚ), (2314871491/1250000000 : ℚ), (-647798629117/1000000000000 : ℚ), 3⟩,
    ⟨(330038406727/1000000000000 : ℚ), (13785396097/10000000000 : ℚ), (-493240773387/1000000000000 : ℚ), 3⟩,
    ⟨(168511080593/500000000000 : ℚ), (2552762659/2500000000 : ℚ), (-374089999229/1000000000000 : ℚ), 3⟩,
    ⟨(344255827591/1000000000000 : ℚ), (7455345873/10000000000 : ℚ), (-140133234357/500000000000 : ℚ), 3⟩,
    ⟨(17583487089/50000000000 : ℚ), (2646375059/5000000000 : ℚ), (-205050051219/1000000000000 : ℚ), 3⟩,
    ⟨(359192503707/1000000000000 : ℚ), (713899947/2000000000 : ℚ), (-143825165543/1000000000000 : ℚ), 3⟩,
    ⟨(183375832531/500000000000 : ℚ), (2178140319/10000000000 : ℚ), (-46670454347/500000000000 : ℚ), 3⟩,
    ⟨(374274426989/1000000000000 : ℚ), (208396457/2000000000 : ℚ), (-51258138913/1000000000000 : ℚ), 3⟩,
    ⟨(190844170589/500000000000 : ℚ), (105298007/10000000000 : ℚ), (-7931502633/500000000000 : ℚ), 3⟩,
    ⟨(388922007583/1000000000000 : ℚ), (-673036663/10000000000 : ℚ), (14119505273/1000000000000 : ℚ), 2⟩,
    ⟨(197952881021/500000000000 : ℚ), (-1323769779/10000000000 : ℚ), (7930006537/200000000000 : ℚ), 2⟩,
    ⟨(201286173591/500000000000 : ℚ), (-1870145739/10000000000 : ℚ), (6145982923/100000000000 : ℚ), 2⟩,
    ⟨(408857560143/1000000000000 : ℚ), (-1164947533/5000000000 : ℚ), (16021995763/200000000000 : ℚ), 2⟩,
    ⟨(414700870889/1000000000000 : ℚ), (-1358318281/5000000000 : ℚ), (19206686211/200000000000 : ℚ), 2⟩,
    ⟨(52505750643/125000000000 : ℚ), (-760220089/2500000000 : ℚ), (109565337103/1000000000000 : ℚ), 2⟩,
    ⟨(424841486341/1000000000000 : ℚ), (-1655377401/5000000000 : ℚ), (120965268477/1000000000000 : ℚ), 2⟩,
    ⟨(429041131377/1000000000000 : ℚ), (-1766269407/5000000000 : ℚ), (130433693729/1000000000000 : ℚ), 2⟩,
    ⟨(432604495373/1000000000000 : ℚ), (-3711054551/10000000000 : ℚ), (138124307343/1000000000000 : ℚ), 2⟩,
    ⟨(217748630593/500000000000 : ℚ), (-60155591/156250000 : ℚ), (1801916137/12500000000 : ℚ), 2⟩,
    ⟨(4376915699/10000000000 : ℚ), (-3951951799/10000000000 : ℚ), (74303119659/500000000000 : ℚ), 2⟩,
    ⟨(439166289123/1000000000000 : ℚ), (-4018941509/10000000000 : ℚ), (151543246941/1000000000000 : ℚ), 2⟩,
    ⟨(219953608251/500000000000 : ℚ), (-202607051/500000000 : ℚ), (153002485581/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-507034659/1250000000 : ℚ), (76592230737/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (308721350179/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control407.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control407.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate407

-- Control408
namespace DiagonalRamsey.JointInheritedCertificate408
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146700025061/500000000000 : ℚ), (1793102544249/1250000000 : ℚ), (-421662157409261/1000000000000 : ℚ), 12⟩,
    ⟨(147076833627/500000000000 : ℚ), (1567576471759/10000000000 : ℚ), (-46600545256533/1000000000000 : ℚ), 9⟩,
    ⟨(295653643773/1000000000000 : ℚ), (549271843063/10000000000 : ℚ), (-4148871997381/250000000000 : ℚ), 7⟩,
    ⟨(59577106817/200000000000 : ℚ), (135239442117/5000000000 : ℚ), (-8328624487607/1000000000000 : ℚ), 6⟩,
    ⟨(300827843867/1000000000000 : ℚ), (156736376079/10000000000 : ℚ), (-4926437552443/1000000000000 : ℚ), 6⟩,
    ⟨(152226118533/500000000000 : ℚ), (798235133/80000000 : ℚ), (-1602028441401/500000000000 : ℚ), 5⟩,
    ⟨(77180952199/250000000000 : ℚ), (67436607861/10000000000 : ℚ), (-2213225357977/1000000000000 : ℚ), 5⟩,
    ⟨(78400355371/250000000000 : ℚ), (47436623287/10000000000 : ℚ), (-1591358206377/1000000000000 : ℚ), 4⟩,
    ⟨(63807620211/200000000000 : ℚ), (34282002169/10000000000 : ℚ), (-1175543215723/1000000000000 : ℚ), 4⟩,
    ⟨(324981489313/1000000000000 : ℚ), (12607571413/5000000000 : ℚ), (-44188757317/50000000000 : ℚ), 4⟩,
    ⟨(165687174089/500000000000 : ℚ), (9365720421/5000000000 : ℚ), (-671126957/1000000000 : ℚ), 3⟩,
    ⟨(338155110927/1000000000000 : ℚ), (13954792509/10000000000 : ℚ), (-511314491413/1000000000000 : ℚ), 3⟩,
    ⟨(172629237553/500000000000 : ℚ), (517398023/500000000 : ℚ), (-97033191963/250000000000 : ℚ), 3⟩,
    ⟨(88154007859/250000000000 : ℚ), (1891834711/2500000000 : ℚ), (-291154276207/1000000000000 : ℚ), 3⟩,
    ⟨(90039230657/250000000000 : ℚ), (2692687917/5000000000 : ℚ), (-42685366971/200000000000 : ℚ), 3⟩,
    ⟨(22988032861/62500000000 : ℚ), (1823456009/5000000000 : ℚ), (-150175215023/1000000000000 : ℚ), 3⟩,
    ⟨(375497151759/1000000000000 : ℚ), (448700501/2000000000 : ℚ), (-98035796819/1000000000000 : ℚ), 3⟩,
    ⟨(383148754907/1000000000000 : ℚ), (219547687/2000000000 : ℚ), (-682350793/12500000000 : ℚ), 3⟩,
    ⟨(390689646099/1000000000000 : ℚ), (76679663/5000000000 : ℚ), (-18058275237/1000000000000 : ℚ), 3⟩,
    ⟨(398047202429/1000000000000 : ℚ), (-631160573/10000000000 : ℚ), (2574678463/200000000000 : ℚ), 2⟩,
    ⟨(25321910413/62500000000 : ℚ), (-643438237/5000000000 : ℚ), (2450099163/62500000000 : ℚ), 2⟩,
    ⟨(411931329357/1000000000000 : ℚ), (-367454117/2000000000 : ℚ), (15420918623/250000000000 : ℚ), 2⟩,
    ⟨(418324188223/1000000000000 : ℚ), (-1150129683/5000000000 : ℚ), (20225246481/250000000000 : ℚ), 2⟩,
    ⟨(2651672353/6250000000 : ℚ), (-2689608053/10000000000 : ℚ), (12162784891/125000000000 : ℚ), 2⟩,
    ⟨(429704256051/1000000000000 : ℚ), (-188496413/625000000 : ℚ), (111235104501/1000000000000 : ℚ), 2⟩,
    ⟨(21729093437/50000000000 : ℚ), (-328748313/1000000000 : ℚ), (61484386817/500000000000 : ℚ), 2⟩,
    ⟨(438853440469/1000000000000 : ℚ), (-1755290501/5000000000 : ℚ), (132711388869/1000000000000 : ℚ), 2⟩,
    ⟨(110619458417/250000000000 : ℚ), (-3690115183/10000000000 : ℚ), (140622584857/1000000000000 : ℚ), 2⟩,
    ⟨(8908402869/20000000000 : ℚ), (-765957063/2000000000 : ℚ), (146823097701/1000000000000 : ℚ), 2⟩,
    ⟨(223826016881/500000000000 : ℚ), (-3932327459/10000000000 : ℚ), (7570096071/50000000000 : ℚ), 2⟩,
    ⟨(449152010281/1000000000000 : ℚ), (-999917527/2500000000 : ℚ), (30884312797/200000000000 : ℚ), 2⟩,
    ⟨(449905627413/1000000000000 : ℚ), (-2016521201/5000000000 : ℚ), (155921742847/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-4037200081/10000000000 : ℚ), (19513602349/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (151558176129/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control408.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control408.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate408

-- Control409
namespace DiagonalRamsey.JointInheritedCertificate409
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(15039275839/50000000000 : ℚ), (7232359563523/5000000000 : ℚ), (-217941553830487/500000000000 : ℚ), 12⟩,
    ⟨(150775858009/500000000000 : ℚ), (790415160651/5000000000 : ℚ), (-963454327791/20000000000 : ℚ), 9⟩,
    ⟨(37884591947/125000000000 : ℚ), (553994684097/10000000000 : ℚ), (-2144470706041/125000000000 : ℚ), 7⟩,
    ⟨(152672944341/500000000000 : ℚ), (54570415497/2000000000 : ℚ), (-1722025262891/200000000000 : ℚ), 6⟩,
    ⟨(308337322151/1000000000000 : ℚ), (79071721897/5000000000 : ℚ), (-2546614654717/500000000000 : ℚ), 6⟩,
    ⟨(78005556711/250000000000 : ℚ), (50349125379/5000000000 : ℚ), (-1656397954993/500000000000 : ℚ), 5⟩,
    ⟨(158182557557/500000000000 : ℚ), (68075526563/10000000000 : ℚ), (-2288589316713/1000000000000 : ℚ), 5⟩,
    ⟨(321324162573/1000000000000 : ℚ), (23950374189/5000000000 : ℚ), (-205724570981/125000000000 : ℚ), 4⟩,
    ⟨(326851610883/1000000000000 : ℚ), (3463013193/1000000000 : ℚ), (-48640443011/40000000000 : ℚ), 4⟩,
    ⟨(20805889231/62500000000 : ℚ), (25482730469/10000000000 : ℚ), (-114307714109/125000000000 : ℚ), 4⟩,
    ⟨(84848454827/250000000000 : ℚ), (757645451/400000000 : ℚ), (-694705932271/1000000000000 : ℚ), 3⟩,
    ⟨(173143895549/500000000000 : ℚ), (2824348541/2000000000 : ℚ), (-264786361247/500000000000 : ℚ), 3⟩,
    ⟨(353509750351/1000000000000 : ℚ), (655167203/625000000 : ℚ), (-100577522439/250000000000 : ℚ), 3⟩,
    ⟨(360990145649/1000000000000 : ℚ), (7677333921/10000000000 : ℚ), (-4720910643/15625000000 : ℚ), 3⟩,
    ⟨(368656936699/1000000000000 : ℚ), (1369040367/2500000000 : ℚ), (-221870004437/1000000000000 : ℚ), 3⟩,
    ⟨(376436288109/1000000000000 : ℚ), (744522557/2000000000 : ℚ), (-78284134117/500000000000 : ℚ), 3⟩,
    ⟨(15370131219/40000000000 : ℚ), (1153629783/5000000000 : ℚ), (-20551046481/200000000000 : ℚ), 3⟩,
    ⟨(196016315943/500000000000 : ℚ), (1151978719/10000000000 : ℚ), (-5792790941/100000000000 : ℚ), 3⟩,
    ⟨(79939884587/200000000000 : ℚ), (199980551/10000000000 : ℚ), (-1265740903/62500000000 : ℚ), 3⟩,
    ⟨(203589909117/500000000000 : ℚ), (-590659633/10000000000 : ℚ), (5819094567/500000000000 : ℚ), 2⟩,
    ⟨(207200888743/500000000000 : ℚ), (-625651127/5000000000 : ℚ), (38771356659/1000000000000 : ℚ), 2⟩,
    ⟨(421295749277/1000000000000 : ℚ), (-1805665901/10000000000 : ℚ), (7741438461/125000000000 : ℚ), 2⟩,
    ⟨(427795340889/1000000000000 : ℚ), (-454370383/2000000000 : ℚ), (81720518957/1000000000000 : ℚ), 2⟩,
    ⟨(433837957701/1000000000000 : ℚ), (-532754237/2000000000 : ℚ), (4930159939/50000000000 : ℚ), 2⟩,
    ⟨(439365406011/1000000000000 : ℚ), (-2992164937/10000000000 : ℚ), (56469846343/500000000000 : ℚ), 2⟩,
    ⟨(44432445347/100000000000 : ℚ), (-326534459/1000000000 : ℚ), (125009210557/1000000000000 : ℚ), 2⟩,
    ⟨(448667341741/1000000000000 : ℚ), (-697946737/2000000000 : ℚ), (135027616583/1000000000000 : ℚ), 2⟩,
    ⟨(452352246433/1000000000000 : ℚ), (-3670267743/10000000000 : ℚ), (71580293687/500000000000 : ℚ), 2⟩,
    ⟨(455343679903/1000000000000 : ℚ), (-762138013/2000000000 : ℚ), (149533493861/1000000000000 : ℚ), 2⟩,
    ⟨(457612833009/1000000000000 : ℚ), (-3913769483/10000000000 : ℚ), (7711939537/50000000000 : ℚ), 2⟩,
    ⟨(459137852567/1000000000000 : ℚ), (-3981457853/10000000000 : ℚ), (4916920089/31250000000 : ℚ), 2⟩,
    ⟨(114976012951/250000000000 : ℚ), (-501874917/1250000000 : ℚ), (158882742301/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-4019177993/10000000000 : ℚ), (79537470241/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (297506595073/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control409.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control409.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate409

-- Control410
namespace DiagonalRamsey.JointInheritedCertificate410
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(77066387249/250000000000 : ℚ), (14593780732363/10000000000 : ℚ), (-450701910332289/1000000000000 : ℚ), 12⟩,
    ⟨(154521937627/500000000000 : ℚ), (63803973099/400000000 : ℚ), (-49811147557627/1000000000000 : ℚ), 9⟩,
    ⟨(2426508063/7812500000 : ℚ), (6988510969/125000000 : ℚ), (-886988824057/50000000000 : ℚ), 7⟩,
    ⟨(312898100199/1000000000000 : ℚ), (11016362883/400000000 : ℚ), (-1112955734797/125000000000 : ℚ), 6⟩,
    ⟨(19746055037/62500000000 : ℚ), (79830227163/5000000000 : ℚ), (-105344378639/20000000000 : ℚ), 6⟩,
    ⟨(319680108127/1000000000000 : ℚ), (6355606133/625000000 : ℚ), (-856573596299/250000000000 : ℚ), 5⟩,
    ⟨(81022933369/250000000000 : ℚ), (34382791147/5000000000 : ℚ), (-2367311731657/1000000000000 : ℚ), 5⟩,
    ⟨(82282317569/250000000000 : ℚ), (24201292603/5000000000 : ℚ), (-1702715898969/1000000000000 : ℚ), 4⟩,
    ⟨(334744204293/1000000000000 : ℚ), (7001406829/2000000000 : ℚ), (-629187502441/500000000000 : ℚ), 4⟩,
    ⟨(85220615161/250000000000 : ℚ), (25772854927/10000000000 : ℚ), (-189327157663/200000000000 : ℚ), 4⟩,
    ⟨(69496984913/200000000000 : ℚ), (19168859559/10000000000 : ℚ), (-359738245933/500000000000 : ℚ), 3⟩,
    ⟨(177244005359/500000000000 : ℚ), (14303366417/10000000000 : ℚ), (-548801964713/1000000000000 : ℚ), 3⟩,
    ⟨(72364855111/200000000000 : ℚ), (10629510711/10000000000 : ℚ), (-417290195013/1000000000000 : ℚ), 3⟩,
    ⟨(369423066837/1000000000000 : ℚ), (3898735327/5000000000 : ℚ), (-313794362733/1000000000000 : ℚ), 3⟩,
    ⟨(23575700253/62500000000 : ℚ), (5575531353/10000000000 : ℚ), (-57720539699/250000000000 : ℚ), 3⟩,
    ⟨(38511368317/100000000000 : ℚ), (3805657071/10000000000 : ℚ), (-163448001513/1000000000000 : ℚ), 3⟩,
    ⟨(393054399009/1000000000000 : ℚ), (1188680899/5000000000 : ℚ), (-10789499679/100000000000 : ℚ), 3⟩,
    ⟨(100239219533/250000000000 : ℚ), (605877199/5000000000 : ℚ), (-12326836613/200000000000 : ℚ), 3⟩,
    ⟨(408745015343/1000000000000 : ℚ), (1257381/50000000 : ℚ), (-22767818017/1000000000000 : ℚ), 3⟩,
    ⟨(13010743957/31250000000 : ℚ), (-136456587/2500000000 : ℚ), (10116741587/1000000000000 : ℚ), 2⟩,
    ⟨(211840035731/500000000000 : ℚ), (-1211841711/10000000000 : ℚ), (19042307841/500000000000 : ℚ), 2⟩,
    ⟨(86136631523/200000000000 : ℚ), (-1770542533/10000000000 : ℚ), (1238946403/20000000000 : ℚ), 2⟩,
    ⟨(87457124307/200000000000 : ℚ), (-2240228863/10000000000 : ℚ), (20582048443/250000000000 : ℚ), 2⟩,
    ⟨(221711938943/500000000000 : ℚ), (-16468551/62500000 : ℚ), (49854411151/500000000000 : ℚ), 2⟩,
    ⟨(449038811903/1000000000000 : ℚ), (-118625023/400000000 : ℚ), (114462527367/1000000000000 : ℚ), 2⟩,
    ⟨(454076348703/1000000000000 : ℚ), (-648122151/2000000000 : ℚ), (12687888423/100000000000 : ℚ), 2⟩,
    ⟨(458487974053/1000000000000 : ℚ), (-1733212443/5000000000 : ℚ), (27436378513/200000000000 : ℚ), 2⟩,
    ⟨(462231201587/1000000000000 : ℚ), (-912016099/2500000000 : ℚ), (14554356917/100000000000 : ℚ), 2⟩,
    ⟨(23263499099/50000000000 : ℚ), (-30314557/80000000 : ℚ), (30418830663/200000000000 : ℚ), 2⟩,
    ⟨(93515010023/200000000000 : ℚ), (-3892994731/10000000000 : ℚ), (19616217227/125000000000 : ℚ), 2⟩,
    ⟨(18764968277/40000000000 : ℚ), (-1980533389/5000000000 : ℚ), (40029468327/250000000000 : ℚ), 2⟩,
    ⟨(7342227081/15625000000 : ℚ), (-798959227/2000000000 : ℚ), (80850754839/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-999749523/2500000000 : ℚ), (80949490589/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (58370825859/200000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control410.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control410.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate410

-- Control411
namespace DiagonalRamsey.JointInheritedCertificate411
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63153270879/200000000000 : ℚ), (294434363589/200000000 : ℚ), (-232854448853509/500000000000 : ℚ), 12⟩,
    ⟨(158278353853/500000000000 : ℚ), (321848549913/2000000000 : ℚ), (-25735155551431/500000000000 : ℚ), 9⟩,
    ⟨(63625960559/200000000000 : ℚ), (35257586183/625000000 : ℚ), (-18331124451437/1000000000000 : ℚ), 7⟩,
    ⟨(64094097979/200000000000 : ℚ), (277942381427/10000000000 : ℚ), (-9200812887103/1000000000000 : ℚ), 6⟩,
    ⟨(32355622691/100000000000 : ℚ), (16116283113/1000000000 : ℚ), (-5443338533063/1000000000000 : ℚ), 6⟩,
    ⟨(163678648253/500000000000 : ℚ), (320847153/31250000 : ℚ), (-442644460941/125000000000 : ℚ), 5⟩,
    ⟨(66367418461/200000000000 : ℚ), (69448209641/10000000000 : ℚ), (-152934798181/62500000000 : ℚ), 5⟩,
    ⟨(13478098857/40000000000 : ℚ), (1955945543/400000000 : ℚ), (-880141354779/500000000000 : ℚ), 4⟩,
    ⟨(342654169967/1000000000000 : ℚ), (35379248731/10000000000 : ℚ), (-1301203579389/1000000000000 : ℚ), 4⟩,
    ⟨(174443638729/500000000000 : ℚ), (13029528593/5000000000 : ℚ), (-489573677647/500000000000 : ℚ), 4⟩,
    ⟨(355591765667/1000000000000 : ℚ), (19393215621/10000000000 : ℚ), (-9306162409/12500000000 : ℚ), 3⟩,
    ⟨(72540613341/200000000000 : ℚ), (7241018857/5000000000 : ℚ), (-284104721829/500000000000 : ℚ), 3⟩,
    ⟨(370152694857/1000000000000 : ℚ), (10773711793/10000000000 : ℚ), (-216198708559/500000000000 : ℚ), 3⟩,
    ⟨(94467226533/250000000000 : ℚ), (3957611117/5000000000 : ℚ), (-162769170439/500000000000 : ℚ), 3⟩,
    ⟨(96444347299/250000000000 : ℚ), (177272349/312500000 : ℚ), (-4799035049/20000000000 : ℚ), 3⟩,
    ⟨(78760396207/200000000000 : ℚ), (485834629/1250000000 : ℚ), (-17036131139/100000000000 : ℚ), 3⟩,
    ⟨(200932700221/500000000000 : ℚ), (1222786553/5000000000 : ℚ), (-4521981127/40000000000 : ℚ), 3⟩,
    ⟨(409889992281/1000000000000 : ℚ), (15871883/125000000 : ℚ), (-65340343481/1000000000000 : ℚ), 3⟩,
    ⟨(83559695069/200000000000 : ℚ), (60257329/2000000000 : ℚ), (-6317969899/250000000000 : ℚ), 3⟩,
    ⟨(425514686619/1000000000000 : ℚ), (-50259787/1000000000 : ℚ), (861653033/100000000000 : ℚ), 2⟩,
    ⟨(108241078693/250000000000 : ℚ), (-1173916903/10000000000 : ℚ), (37426485237/1000000000000 : ℚ), 2⟩,
    ⟨(44007561581/100000000000 : ℚ), (-347379057/2000000000 : ℚ), (30998772843/500000000000 : ℚ), 2⟩,
    ⟨(223390052009/500000000000 : ℚ), (-2210030391/10000000000 : ℚ), (82974822633/1000000000000 : ℚ), 2⟩,
    ⟨(45301321151/100000000000 : ℚ), (-2607545217/10000000000 : ℚ), (100856928521/1000000000000 : ℚ), 2⟩,
    ⟨(114678727513/250000000000 : ℚ), (-2940428079/10000000000 : ℚ), (5801528193/50000000000 : ℚ), 2⟩,
    ⟨(463830289171/1000000000000 : ℚ), (-100537071/312500000 : ℚ), (402486977/3125000000 : ℚ), 2⟩,
    ⟨(46831008497/100000000000 : ℚ), (-861099551/2500000000 : ℚ), (139385003151/1000000000000 : ℚ), 2⟩,
    ⟨(236055577283/500000000000 : ℚ), (-906780221/2500000000 : ℚ), (73988269069/500000000000 : ℚ), 2⟩,
    ⟨(237598445791/500000000000 : ℚ), (-3769191451/10000000000 : ℚ), (38676407181/250000000000 : ℚ), 2⟩,
    ⟨(238768789341/500000000000 : ℚ), (-3873449213/10000000000 : ℚ), (3991801739/25000000000 : ℚ), 2⟩,
    ⟨(47911067377/100000000000 : ℚ), (-985474079/2500000000 : ℚ), (162946042901/1000000000000 : ℚ), 2⟩,
    ⟨(239950513541/500000000000 : ℚ), (-3975809257/10000000000 : ℚ), (16457218619/100000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3980033979/10000000000 : ℚ), (164774951951/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (71549734621/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control411.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control411.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate411

-- Control412
namespace DiagonalRamsey.JointInheritedCertificate412
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(222015717737/1000000000000 : ℚ), (829937980627/625000000 : ℚ), (-295405295861969/1000000000000 : ℚ), 12⟩,
    ⟨(111315812823/500000000000 : ℚ), (724881786343/5000000000 : ℚ), (-16321702751719/500000000000 : ℚ), 9⟩,
    ⟨(44771501987/200000000000 : ℚ), (507293399079/10000000000 : ℚ), (-11622273924809/1000000000000 : ℚ), 7⟩,
    ⟨(225681564667/1000000000000 : ℚ), (249386681749/10000000000 : ℚ), (-1166101574077/200000000000 : ℚ), 6⟩,
    ⟨(285107779/1250000000 : ℚ), (144231704619/10000000000 : ℚ), (-344680597697/100000000000 : ℚ), 6⟩,
    ⟨(46209665471/200000000000 : ℚ), (18322753479/2000000000 : ℚ), (-2239902454179/1000000000000 : ℚ), 5⟩,
    ⟨(234539350451/1000000000000 : ℚ), (30879280469/5000000000 : ℚ), (-193183161321/125000000000 : ℚ), 5⟩,
    ⟨(59631418007/250000000000 : ℚ), (8662276781/2000000000 : ℚ), (-221894997359/200000000000 : ℚ), 4⟩,
    ⟨(242968901629/1000000000000 : ℚ), (3118683071/1000000000 : ℚ), (-817799659889/1000000000000 : ℚ), 4⟩,
    ⟨(61956562131/250000000000 : ℚ), (11417422237/5000000000 : ℚ), (-612989918979/1000000000000 : ℚ), 4⟩,
    ⟨(15815683363/62500000000 : ℚ), (4216163913/2500000000 : ℚ), (-231786600301/500000000000 : ℚ), 3⟩,
    ⟨(32324080113/125000000000 : ℚ), (2493375443/2000000000 : ℚ), (-21946145209/62500000000 : ℚ), 3⟩,
    ⟨(52879600029/200000000000 : ℚ), (914551141/1000000000 : ℚ), (-132167954199/500000000000 : ℚ), 3⟩,
    ⟨(67602775687/250000000000 : ℚ), (20573701/31250000 : ℚ), (-195864677873/1000000000000 : ℚ), 3⟩,
    ⟨(138287019623/500000000000 : ℚ), (4571384511/10000000000 : ℚ), (-1760732477/12500000000 : ℚ), 3⟩,
    ⟨(282827457193/1000000000000 : ℚ), (1483040587/5000000000 : ℚ), (-23994307967/250000000000 : ℚ), 3⟩,
    ⟨(57822226551/200000000000 : ℚ), (416994823/2500000000 : ℚ), (-11773901789/200000000000 : ℚ), 3⟩,
    ⟨(147682275351/500000000000 : ℚ), (606024369/10000000000 : ℚ), (-27845444081/1000000000000 : ℚ), 3⟩,
    ⟨(301527487201/1000000000000 : ℚ), (-16958557/625000000 : ℚ), (-417116661/250000000000 : ℚ), 3⟩,
    ⟨(307540589803/1000000000000 : ℚ), (-200416673/2000000000 : ℚ), (20579776831/1000000000000 : ℚ), 3⟩,
    ⟨(78336487261/250000000000 : ℚ), (-1614558527/10000000000 : ℚ), (1583588297/40000000000 : ℚ), 2⟩,
    ⟨(318887656141/1000000000000 : ℚ), (-2130146427/10000000000 : ℚ), (55885494051/1000000000000 : ℚ), 2⟩,
    ⟨(20257021339/62500000000 : ℚ), (-2565124449/10000000000 : ℚ), (69868066899/1000000000000 : ℚ), 2⟩,
    ⟨(328969688319/1000000000000 : ℚ), (-293196839/1000000000 : ℚ), (81845676787/1000000000000 : ℚ), 2⟩,
    ⟨(2083830737/6250000000 : ℚ), (-3240285529/10000000000 : ℚ), (92055975683/1000000000000 : ℚ), 2⟩,
    ⟨(337399239497/1000000000000 : ℚ), (-1748745151/5000000000 : ℚ), (25170551967/250000000000 : ℚ), 2⟩,
    ⟨(340890262593/1000000000000 : ℚ), (-3709298673/10000000000 : ℚ), (26966307991/250000000000 : ℚ), 2⟩,
    ⟨(343852366749/1000000000000 : ℚ), (-3880092381/10000000000 : ℚ), (14214065687/125000000000 : ℚ), 2⟩,
    ⟨(346257025281/1000000000000 : ℚ), (-802637587/2000000000 : ℚ), (59152477001/500000000000 : ℚ), 2⟩,
    ⟨(348081080013/1000000000000 : ℚ), (-16444137/40000000 : ℚ), (60850917817/500000000000 : ℚ), 2⟩,
    ⟨(174653482151/500000000000 : ℚ), (-2087677647/5000000000 : ℚ), (24788932081/200000000000 : ℚ), 2⟩,
    ⟨(87480718053/250000000000 : ℚ), (-4207248881/10000000000 : ℚ), (125059706367/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4211223211/10000000000 : ℚ), (978115567/7812500000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (358213080551/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control412.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control412.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate412

-- Control413
namespace DiagonalRamsey.JointInheritedCertificate413
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(121488328757/500000000000 : ℚ), (6787413470851/5000000000 : ℚ), (-33048397472747/100000000000 : ℚ), 12⟩,
    ⟨(243636064739/1000000000000 : ℚ), (1482461661063/10000000000 : ℚ), (-18260491187783/500000000000 : ℚ), 9⟩,
    ⟨(244948528737/1000000000000 : ℚ), (518943396993/10000000000 : ℚ), (-13003771907613/1000000000000 : ℚ), 7⟩,
    ⟨(123450704881/500000000000 : ℚ), (12761986027/500000000 : ℚ), (-652432225809/100000000000 : ℚ), 6⟩,
    ⟨(124737950251/500000000000 : ℚ), (147701370659/10000000000 : ℚ), (-771527191279/200000000000 : ℚ), 6⟩,
    ⟨(50529441441/200000000000 : ℚ), (93879270301/10000000000 : ℚ), (-501499987601/200000000000 : ℚ), 5⟩,
    ⟨(64096197113/250000000000 : ℚ), (7916725673/1250000000 : ℚ), (-1730697136321/1000000000000 : ℚ), 5⟩,
    ⟨(130326324647/500000000000 : ℚ), (4445583623/1000000000 : ℚ), (-621522294433/500000000000 : ℚ), 4⟩,
    ⟨(265409687897/1000000000000 : ℚ), (3204559201/1000000000 : ℚ), (-458428741659/500000000000 : ℚ), 4⟩,
    ⟨(13530504569/50000000000 : ℚ), (5873851591/2500000000 : ℚ), (-343931998431/500000000000 : ℚ), 4⟩,
    ⟨(276203777013/1000000000000 : ℚ), (8691455019/5000000000 : ℚ), (-65106692471/125000000000 : ℚ), 3⟩,
    ⟨(282136874547/1000000000000 : ℚ), (2576038891/2000000000 : ℚ), (-98806920983/250000000000 : ℚ), 3⟩,
    ⟨(288352245009/1000000000000 : ℚ), (9479811997/10000000000 : ℚ), (-298288172657/1000000000000 : ℚ), 3⟩,
    ⟨(294790030983/1000000000000 : ℚ), (685739379/1000000000 : ℚ), (-221865364651/1000000000000 : ℚ), 3⟩,
    ⟨(18836764567/62500000000 : ℚ), (1199568523/2500000000 : ℚ), (-32102773499/200000000000 : ℚ), 3⟩,
    ⟨(154041653491/500000000000 : ℚ), (3156198147/10000000000 : ℚ), (-110494886103/1000000000000 : ℚ), 3⟩,
    ⟨(314810775491/1000000000000 : ℚ), (914520407/5000000000 : ℚ), (-69176335521/1000000000000 : ℚ), 3⟩,
    ⟨(321505849401/1000000000000 : ℚ), (743982867/10000000000 : ℚ), (-6933119353/200000000000 : ℚ), 3⟩,
    ⟨(32810405149/100000000000 : ℚ), (-151836077/10000000000 : ℚ), (-1394302929/250000000000 : ℚ), 3⟩,
    ⟨(41817729683/125000000000 : ℚ), (-897379439/10000000000 : ℚ), (19118339847/1000000000000 : ℚ), 3⟩,
    ⟨(13630288317/40000000000 : ℚ), (-1521743161/10000000000 : ℚ), (40195614493/1000000000000 : ℚ), 2⟩,
    ⟨(346690305459/1000000000000 : ℚ), (-511723271/2500000000 : ℚ), (29121587511/500000000000 : ℚ), 2⟩,
    ⟨(352283991093/1000000000000 : ℚ), (-622390183/2500000000 : ℚ), (73711675969/1000000000000 : ℚ), 2⟩,
    ⟨(14299375783/40000000000 : ℚ), (-114503153/400000000 : ℚ), (86948016273/1000000000000 : ℚ), 2⟩,
    ⟨(362241433179/1000000000000 : ℚ), (-793959077/2500000000 : ℚ), (98220006473/1000000000000 : ℚ), 2⟩,
    ⟨(366509294021/1000000000000 : ℚ), (-3436970121/10000000000 : ℚ), (107734450737/1000000000000 : ℚ), 2⟩,
    ⟨(92561718817/250000000000 : ℚ), (-3651871501/10000000000 : ℚ), (4626022681/40000000000 : ℚ), 2⟩,
    ⟨(373418181971/1000000000000 : ℚ), (-3825059173/10000000000 : ℚ), (3815313623/31250000000 : ℚ), 2⟩,
    ⟨(375992672711/1000000000000 : ℚ), (-3959955087/10000000000 : ℚ), (3973267299/31250000000 : ℚ), 2⟩,
    ⟨(47243194217/125000000000 : ℚ), (-40590871/100000000 : ℚ), (130881480713/1000000000000 : ℚ), 2⟩,
    ⟨(189629008867/500000000000 : ℚ), (-4124235369/10000000000 : ℚ), (66673996577/500000000000 : ℚ), 2⟩,
    ⟨(379917424959/1000000000000 : ℚ), (-4156533759/10000000000 : ℚ), (336434997/2500000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4160558281/10000000000 : ℚ), (134726914019/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (17093898533/50000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control413.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control413.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate413
