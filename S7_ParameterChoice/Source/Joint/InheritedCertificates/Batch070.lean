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

-- Control604
namespace DiagonalRamsey.JointInheritedCertificate604
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(261187127319/1000000000000 : ℚ), (110204479803/78125000 : ℚ), (-46127643719041/125000000000 : ℚ), 12⟩,
    ⟨(261758898999/1000000000000 : ℚ), (771654739249/5000000000 : ℚ), (-10190776828989/250000000000 : ℚ), 9⟩,
    ⟨(65724233971/250000000000 : ℚ), (135381821397/2500000000 : ℚ), (-7251152848057/500000000000 : ℚ), 8⟩,
    ⟨(264590278057/1000000000000 : ℚ), (53400290041/2000000000 : ℚ), (-7266986016833/1000000000000 : ℚ), 7⟩,
    ⟨(66705654427/250000000000 : ℚ), (38713850961/2500000000 : ℚ), (-857852653169/200000000000 : ℚ), 6⟩,
    ⟨(134786228093/500000000000 : ℚ), (19721325129/2000000000 : ℚ), (-2781705947407/1000000000000 : ℚ), 6⟩,
    ⟨(136406655521/500000000000 : ℚ), (66604187983/10000000000 : ℚ), (-239298875673/125000000000 : ℚ), 5⟩,
    ⟨(276513971073/1000000000000 : ℚ), (23385389499/5000000000 : ℚ), (-1369982244193/1000000000000 : ℚ), 5⟩,
    ⟨(280638796899/1000000000000 : ℚ), (3369350043/1000000000 : ℚ), (-1005898986613/1000000000000 : ℚ), 4⟩,
    ⟨(142574032097/500000000000 : ℚ), (986227943/400000000 : ℚ), (-375185523317/500000000000 : ℚ), 4⟩,
    ⟨(289998346247/1000000000000 : ℚ), (454354087/250000000 : ℚ), (-564079258663/1000000000000 : ℚ), 4⟩,
    ⟨(9223216631/31250000000 : ℚ), (3346149687/2500000000 : ℚ), (-84804135297/200000000000 : ℚ), 4⟩,
    ⟨(150266138427/500000000000 : ℚ), (4878271993/5000000000 : ℚ), (-31601354413/100000000000 : ℚ), 4⟩,
    ⟨(306114477897/1000000000000 : ℚ), (1737597383/2500000000 : ℚ), (-230932452397/1000000000000 : ℚ), 3⟩,
    ⟨(311835775673/1000000000000 : ℚ), (1185245049/2500000000 : ℚ), (-162693554423/1000000000000 : ℚ), 3⟩,
    ⟨(158820535479/500000000000 : ℚ), (2974605967/10000000000 : ℚ), (-53559151283/500000000000 : ℚ), 3⟩,
    ⟨(10108576737/31250000000 : ℚ), (1543699501/10000000000 : ℚ), (-14956959/244140625 : ℚ), 3⟩,
    ⟨(329279750869/1000000000000 : ℚ), (46422617/1250000000 : ℚ), (-2876545981/125000000000 : ℚ), 3⟩,
    ⟨(67000209729/200000000000 : ℚ), (-598293493/10000000000 : ℚ), (4593384257/500000000000 : ℚ), 3⟩,
    ⟨(42572906211/125000000000 : ℚ), (-140666047/1000000000 : ℚ), (3648717909/100000000000 : ℚ), 3⟩,
    ⟨(345972594349/1000000000000 : ℚ), (-83386431/400000000 : ℚ), (59757392973/1000000000000 : ℚ), 3⟩,
    ⟨(175558590147/500000000000 : ℚ), (-663925919/2500000000 : ℚ), (39828959849/500000000000 : ℚ), 3⟩,
    ⟨(88991865587/250000000000 : ℚ), (-784413461/2500000000 : ℚ), (48347438749/500000000000 : ℚ), 3⟩,
    ⟨(180238364821/500000000000 : ℚ), (-3544233891/10000000000 : ℚ), (111258088823/1000000000000 : ℚ), 3⟩,
    ⟨(364601555469/1000000000000 : ℚ), (-971507467/2500000000 : ℚ), (61824305349/500000000000 : ℚ), 3⟩,
    ⟨(736604431/2000000000 : ℚ), (-834244369/2000000000 : ℚ), (134098937093/1000000000000 : ℚ), 3⟩,
    ⟨(92885767589/250000000000 : ℚ), (-22030603/50000000 : ℚ), (71394009599/500000000000 : ℚ), 3⟩,
    ⟨(374292908833/1000000000000 : ℚ), (-4595564881/10000000000 : ℚ), (14985253907/100000000000 : ℚ), 3⟩,
    ⟨(94131312121/250000000000 : ℚ), (-2371608151/5000000000 : ℚ), (155395408903/1000000000000 : ℚ), 3⟩,
    ⟨(189109295329/500000000000 : ℚ), (-4851777167/10000000000 : ℚ), (7974607523/50000000000 : ℚ), 3⟩,
    ⟨(379356627543/1000000000000 : ℚ), (-4923148533/10000000000 : ℚ), (81097798751/500000000000 : ℚ), 3⟩,
    ⟨(379928399223/1000000000000 : ℚ), (-4958540191/10000000000 : ℚ), (163539213861/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-4962950527/10000000000 : ℚ), (163706790803/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (379742027731/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control604.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control604.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate604

-- Control605
namespace DiagonalRamsey.JointInheritedCertificate605
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276144569027/1000000000000 : ℚ), (7153623884349/5000000000 : ℚ), (-395707107955247/1000000000000 : ℚ), 12⟩,
    ⟨(27674060737/100000000000 : ℚ), (391385201123/2500000000 : ℚ), (-5464000980257/125000000000 : ℚ), 9⟩,
    ⟨(138963471941/500000000000 : ℚ), (274726053449/5000000000 : ℚ), (-3110450461767/200000000000 : ℚ), 8⟩,
    ⟨(69923038373/250000000000 : ℚ), (270985864691/10000000000 : ℚ), (-1558753020523/200000000000 : ℚ), 7⟩,
    ⟨(70504809067/250000000000 : ℚ), (157219558071/10000000000 : ℚ), (-4600762418069/1000000000000 : ℚ), 6⟩,
    ⟨(28488578113/100000000000 : ℚ), (50075987371/5000000000 : ℚ), (-1492123595329/500000000000 : ℚ), 6⟩,
    ⟨(72066045421/250000000000 : ℚ), (67679992019/10000000000 : ℚ), (-1027141257107/500000000000 : ℚ), 5⟩,
    ⟨(146060951043/500000000000 : ℚ), (4755336913/1000000000 : ℚ), (-1470584563003/1000000000000 : ℚ), 5⟩,
    ⟨(296421790381/1000000000000 : ℚ), (274251891/80000000 : ℚ), (-540130950813/500000000000 : ℚ), 4⟩,
    ⟨(75280609073/250000000000 : ℚ), (5021708983/2000000000 : ℚ), (-403176977203/500000000000 : ℚ), 4⟩,
    ⟨(30617857003/100000000000 : ℚ), (3705973481/2000000000 : ℚ), (-75837208279/125000000000 : ℚ), 4⟩,
    ⟨(311541498263/1000000000000 : ℚ), (13668577851/10000000000 : ℚ), (-228312976531/500000000000 : ℚ), 4⟩,
    ⟨(317159573061/1000000000000 : ℚ), (4993220583/5000000000 : ℚ), (-340930685573/1000000000000 : ℚ), 4⟩,
    ⟨(322978689293/1000000000000 : ℚ), (7138827267/10000000000 : ℚ), (-124912800217/500000000000 : ℚ), 3⟩,
    ⟨(328942805687/1000000000000 : ℚ), (4897217581/10000000000 : ℚ), (-176785823359/1000000000000 : ℚ), 3⟩,
    ⟨(334994484543/1000000000000 : ℚ), (194098569/625000000 : ℚ), (-23465889029/200000000000 : ℚ), 3⟩,
    ⟨(68215088977/200000000000 : ℚ), (827343689/5000000000 : ℚ), (-68299355961/1000000000000 : ℚ), 3⟩,
    ⟨(347127123741/1000000000000 : ℚ), (116617069/2500000000 : ℚ), (-27423658761/1000000000000 : ℚ), 3⟩,
    ⟨(44136405017/125000000000 : ℚ), (-515914313/10000000000 : ℚ), (174058383/25000000000 : ℚ), 3⟩,
    ⟨(358910356367/1000000000000 : ℚ), (-266893827/2000000000 : ℚ), (36097029917/1000000000000 : ℚ), 3⟩,
    ⟨(72905686233/200000000000 : ℚ), (-1010325909/5000000000 : ℚ), (15228327261/250000000000 : ℚ), 3⟩,
    ⟨(369891359399/1000000000000 : ℚ), (-2598270891/10000000000 : ℚ), (16424200051/200000000000 : ℚ), 3⟩,
    ⟨(374947493137/1000000000000 : ℚ), (-3085503639/10000000000 : ℚ), (100264353929/1000000000000 : ℚ), 3⟩,
    ⟨(47456017381/125000000000 : ℚ), (-437039893/1250000000 : ℚ), (28940716659/250000000000 : ℚ), 3⟩,
    ⟨(191974013671/500000000000 : ℚ), (-3841498547/10000000000 : ℚ), (64470387607/500000000000 : ℚ), 3⟩,
    ⟨(12118929617/31250000000 : ℚ), (-2064688227/5000000000 : ℚ), (17506087003/125000000000 : ℚ), 3⟩,
    ⟨(391184148299/1000000000000 : ℚ), (-2183192827/5000000000 : ℚ), (5971188353/40000000000 : ℚ), 3⟩,
    ⟨(394050693161/1000000000000 : ℚ), (-2278730213/5000000000 : ℚ), (3919535683/25000000000 : ℚ), 3⟩,
    ⟨(6193402749/15625000000 : ℚ), (-4706336003/10000000000 : ℚ), (81332548829/500000000000 : ℚ), 3⟩,
    ⟨(398142985547/1000000000000 : ℚ), (-96315397/200000000 : ℚ), (41753106939/250000000000 : ℚ), 3⟩,
    ⟨(199664661029/500000000000 : ℚ), (-4887702297/10000000000 : ℚ), (33976124387/200000000000 : ℚ), 3⟩,
    ⟨(399925360401/1000000000000 : ℚ), (-4923368337/10000000000 : ℚ), (171305932843/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-2463906343/5000000000 : ℚ), (171483690213/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (14678973227/40000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control605.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control605.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate605

-- Control606
namespace DiagonalRamsey.JointInheritedCertificate606
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(122630081813/500000000000 : ℚ), (15027315504313/10000000000 : ℚ), (-369110390986487/1000000000000 : ℚ), 12⟩,
    ⟨(245764210627/1000000000000 : ℚ), (1644706364077/10000000000 : ℚ), (-636939729297/15625000000 : ℚ), 9⟩,
    ⟨(246767450381/1000000000000 : ℚ), (36084023673/625000000 : ℚ), (-14496265698161/1000000000000 : ℚ), 8⟩,
    ⟨(12413011057/50000000000 : ℚ), (1779690057/62500000 : ℚ), (-3629486440721/500000000000 : ℚ), 7⟩,
    ⟨(250228146707/1000000000000 : ℚ), (165168634019/10000000000 : ℚ), (-428041151923/100000000000 : ℚ), 6⟩,
    ⟨(252652274881/1000000000000 : ℚ), (105155572199/10000000000 : ℚ), (-2772401425669/1000000000000 : ℚ), 6⟩,
    ⟨(51101851997/200000000000 : ℚ), (70987737801/10000000000 : ℚ), (-476199209753/250000000000 : ℚ), 5⟩,
    ⟨(258771587689/1000000000000 : ℚ), (12448830267/2500000000 : ℚ), (-1328297481/976562500 : ℚ), 5⟩,
    ⟨(262407839993/1000000000000 : ℚ), (17904667501/5000000000 : ℚ), (-995922134409/1000000000000 : ℚ), 4⟩,
    ⟨(133191498901/500000000000 : ℚ), (26133870147/10000000000 : ℚ), (-185061073801/250000000000 : ℚ), 4⟩,
    ⟨(67664694543/250000000000 : ℚ), (959375079/500000000 : ℚ), (-110762759149/200000000000 : ℚ), 4⟩,
    ⟨(275194003/1000000000 : ℚ), (2809693423/2000000000 : ℚ), (-16544879209/40000000000 : ℚ), 4⟩,
    ⟨(34993124449/125000000000 : ℚ), (1268859209/1250000000 : ℚ), (-305483813669/1000000000000 : ℚ), 4⟩,
    ⟨(284866001293/1000000000000 : ℚ), (7132310901/10000000000 : ℚ), (-220272040863/1000000000000 : ℚ), 4⟩,
    ⟨(9059675879/31250000000 : ℚ), (2376211947/5000000000 : ℚ), (-151901875737/1000000000000 : ℚ), 3⟩,
    ⟨(73756825803/250000000000 : ℚ), (1423533227/5000000000 : ℚ), (-48097222953/500000000000 : ℚ), 3⟩,
    ⟨(150084870269/500000000000 : ℚ), (1301325901/10000000000 : ℚ), (-50206879109/1000000000000 : ℚ), 3⟩,
    ⟨(305287415623/1000000000000 : ℚ), (33043729/10000000000 : ℚ), (-738890373/62500000000 : ℚ), 3⟩,
    ⟨(310331042457/1000000000000 : ℚ), (-1017583847/10000000000 : ℚ), (10254890969/500000000000 : ℚ), 3⟩,
    ⟨(157626024079/500000000000 : ℚ), (-23684463/125000000 : ℚ), (9588344639/200000000000 : ℚ), 3⟩,
    ⟨(320003040751/1000000000000 : ℚ), (-1315782903/5000000000 : ℚ), (7134097211/100000000000 : ℚ), 3⟩,
    ⟨(324538265579/1000000000000 : ℚ), (-3253047229/10000000000 : ℚ), (91366763599/1000000000000 : ℚ), 3⟩,
    ⟨(328814045949/1000000000000 : ℚ), (-1889153623/5000000000 : ℚ), (108523840641/1000000000000 : ℚ), 3⟩,
    ⟨(332789203757/1000000000000 : ℚ), (-1055504791/2500000000 : ℚ), (123200590269/1000000000000 : ℚ), 3⟩,
    ⟨(168212728031/500000000000 : ℚ), (-2297749337/5000000000 : ℚ), (67848307841/500000000000 : ℚ), 3⟩,
    ⟨(169843891883/500000000000 : ℚ), (-4907485543/10000000000 : ℚ), (73121490559/500000000000 : ℚ), 3⟩,
    ⟨(342544768869/1000000000000 : ℚ), (-2582359177/5000000000 : ℚ), (155017274449/1000000000000 : ℚ), 3⟩,
    ⟨(86242224261/250000000000 : ℚ), (-2686180169/5000000000 : ℚ), (162154921513/1000000000000 : ℚ), 3⟩,
    ⟨(34693682261/100000000000 : ℚ), (-345894737/625000000 : ℚ), (20969715403/125000000000 : ℚ), 3⟩,
    ⟨(34842959337/100000000000 : ℚ), (-5653464033/10000000000 : ℚ), (85950134459/500000000000 : ℚ), 3⟩,
    ⟨(87358208281/250000000000 : ℚ), (-2865914657/5000000000 : ℚ), (43658666733/250000000000 : ℚ), 3⟩,
    ⟨(2799495041/8000000000 : ℚ), (-1154139829/2000000000 : ℚ), (43998471161/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2887771693/5000000000 : ℚ), (44040854449/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (380171309909/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control606.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control606.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate606

-- Control607
namespace DiagonalRamsey.JointInheritedCertificate607
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(283208991627/1000000000000 : ℚ), (15563106124627/10000000000 : ℚ), (-441398191585107/1000000000000 : ℚ), 12⟩,
    ⟨(56754206669/200000000000 : ℚ), (851978164709/5000000000 : ℚ), (-24375616292277/500000000000 : ℚ), 9⟩,
    ⟨(28488970401/100000000000 : ℚ), (59847350721/1000000000 : ℚ), (-4334831327657/250000000000 : ℚ), 8⟩,
    ⟨(57310846043/200000000000 : ℚ), (295379889607/10000000000 : ℚ), (-1085604146813/125000000000 : ℚ), 7⟩,
    ⟨(14437429083/50000000000 : ℚ), (17148062999/1000000000 : ℚ), (-1024619988913/200000000000 : ℚ), 6⟩,
    ⟨(145725812771/500000000000 : ℚ), (27321396343/2500000000 : ℚ), (-3319929619531/1000000000000 : ℚ), 6⟩,
    ⟨(294637330071/1000000000000 : ℚ), (73866368489/10000000000 : ℚ), (-2282606471193/1000000000000 : ℚ), 5⟩,
    ⟨(298275015171/1000000000000 : ℚ), (25946196887/5000000000 : ℚ), (-1631547124603/1000000000000 : ℚ), 5⟩,
    ⟨(151164823973/500000000000 : ℚ), (18693793007/5000000000 : ℚ), (-47848096543/40000000000 : ℚ), 4⟩,
    ⟨(153381090033/500000000000 : ℚ), (6837934187/2500000000 : ℚ), (-890723161571/1000000000000 : ℚ), 4⟩,
    ⟨(155764961911/500000000000 : ℚ), (2518278167/1250000000 : ℚ), (-167019088289/250000000000 : ℚ), 4⟩,
    ⟨(316586963237/1000000000000 : ℚ), (2963155091/2000000000 : ℚ), (-500745433149/1000000000000 : ℚ), 4⟩,
    ⟨(321884596257/1000000000000 : ℚ), (673361389/625000000 : ℚ), (-371765105139/1000000000000 : ℚ), 4⟩,
    ⟨(327371803779/1000000000000 : ℚ), (7644461701/10000000000 : ℚ), (-67554503779/250000000000 : ℚ), 4⟩,
    ⟨(83248935249/250000000000 : ℚ), (5178499931/10000000000 : ℚ), (-94412390977/500000000000 : ℚ), 3⟩,
    ⟨(169351123159/500000000000 : ℚ), (1602778917/5000000000 : ℚ), (-7661555131/62500000000 : ℚ), 3⟩,
    ⟨(172218181489/500000000000 : ℚ), (160632479/1000000000 : ℚ), (-67975569107/1000000000000 : ℚ), 3⟩,
    ⟨(3501428683/10000000000 : ℚ), (14772257/500000000 : ℚ), (-449230947/20000000000 : ℚ), 3⟩,
    ⟨(88941701379/250000000000 : ℚ), (-98657089/1250000000 : ℚ), (15815113301/1000000000000 : ℚ), 3⟩,
    ⟨(361254013039/1000000000000 : ℚ), (-846885753/5000000000 : ℚ), (48236770089/1000000000000 : ℚ), 3⟩,
    ⟨(183275823029/500000000000 : ℚ), (-1226280541/5000000000 : ℚ), (75844898453/1000000000000 : ℚ), 3⟩,
    ⟨(185804342737/500000000000 : ℚ), (-1545863303/5000000000 : ℚ), (1242900777/12500000000 : ℚ), 3⟩,
    ⟨(37637642923/100000000000 : ℚ), (-1815603667/5000000000 : ℚ), (59803008911/500000000000 : ℚ), 3⟩,
    ⟨(7616179227/20000000000 : ℚ), (-408633371/1000000000 : ℚ), (68417623469/500000000000 : ℚ), 3⟩,
    ⟨(96215898531/250000000000 : ℚ), (-2234470847/5000000000 : ℚ), (9467615997/62500000000 : ℚ), 3⟩,
    ⟨(48562659903/125000000000 : ℚ), (-2394091629/5000000000 : ℚ), (81912860057/500000000000 : ℚ), 3⟩,
    ⟨(195843491877/500000000000 : ℚ), (-631390313/1250000000 : ℚ), (43520608841/250000000000 : ℚ), 3⟩,
    ⟨(98597506909/250000000000 : ℚ), (-1315794397/2500000000 : ℚ), (1425131239/7812500000 : ℚ), 3⟩,
    ⟨(396584379081/1000000000000 : ℚ), (-2714224651/5000000000 : ℚ), (23619121861/125000000000 : ℚ), 3⟩,
    ⟨(79649781057/200000000000 : ℚ), (-5549964223/10000000000 : ℚ), (193782135341/1000000000000 : ℚ), 3⟩,
    ⟨(399367575951/1000000000000 : ℚ), (-5629851457/10000000000 : ℚ), (196968090993/1000000000000 : ℚ), 3⟩,
    ⟨(99982404417/250000000000 : ℚ), (-5669465823/10000000000 : ℚ), (99275635991/500000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-5674402367/10000000000 : ℚ), (198748716359/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (17331526019/50000000000 : ℚ)
  μ := (2/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control607.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control607.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate607

-- Control608
namespace DiagonalRamsey.JointInheritedCertificate608
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54303004819/250000000000 : ℚ), (835026096279/2000000000 : ℚ), (-91059570192549/1000000000000 : ℚ), 11⟩,
    ⟨(8751957117/40000000000 : ℚ), (220871166097/5000000000 : ℚ), (-9856682956499/1000000000000 : ℚ), 7⟩,
    ⟨(44382352243/200000000000 : ℚ), (14621571511/1000000000 : ℚ), (-419955957837/125000000000 : ℚ), 6⟩,
    ⟨(113215447353/500000000000 : ℚ), (33072911693/5000000000 : ℚ), (-784324589691/500000000000 : ℚ), 5⟩,
    ⟨(46436532127/200000000000 : ℚ), (6778371347/2000000000 : ℚ), (-830538501423/1000000000000 : ℚ), 4⟩,
    ⟨(238946021861/1000000000000 : ℚ), (3591363659/2000000000 : ℚ), (-455844074471/1000000000000 : ℚ), 4⟩,
    ⟨(49292213241/200000000000 : ℚ), (563956143/625000000 : ℚ), (-59840935469/250000000000 : ℚ), 4⟩,
    ⟨(254438994729/1000000000000 : ℚ), (1780420417/5000000000 : ℚ), (-51367782599/500000000000 : ℚ), 3⟩,
    ⟨(262573220113/1000000000000 : ℚ), (1745769/5000000000 : ℚ), (-5436343609/500000000000 : ℚ), 3⟩,
    ⟨(67637787159/250000000000 : ℚ), (-605658219/2500000000 : ℚ), (10749265627/200000000000 : ℚ), 3⟩,
    ⟨(278066192981/1000000000000 : ℚ), (-1032613211/2500000000 : ℚ), (1257071531/12500000000 : ℚ), 3⟩,
    ⟨(284829554207/1000000000000 : ℚ), (-5352512119/10000000000 : ℚ), (134946505739/1000000000000 : ℚ), 3⟩,
    ⟨(58116264027/200000000000 : ℚ), (-6224473827/10000000000 : ℚ), (160027020191/1000000000000 : ℚ), 3⟩,
    ⟨(295100453627/1000000000000 : ℚ), (-1365363467/2000000000 : ℚ), (177663671751/1000000000000 : ℚ), 3⟩,
    ⟨(74553321729/250000000000 : ℚ), (-7206911159/10000000000 : ℚ), (47234685273/250000000000 : ℚ), 3⟩,
    ⟨(149900097783/500000000000 : ℚ), (-1847771229/2500000000 : ℚ), (24305697423/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-185346111/250000000 : ℚ), (48782034391/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (76532652441/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control608.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control608.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate608

-- Control609
namespace DiagonalRamsey.JointInheritedCertificate609
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5107312357/20000000000 : ℚ), (8660594244861/5000000000 : ℚ), (-442897479093749/1000000000000 : ℚ), 13⟩,
    ⟨(255821033651/1000000000000 : ℚ), (948711702403/5000000000 : ℚ), (-24449125978601/500000000000 : ℚ), 9⟩,
    ⟨(5134549587/20000000000 : ℚ), (333385375451/5000000000 : ℚ), (-271533196623/15625000000 : ℚ), 8⟩,
    ⟨(258076225381/1000000000000 : ℚ), (41148849553/1250000000 : ℚ), (-8693768195923/1000000000000 : ℚ), 7⟩,
    ⟨(12992714129/50000000000 : ℚ), (95549368409/5000000000 : ℚ), (-1279922711921/250000000000 : ℚ), 6⟩,
    ⟨(52408905457/200000000000 : ℚ), (7607395873/625000000 : ℚ), (-662042839113/200000000000 : ℚ), 6⟩,
    ⟨(264625866243/1000000000000 : ℚ), (82165407823/10000000000 : ℚ), (-2269204176023/1000000000000 : ℚ), 5⟩,
    ⟨(66893359937/250000000000 : ℚ), (57596781407/10000000000 : ℚ), (-1615770749907/1000000000000 : ℚ), 5⟩,
    ⟨(529021213/1953125000 : ℚ), (8271349053/2000000000 : ℚ), (-294694516341/250000000000 : ℚ), 5⟩,
    ⟨(68612622441/250000000000 : ℚ), (117589727/39062500 : ℚ), (-872082043451/1000000000000 : ℚ), 4⟩,
    ⟨(69578434131/250000000000 : ℚ), (2200939241/1000000000 : ℚ), (-324244270641/500000000000 : ℚ), 4⟩,
    ⟨(282411396157/1000000000000 : ℚ), (4002766833/2500000000 : ℚ), (-120096800273/250000000000 : ℚ), 4⟩,
    ⟨(143352002981/500000000000 : ℚ), (5726886459/5000000000 : ℚ), (-1403021587/4000000000 : ℚ), 4⟩,
    ⟨(1819688911/6250000000 : ℚ), (1979553981/2500000000 : ℚ), (-124319716741/500000000000 : ℚ), 4⟩,
    ⟨(147853618011/500000000000 : ℚ), (320379899/625000000 : ℚ), (-83368152601/500000000000 : ℚ), 3⟩,
    ⟨(300331150251/1000000000000 : ℚ), (1443553497/5000000000 : ℚ), (-2500748031/25000000000 : ℚ), 3⟩,
    ⟨(152488718811/500000000000 : ℚ), (1067974439/10000000000 : ℚ), (-11246821321/250000000000 : ℚ), 3⟩,
    ⟨(309601351851/1000000000000 : ℚ), (-85349699/2000000000 : ℚ), (186702039/200000000000 : ℚ), 3⟩,
    ⟨(157079181057/500000000000 : ℚ), (-416651081/2500000000 : ℚ), (7918887401/200000000000 : ℚ), 3⟩,
    ⟨(318604581911/1000000000000 : ℚ), (-1351524681/5000000000 : ℚ), (36190015577/500000000000 : ℚ), 3⟩,
    ⟨(80724297929/250000000000 : ℚ), (-3574647803/10000000000 : ℚ), (100332572679/1000000000000 : ℚ), 3⟩,
    ⟨(6539897027/20000000000 : ℚ), (-862121593/2000000000 : ℚ), (62122204599/500000000000 : ℚ), 3⟩,
    ⟨(330858098109/1000000000000 : ℚ), (-4933238121/10000000000 : ℚ), (28944466237/200000000000 : ℚ), 3⟩,
    ⟨(334449726817/1000000000000 : ℚ), (-5459682617/10000000000 : ℚ), (81116659921/500000000000 : ℚ), 3⟩,
    ⟨(540376237/1600000000 : ℚ), (-295158441/500000000 : ℚ), (44284407243/250000000000 : ℚ), 3⟩,
    ⟨(34068272163/100000000000 : ℚ), (-1568478797/2500000000 : ℚ), (1897130853/10000000000 : ℚ), 3⟩,
    ⟨(85816015147/250000000000 : ℚ), (-6579800113/10000000000 : ℚ), (8006927133/40000000000 : ℚ), 3⟩,
    ⟨(345454305293/1000000000000 : ℚ), (-6826858549/10000000000 : ℚ), (52170165683/250000000000 : ℚ), 3⟩,
    ⟨(86808090623/250000000000 : ℚ), (-3509825939/5000000000 : ℚ), (215357831821/1000000000000 : ℚ), 3⟩,
    ⟨(348581108523/1000000000000 : ℚ), (-895192759/1250000000 : ℚ), (220294246257/1000000000000 : ℚ), 3⟩,
    ⟨(174743777111/500000000000 : ℚ), (-7254891297/10000000000 : ℚ), (223552442773/1000000000000 : ℚ), 3⟩,
    ⟨(43742871253/125000000000 : ℚ), (-7301201203/10000000000 : ℚ), (56292992343/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1826743263/2500000000 : ℚ), (225373967623/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (345979657679/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control609.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control609.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate609

-- Control610
namespace DiagonalRamsey.JointInheritedCertificate610
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(139373495357/500000000000 : ℚ), (17671904437723/10000000000 : ℚ), (-98645275328443/200000000000 : ℚ), 13⟩,
    ⟨(17452141113/62500000000 : ℚ), (121013317401/625000000 : ℚ), (-10891515274259/200000000000 : ℚ), 9⟩,
    ⟨(280204099347/1000000000000 : ℚ), (340303927129/5000000000 : ℚ), (-19355901416001/1000000000000 : ℚ), 8⟩,
    ⟨(281647175227/1000000000000 : ℚ), (336155119581/10000000000 : ℚ), (-9684814729407/1000000000000 : ℚ), 7⟩,
    ⟨(283549587839/1000000000000 : ℚ), (4880921759/250000000 : ℚ), (-1140940183593/200000000000 : ℚ), 6⟩,
    ⟨(285893015909/1000000000000 : ℚ), (7776754811/625000000 : ℚ), (-368971644309/100000000000 : ℚ), 6⟩,
    ⟨(288654890943/1000000000000 : ℚ), (16811175971/2000000000 : ℚ), (-1265268686641/500000000000 : ℚ), 5⟩,
    ⟨(18238038411/62500000000 : ℚ), (3685968763/625000000 : ℚ), (-1802992989089/1000000000000 : ℚ), 5⟩,
    ⟨(11812952589/40000000000 : ℚ), (10598920361/2500000000 : ℚ), (-1316500685693/1000000000000 : ℚ), 5⟩,
    ⟨(29916663809/100000000000 : ℚ), (15452914481/5000000000 : ℚ), (-48756348171/50000000000 : ℚ), 4⟩,
    ⟨(303300076183/1000000000000 : ℚ), (22642445567/10000000000 : ℚ), (-145262781761/200000000000 : ℚ), 4⟩,
    ⟨(153842160867/500000000000 : ℚ), (3303730657/2000000000 : ℚ), (-539312487231/1000000000000 : ℚ), 4⟩,
    ⟨(156138576031/500000000000 : ℚ), (1483334529/1250000000 : ℚ), (-98791068363/250000000000 : ℚ), 4⟩,
    ⟨(317034335701/1000000000000 : ℚ), (4129234897/5000000000 : ℚ), (-70417296471/250000000000 : ℚ), 4⟩,
    ⟨(80477514593/250000000000 : ℚ), (2704926727/5000000000 : ℚ), (-190692464971/1000000000000 : ℚ), 3⟩,
    ⟨(326857364199/1000000000000 : ℚ), (781630313/2500000000 : ℚ), (-116645946319/1000000000000 : ℚ), 3⟩,
    ⟨(82957151981/250000000000 : ℚ), (636133717/5000000000 : ℚ), (-27796458233/500000000000 : ℚ), 3⟩,
    ⟨(336775913751/1000000000000 : ℚ), (-250430227/10000000000 : ℚ), (-470022387/100000000000 : ℚ), 3⟩,
    ⟨(341651636421/1000000000000 : ℚ), (-756333749/5000000000 : ℚ), (4763525453/125000000000 : ℚ), 3⟩,
    ⟨(17320441003/50000000000 : ℚ), (-1283536903/5000000000 : ℚ), (74376834731/1000000000000 : ℚ), 3⟩,
    ⟨(351001650389/1000000000000 : ℚ), (-690622533/2000000000 : ℚ), (105269036411/1000000000000 : ℚ), 3⟩,
    ⟨(17769294797/50000000000 : ℚ), (-4200690367/10000000000 : ℚ), (6583492333/50000000000 : ℚ), 3⟩,
    ⟨(22469958377/62500000000 : ℚ), (-2416331071/5000000000 : ℚ), (77128809677/500000000000 : ℚ), 3⟩,
    ⟨(181681078699/500000000000 : ℚ), (-5366603933/10000000000 : ℚ), (173554926567/1000000000000 : ℚ), 3⟩,
    ⟨(183438678773/500000000000 : ℚ), (-5816085007/10000000000 : ℚ), (189965354601/1000000000000 : ℚ), 3⟩,
    ⟨(370031081179/1000000000000 : ℚ), (-3095797419/5000000000 : ℚ), (203800525259/1000000000000 : ℚ), 3⟩,
    ⟨(186396478107/500000000000 : ℚ), (-6501225931/10000000000 : ℚ), (43060041013/200000000000 : ℚ), 3⟩,
    ⟨(375136384283/1000000000000 : ℚ), (-6751180957/10000000000 : ℚ), (112323710737/500000000000 : ℚ), 3⟩,
    ⟨(75407759379/200000000000 : ℚ), (-3473075297/5000000000 : ℚ), (231979878897/1000000000000 : ℚ), 3⟩,
    ⟨(15139274911/40000000000 : ℚ), (-3544796859/5000000000 : ℚ), (59349636583/250000000000 : ℚ), 3⟩,
    ⟨(189725857157/500000000000 : ℚ), (-7183941491/10000000000 : ℚ), (240974000561/1000000000000 : ℚ), 3⟩,
    ⟨(11873093169/31250000000 : ℚ), (-1807684963/2500000000 : ℚ), (242750910911/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-226142883/312500000 : ℚ), (242972524473/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (162118803929/500000000000 : ℚ)
  μ := (19/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control610.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control610.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate610

-- Control611
namespace DiagonalRamsey.JointInheritedCertificate611
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(96558065911/500000000000 : ℚ), (1046627999317/2000000000 : ℚ), (-405515679467/4000000000 : ℚ), 11⟩,
    ⟨(97103250741/500000000000 : ℚ), (277410444841/5000000000 : ℚ), (-5469481193763/500000000000 : ℚ), 8⟩,
    ⟨(49086334627/250000000000 : ℚ), (45899505913/2500000000 : ℚ), (-1851423189861/500000000000 : ℚ), 6⟩,
    ⟨(199450448593/1000000000000 : ℚ), (82628476723/10000000000 : ℚ), (-53377565533/31250000000 : ℚ), 5⟩,
    ⟨(203402504097/1000000000000 : ℚ), (41749499017/10000000000 : ℚ), (-177193128597/200000000000 : ℚ), 5⟩,
    ⟨(208049629743/1000000000000 : ℚ), (21433202007/10000000000 : ℚ), (-468595811067/1000000000000 : ℚ), 4⟩,
    ⟨(213213239099/1000000000000 : ℚ), (1993861913/2000000000 : ℚ), (-56856547061/250000000000 : ℚ), 4⟩,
    ⟨(109347448777/500000000000 : ℚ), (728005667/2500000000 : ℚ), (-469862559/6250000000 : ℚ), 4⟩,
    ⟨(112141974023/500000000000 : ℚ), (-1715400771/10000000000 : ℚ), (3403684789/125000000000 : ℚ), 4⟩,
    ⟨(229765606501/1000000000000 : ℚ), (-611563821/1250000000 : ℚ), (99311642533/1000000000000 : ℚ), 3⟩,
    ⟨(234929215857/1000000000000 : ℚ), (-3571667101/5000000000 : ℚ), (757922807/5000000000 : ℚ), 3⟩,
    ⟨(239576341503/1000000000000 : ℚ), (-4381776171/5000000000 : ℚ), (47503113787/250000000000 : ℚ), 3⟩,
    ⟨(243528397007/1000000000000 : ℚ), (-9925748453/10000000000 : ℚ), (4361599939/20000000000 : ℚ), 3⟩,
    ⟨(61658376773/250000000000 : ℚ), (-335379813/312500000 : ℚ), (237841308657/1000000000000 : ℚ), 3⟩,
    ⟨(124386172059/500000000000 : ℚ), (-2810682553/2500000000 : ℚ), (62621958091/250000000000 : ℚ), 3⟩,
    ⟨(124931356889/500000000000 : ℚ), (-897707/781250 : ℚ), (256668825389/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-360040977/312500000 : ℚ), (51487031273/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (368994744399/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control611.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control611.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate611
