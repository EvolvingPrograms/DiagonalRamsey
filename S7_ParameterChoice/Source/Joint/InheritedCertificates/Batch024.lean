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

-- Control213
namespace DiagonalRamsey.JointInheritedCertificate213
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(315639199479/1000000000000 : ℚ), (13417276905911/10000000000 : ℚ), (-424456765843459/1000000000000 : ℚ), 11⟩,
    ⟨(316622659567/1000000000000 : ℚ), (1463472654053/10000000000 : ℚ), (-46931518091491/1000000000000 : ℚ), 8⟩,
    ⟨(318580108483/1000000000000 : ℚ), (511564944253/10000000000 : ℚ), (-669178163949/40000000000 : ℚ), 7⟩,
    ⟨(12859707797/40000000000 : ℚ), (125650271921/5000000000 : ℚ), (-8408417133617/1000000000000 : ℚ), 6⟩,
    ⟨(162666184547/500000000000 : ℚ), (72656885841/5000000000 : ℚ), (-2492024332111/500000000000 : ℚ), 5⟩,
    ⟨(82515538207/250000000000 : ℚ), (23090940053/2500000000 : ℚ), (-325055338003/100000000000 : ℚ), 5⟩,
    ⟨(335636495723/1000000000000 : ℚ), (31189573577/5000000000 : ℚ), (-2253440476447/1000000000000 : ℚ), 4⟩,
    ⟨(85500428453/250000000000 : ℚ), (21947812969/5000000000 : ℚ), (-1627738565447/1000000000000 : ℚ), 4⟩,
    ⟨(87274126641/250000000000 : ℚ), (31780675523/10000000000 : ℚ), (-302365163029/250000000000 : ℚ), 4⟩,
    ⟨(178426273623/500000000000 : ℚ), (5865443749/2500000000 : ℚ), (-91605863087/100000000000 : ℚ), 3⟩,
    ⟨(365195140947/1000000000000 : ℚ), (438415879/250000000 : ℚ), (-175576688507/250000000000 : ℚ), 3⟩,
    ⟨(374043943929/1000000000000 : ℚ), (263792969/200000000 : ℚ), (-541745279063/1000000000000 : ℚ), 3⟩,
    ⟨(191656868691/500000000000 : ℚ), (9921334201/10000000000 : ℚ), (-209030241487/500000000000 : ℚ), 3⟩,
    ⟨(392915248127/1000000000000 : ℚ), (1482543901/2000000000 : ℚ), (-10023581827/31250000000 : ℚ), 3⟩,
    ⟨(25172250523/62500000000 : ℚ), (2726462977/5000000000 : ℚ), (-121414258309/500000000000 : ℚ), 2⟩,
    ⟨(103185311551/250000000000 : ℚ), (1949215997/5000000000 : ℚ), (-179474523903/1000000000000 : ℚ), 2⟩,
    ⟨(206433007/488281250 : ℚ), (2649126391/10000000000 : ℚ), (-127305961979/1000000000000 : ℚ), 2⟩,
    ⟨(432760036171/1000000000000 : ℚ), (1633695421/10000000000 : ℚ), (-83885383191/1000000000000 : ℚ), 2⟩,
    ⟨(110650199103/250000000000 : ℚ), (200103473/2500000000 : ℚ), (-23713077917/500000000000 : ℚ), 2⟩,
    ⟨(226101153579/500000000000 : ℚ), (55588557/5000000000 : ℚ), (-16598224043/1000000000000 : ℚ), 2⟩,
    ⟨(461472100611/1000000000000 : ℚ), (-231231249/5000000000 : ℚ), (9601551029/1000000000000 : ℚ), 2⟩,
    ⟨(470320903593/1000000000000 : ℚ), (-470992327/5000000000 : ℚ), (15968948331/500000000000 : ℚ), 2⟩,
    ⟨(239331748647/500000000000 : ℚ), (-67188039/500000000 : ℚ), (2549938247/50000000000 : ℚ), 2⟩,
    ⟨(60802442247/125000000000 : ℚ), (-26255649/156250000 : ℚ), (4202439443/62500000000 : ℚ), 2⟩,
    ⟨(61689291341/125000000000 : ℚ), (-61296553/312500000 : ℚ), (10126496907/125000000000 : ℚ), 2⟩,
    ⟨(31242471801/62500000000 : ℚ), (-2194654091/10000000000 : ℚ), (23148070641/250000000000 : ℚ), 2⟩,
    ⟨(3948858529/7812500000 : ℚ), (-2385661429/10000000000 : ℚ), (10219304441/100000000000 : ℚ), 2⟩,
    ⟨(255091837723/500000000000 : ℚ), (-2538977693/10000000000 : ℚ), (109978429981/1000000000000 : ℚ), 2⟩,
    ⟨(257011674807/500000000000 : ℚ), (-2657994339/10000000000 : ℚ), (116073163871/1000000000000 : ℚ), 2⟩,
    ⟨(516935936057/1000000000000 : ℚ), (-343152927/1250000000 : ℚ), (120569583211/1000000000000 : ℚ), 2⟩,
    ⟨(518893384973/1000000000000 : ℚ), (-1401219059/5000000000 : ℚ), (123532798391/1000000000000 : ℚ), 2⟩,
    ⟨(25993842253/50000000000 : ℚ), (-2830769971/10000000000 : ℚ), (125004310431/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2834298681/10000000000 : ℚ), (25037556327/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (64026319397/250000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control213.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control213.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate213

-- Control214
namespace DiagonalRamsey.JointInheritedCertificate214
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12953861113/50000000000 : ℚ), (263329678549/200000000 : ℚ), (-34189424715227/100000000000 : ℚ), 11⟩,
    ⟨(3248747077/12500000000 : ℚ), (287118536117/2000000000 : ℚ), (-755920410021/20000000000 : ℚ), 8⟩,
    ⟨(261536932413/1000000000000 : ℚ), (501513803339/10000000000 : ℚ), (-13468031661277/1000000000000 : ℚ), 7⟩,
    ⟨(263972954213/1000000000000 : ℚ), (123078076533/5000000000 : ℚ), (-845656672439/125000000000 : ℚ), 6⟩,
    ⟨(133592185669/500000000000 : ℚ), (35545701307/2500000000 : ℚ), (-4006713941049/1000000000000 : ℚ), 5⟩,
    ⟨(135570128043/500000000000 : ℚ), (22561481799/2500000000 : ℚ), (-16313329103/6250000000 : ℚ), 5⟩,
    ⟨(2206420089/8000000000 : ℚ), (12167580013/2000000000 : ℚ), (-90333220093/50000000000 : ℚ), 4⟩,
    ⟨(70281559097/250000000000 : ℚ), (42710089071/10000000000 : ℚ), (-1302324753547/1000000000000 : ℚ), 4⟩,
    ⟨(287060161493/1000000000000 : ℚ), (3853373077/1250000000 : ℚ), (-482511708541/500000000000 : ℚ), 4⟩,
    ⟨(36693392437/125000000000 : ℚ), (2833124961/1250000000 : ℚ), (-364134924423/500000000000 : ℚ), 3⟩,
    ⟨(300524697253/1000000000000 : ℚ), (4212186629/2500000000 : ℚ), (-555637226771/1000000000000 : ℚ), 3⟩,
    ⟨(307925637069/1000000000000 : ℚ), (1257843983/1000000000 : ℚ), (-85163049841/200000000000 : ℚ), 3⟩,
    ⟨(315678683847/1000000000000 : ℚ), (9364429107/10000000000 : ℚ), (-325666715041/1000000000000 : ℚ), 3⟩,
    ⟨(323709171509/1000000000000 : ℚ), (3447067011/5000000000 : ℚ), (-246739662873/1000000000000 : ℚ), 3⟩,
    ⟨(82984940517/250000000000 : ℚ), (248049901/500000000 : ℚ), (-91700349389/500000000000 : ℚ), 3⟩,
    ⟨(170145595219/500000000000 : ℚ), (3424521431/10000000000 : ℚ), (-65891071711/500000000000 : ℚ), 2⟩,
    ⟨(1743415139/5000000000 : ℚ), (2186769263/10000000000 : ℚ), (-44580669649/500000000000 : ℚ), 2⟩,
    ⟨(35703445617/100000000000 : ℚ), (1178036523/10000000000 : ℚ), (-26790313279/500000000000 : ℚ), 2⟩,
    ⟨(365265046729/1000000000000 : ℚ), (173907561/5000000000 : ℚ), (-590173039/25000000000 : ℚ), 2⟩,
    ⟨(373295534391/1000000000000 : ℚ), (-341059769/10000000000 : ℚ), (912403383/500000000000 : ℚ), 2⟩,
    ⟨(381048581169/1000000000000 : ℚ), (-458148457/5000000000 : ℚ), (11758027701/500000000000 : ℚ), 2⟩,
    ⟨(77689904197/200000000000 : ℚ), (-699393221/5000000000 : ℚ), (21038086243/500000000000 : ℚ), 2⟩,
    ⟨(197713539371/500000000000 : ℚ), (-1804423583/10000000000 : ℚ), (2318884449/40000000000 : ℚ), 2⟩,
    ⟨(80382811349/200000000000 : ℚ), (-134086937/625000000 : ℚ), (14312748827/200000000000 : ℚ), 2⟩,
    ⟨(8156959637/20000000000 : ℚ), (-486214737/2000000000 : ℚ), (20782335653/250000000000 : ℚ), 2⟩,
    ⟨(413171707113/1000000000000 : ℚ), (-2668720017/10000000000 : ℚ), (18576844781/200000000000 : ℚ), 2⟩,
    ⟨(417833962151/1000000000000 : ℚ), (-2863924023/10000000000 : ℚ), (504972811/5000000000 : ℚ), 2⟩,
    ⟨(421789846899/1000000000000 : ℚ), (-1510489893/5000000000 : ℚ), (26896925597/250000000000 : ℚ), 2⟩,
    ⟨(17000050561/40000000000 : ℚ), (-1571571189/5000000000 : ℚ), (112759889019/1000000000000 : ℚ), 2⟩,
    ⟨(17097491433/40000000000 : ℚ), (-3232819023/10000000000 : ℚ), (932656237/8000000000 : ℚ), 2⟩,
    ⟨(214537226039/500000000000 : ℚ), (-3291706719/10000000000 : ℚ), (119103914953/1000000000000 : ℚ), 2⟩,
    ⟨(214948497989/500000000000 : ℚ), (-3320887319/10000000000 : ℚ), (30089294559/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3324522693/10000000000 : ℚ), (7532092537/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (288420864491/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control214.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control214.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate214

-- Control215
namespace DiagonalRamsey.JointInheritedCertificate215
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(266005039809/1000000000000 : ℚ), (6640105430149/5000000000 : ℚ), (-354062391568091/1000000000000 : ℚ), 11⟩,
    ⟨(4169412003/15625000000 : ℚ), (1448160251397/10000000000 : ℚ), (-7828315251161/200000000000 : ℚ), 8⟩,
    ⟨(268508961029/1000000000000 : ℚ), (316243299/6250000 : ℚ), (-2789557426349/200000000000 : ℚ), 7⟩,
    ⟨(270988768119/1000000000000 : ℚ), (49680598561/2000000000 : ℚ), (-3503240342701/500000000000 : ℚ), 6⟩,
    ⟨(54851581513/200000000000 : ℚ), (143513410533/10000000000 : ℚ), (-4149791117341/1000000000000 : ℚ), 5⟩,
    ⟨(139142447883/500000000000 : ℚ), (9111366811/1000000000 : ℚ), (-2703536534943/1000000000000 : ℚ), 5⟩,
    ⟨(452849521/1600000000 : ℚ), (61440359649/10000000000 : ℚ), (-1871509189447/1000000000000 : ℚ), 4⟩,
    ⟨(144225182519/500000000000 : ℚ), (2696689053/625000000 : ℚ), (-1349261871019/1000000000000 : ℚ), 4⟩,
    ⟨(73622736771/250000000000 : ℚ), (15577090547/5000000000 : ℚ), (-500001557973/500000000000 : ℚ), 4⟩,
    ⟨(301094522653/1000000000000 : ℚ), (4583217799/2000000000 : ℚ), (-75487578559/100000000000 : ℚ), 3⟩,
    ⟨(61639499141/200000000000 : ℚ), (17045208661/10000000000 : ℚ), (-115231267157/200000000000 : ℚ), 3⟩,
    ⟨(12629258429/40000000000 : ℚ), (12734631447/10000000000 : ℚ), (-220887827509/500000000000 : ℚ), 3⟩,
    ⟨(40452982689/125000000000 : ℚ), (2372575757/2500000000 : ℚ), (-169064267031/500000000000 : ℚ), 3⟩,
    ⟨(331798689931/1000000000000 : ℚ), (3498399519/5000000000 : ℚ), (-128230838323/500000000000 : ℚ), 3⟩,
    ⟨(340177217917/1000000000000 : ℚ), (1261414497/2500000000 : ℚ), (-11933787377/62500000000 : ℚ), 3⟩,
    ⟨(69735751133/200000000000 : ℚ), (1747532159/5000000000 : ℚ), (-137559306943/1000000000000 : ℚ), 2⟩,
    ⟨(178610714359/500000000000 : ℚ), (561537449/2500000000 : ℚ), (-93497529917/1000000000000 : ℚ), 2⟩,
    ⟨(73144593293/200000000000 : ℚ), (1228532421/10000000000 : ℚ), (-14181792407/250000000000 : ℚ), 2⟩,
    ⟨(374101494451/1000000000000 : ℚ), (195601667/5000000000 : ℚ), (-12881668749/500000000000 : ℚ), 2⟩,
    ⟨(382276322871/1000000000000 : ℚ), (-303378953/10000000000 : ℚ), (497730479/1000000000000 : ℚ), 2⟩,
    ⟨(195084361829/500000000000 : ℚ), (-110401321/1250000000 : ℚ), (22886899817/1000000000000 : ℚ), 2⟩,
    ⟨(198851344339/500000000000 : ℚ), (-1369403501/10000000000 : ℚ), (42036050841/1000000000000 : ℚ), 2⟩,
    ⟨(404805661729/1000000000000 : ℚ), (-1778025907/10000000000 : ℚ), (7303698619/125000000000 : ℚ), 2⟩,
    ⟨(411409237299/1000000000000 : ℚ), (-2121396201/10000000000 : ℚ), (72441002967/1000000000000 : ℚ), 2⟩,
    ⟨(26090613709/62500000000 : ℚ), (-2409006453/10000000000 : ℚ), (84359236697/1000000000000 : ℚ), 2⟩,
    ⟨(211434616879/500000000000 : ℚ), (-662047393/2500000000 : ℚ), (23601996953/250000000000 : ℚ), 2⟩,
    ⟨(427615288617/1000000000000 : ℚ), (-2844606209/10000000000 : ℚ), (6422499823/62500000000 : ℚ), 2⟩,
    ⟨(215821138409/500000000000 : ℚ), (-3002602551/10000000000 : ℚ), (54773860027/500000000000 : ℚ), 2⟩,
    ⟨(434911416263/1000000000000 : ℚ), (-312547381/1000000000 : ℚ), (22974264091/200000000000 : ℚ), 2⟩,
    ⟨(437391223353/1000000000000 : ℚ), (-1607828653/5000000000 : ℚ), (118804633289/1000000000000 : ℚ), 2⟩,
    ⟨(43905781619/100000000000 : ℚ), (-1637435737/5000000000 : ℚ), (6069976403/50000000000 : ℚ), 2⟩,
    ⟨(219947572287/500000000000 : ℚ), (-3304211943/10000000000 : ℚ), (122688970771/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-661573429/2000000000 : ℚ), (61424890261/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (283617450533/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control215.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control215.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate215

-- Control219
namespace DiagonalRamsey.JointInheritedCertificate219
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(228736976987/1000000000000 : ℚ), (8754625395757/10000000000 : ℚ), (-12556931255733/62500000000 : ℚ), 11⟩,
    ⟨(229801776847/1000000000000 : ℚ), (949413769361/10000000000 : ℚ), (-2777996681619/125000000000 : ℚ), 8⟩,
    ⟨(57980280491/250000000000 : ℚ), (65854389437/2000000000 : ℚ), (-1982235489983/250000000000 : ℚ), 6⟩,
    ⟨(47014920377/200000000000 : ℚ), (40086006987/2500000000 : ℚ), (-3990412305777/1000000000000 : ℚ), 6⟩,
    ⟨(119615923437/500000000000 : ℚ), (91895040243/10000000000 : ℚ), (-2369496313919/1000000000000 : ℚ), 5⟩,
    ⟨(244352820389/1000000000000 : ℚ), (11581374077/2000000000 : ℚ), (-1548852888407/1000000000000 : ℚ), 4⟩,
    ⟨(250388204657/1000000000000 : ℚ), (3879431921/1000000000 : ℚ), (-269177157397/250000000000 : ℚ), 4⟩,
    ⟨(64319968907/250000000000 : ℚ), (108410151/40000000 : ℚ), (-390158410389/500000000000 : ℚ), 4⟩,
    ⟨(132480731371/500000000000 : ℚ), (195006539/100000000 : ℚ), (-291029876883/500000000000 : ℚ), 3⟩,
    ⟨(273358988117/1000000000000 : ℚ), (7161652037/5000000000 : ℚ), (-442866688577/1000000000000 : ℚ), 3⟩,
    ⟨(17649473687/62500000000 : ℚ), (5332727357/5000000000 : ℚ), (-68266616553/200000000000 : ℚ), 3⟩,
    ⟨(14598612329/50000000000 : ℚ), (8002645143/10000000000 : ℚ), (-264937650419/1000000000000 : ℚ), 3⟩,
    ⟨(60401744763/200000000000 : ℚ), (375942699/625000000 : ℚ), (-12872646649/62500000000 : ℚ), 3⟩,
    ⟨(156202176967/500000000000 : ℚ), (2249782147/5000000000 : ℚ), (-79721391547/500000000000 : ℚ), 2⟩,
    ⟨(40382377667/125000000000 : ℚ), (3322499341/10000000000 : ℚ), (-61035615267/500000000000 : ℚ), 2⟩,
    ⟨(333870115751/1000000000000 : ℚ), (2393528551/10000000000 : ℚ), (-91577808789/1000000000000 : ℚ), 2⟩,
    ⟨(86183380107/250000000000 : ℚ), (1650039283/10000000000 : ℚ), (-13273125141/200000000000 : ℚ), 2⟩,
    ⟨(177772307421/500000000000 : ℚ), (1047739317/10000000000 : ℚ), (-45287343919/1000000000000 : ℚ), 2⟩,
    ⟨(73239856449/200000000000 : ℚ), (138683047/2500000000 : ℚ), (-13751899773/500000000000 : ℚ), 2⟩,
    ⟨(94148728091/250000000000 : ℚ), (73844979/5000000000 : ℚ), (-12391938811/1000000000000 : ℚ), 2⟩,
    ⟨(386631389599/1000000000000 : ℚ), (-38135777/2000000000 : ℚ), (516665241/1000000000000 : ℚ), 2⟩,
    ⟨(396212057187/1000000000000 : ℚ), (-473340091/10000000000 : ℚ), (11577805423/1000000000000 : ℚ), 2⟩,
    ⟨(202622324031/500000000000 : ℚ), (-710110841/10000000000 : ℚ), (329123501/15625000000 : ℚ), 2⟩,
    ⟨(413642173437/1000000000000 : ℚ), (-908483023/10000000000 : ℚ), (29184773451/1000000000000 : ℚ), 2⟩,
    ⟨(421323760551/1000000000000 : ℚ), (-537103597/5000000000 : ℚ), (36102581547/1000000000000 : ℚ), 2⟩,
    ⟨(428215431521/1000000000000 : ℚ), (-1211711803/10000000000 : ℚ), (41942790113/1000000000000 : ℚ), 2⟩,
    ⟨(434250815789/1000000000000 : ℚ), (-1324407081/10000000000 : ℚ), (11700560171/250000000000 : ℚ), 2⟩,
    ⟨(87874357861/200000000000 : ℚ), (-56596271/400000000 : ℚ), (12688794533/250000000000 : ℚ), 2⟩,
    ⟨(221764517147/500000000000 : ℚ), (-742595157/5000000000 : ℚ), (53857752693/1000000000000 : ℚ), 2⟩,
    ⟨(223341257107/500000000000 : ℚ), (-1536720817/10000000000 : ℚ), (28075682947/500000000000 : ℚ), 2⟩,
    ⟨(448801859331/1000000000000 : ℚ), (-1570529541/10000000000 : ℚ), (28832556849/500000000000 : ℚ), 2⟩,
    ⟨(56233332399/125000000000 : ℚ), (-1587273919/10000000000 : ℚ), (29208747259/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-24833743/156250000 : ℚ), (5851133413/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (175553750087/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control219.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control219.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate219

-- Control220
namespace DiagonalRamsey.JointInheritedCertificate220
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(234876780349/1000000000000 : ℚ), (8835813580129/10000000000 : ℚ), (-208211275009463/1000000000000 : ℚ), 11⟩,
    ⟨(23596015691/100000000000 : ℚ), (958376095399/10000000000 : ℚ), (-575789404097/25000000000 : ℚ), 8⟩,
    ⟨(238116476523/1000000000000 : ℚ), (83114220923/2500000000 : ℚ), (-4108563607347/500000000000 : ℚ), 6⟩,
    ⟨(60331243163/250000000000 : ℚ), (161938074977/10000000000 : ℚ), (-4135498111389/1000000000000 : ℚ), 6⟩,
    ⟨(9822189829/40000000000 : ℚ), (92835310937/10000000000 : ℚ), (-38370302477/15625000000 : ℚ), 5⟩,
    ⟨(62691265179/250000000000 : ℚ), (58517128699/10000000000 : ℚ), (-1605255723213/1000000000000 : ℚ), 4⟩,
    ⟨(256905739441/1000000000000 : ℚ), (980392089/250000000 : ℚ), (-1115978155149/1000000000000 : ℚ), 4⟩,
    ⟨(26391764381/100000000000 : ℚ), (6851565577/2500000000 : ℚ), (-808842972157/1000000000000 : ℚ), 4⟩,
    ⟨(271733245349/1000000000000 : ℚ), (19726579249/10000000000 : ℚ), (-603412063893/1000000000000 : ℚ), 3⟩,
    ⟨(280277275543/1000000000000 : ℚ), (1449543859/1000000000 : ℚ), (-229597438307/500000000000 : ℚ), 3⟩,
    ⟨(28946745071/100000000000 : ℚ), (5399558527/5000000000 : ℚ), (-35400891549/100000000000 : ℚ), 3⟩,
    ⟨(299215264441/1000000000000 : ℚ), (2027014371/2500000000 : ℚ), (-137438833091/500000000000 : ℚ), 3⟩,
    ⟨(7735670999/25000000000 : ℚ), (6099315819/10000000000 : ℚ), (-53450582557/250000000000 : ℚ), 3⟩,
    ⟨(80000958553/250000000000 : ℚ), (4567651977/10000000000 : ℚ), (-82818885791/500000000000 : ℚ), 2⟩,
    ⟨(165422192481/500000000000 : ℚ), (675622837/2000000000 : ℚ), (-3173891519/25000000000 : ℚ), 2⟩,
    ⟨(341844091779/1000000000000 : ℚ), (609850651/2500000000 : ℚ), (-95403188279/1000000000000 : ℚ), 2⟩,
    ⟨(352897021473/1000000000000 : ℚ), (844119653/5000000000 : ℚ), (-13864989871/200000000000 : ℚ), 2⟩,
    ⟨(36389672829/100000000000 : ℚ), (215970183/2000000000 : ℚ), (-47531399401/1000000000000 : ℚ), 2⟩,
    ⟨(374737279039/1000000000000 : ℚ), (14549661/250000000 : ℚ), (-3644042687/125000000000 : ℚ), 2⟩,
    ⟨(96328568323/250000000000 : ℚ), (85526261/5000000000 : ℚ), (-13541525239/1000000000000 : ℚ), 2⟩,
    ⟨(395525848811/1000000000000 : ℚ), (-170443791/10000000000 : ℚ), (-212936867/1000000000000 : ℚ), 2⟩,
    ⟨(405273662541/1000000000000 : ℚ), (-227811451/5000000000 : ℚ), (5601355713/500000000000 : ℚ), 2⟩,
    ⟨(414463837709/1000000000000 : ℚ), (-694421841/10000000000 : ℚ), (5247074791/250000000000 : ℚ), 2⟩,
    ⟨(423007867903/1000000000000 : ℚ), (-178885211/2000000000 : ℚ), (5872360851/200000000000 : ℚ), 2⟩,
    ⟨(215411734721/500000000000 : ℚ), (-33170609/312500000 : ℚ), (36491803243/1000000000000 : ℚ), 2⟩,
    ⟨(43783537381/100000000000 : ℚ), (-1200008271/10000000000 : ℚ), (42508798711/1000000000000 : ℚ), 2⟩,
    ⟨(55497006567/125000000000 : ℚ), (-328381973/2500000000 : ℚ), (23756795231/500000000000 : ℚ), 2⟩,
    ⟨(449186367527/1000000000000 : ℚ), (-87791711/625000000 : ℚ), (1289587787/25000000000 : ℚ), 2⟩,
    ⟨(2267080703/5000000000 : ℚ), (-737716629/5000000000 : ℚ), (5477708669/100000000000 : ℚ), 2⟩,
    ⟨(456624636729/1000000000000 : ℚ), (-763654467/5000000000 : ℚ), (57137495309/1000000000000 : ℚ), 2⟩,
    ⟨(229390478171/500000000000 : ℚ), (-1561340091/10000000000 : ℚ), (11739019829/200000000000 : ℚ), 2⟩,
    ⟨(459864332903/1000000000000 : ℚ), (-1578193423/10000000000 : ℚ), (11893841873/200000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-158029257/1000000000 : ℚ), (7445719489/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (86826303563/250000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control220.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control220.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate220

-- Control221
namespace DiagonalRamsey.JointInheritedCertificate221
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48222090387/200000000000 : ℚ), (8921423904789/10000000000 : ℚ), (-107901007991293/500000000000 : ℚ), 11⟩,
    ⟨(242211953467/1000000000000 : ℚ), (48391374903/500000000 : ℚ), (-23871338924009/1000000000000 : ℚ), 8⟩,
    ⟨(24440434847/100000000000 : ℚ), (335816269273/10000000000 : ℚ), (-8516816423461/1000000000000 : ℚ), 6⟩,
    ⟨(247666522981/1000000000000 : ℚ), (40904978387/2500000000 : ℚ), (-4286397484441/1000000000000 : ℚ), 6⟩,
    ⟨(62991765119/250000000000 : ℚ), (3753109581/400000000 : ℚ), (-254537489751/100000000000 : ℚ), 5⟩,
    ⟨(64316136107/250000000000 : ℚ), (59161536143/10000000000 : ℚ), (-83197335281/50000000000 : ℚ), 4⟩,
    ⟨(263507957171/1000000000000 : ℚ), (39660868337/10000000000 : ℚ), (-231371077839/200000000000 : ℚ), 4⟩,
    ⟨(67659292807/250000000000 : ℚ), (27727355441/10000000000 : ℚ), (-838550680313/1000000000000 : ℚ), 4⟩,
    ⟨(278583528369/1000000000000 : ℚ), (19965588709/10000000000 : ℚ), (-312830952133/500000000000 : ℚ), 3⟩,
    ⟨(287270500831/1000000000000 : ℚ), (1467767907/1000000000 : ℚ), (-238111113859/500000000000 : ℚ), 3⟩,
    ⟨(296614428321/1000000000000 : ℚ), (1094074127/1000000000 : ℚ), (-367240260439/1000000000000 : ℚ), 3⟩,
    ⟨(30652532371/100000000000 : ℚ), (128435077/156250000 : ℚ), (-57053229433/200000000000 : ℚ), 3⟩,
    ⟨(39613467457/125000000000 : ℚ), (6188723097/10000000000 : ℚ), (-55502289781/250000000000 : ℚ), 3⟩,
    ⟨(327661687819/1000000000000 : ℚ), (927997961/2000000000 : ℚ), (-86068104463/500000000000 : ℚ), 2⟩,
    ⟨(169341800899/500000000000 : ℚ), (3437256809/10000000000 : ℚ), (-26418710867/200000000000 : ℚ), 2⟩,
    ⟨(174933667269/500000000000 : ℚ), (311029159/1250000000 : ℚ), (-99442137959/1000000000000 : ℚ), 2⟩,
    ⟨(361105180579/1000000000000 : ℚ), (864469967/5000000000 : ℚ), (-18116423449/250000000000 : ℚ), 2⟩,
    ⟨(372288913319/1000000000000 : ℚ), (278524043/2500000000 : ℚ), (-49930767833/1000000000000 : ℚ), 2⟩,
    ⟨(191655413649/500000000000 : ℚ), (611077217/10000000000 : ℚ), (-1546743531/50000000000 : ℚ), 2⟩,
    ⟨(394064775461/1000000000000 : ℚ), (39201969/2000000000 : ℚ), (-14807605953/1000000000000 : ℚ), 2⟩,
    ⟨(404447191407/1000000000000 : ℚ), (-148811327/10000000000 : ℚ), (-522323237/500000000000 : ℚ), 2⟩,
    ⟨(82871617359/200000000000 : ℚ), (-436669823/10000000000 : ℚ), (5368677573/500000000000 : ℚ), 2⟩,
    ⟨(211851007143/500000000000 : ℚ), (-677629121/10000000000 : ℚ), (5208045021/250000000000 : ℚ), 2⟩,
    ⟨(108097246687/250000000000 : ℚ), (-439686701/5000000000 : ℚ), (14733162171/500000000000 : ℚ), 2⟩,
    ⟨(440335343889/1000000000000 : ℚ), (-104780409/1000000000 : ℚ), (9203763883/250000000000 : ℚ), 2⟩,
    ⟨(223732278973/500000000000 : ℚ), (-593734117/5000000000 : ℚ), (2688383957/62500000000 : ℚ), 2⟩,
    ⟨(453707970689/1000000000000 : ℚ), (-260373829/2000000000 : ℚ), (376316623/7812500000 : ℚ), 2⟩,
    ⟨(459005454641/1000000000000 : ℚ), (-1393693139/10000000000 : ℚ), (52358774523/1000000000000 : ℚ), 2⟩,
    ⟨(57913249017/125000000000 : ℚ), (-1464975419/10000000000 : ℚ), (55645896891/1000000000000 : ℚ), 2⟩,
    ⟨(466568166647/1000000000000 : ℚ), (-758610419/5000000000 : ℚ), (14518734641/250000000000 : ℚ), 2⟩,
    ⟨(9375211233/20000000000 : ℚ), (-310298071/2000000000 : ℚ), (59677589641/1000000000000 : ℚ), 2⟩,
    ⟨(234931031591/500000000000 : ℚ), (-196057559/1250000000 : ℚ), (15118503737/250000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-314114821/2000000000 : ℚ), (7571667639/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (171720044359/500000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control221.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control221.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate221

-- Control222
namespace DiagonalRamsey.JointInheritedCertificate222
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(247376574359/1000000000000 : ℚ), (90067096877/100000000 : ℚ), (-223520778365753/1000000000000 : ℚ), 11⟩,
    ⟨(248496044697/1000000000000 : ℚ), (954338643/9765625 : ℚ), (-24725228719887/1000000000000 : ℚ), 8⟩,
    ⟨(125362102131/500000000000 : ℚ), (67832517677/2000000000 : ℚ), (-4410760731197/500000000000 : ℚ), 6⟩,
    ⟨(12701979733/50000000000 : ℚ), (4132375713/250000000 : ℚ), (-4439802885863/1000000000000 : ℚ), 6⟩,
    ⟨(64602571717/250000000000 : ℚ), (23704010717/2500000000 : ℚ), (-2636524107877/1000000000000 : ℚ), 5⟩,
    ⟨(263794188731/1000000000000 : ℚ), (59803121953/10000000000 : ℚ), (-172358929439/100000000000 : ℚ), 4⟩,
    ⟨(270139450331/1000000000000 : ℚ), (10025992583/2500000000 : ℚ), (-74899030871/62500000000 : ℚ), 4⟩,
    ⟨(27738496333/100000000000 : ℚ), (28046819501/10000000000 : ℚ), (-27147585611/31250000000 : ℚ), 4⟩,
    ⟨(142730474739/500000000000 : ℚ), (20203263711/10000000000 : ℚ), (-648251312163/1000000000000 : ℚ), 3⟩,
    ⟨(73572408153/250000000000 : ℚ), (14858784383/10000000000 : ℚ), (-493502187063/1000000000000 : ℚ), 3⟩,
    ⟨(303785987689/1000000000000 : ℚ), (11081369431/10000000000 : ℚ), (-380661424237/1000000000000 : ℚ), 3⟩,
    ⟨(313858559617/1000000000000 : ℚ), (8330735961/10000000000 : ℚ), (-59159566849/200000000000 : ℚ), 3⟩,
    ⟨(162205172011/500000000000 : ℚ), (6277306977/10000000000 : ℚ), (-46064764741/200000000000 : ℚ), 3⟩,
    ⟨(335339721453/1000000000000 : ℚ), (4711558897/10000000000 : ℚ), (-89357586189/500000000000 : ℚ), 2⟩,
    ⟨(34654143603/100000000000 : ℚ), (3495672517/10000000000 : ℚ), (-137290597909/1000000000000 : ℚ), 2⟩,
    ⟨(178953804559/500000000000 : ℚ), (2536369751/10000000000 : ℚ), (-103523327243/1000000000000 : ℚ), 2⟩,
    ⟨(184664389129/500000000000 : ℚ), (442243149/2500000000 : ℚ), (-75635192431/1000000000000 : ℚ), 2⟩,
    ⟨(190347475673/500000000000 : ℚ), (1147694981/10000000000 : ℚ), (-26174036801/500000000000 : ℚ), 2⟩,
    ⟨(391896665923/1000000000000 : ℚ), (639539623/10000000000 : ℚ), (-32726627889/1000000000000 : ℚ), 2⟩,
    ⟨(201413021677/500000000000 : ℚ), (22035431/1000000000 : ℚ), (-8037944253/500000000000 : ℚ), 2⟩,
    ⟨(413377827759/1000000000000 : ℚ), (-127778173/10000000000 : ℚ), (-234110867/125000000000 : ℚ), 2⟩,
    ⟨(423450399687/1000000000000 : ℚ), (-209152033/5000000000 : ℚ), (1028003979/100000000000 : ℚ), 2⟩,
    ⟨(108236688691/250000000000 : ℚ), (-661413033/10000000000 : ℚ), (206877777/10000000000 : ℚ), 2⟩,
    ⟨(220887718949/500000000000 : ℚ), (-864887833/10000000000 : ℚ), (29585504177/1000000000000 : ℚ), 2⟩,
    ⟨(224925712023/500000000000 : ℚ), (-1034707279/10000000000 : ℚ), (7431061859/200000000000 : ℚ), 2⟩,
    ⟨(91419387409/200000000000 : ℚ), (-146934913/1250000000 : ℚ), (10884584253/250000000000 : ℚ), 2⟩,
    ⟨(92688439729/200000000000 : ℚ), (-1290755037/10000000000 : ℚ), (24421877163/500000000000 : ℚ), 2⟩,
    ⟨(117206525127/250000000000 : ℚ), (-1383258099/10000000000 : ℚ), (13288857341/250000000000 : ℚ), 2⟩,
    ⟨(118299198179/250000000000 : ℚ), (-1455052381/10000000000 : ℚ), (56536918541/1000000000000 : ℚ), 2⟩,
    ⟨(238256091557/500000000000 : ℚ), (-1507664221/10000000000 : ℚ), (11807034533/200000000000 : ℚ), 2⟩,
    ⟨(478740342679/1000000000000 : ℚ), (-1542169869/10000000000 : ℚ), (60683240543/1000000000000 : ℚ), 2⟩,
    ⟨(479859813017/1000000000000 : ℚ), (-1559255651/10000000000 : ℚ), (30751080333/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1561383631/10000000000 : ℚ), (30802144397/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (339544180571/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control222.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control222.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate222

-- Control223
namespace DiagonalRamsey.JointInheritedCertificate223
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(260127397643/1000000000000 : ℚ), (574091437121/625000000 : ℚ), (-119846569940789/500000000000 : ℚ), 11⟩,
    ⟨(261281753713/1000000000000 : ℚ), (996977882161/10000000000 : ℚ), (-26514326909407/1000000000000 : ℚ), 8⟩,
    ⟨(65894837193/250000000000 : ℚ), (34617765213/1000000000 : ℚ), (-4729985064333/500000000000 : ℚ), 6⟩,
    ⟨(66749513931/250000000000 : ℚ), (33761466451/2000000000 : ℚ), (-2380625131511/500000000000 : ℚ), 6⟩,
    ⟨(271504950553/1000000000000 : ℚ), (6055548307/625000000 : ℚ), (-17672088841/6250000000 : ℚ), 5⟩,
    ⟨(277056629397/1000000000000 : ℚ), (61149073183/10000000000 : ℚ), (-924294496087/500000000000 : ℚ), 4⟩,
    ⟨(141799813277/500000000000 : ℚ), (1641352709/400000000 : ℚ), (-642717751223/500000000000 : ℚ), 4⟩,
    ⟨(58214185877/200000000000 : ℚ), (14358713243/5000000000 : ℚ), (-232995396561/250000000000 : ℚ), 4⟩,
    ⟨(299398585159/1000000000000 : ℚ), (20702337791/10000000000 : ℚ), (-173906637517/250000000000 : ℚ), 3⟩,
    ⟨(154251197/500000000 : ℚ), (1523918171/1000000000 : ℚ), (-66219633279/125000000000 : ℚ), 3⟩,
    ⟨(50927149/160000000 : ℚ), (2844204861/2500000000 : ℚ), (-40883577421/100000000000 : ℚ), 3⟩,
    ⟨(41085142729/125000000000 : ℚ), (1070468951/1250000000 : ℚ), (-4967546391/15625000000 : ℚ), 3⟩,
    ⟨(339561748451/1000000000000 : ℚ), (6463465151/10000000000 : ℚ), (-247809035303/1000000000000 : ℚ), 3⟩,
    ⟨(175415857459/500000000000 : ℚ), (2430978699/5000000000 : ℚ), (-48142313453/250000000000 : ℚ), 2⟩,
    ⟨(22648906581/62500000000 : ℚ), (1809205387/5000000000 : ℚ), (-148255074901/1000000000000 : ℚ), 2⟩,
    ⟨(187051439579/500000000000 : ℚ), (659369631/2500000000 : ℚ), (-112155893161/1000000000000 : ℚ), 2⟩,
    ⟨(385879962897/1000000000000 : ℚ), (115813651/625000000 : ℚ), (-41181893661/500000000000 : ℚ), 2⟩,
    ⟨(397600336759/1000000000000 : ℚ), (609092547/5000000000 : ℚ), (-14376748241/250000000000 : ℚ), 2⟩,
    ⟨(12785972723/31250000000 : ℚ), (139840089/2000000000 : ℚ), (-36581266831/1000000000000 : ℚ), 2⟩,
    ⟨(420421093603/1000000000000 : ℚ), (271327333/10000000000 : ℚ), (-1177505773/62500000000 : ℚ), 2⟩,
    ⟨(215650850111/500000000000 : ℚ), (-83795713/10000000000 : ℚ), (-930343007/250000000000 : ℚ), 2⟩,
    ⟨(110422040201/250000000000 : ℚ), (-379956321/10000000000 : ℚ), (9202626257/1000000000000 : ℚ), 2⟩,
    ⟨(225740224027/500000000000 : ℚ), (-627609019/10000000000 : ℚ), (20260130889/1000000000000 : ℚ), 2⟩,
    ⟨(92116851379/200000000000 : ℚ), (-834743601/10000000000 : ℚ), (29704584493/1000000000000 : ℚ), 2⟩,
    ⟨(468911912669/1000000000000 : ℚ), (-251875379/2500000000 : ℚ), (37732446049/1000000000000 : ℚ), 2⟩,
    ⟨(952766431/2000000000 : ℚ), (-287654683/2500000000 : ℚ), (22248095437/500000000000 : ℚ), 2⟩,
    ⟨(241463106329/500000000000 : ℚ), (-19808547/156250000 : ℚ), (50113908661/1000000000000 : ℚ), 2⟩,
    ⟨(244238945751/500000000000 : ℚ), (-1361688529/10000000000 : ℚ), (54676447099/1000000000000 : ℚ), 2⟩,
    ⟨(49298478633/100000000000 : ℚ), (-717283827/5000000000 : ℚ), (14563186143/250000000000 : ℚ), 2⟩,
    ⟨(248201746641/500000000000 : ℚ), (-1487956021/10000000000 : ℚ), (60893790633/1000000000000 : ℚ), 2⟩,
    ⟨(498701088341/1000000000000 : ℚ), (-761481077/5000000000 : ℚ), (62635515627/1000000000000 : ℚ), 2⟩,
    ⟨(499855444411/1000000000000 : ℚ), (-154029311/1000000000 : ℚ), (3175040549/50000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1542451501/10000000000 : ℚ), (63608714917/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (331594581547/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control223.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control223.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate223
