import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.ControlTransport
import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate245
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267676218839/1000000000000 : ℚ), (3293139696971/2500000000 : ℚ), (-176693248808743/500000000000 : ℚ), 11⟩,
    ⟨(33563188111/125000000000 : ℚ), (143668688169/1000000000 : ℚ), (-19533013230557/500000000000 : ℚ), 8⟩,
    ⟨(270156090509/1000000000000 : ℚ), (502105905767/10000000000 : ℚ), (-1392026213731/100000000000 : ℚ), 7⟩,
    ⟨(136306039829/500000000000 : ℚ), (61640925481/2500000000 : ℚ), (-6992183871729/1000000000000 : ℚ), 6⟩,
    ⟨(275849819819/1000000000000 : ℚ), (28497845473/2000000000 : ℚ), (-2070467586923/500000000000 : ℚ), 5⟩,
    ⟨(34979766223/125000000000 : ℚ), (90485989329/10000000000 : ℚ), (-539486531897/200000000000 : ℚ), 5⟩,
    ⟨(142269299973/500000000000 : ℚ), (61030141183/10000000000 : ℚ), (-933493531233/500000000000 : ℚ), 4⟩,
    ⟨(28990596221/100000000000 : ℚ), (10716500627/2500000000 : ℚ), (-269146435021/200000000000 : ℚ), 4⟩,
    ⟨(295888525943/1000000000000 : ℚ), (30954428099/10000000000 : ℚ), (-15580279143/15625000000 : ℚ), 4⟩,
    ⟨(60485735157/200000000000 : ℚ), (22769708653/10000000000 : ℚ), (-188119679853/250000000000 : ℚ), 3⟩,
    ⟨(154731713259/500000000000 : ℚ), (16935097127/10000000000 : ℚ), (-574103441931/1000000000000 : ℚ), 3⟩,
    ⟨(158462514823/500000000000 : ℚ), (6324936549/5000000000 : ℚ), (-8799703739/20000000000 : ℚ), 3⟩,
    ⟨(162370812927/500000000000 : ℚ), (9423705941/10000000000 : ℚ), (-168272366791/500000000000 : ℚ), 3⟩,
    ⟨(332837937047/1000000000000 : ℚ), (6943499139/10000000000 : ℚ), (-255045390023/1000000000000 : ℚ), 3⟩,
    ⟨(341135991321/1000000000000 : ℚ), (5002291501/10000000000 : ℚ), (-94831795717/500000000000 : ℚ), 3⟩,
    ⟨(174777936939/500000000000 : ℚ), (3459258529/10000000000 : ℚ), (-136400680123/1000000000000 : ℚ), 3⟩,
    ⟨(179008248323/500000000000 : ℚ), (443240001/2000000000 : ℚ), (-46220689037/500000000000 : ℚ), 2⟩,
    ⟨(366436379203/1000000000000 : ℚ), (601595917/5000000000 : ℚ), (-11152203883/200000000000 : ℚ), 2⟩,
    ⟨(374734433477/1000000000000 : ℚ), (369543587/10000000000 : ℚ), (-12438540189/500000000000 : ℚ), 2⟩,
    ⟨(382830744669/1000000000000 : ℚ), (-20128871/625000000 : ℚ), (6562871/5000000000 : ℚ), 2⟩,
    ⟨(390647340877/1000000000000 : ℚ), (-899460997/10000000000 : ℚ), (11818845867/500000000000 : ℚ), 2⟩,
    ⟨(199054472003/500000000000 : ℚ), (-1383650311/10000000000 : ℚ), (21364694167/500000000000 : ℚ), 2⟩,
    ⟨(405143694739/1000000000000 : ℚ), (-895306971/5000000000 : ℚ), (2362861967/40000000000 : ℚ), 2⟩,
    ⟨(411683844581/1000000000000 : ℚ), (-85304329/400000000 : ℚ), (73037308227/1000000000000 : ℚ), 2⟩,
    ⟨(417666408313/1000000000000 : ℚ), (-483815771/2000000000 : ℚ), (84915364971/1000000000000 : ℚ), 2⟩,
    ⟨(423033770577/1000000000000 : ℚ), (-41520683/156250000 : ℚ), (11866155597/125000000000 : ℚ), 2⟩,
    ⟨(21386712037/50000000000 : ℚ), (-2852976763/10000000000 : ℚ), (51625781457/500000000000 : ℚ), 2⟩,
    ⟨(26982659419/62500000000 : ℚ), (-3010363789/10000000000 : ℚ), (55007339567/500000000000 : ℚ), 2⟩,
    ⟨(86992058173/200000000000 : ℚ), (-3132764479/10000000000 : ℚ), (115318683081/1000000000000 : ℚ), 2⟩,
    ⟨(87483256003/200000000000 : ℚ), (-3222604561/10000000000 : ℚ), (119237350663/1000000000000 : ℚ), 2⟩,
    ⟨(87813373127/200000000000 : ℚ), (-3281594209/10000000000 : ℚ), (487290029/4000000000 : ℚ), 2⟩,
    ⟨(109974037921/250000000000 : ℚ), (-827705931/2500000000 : ℚ), (123107088527/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3314465117/10000000000 : ℚ), (30816822729/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (146475440389/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control245.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control245.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate245

namespace DiagonalRamsey.JointInheritedCertificate246
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54929742131/200000000000 : ℚ), (13282651527243/10000000000 : ℚ), (-18280788837171/50000000000 : ℚ), 11⟩,
    ⟨(137746283099/500000000000 : ℚ), (1448851981987/10000000000 : ℚ), (-5052280046843/125000000000 : ℚ), 8⟩,
    ⟨(138586075247/500000000000 : ℚ), (101287483959/2000000000 : ℚ), (-14402317964643/1000000000000 : ℚ), 7⟩,
    ⟨(279671288229/1000000000000 : ℚ), (248737767427/10000000000 : ℚ), (-1808627833063/250000000000 : ℚ), 6⟩,
    ⟨(141482955669/500000000000 : ℚ), (143776315853/10000000000 : ℚ), (-4284619090169/1000000000000 : ℚ), 5⟩,
    ⟨(143512145401/500000000000 : ℚ), (45662492561/5000000000 : ℚ), (-2791194053489/1000000000000 : ℚ), 5⟩,
    ⟨(291807342207/1000000000000 : ℚ), (61612314063/10000000000 : ℚ), (-966023304243/500000000000 : ℚ), 4⟩,
    ⟨(297269002153/1000000000000 : ℚ), (2164396141/500000000 : ℚ), (-139279510421/100000000000 : ℚ), 4⟩,
    ⟨(30335667187/100000000000 : ℚ), (31270098833/10000000000 : ℚ), (-516092290657/500000000000 : ℚ), 4⟩,
    ⟨(31001172377/100000000000 : ℚ), (4602337789/2000000000 : ℚ), (-194777780667/250000000000 : ℚ), 3⟩,
    ⟨(158585033033/500000000000 : ℚ), (8562091477/5000000000 : ℚ), (-18581880721/31250000000 : ℚ), 3⟩,
    ⟨(40595345001/125000000000 : ℚ), (12799965233/10000000000 : ℚ), (-227961141389/500000000000 : ℚ), 3⟩,
    ⟨(166358341901/500000000000 : ℚ), (2386110623/2500000000 : ℚ), (-348967827757/1000000000000 : ℚ), 3⟩,
    ⟨(68191047363/200000000000 : ℚ), (880220663/1250000000 : ℚ), (-132358629961/500000000000 : ℚ), 3⟩,
    ⟨(174699538639/500000000000 : ℚ), (635391063/1250000000 : ℚ), (-98572445923/500000000000 : ℚ), 3⟩,
    ⟨(35796688639/100000000000 : ℚ), (1763216841/5000000000 : ℚ), (-142113033313/1000000000000 : ℚ), 3⟩,
    ⟨(366576151467/1000000000000 : ℚ), (113628849/500000000 : ℚ), (-96708269817/1000000000000 : ℚ), 2⟩,
    ⟨(18757198029/50000000000 : ℚ), (125097859/1000000000 : ℚ), (-29417555493/500000000000 : ℚ), 2⟩,
    ⟨(191793900521/500000000000 : ℚ), (51307859/1250000000 : ℚ), (-26958931489/1000000000000 : ℚ), 2⟩,
    ⟨(78365270811/200000000000 : ℚ), (-28665251/1000000000 : ℚ), (30684753/500000000000 : ℚ), 2⟩,
    ⟨(7995605557/20000000000 : ℚ), (-868482561/10000000000 : ℚ), (4617018989/200000000000 : ℚ), 2⟩,
    ⟨(407372971791/1000000000000 : ℚ), (-84764959/625000000 : ℚ), (21383022701/500000000000 : ℚ), 2⟩,
    ⟨(414531314087/1000000000000 : ℚ), (-1766074903/10000000000 : ℚ), (116417353/1953125000 : ℚ), 2⟩,
    ⟨(421186365987/1000000000000 : ℚ), (-2110377543/10000000000 : ℚ), (73990867841/1000000000000 : ℚ), 2⟩,
    ⟨(53409254463/125000000000 : ℚ), (-599674277/2500000000 : ℚ), (86221054463/1000000000000 : ℚ), 2⟩,
    ⟨(432735695651/1000000000000 : ℚ), (-527682757/2000000000 : ℚ), (96528222683/1000000000000 : ℚ), 2⟩,
    ⟨(87503749411/200000000000 : ℚ), (-2835226429/10000000000 : ℚ), (5254580719/50000000000 : ℚ), 2⟩,
    ⟨(441577126519/1000000000000 : ℚ), (-2993511593/10000000000 : ℚ), (112048747947/1000000000000 : ℚ), 2⟩,
    ⟨(444871749629/1000000000000 : ℚ), (-623317619/2000000000 : ℚ), (117503670887/1000000000000 : ℚ), 2⟩,
    ⟨(447370887363/1000000000000 : ℚ), (-3206911001/10000000000 : ℚ), (121533115319/1000000000000 : ℚ), 2⟩,
    ⟨(449050471659/1000000000000 : ℚ), (-3266211389/10000000000 : ℚ), (7761937911/62500000000 : ℚ), 2⟩,
    ⟨(224947163601/500000000000 : ℚ), (-102987281/312500000 : ℚ), (62755813329/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3299253243/10000000000 : ℚ), (125676318597/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (36006466233/125000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control246.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control246.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate246

namespace DiagonalRamsey.JointInheritedCertificate247
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140854364257/500000000000 : ℚ), (13399776318631/10000000000 : ℚ), (-189157126909961/500000000000 : ℚ), 11⟩,
    ⟨(282566732343/1000000000000 : ℚ), (1461795698259/10000000000 : ℚ), (-20911217497257/500000000000 : ℚ), 8⟩,
    ⟨(71068619239/250000000000 : ℚ), (63880911687/1250000000 : ℚ), (-7451488908301/500000000000 : ℚ), 7⟩,
    ⟨(143407757919/500000000000 : ℚ), (125526196677/5000000000 : ℚ), (-7486248181383/1000000000000 : ℚ), 6⟩,
    ⟨(72541344349/250000000000 : ℚ), (18143410753/1250000000 : ℚ), (-4433929684587/1000000000000 : ℚ), 5⟩,
    ⟨(294291800631/1000000000000 : ℚ), (23054800597/2500000000 : ℚ), (-2888668502683/1000000000000 : ℚ), 5⟩,
    ⟨(299155045833/1000000000000 : ℚ), (31116627779/5000000000 : ℚ), (-1999719826717/1000000000000 : ℚ), 4⟩,
    ⟨(76177069323/250000000000 : ℚ), (43738320063/10000000000 : ℚ), (-1441783216043/1000000000000 : ℚ), 4⟩,
    ⟨(19431125897/62500000000 : ℚ), (1975462431/625000000 : ℚ), (-213739529911/200000000000 : ℚ), 4⟩,
    ⟨(317664646463/1000000000000 : ℚ), (2908815853/1250000000 : ℚ), (-806889467177/1000000000000 : ℚ), 3⟩,
    ⟨(324943007257/1000000000000 : ℚ), (8663340207/5000000000 : ℚ), (-308025438043/500000000000 : ℚ), 3⟩,
    ⟨(166331501071/500000000000 : ℚ), (12960909543/10000000000 : ℚ), (-236300248301/500000000000 : ℚ), 3⟩,
    ⟨(85187570837/250000000000 : ℚ), (1209260873/1250000000 : ℚ), (-72400060349/200000000000 : ℚ), 3⟩,
    ⟨(174563482967/500000000000 : ℚ), (1786858863/2500000000 : ℚ), (-34362028611/125000000000 : ℚ), 3⟩,
    ⟨(89428094467/250000000000 : ℚ), (5170188799/10000000000 : ℚ), (-205052689689/1000000000000 : ℚ), 3⟩,
    ⟨(366423836941/1000000000000 : ℚ), (899723499/2500000000 : ℚ), (-148187598909/1000000000000 : ℚ), 3⟩,
    ⟨(375177447039/1000000000000 : ℚ), (583371599/2500000000 : ℚ), (-202571217/2000000000 : ℚ), 2⟩,
    ⟨(2999132079/7812500000 : ℚ), (130268907/1000000000 : ℚ), (-62177650629/1000000000000 : ℚ), 2⟩,
    ⟨(392474318047/1000000000000 : ℚ), (90962113/2000000000 : ℚ), (-14637480347/500000000000 : ℚ), 2⟩,
    ⟨(400851000633/1000000000000 : ℚ), (-49643921/2000000000 : ℚ), (-8724597/6250000000 : ℚ), 2⟩,
    ⟨(204469140919/500000000000 : ℚ), (-834812751/10000000000 : ℚ), (2793682583/125000000000 : ℚ), 2⟩,
    ⟨(416658276723/1000000000000 : ℚ), (-132640987/1000000000 : ℚ), (21319314287/500000000000 : ℚ), 2⟩,
    ⟨(211968318759/500000000000 : ℚ), (-869670801/5000000000 : ℚ), (5999133099/100000000000 : ℚ), 2⟩,
    ⟨(107675817407/250000000000 : ℚ), (-1043068297/5000000000 : ℚ), (74808716227/1000000000000 : ℚ), 2⟩,
    ⟨(13652906459/31250000000 : ℚ), (-2376455479/10000000000 : ℚ), (17480292471/200000000000 : ℚ), 2⟩,
    ⟨(442446238147/1000000000000 : ℚ), (-2617766029/10000000000 : ℚ), (98010367613/1000000000000 : ℚ), 2⟩,
    ⟨(447309483349/1000000000000 : ℚ), (-2815836181/10000000000 : ℚ), (106821595257/1000000000000 : ℚ), 2⟩,
    ⟨(90287181317/200000000000 : ℚ), (-371887071/1250000000 : ℚ), (14247257121/125000000000 : ℚ), 2⟩,
    ⟨(227392884071/500000000000 : ℚ), (-3098907707/10000000000 : ℚ), (29896985477/250000000000 : ℚ), 2⟩,
    ⟨(18293072281/40000000000 : ℚ), (-3189755947/10000000000 : ℚ), (6186553929/50000000000 : ℚ), 2⟩,
    ⟨(459034551637/1000000000000 : ℚ), (-812348667/2500000000 : ℚ), (63231796849/500000000000 : ℚ), 2⟩,
    ⟨(459892555467/1000000000000 : ℚ), (-819735483/2500000000 : ℚ), (7988823801/62500000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3282622729/10000000000 : ℚ), (25598095547/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (7077730971/25000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control247.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control247.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate247

namespace DiagonalRamsey.JointInheritedCertificate248
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57771599499/200000000000 : ℚ), (6761985463403/5000000000 : ℚ), (-391503328965313/1000000000000 : ℚ), 11⟩,
    ⟨(289729720101/1000000000000 : ℚ), (1475522218379/10000000000 : ℚ), (-2705061284823/62500000000 : ℚ), 8⟩,
    ⟨(72866192537/250000000000 : ℚ), (51593703631/1000000000 : ℚ), (-3855772451191/250000000000 : ℚ), 7⟩,
    ⟨(58809287631/200000000000 : ℚ), (126754174909/5000000000 : ℚ), (-61982585513/8000000000 : ℚ), 6⟩,
    ⟨(2323827041/7812500000 : ℚ), (146602603001/10000000000 : ℚ), (-4589123201851/1000000000000 : ℚ), 5⟩,
    ⟨(301642262603/1000000000000 : ℚ), (93168950747/10000000000 : ℚ), (-2990024955421/1000000000000 : ℚ), 5⟩,
    ⟨(153291633551/500000000000 : ℚ), (62893184883/10000000000 : ℚ), (-258765687233/125000000000 : ℚ), 4⟩,
    ⟨(312225290171/1000000000000 : ℚ), (44217355813/10000000000 : ℚ), (-746391928669/500000000000 : ℚ), 4⟩,
    ⟨(79628499011/250000000000 : ℚ), (15983225241/5000000000 : ℚ), (-1106743450447/1000000000000 : ℚ), 4⟩,
    ⟨(65077764209/200000000000 : ℚ), (23546316117/10000000000 : ℚ), (-417932737643/500000000000 : ℚ), 3⟩,
    ⟨(332783556851/1000000000000 : ℚ), (17542662011/10000000000 : ℚ), (-39902288283/62500000000 : ℚ), 3⟩,
    ⟨(68125397623/200000000000 : ℚ), (3283190491/2500000000 : ℚ), (-61256622863/125000000000 : ℚ), 3⟩,
    ⟨(174421789153/500000000000 : ℚ), (9812682139/10000000000 : ℚ), (-37566924383/100000000000 : ℚ), 3⟩,
    ⟨(22334637323/62500000000 : ℚ), (3630270771/5000000000 : ℚ), (-285604659447/1000000000000 : ℚ), 3⟩,
    ⟨(366076882789/1000000000000 : ℚ), (1315873859/2500000000 : ℚ), (-13337850491/62500000000 : ℚ), 3⟩,
    ⟨(187463815469/500000000000 : ℚ), (1838327533/5000000000 : ℚ), (-154640002969/1000000000000 : ℚ), 2⟩,
    ⟨(383821204073/1000000000000 : ℚ), (2398937557/10000000000 : ℚ), (-53093296837/500000000000 : ℚ), 2⟩,
    ⟨(392671952223/1000000000000 : ℚ), (1358327243/10000000000 : ℚ), (-32899928557/500000000000 : ℚ), 2⟩,
    ⟨(100348659461/250000000000 : ℚ), (100517219/2000000000 : ℚ), (-31834759271/1000000000000 : ℚ), 2⟩,
    ⟨(204952628353/500000000000 : ℚ), (-103383827/5000000000 : ℚ), (-1198277/390625000 : ℚ), 2⟩,
    ⟨(26132615431/62500000000 : ℚ), (-399229643/5000000000 : ℚ), (10711826323/500000000000 : ℚ), 2⟩,
    ⟨(5324565977/12500000000 : ℚ), (-161771549/1250000000 : ℚ), (42340923231/1000000000000 : ℚ), 2⟩,
    ⟨(433360013967/1000000000000 : ℚ), (-1710426893/10000000000 : ℚ), (60223037119/1000000000000 : ℚ), 2⟩,
    ⟨(55029354871/125000000000 : ℚ), (-411980041/2000000000 : ℚ), (15097206821/200000000000 : ℚ), 2⟩,
    ⟨(446523544841/1000000000000 : ℚ), (-2352370433/10000000000 : ℚ), (11056536091/125000000000 : ℚ), 2⟩,
    ⟨(45216556791/100000000000 : ℚ), (-2595398257/10000000000 : ℚ), (49685901831/500000000000 : ℚ), 2⟩,
    ⟨(457106572409/1000000000000 : ℚ), (-698706231/2500000000 : ℚ), (54218985731/500000000000 : ℚ), 2⟩,
    ⟨(115324743441/250000000000 : ℚ), (-2955138481/10000000000 : ℚ), (23159868391/200000000000 : ℚ), 2⟩,
    ⟨(464702396857/1000000000000 : ℚ), (-1539871873/5000000000 : ℚ), (3039210969/25000000000 : ℚ), 2⟩,
    ⟨(14602627027/31250000000 : ℚ), (-3171160311/10000000000 : ℚ), (1258283329/10000000000 : ℚ), 2⟩,
    ⟨(469019114911/1000000000000 : ℚ), (-3231165267/10000000000 : ℚ), (16079682267/125000000000 : ℚ), 2⟩,
    ⟨(469890837517/1000000000000 : ℚ), (-3260891921/10000000000 : ℚ), (3250824717/25000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-408074371/1250000000 : ℚ), (813793823/6250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (278122896431/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control248.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control248.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate248

namespace DiagonalRamsey.JointInheritedCertificate249
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29602743547/100000000000 : ℚ), (852921773481/625000000 : ℚ), (-25303473978167/62500000000 : ℚ), 11⟩,
    ⟨(18557048737/62500000000 : ℚ), (1489090959957/10000000000 : ℚ), (-44757496691513/1000000000000 : ℚ), 8⟩,
    ⟨(149337471043/500000000000 : ℚ), (16274054479/312500000 : ℚ), (-25519289951/1600000000 : ℚ), 7⟩,
    ⟨(150648475883/500000000000 : ℚ), (7997969287/312500000 : ℚ), (-8012552994547/1000000000000 : ℚ), 6⟩,
    ⟨(152376778723/500000000000 : ℚ), (148040039643/10000000000 : ℚ), (-2373077810841/500000000000 : ℚ), 5⟩,
    ⟨(154505735061/500000000000 : ℚ), (23526646047/2500000000 : ℚ), (-386569385271/125000000000 : ℚ), 5⟩,
    ⟨(31402968377/100000000000 : ℚ), (63544305813/10000000000 : ℚ), (-1070661569643/500000000000 : ℚ), 4⟩,
    ⟨(159879935123/500000000000 : ℚ), (2234482443/500000000 : ℚ), (-772168949791/500000000000 : ℚ), 4⟩,
    ⟨(13045873789/40000000000 : ℚ), (32320131803/10000000000 : ℚ), (-45807365177/40000000000 : ℚ), 4⟩,
    ⟨(6662581943/20000000000 : ℚ), (23817690233/10000000000 : ℚ), (-173025223757/200000000000 : ℚ), 3⟩,
    ⟨(85159846153/250000000000 : ℚ), (443872939/250000000 : ℚ), (-4131422559/6250000000 : ℚ), 3⟩,
    ⟨(348605378939/1000000000000 : ℚ), (6650700123/5000000000 : ℚ), (-253826012631/500000000000 : ℚ), 3⟩,
    ⟨(1427801453/4000000000 : ℚ), (4974226341/5000000000 : ℚ), (-194720205361/500000000000 : ℚ), 3⟩,
    ⟨(73118794157/200000000000 : ℚ), (368556277/500000000 : ℚ), (-29638129407/100000000000 : ℚ), 3⟩,
    ⟨(187226479439/500000000000 : ℚ), (669314891/1250000000 : ℚ), (-44360060043/200000000000 : ℚ), 3⟩,
    ⟨(383442010631/1000000000000 : ℚ), (750465043/2000000000 : ℚ), (-161113462749/1000000000000 : ℚ), 2⟩,
    ⟨(392474556561/1000000000000 : ℚ), (2462454133/10000000000 : ℚ), (-27773072879/250000000000 : ℚ), 2⟩,
    ⟨(401463608313/1000000000000 : ℚ), (1412159689/10000000000 : ℚ), (-34706917961/500000000000 : ℚ), 2⟩,
    ⟨(205161298203/500000000000 : ℚ), (68582907/1250000000 : ℚ), (-34376067731/1000000000000 : ℚ), 2⟩,
    ⟨(418966203941/1000000000000 : ℚ), (-5216369/312500000 : ℚ), (-2356308567/500000000000 : ℚ), 2⟩,
    ⟨(106827797063/250000000000 : ℚ), (-381818743/5000000000 : ℚ), (4106181127/200000000000 : ℚ), 2⟩,
    ⟨(435277182579/1000000000000 : ℚ), (-252680303/2000000000 : ℚ), (42081349863/1000000000000 : ℚ), 2⟩,
    ⟨(221393735021/500000000000 : ℚ), (-841461629/5000000000 : ℚ), (60496849199/1000000000000 : ℚ), 2⟩,
    ⟨(449769722467/1000000000000 : ℚ), (-508756879/2500000000 : ℚ), (76208550423/1000000000000 : ℚ), 2⟩,
    ⟨(91231339389/200000000000 : ℚ), (-291201103/1250000000 : ℚ), (89550699449/1000000000000 : ℚ), 2⟩,
    ⟨(230943441711/500000000000 : ℚ), (-2574319979/10000000000 : ℚ), (100782645113/1000000000000 : ℚ), 2⟩,
    ⟨(466905097069/1000000000000 : ℚ), (-1387537471/5000000000 : ℚ), (13763140531/125000000000 : ℚ), 2⟩,
    ⟨(235581504873/500000000000 : ℚ), (-293641873/1000000000 : ℚ), (117672417573/1000000000000 : ℚ), 2⟩,
    ⟨(18984784617/40000000000 : ℚ), (-1530900061/5000000000 : ℚ), (123601455541/1000000000000 : ℚ), 2⟩,
    ⟨(238620812553/500000000000 : ℚ), (-3153771711/10000000000 : ℚ), (63989303839/500000000000 : ℚ), 2⟩,
    ⟨(2395018937/5000000000 : ℚ), (-3214134127/10000000000 : ℚ), (130864655117/1000000000000 : ℚ), 2⟩,
    ⟨(239944565861/500000000000 : ℚ), (-324403581/1000000000 : ℚ), (33074569667/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3247760563/10000000000 : ℚ), (132477046137/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (34141218373/125000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control249.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control249.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate249

namespace DiagonalRamsey.JointInheritedCertificate273
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(283503448367/1000000000000 : ℚ), (6645304393971/5000000000 : ℚ), (-377609660781451/1000000000000 : ℚ), 11⟩,
    ⟨(142176407669/500000000000 : ℚ), (1450155906769/10000000000 : ℚ), (-1304489791171/31250000000 : ℚ), 8⟩,
    ⟨(286043369411/1000000000000 : ℚ), (31694088349/625000000 : ℚ), (-7437140314291/500000000000 : ℚ), 7⟩,
    ⟨(288558829627/1000000000000 : ℚ), (249184310121/10000000000 : ℚ), (-3735670926391/500000000000 : ℚ), 6⟩,
    ⟨(291874970729/1000000000000 : ℚ), (144106520089/10000000000 : ℚ), (-4424696575971/1000000000000 : ℚ), 5⟩,
    ⟨(18497491029/62500000000 : ℚ), (5723818803/625000000 : ℚ), (-576461178307/200000000000 : ℚ), 5⟩,
    ⟨(300774147151/1000000000000 : ℚ), (30908067871/5000000000 : ℚ), (-1995007886213/1000000000000 : ℚ), 4⟩,
    ⟨(306271478539/1000000000000 : ℚ), (43452583833/10000000000 : ℚ), (-1438107734691/1000000000000 : ℚ), 4⟩,
    ⟨(1952493177/6250000000 : ℚ), (3140437221/1000000000 : ℚ), (-53285839583/50000000000 : ℚ), 4⟩,
    ⟨(319097425997/1000000000000 : ℚ), (23121861661/10000000000 : ℚ), (-402199334991/500000000000 : ℚ), 3⟩,
    ⟨(163151260591/500000000000 : ℚ), (17214984353/10000000000 : ℚ), (-613920854583/1000000000000 : ℚ), 3⟩,
    ⟨(33394480487/100000000000 : ℚ), (6437537101/5000000000 : ℚ), (-94149199231/200000000000 : ℚ), 3⟩,
    ⟨(85487669423/250000000000 : ℚ), (9606787267/10000000000 : ℚ), (-45045392093/125000000000 : ℚ), 3⟩,
    ⟨(87560759679/250000000000 : ℚ), (7093712861/10000000000 : ℚ), (-34179438343/125000000000 : ℚ), 3⟩,
    ⟨(89685506993/250000000000 : ℚ), (80103301/156250000 : ℚ), (-50934722497/250000000000 : ℚ), 3⟩,
    ⟨(91841448887/250000000000 : ℚ), (1781519329/5000000000 : ℚ), (-29399767899/200000000000 : ℚ), 3⟩,
    ⟨(376031289847/1000000000000 : ℚ), (71987853/312500000 : ℚ), (-50102605291/500000000000 : ℚ), 2⟩,
    ⟨(384655057423/1000000000000 : ℚ), (319379867/2500000000 : ℚ), (-61192510593/1000000000000 : ℚ), 2⟩,
    ⟨(393154046679/1000000000000 : ℚ), (433396961/10000000000 : ℚ), (-28374439021/1000000000000 : ℚ), 2⟩,
    ⟨(200723203851/500000000000 : ℚ), (-266597391/10000000000 : ℚ), (-14277269/25000000000 : ℚ), 2⟩,
    ⟨(102363070131/250000000000 : ℚ), (-850711297/10000000000 : ℚ), (11553202057/500000000000 : ℚ), 2⟩,
    ⟨(417094564213/1000000000000 : ℚ), (-268053539/2000000000 : ℚ), (43334649423/1000000000000 : ℚ), 2⟩,
    ⟨(212149829699/500000000000 : ℚ), (-1751511047/10000000000 : ℚ), (30316432457/500000000000 : ℚ), 2⟩,
    ⟨(17239927083/40000000000 : ℚ), (-2096906353/10000000000 : ℚ), (7540182811/100000000000 : ℚ), 2⟩,
    ⟨(54640700857/125000000000 : ℚ), (-2386066689/10000000000 : ℚ), (43975980607/500000000000 : ℚ), 2⟩,
    ⟨(110655734561/250000000000 : ℚ), (-1313211953/5000000000 : ℚ), (98523881659/1000000000000 : ℚ), 2⟩,
    ⟨(447437228931/1000000000000 : ℚ), (-176482411/625000000 : ℚ), (107303619981/1000000000000 : ℚ), 2⟩,
    ⟨(225761057333/500000000000 : ℚ), (-745590103/2500000000 : ℚ), (2288679733/20000000000 : ℚ), 2⟩,
    ⟨(56854781971/125000000000 : ℚ), (-1552847007/5000000000 : ℚ), (120023091089/1000000000000 : ℚ), 2⟩,
    ⟨(28584607249/62500000000 : ℚ), (-3196193853/10000000000 : ℚ), (62075349403/500000000000 : ℚ), 2⟩,
    ⟨(459044270057/1000000000000 : ℚ), (-3255604837/10000000000 : ℚ), (31718222113/250000000000 : ℚ), 2⟩,
    ⟨(114973409257/250000000000 : ℚ), (-821259893/2500000000 : ℚ), (16028165153/125000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-822176591/2500000000 : ℚ), (64196987069/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (146154890949/500000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control273.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control273.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate273

namespace DiagonalRamsey.JointInheritedCertificate274
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(290608372033/1000000000000 : ℚ), (1675518508967/1250000000 : ℚ), (-78074610085803/200000000000 : ℚ), 11⟩,
    ⟨(145735835593/500000000000 : ℚ), (1462702451511/10000000000 : ℚ), (-8630987365743/200000000000 : ℚ), 8⟩,
    ⟨(5863799109/20000000000 : ℚ), (511573152369/10000000000 : ℚ), (-15377382146673/1000000000000 : ℚ), 7⟩,
    ⟨(295746676809/1000000000000 : ℚ), (125713516343/5000000000 : ℚ), (-3862122993543/500000000000 : ℚ), 6⟩,
    ⟨(74779303159/250000000000 : ℚ), (29086890521/2000000000 : ℚ), (-4574650562029/1000000000000 : ℚ), 5⟩,
    ⟨(303269102831/1000000000000 : ℚ), (4622342763/500000000 : ℚ), (-2980159127853/1000000000000 : ℚ), 5⟩,
    ⟨(308162362421/1000000000000 : ℚ), (15604240243/2500000000 : ℚ), (-1031454169693/500000000000 : ℚ), 4⟩,
    ⟨(313749866641/1000000000000 : ℚ), (2743004201/625000000 : ℚ), (-1487228666661/1000000000000 : ℚ), 4⟩,
    ⟨(319977804771/1000000000000 : ℚ), (3173020337/1000000000 : ℚ), (-1102300280779/1000000000000 : ℚ), 4⟩,
    ⟨(163393099181/500000000000 : ℚ), (23371617129/10000000000 : ℚ), (-832204406033/1000000000000 : ℚ), 3⟩,
    ⟨(334109478863/1000000000000 : ℚ), (17410111117/10000000000 : ℚ), (-158837086943/250000000000 : ℚ), 3⟩,
    ⟨(170938559539/500000000000 : ℚ), (6514954919/5000000000 : ℚ), (-97479759233/200000000000 : ℚ), 3⟩,
    ⟨(175007156193/500000000000 : ℚ), (4865637313/5000000000 : ℚ), (-186676924333/500000000000 : ℚ), 3⟩,
    ⟨(358442693167/1000000000000 : ℚ), (3597478413/5000000000 : ℚ), (-141780302669/500000000000 : ℚ), 3⟩,
    ⟨(91770272877/250000000000 : ℚ), (260490793/500000000 : ℚ), (-211583853753/1000000000000 : ℚ), 3⟩,
    ⟨(375846314909/1000000000000 : ℚ), (726418939/2000000000 : ℚ), (-76501993653/500000000000 : ℚ), 3⟩,
    ⟨(192326974739/500000000000 : ℚ), (295184749/1250000000 : ℚ), (-2617709399/25000000000 : ℚ), 2⟩,
    ⟨(393419172879/1000000000000 : ℚ), (331619979/2500000000 : ℚ), (-64457538903/1000000000000 : ℚ), 2⟩,
    ⟨(402057571219/1000000000000 : ℚ), (59404223/1250000000 : ℚ), (-30610722123/1000000000000 : ℚ), 2⟩,
    ⟨(410485952001/1000000000000 : ℚ), (-115239181/5000000000 : ℚ), (-1947271549/1000000000000 : ℚ), 2⟩,
    ⟨(418623145309/1000000000000 : ℚ), (-409596023/5000000000 : ℚ), (5613153491/250000000000 : ℚ), 2⟩,
    ⟨(106597696381/250000000000 : ℚ), (-131245273/1000000000 : ℚ), (21644650011/500000000000 : ℚ), 2⟩,
    ⟨(54214258253/125000000000 : ℚ), (-863339303/5000000000 : ℚ), (12220087861/200000000000 : ℚ), 2⟩,
    ⟨(88104491923/200000000000 : ℚ), (-2074471299/10000000000 : ℚ), (7630121447/100000000000 : ℚ), 2⟩,
    ⟨(89350079549/200000000000 : ℚ), (-1182775909/5000000000 : ℚ), (89213358969/1000000000000 : ℚ), 2⟩,
    ⟨(90467580393/200000000000 : ℚ), (-1303718703/5000000000 : ℚ), (10008638817/100000000000 : ℚ), 2⟩,
    ⟨(91446232311/200000000000 : ℚ), (-112237441/400000000 : ℚ), (13639164727/125000000000 : ℚ), 2⟩,
    ⟨(1845532207/4000000000 : ℚ), (-741377541/2500000000 : ℚ), (116442403007/1000000000000 : ℚ), 2⟩,
    ⟨(232376793789/500000000000 : ℚ), (-3089545139/10000000000 : ℚ), (15273242037/125000000000 : ℚ), 2⟩,
    ⟨(58413788617/125000000000 : ℚ), (-3180545963/10000000000 : ℚ), (126426810333/1000000000000 : ℚ), 2⟩,
    ⟨(1172571483/2500000000 : ℚ), (-1620139663/5000000000 : ℚ), (64611663933/500000000000 : ℚ), 2⟩,
    ⟨(234945946177/500000000000 : ℚ), (-3269871827/10000000000 : ℚ), (1044900609/8000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1636779091/5000000000 : ℚ), (32696453729/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (28726964961/100000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control274.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control274.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate274

namespace DiagonalRamsey.JointInheritedCertificate275
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(148901166287/500000000000 : ℚ), (6762380279919/5000000000 : ℚ), (-25226820441801/62500000000 : ℚ), 11⟩,
    ⟨(37334891929/125000000000 : ℚ), (738016076519/5000000000 : ℚ), (-22310389285341/500000000000 : ℚ), 8⟩,
    ⟨(300424297057/1000000000000 : ℚ), (516320877323/10000000000 : ℚ), (-3180002875259/200000000000 : ℚ), 7⟩,
    ⟨(75755252647/250000000000 : ℚ), (253811137929/10000000000 : ℚ), (-1996756475253/250000000000 : ℚ), 6⟩,
    ⟨(61288853651/200000000000 : ℚ), (2294480577/156250000 : ℚ), (-4730508243081/1000000000000 : ℚ), 5⟩,
    ⟨(62132220443/200000000000 : ℚ), (3734726077/400000000 : ℚ), (-308190662621/100000000000 : ℚ), 5⟩,
    ⟨(315630902051/1000000000000 : ℚ), (12611355399/2000000000 : ℚ), (-533387154811/250000000000 : ℚ), 4⟩,
    ⟨(80326451469/250000000000 : ℚ), (44352186699/10000000000 : ℚ), (-153836644939/100000000000 : ℚ), 4⟩,
    ⟨(327631161261/1000000000000 : ℚ), (6415555973/2000000000 : ℚ), (-570209398691/500000000000 : ℚ), 4⟩,
    ⟨(334546051579/1000000000000 : ℚ), (5909578743/2500000000 : ℚ), (-430604346247/500000000000 : ℚ), 3⟩,
    ⟨(170991941327/500000000000 : ℚ), (880935537/500000000 : ℚ), (-20554086247/31250000000 : ℚ), 3⟩,
    ⟨(349873024107/1000000000000 : ℚ), (6597820241/5000000000 : ℚ), (-504824999007/1000000000000 : ℚ), 3⟩,
    ⟨(179068749597/500000000000 : ℚ), (9864698029/10000000000 : ℚ), (-386979600129/1000000000000 : ℚ), 3⟩,
    ⟨(366697716501/1000000000000 : ℚ), (7303620841/10000000000 : ℚ), (-14710665621/50000000000 : ℚ), 3⟩,
    ⟨(375471236457/1000000000000 : ℚ), (1324812461/2500000000 : ℚ), (-54967940161/250000000000 : ℚ), 3⟩,
    ⟨(384373565269/1000000000000 : ℚ), (3706433653/10000000000 : ℚ), (-31876909713/200000000000 : ℚ), 3⟩,
    ⟨(196659484321/500000000000 : ℚ), (605966971/2500000000 : ℚ), (-4381302979/40000000000 : ℚ), 2⟩,
    ⟨(402221297453/1000000000000 : ℚ), (689674473/5000000000 : ℚ), (-67999479279/1000000000000 : ℚ), 2⟩,
    ⟨(410994817409/1000000000000 : ℚ), (260239457/5000000000 : ℚ), (-33087916173/1000000000000 : ℚ), 2⟩,
    ⟨(419555034717/1000000000000 : ℚ), (-19136011/1000000000 : ℚ), (-3534868831/1000000000000 : ℚ), 2⟩,
    ⟨(106954877451/250000000000 : ℚ), (-39250457/500000000 : ℚ), (10805815707/500000000000 : ℚ), 2⟩,
    ⟨(435708651257/1000000000000 : ℚ), (-1282249841/10000000000 : ℚ), (21538336793/500000000000 : ℚ), 2⟩,
    ⟨(110786620583/250000000000 : ℚ), (-339936967/2000000000 : ℚ), (61417100157/1000000000000 : ℚ), 2⟩,
    ⟨(450061372649/1000000000000 : ℚ), (-410012163/2000000000 : ℚ), (77063100509/1000000000000 : ℚ), 2⟩,
    ⟨(91277345607/200000000000 : ℚ), (-234321343/1000000000 : ℚ), (22587050311/250000000000 : ℚ), 2⟩,
    ⟨(462061631859/1000000000000 : ℚ), (-2586750649/10000000000 : ℚ), (101531202153/1000000000000 : ℚ), 2⟩,
    ⟨(29189464481/62500000000 : ℚ), (-696638017/2500000000 : ℚ), (110812414479/1000000000000 : ℚ), 2⟩,
    ⟨(58906033207/125000000000 : ℚ), (-2947136309/10000000000 : ℚ), (59172892803/500000000000 : ℚ), 2⟩,
    ⟨(474671523323/1000000000000 : ℚ), (-1535966003/5000000000 : ℚ), (62123992261/500000000000 : ℚ), 2⟩,
    ⟨(238634118427/500000000000 : ℚ), (-395434587/1250000000 : ℚ), (6430258977/50000000000 : ℚ), 2⟩,
    ⟨(479013398479/1000000000000 : ℚ), (-3223560261/10000000000 : ℚ), (410868761/3125000000 : ℚ), 2⟩,
    ⟨(59986275167/125000000000 : ℚ), (-3253324217/10000000000 : ℚ), (5316201589/40000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1628515917/5000000000 : ℚ), (26616597/200000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (70546115059/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control275.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control275.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate275

namespace DiagonalRamsey.JointInheritedCertificate276
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(156194497891/500000000000 : ℚ), (2755715406613/2000000000 : ℚ), (-431329541119523/1000000000000 : ℚ), 11⟩,
    ⟨(313291849627/1000000000000 : ℚ), (2350132449/15625000 : ℚ), (-9536794817997/200000000000 : ℚ), 8⟩,
    ⟨(157544431171/500000000000 : ℚ), (263156845853/5000000000 : ℚ), (-4248063194313/250000000000 : ℚ), 7⟩,
    ⟨(317762727711/1000000000000 : ℚ), (51765987403/2000000000 : ℚ), (-1067033926691/125000000000 : ℚ), 6⟩,
    ⟨(321287694949/1000000000000 : ℚ), (14982044443/1000000000 : ℚ), (-202253154563/40000000000 : ℚ), 5⟩,
    ⟨(40703727087/125000000000 : ℚ), (95308486661/10000000000 : ℚ), (-3294660724231/1000000000000 : ℚ), 5⟩,
    ⟨(330747275943/1000000000000 : ℚ), (64404672059/10000000000 : ℚ), (-285163076397/125000000000 : ℚ), 4⟩,
    ⟨(336590788763/1000000000000 : ℚ), (45330242699/10000000000 : ℚ), (-32907492731/20000000000 : ℚ), 4⟩,
    ⟨(85776019733/250000000000 : ℚ), (2050654451/625000000 : ℚ), (-610113723369/500000000000 : ℚ), 4⟩,
    ⟨(5472256561/15625000000 : ℚ), (6050172033/2500000000 : ℚ), (-36879143047/40000000000 : ℚ), 3⟩,
    ⟨(71576647781/200000000000 : ℚ), (9029350853/5000000000 : ℚ), (-704670640751/1000000000000 : ℚ), 3⟩,
    ⟨(9150169433/25000000000 : ℚ), (3386324177/2500000000 : ℚ), (-270708061347/500000000000 : ℚ), 3⟩,
    ⟨(187258400517/500000000000 : ℚ), (10146246597/10000000000 : ℚ), (-20781882311/50000000000 : ℚ), 3⟩,
    ⟨(191665676933/500000000000 : ℚ), (3766474043/5000000000 : ℚ), (-316667770951/1000000000000 : ℚ), 3⟩,
    ⟨(196182773427/500000000000 : ℚ), (219519831/400000000 : ℚ), (-118697041831/500000000000 : ℚ), 3⟩,
    ⟨(401532375781/1000000000000 : ℚ), (1931652587/5000000000 : ℚ), (-86465508603/500000000000 : ℚ), 3⟩,
    ⟨(410743559073/1000000000000 : ℚ), (511098291/2000000000 : ℚ), (-119836895601/1000000000000 : ℚ), 2⟩,
    ⟨(419910387999/1000000000000 : ℚ), (1490841281/10000000000 : ℚ), (-9454327211/125000000000 : ℚ), 2⟩,
    ⟨(428944580987/1000000000000 : ℚ), (307919629/5000000000 : ℚ), (-38508474349/1000000000000 : ℚ), 2⟩,
    ⟨(437759133819/1000000000000 : ℚ), (-108973851/10000000000 : ℚ), (-7106816869/1000000000000 : ℚ), 2⟩,
    ⟨(446269157533/1000000000000 : ℚ), (-178270453/2500000000 : ℚ), (3917931803/200000000000 : ℚ), 2⟩,
    ⟨(113598173987/250000000000 : ℚ), (-60938169/500000000 : ℚ), (42357826747/1000000000000 : ℚ), 2⟩,
    ⟨(462051514949/1000000000000 : ℚ), (-1643009441/10000000000 : ℚ), (15448688147/250000000000 : ℚ), 2⟩,
    ⟨(469171855921/1000000000000 : ℚ), (-99943611/500000000 : ℚ), (78362109047/1000000000000 : ℚ), 2⟩,
    ⟨(47568514609/100000000000 : ℚ), (-2296428929/10000000000 : ℚ), (18483637497/200000000000 : ℚ), 2⟩,
    ⟨(48152865891/100000000000 : ℚ), (-158967427/625000000 : ℚ), (52120653037/500000000000 : ℚ), 2⟩,
    ⟨(243323059079/500000000000 : ℚ), (-171628291/625000000 : ℚ), (57023564987/500000000000 : ℚ), 2⟩,
    ⟨(15343382497/31250000000 : ℚ), (-363598441/1250000000 : ℚ), (61000799991/500000000000 : ℚ), 2⟩,
    ⟨(247256603571/500000000000 : ℚ), (-3035203597/10000000000 : ℚ), (128230616643/1000000000000 : ℚ), 2⟩,
    ⟨(497187072511/1000000000000 : ℚ), (-3127907139/10000000000 : ℚ), (132827263581/1000000000000 : ℚ), 2⟩,
    ⟨(249492042613/500000000000 : ℚ), (-3188737093/10000000000 : ℚ), (135857098489/1000000000000 : ℚ), 2⟩,
    ⟨(499886939071/1000000000000 : ℚ), (-128754661/400000000 : ℚ), (137361867169/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-805654867/2500000000 : ℚ), (34387373279/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (16994822137/62500000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control276.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control276.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate276

namespace DiagonalRamsey.JointInheritedCertificate277
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(327262705481/1000000000000 : ℚ), (175643163377/125000000 : ℚ), (-460798016668021/1000000000000 : ℚ), 12⟩,
    ⟨(16409511447/50000000000 : ℚ), (76712324047/500000000 : ℚ), (-2547143675217/50000000000 : ℚ), 8⟩,
    ⟨(330036343299/1000000000000 : ℚ), (13426490547/250000000 : ℚ), (-9077204965227/500000000000 : ℚ), 7⟩,
    ⟨(332783269469/1000000000000 : ℚ), (52845664407/2000000000 : ℚ), (-1824156931857/200000000000 : ℚ), 6⟩,
    ⟨(336404553047/1000000000000 : ℚ), (38255016631/2500000000 : ℚ), (-5403162135383/1000000000000 : ℚ), 5⟩,
    ⟨(68173063819/200000000000 : ℚ), (97397046607/10000000000 : ℚ), (-3521216494321/1000000000000 : ℚ), 5⟩,
    ⟨(346122607997/1000000000000 : ℚ), (16464042219/2500000000 : ℚ), (-152420001953/62500000000 : ℚ), 4⟩,
    ⟨(176062894593/500000000000 : ℚ), (46383975381/10000000000 : ℚ), (-439862163339/250000000000 : ℚ), 4⟩,
    ⟨(71763409749/200000000000 : ℚ), (33600248659/10000000000 : ℚ), (-130537394719/100000000000 : ℚ), 4⟩,
    ⟨(366131946189/1000000000000 : ℚ), (3100897949/1250000000 : ℚ), (-246720023127/250000000000 : ℚ), 3⟩,
    ⟨(74800007011/200000000000 : ℚ), (1853344577/1000000000 : ℚ), (-23589664349/31250000000 : ℚ), 3⟩,
    ⟨(191172770673/500000000000 : ℚ), (13922741513/10000000000 : ℚ), (-580616110817/1000000000000 : ℚ), 3⟩,
    ⟨(15643523731/40000000000 : ℚ), (326571541/312500000 : ℚ), (-55801204663/125000000000 : ℚ), 3⟩,
    ⟨(50017936911/125000000000 : ℚ), (7780671461/10000000000 : ℚ), (-340852339159/1000000000000 : ℚ), 3⟩,
    ⟨(409424538913/1000000000000 : ℚ), (2845959741/5000000000 : ℚ), (-64086111017/250000000000 : ℚ), 3⟩,
    ⟨(209420921313/500000000000 : ℚ), (1008199317/2500000000 : ℚ), (-93832498123/500000000000 : ℚ), 3⟩,
    ⟨(85660942529/200000000000 : ℚ), (1348842367/5000000000 : ℚ), (-131135425513/1000000000000 : ℚ), 2⟩,
    ⟨(218861008179/500000000000 : ℚ), (805623253/5000000000 : ℚ), (-84107501617/1000000000000 : ℚ), 2⟩,
    ⟨(447003059983/1000000000000 : ℚ), (359383297/5000000000 : ℚ), (-22319729879/500000000000 : ℚ), 2⟩,
    ⟨(114014615499/250000000000 : ℚ), (-20118251/10000000000 : ℚ), (-1128521177/100000000000 : ℚ), 2⟩,
    ⟨(18592040557/40000000000 : ℚ), (-317791277/5000000000 : ℚ), (17046338913/1000000000000 : ℚ), 2⟩,
    ⟨(473146520217/1000000000000 : ℚ), (-575219723/5000000000 : ℚ), (8237464219/200000000000 : ℚ), 2⟩,
    ⟨(481014609083/1000000000000 : ℚ), (-791048691/5000000000 : ℚ), (61777762679/1000000000000 : ℚ), 2⟩,
    ⟨(244164753263/500000000000 : ℚ), (-485984339/2500000000 : ℚ), (39656499873/500000000000 : ℚ), 2⟩,
    ⟨(247510383043/500000000000 : ℚ), (-2246296701/10000000000 : ℚ), (4708891931/50000000000 : ℚ), 2⟩,
    ⟨(20040957891/40000000000 : ℚ), (-99887233/400000000 : ℚ), (106671523951/1000000000000 : ℚ), 2⟩,
    ⟨(31642577261/62500000000 : ℚ), (-1351391733/5000000000 : ℚ), (58513103941/500000000000 : ℚ), 2⟩,
    ⟨(31921375139/62500000000 : ℚ), (-35848371/125000000 : ℚ), (125420728577/1000000000000 : ℚ), 2⟩,
    ⟨(514363285803/1000000000000 : ℚ), (-23406707/78125000 : ℚ), (65995464209/500000000000 : ℚ), 2⟩,
    ⟨(129277552993/250000000000 : ℚ), (-123601221/400000000 : ℚ), (68418674341/500000000000 : ℚ), 2⟩,
    ⟨(518956326331/1000000000000 : ℚ), (-98489931/312500000 : ℚ), (140030863957/1000000000000 : ℚ), 2⟩,
    ⟨(51988384979/100000000000 : ℚ), (-1591103761/5000000000 : ℚ), (141616637241/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-3186010113/10000000000 : ℚ), (141814349861/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (65378057193/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control277.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control277.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate277

namespace DiagonalRamsey.JointInheritedCertificate278
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120876082787/500000000000 : ℚ), (2527674315437/2000000000 : ℚ), (-306228628961981/1000000000000 : ℚ), 11⟩,
    ⟨(242513712939/1000000000000 : ℚ), (1378076702167/10000000000 : ℚ), (-1354030698129/40000000000 : ℚ), 8⟩,
    ⟨(244029473551/1000000000000 : ℚ), (120358794063/2500000000 : ℚ), (-12060387590371/1000000000000 : ℚ), 7⟩,
    ⟨(123142424903/500000000000 : ℚ), (236295616819/10000000000 : ℚ), (-1211344317401/200000000000 : ℚ), 6⟩,
    ⟨(249258121199/1000000000000 : ℚ), (136472669083/10000000000 : ℚ), (-717171249623/200000000000 : ℚ), 5⟩,
    ⟨(252920653501/1000000000000 : ℚ), (86602002479/10000000000 : ℚ), (-1167434437261/500000000000 : ℚ), 5⟩,
    ⟨(64309293631/250000000000 : ℚ), (58358654133/10000000000 : ℚ), (-403778406067/250000000000 : ℚ), 4⟩,
    ⟨(26216611381/100000000000 : ℚ), (40944613613/10000000000 : ℚ), (-581636441411/500000000000 : ℚ), 4⟩,
    ⟨(267660002979/1000000000000 : ℚ), (29525989481/10000000000 : ℚ), (-861036073001/1000000000000 : ℚ), 4⟩,
    ⟨(273665932877/1000000000000 : ℚ), (21680181013/10000000000 : ℚ), (-324424832431/500000000000 : ℚ), 3⟩,
    ⟨(280126063113/1000000000000 : ℚ), (16086807169/10000000000 : ℚ), (-123521966947/250000000000 : ℚ), 3⟩,
    ⟨(8968068097/31250000000 : ℚ), (598902469/500000000 : ℚ), (-18883227517/50000000000 : ℚ), 3⟩,
    ⟨(147078145613/500000000000 : ℚ), (4441907719/5000000000 : ℚ), (-143907042543/500000000000 : ℚ), 3⟩,
    ⟨(4712363599/15625000000 : ℚ), (3252001159/5000000000 : ℚ), (-10848365733/50000000000 : ℚ), 3⟩,
    ⟨(3865143919/12500000000 : ℚ), (4640293433/10000000000 : ℚ), (-80039804941/500000000000 : ℚ), 3⟩,
    ⟨(316943633671/1000000000000 : ℚ), (3157791113/10000000000 : ℚ), (-11368786089/100000000000 : ℚ), 3⟩,
    ⟨(81178291561/250000000000 : ℚ), (490616087/2500000000 : ℚ), (-75354552131/1000000000000 : ℚ), 2⟩,
    ⟨(66489057279/200000000000 : ℚ), (987387521/10000000000 : ℚ), (-21663699311/500000000000 : ℚ), 2⟩,
    ⟨(340065529579/1000000000000 : ℚ), (46017129/2500000000 : ℚ), (-16324018817/1000000000000 : ℚ), 2⟩,
    ⟨(347500508689/1000000000000 : ℚ), (-96634209/2000000000 : ℚ), (82603161/12500000000 : ℚ), 2⟩,
    ⟨(354678620811/1000000000000 : ℚ), (-1040927901/10000000000 : ℚ), (1636623793/62500000000 : ℚ), 2⟩,
    ⟨(361530736801/1000000000000 : ℚ), (-1509249593/10000000000 : ℚ), (42953573017/1000000000000 : ℚ), 2⟩,
    ⟨(183995433519/500000000000 : ℚ), (-237923231/1250000000 : ℚ), (3582991283/62500000000 : ℚ), 2⟩,
    ⟨(46749599617/125000000000 : ℚ), (-2235020281/10000000000 : ℚ), (69629748237/1000000000000 : ℚ), 2⟩,
    ⟨(75898137221/200000000000 : ℚ), (-251314943/1000000000 : ℚ), (80107063661/1000000000000 : ℚ), 2⟩,
    ⟨(384419625391/1000000000000 : ℚ), (-548943603/2000000000 : ℚ), (88951290529/1000000000000 : ℚ), 2⟩,
    ⟨(388736146413/1000000000000 : ℚ), (-2935082657/10000000000 : ℚ), (48154985681/500000000000 : ℚ), 2⟩,
    ⟨(78479735743/200000000000 : ℚ), (-1544176359/5000000000 : ℚ), (102295979681/1000000000000 : ℚ), 2⟩,
    ⟨(395371950109/1000000000000 : ℚ), (-3207641371/10000000000 : ℚ), (53497237363/500000000000 : ℚ), 2⟩,
    ⟨(99406831591/250000000000 : ℚ), (-2059531/6250000 : ℚ), (55234046259/500000000000 : ℚ), 2⟩,
    ⟨(3118305367/7812500000 : ℚ), (-1676399357/5000000000 : ℚ), (56380375447/500000000000 : ℚ), 2⟩,
    ⟨(19995231717/50000000000 : ℚ), (-10566631/31250000 : ℚ), (113900319391/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-423109459/1250000000 : ℚ), (22808490501/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (322111839941/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control278.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control278.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate278

namespace DiagonalRamsey.JointInheritedCertificate312
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74931461557/250000000000 : ℚ), (838376337059/625000000 : ℚ), (-402896047358051/1000000000000 : ℚ), 12⟩,
    ⟨(37574174053/125000000000 : ℚ), (183027490067/1250000000 : ℚ), (-445388348213/10000000000 : ℚ), 8⟩,
    ⟨(302320129871/1000000000000 : ℚ), (512318468207/10000000000 : ℚ), (-7935079920931/500000000000 : ℚ), 7⟩,
    ⟨(304889429143/1000000000000 : ℚ), (25191333893/1000000000 : ℚ), (-1992880202343/250000000000 : ℚ), 6⟩,
    ⟨(61655309297/200000000000 : ℚ), (145788933647/10000000000 : ℚ), (-944181411389/200000000000 : ℚ), 5⟩,
    ⟨(62489772421/200000000000 : ℚ), (46359688571/5000000000 : ℚ), (-768823386877/250000000000 : ℚ), 5⟩,
    ⟨(317366194323/1000000000000 : ℚ), (62632631323/10000000000 : ℚ), (-266081835557/125000000000 : ℚ), 4⟩,
    ⟨(16149059327/50000000000 : ℚ), (4406168843/1000000000 : ℚ), (-306910548173/200000000000 : ℚ), 4⟩,
    ⟨(164619881657/500000000000 : ℚ), (15935739961/5000000000 : ℚ), (-1137329733461/1000000000000 : ℚ), 4⟩,
    ⟨(336081651127/1000000000000 : ℚ), (23487397299/10000000000 : ℚ), (-107328933711/125000000000 : ℚ), 3⟩,
    ⟨(343440958861/1000000000000 : ℚ), (17505483729/10000000000 : ℚ), (-81941357281/125000000000 : ℚ), 3⟩,
    ⟨(175623406179/500000000000 : ℚ), (327719899/250000000 : ℚ), (-502913678383/1000000000000 : ℚ), 3⟩,
    ⟨(359424036983/1000000000000 : ℚ), (391870917/400000000 : ℚ), (-24081016321/62500000000 : ℚ), 3⟩,
    ⟨(45986735199/125000000000 : ℚ), (7249558877/10000000000 : ℚ), (-292715331169/1000000000000 : ℚ), 3⟩,
    ⟨(376574776951/1000000000000 : ℚ), (1313887069/2500000000 : ℚ), (-54632083471/250000000000 : ℚ), 3⟩,
    ⟨(385383121293/1000000000000 : ℚ), (917654443/2500000000 : ℚ), (-158172813287/1000000000000 : ℚ), 3⟩,
    ⟨(394234085447/1000000000000 : ℚ), (37408707/156250000 : ℚ), (-10843507709/100000000000 : ℚ), 3⟩,
    ⟨(40304242979/100000000000 : ℚ), (1354439999/10000000000 : ℚ), (-3350124207/50000000000 : ℚ), 2⟩,
    ⟨(411723325149/1000000000000 : ℚ), (499400417/10000000000 : ℚ), (-16090125413/500000000000 : ℚ), 2⟩,
    ⟨(210096584879/500000000000 : ℚ), (-209344847/10000000000 : ℚ), (-2707127847/1000000000000 : ℚ), 2⟩,
    ⟨(428370394383/1000000000000 : ℚ), (-20011733/250000000 : ℚ), (2236763999/100000000000 : ℚ), 2⟩,
    ⟨(10904406197/25000000000 : ℚ), (-1295633701/10000000000 : ℚ), (1094207781/25000000000 : ℚ), 2⟩,
    ⟨(221767777807/500000000000 : ℚ), (-85567613/500000000 : ℚ), (62051162287/1000000000000 : ℚ), 2⟩,
    ⟨(450377443427/1000000000000 : ℚ), (-257538301/1250000000 : ℚ), (38822997661/500000000000 : ℚ), 2⟩,
    ⟨(2283180101/5000000000 : ℚ), (-1176141501/5000000000 : ℚ), (90886068883/1000000000000 : ℚ), 2⟩,
    ⟨(231125506209/500000000000 : ℚ), (-1297426577/5000000000 : ℚ), (5101499623/50000000000 : ℚ), 2⟩,
    ⟨(93433668927/200000000000 : ℚ), (-1396934193/5000000000 : ℚ), (22255587399/200000000000 : ℚ), 2⟩,
    ⟨(94268132051/200000000000 : ℚ), (-2953825861/10000000000 : ℚ), (2375674843/20000000000 : ℚ), 2⟩,
    ⟨(237363888799/500000000000 : ℚ), (-96191809/312500000 : ℚ), (124663991437/1000000000000 : ℚ), 2⟩,
    ⟨(47729707687/100000000000 : ℚ), (-1584664911/5000000000 : ℚ), (129004785133/1000000000000 : ℚ), 2⟩,
    ⟨(479023814317/1000000000000 : ℚ), (-201823929/625000000 : ℚ), (32966676163/250000000000 : ℚ), 2⟩,
    ⟨(479891360513/1000000000000 : ℚ), (-3258832929/10000000000 : ℚ), (66644148733/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1631263187/5000000000 : ℚ), (66732781399/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (291250659157/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control312.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control312.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate312

namespace DiagonalRamsey.JointInheritedCertificate313
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(314368342061/1000000000000 : ℚ), (13663979162287/10000000000 : ℚ), (-215218921529857/500000000000 : ℚ), 12⟩,
    ⟨(315261670557/1000000000000 : ℚ), (745923392251/5000000000 : ℚ), (-1487013491343/31250000000 : ℚ), 8⟩,
    ⟨(317039724307/1000000000000 : ℚ), (522160132317/10000000000 : ℚ), (-4239020230023/250000000000 : ℚ), 7⟩,
    ⟨(319685379681/1000000000000 : ℚ), (256856594297/10000000000 : ℚ), (-8517556655117/1000000000000 : ℚ), 6⟩,
    ⟨(80793289393/250000000000 : ℚ), (148718138609/10000000000 : ℚ), (-630599550281/125000000000 : ℚ), 5⟩,
    ⟨(81867367193/250000000000 : ℚ), (4731544941/500000000 : ℚ), (-328676301839/100000000000 : ℚ), 5⟩,
    ⟨(20783308591/62500000000 : ℚ), (15990168237/2500000000 : ℚ), (-568874381849/250000000000 : ℚ), 4⟩,
    ⟨(84578699913/250000000000 : ℚ), (9005092413/2000000000 : ℚ), (-410220113113/250000000000 : ℚ), 4⟩,
    ⟨(86189843217/250000000000 : ℚ), (32593565213/10000000000 : ℚ), (-304153266453/250000000000 : ℚ), 4⟩,
    ⟨(175902296169/500000000000 : ℚ), (375651549/156250000 : ℚ), (-897445847/976562500 : ℚ), 3⟩,
    ⟨(287506087/800000000 : ℚ), (17939210259/10000000000 : ℚ), (-175533179707/250000000000 : ℚ), 3⟩,
    ⟨(183710220831/500000000000 : ℚ), (13453509679/10000000000 : ℚ), (-539225750971/1000000000000 : ℚ), 3⟩,
    ⟨(375840682349/1000000000000 : ℚ), (10074366341/10000000000 : ℚ), (-413720521471/1000000000000 : ℚ), 3⟩,
    ⟨(384562239291/1000000000000 : ℚ), (747568097/1000000000 : ℚ), (-31497150009/100000000000 : ℚ), 3⟩,
    ⟨(196750559563/500000000000 : ℚ), (5441666819/10000000000 : ℚ), (-235880716917/1000000000000 : ℚ), 3⟩,
    ⟨(80514247111/200000000000 : ℚ), (1912656159/5000000000 : ℚ), (-85786171199/500000000000 : ℚ), 3⟩,
    ⟨(128651637/312500000 : ℚ), (2523958613/10000000000 : ℚ), (-59305686567/500000000000 : ℚ), 3⟩,
    ⟨(420755354829/1000000000000 : ℚ), (732196037/5000000000 : ℚ), (-74525329643/1000000000000 : ℚ), 2⟩,
    ⟨(85938846933/200000000000 : ℚ), (296723163/5000000000 : ℚ), (-18750862171/500000000000 : ℚ), 2⟩,
    ⟨(438415791607/1000000000000 : ℚ), (-128090941/10000000000 : ℚ), (-6191161249/1000000000000 : ℚ), 2⟩,
    ⟨(223418016147/500000000000 : ℚ), (-29181069/400000000 : ℚ), (5106021737/250000000000 : ℚ), 2⟩,
    ⟨(90974773041/200000000000 : ℚ), (-616505901/5000000000 : ℚ), (43119788983/1000000000000 : ℚ), 2⟩,
    ⟨(462451881617/1000000000000 : ℚ), (-1655443357/10000000000 : ℚ), (31246117547/500000000000 : ℚ), 2⟩,
    ⟨(14671784409/31250000000 : ℚ), (-502451057/2500000000 : ℚ), (19750637083/250000000000 : ℚ), 2⟩,
    ⟨(475941674303/1000000000000 : ℚ), (-1153059837/5000000000 : ℚ), (93008625927/1000000000000 : ℚ), 2⟩,
    ⟨(481723536499/1000000000000 : ℚ), (-2552149651/10000000000 : ℚ), (26197124047/250000000000 : ℚ), 2⟩,
    ⟨(486787005183/1000000000000 : ℚ), (-1376947457/5000000000 : ℚ), (22911521071/200000000000 : ℚ), 2⟩,
    ⟨(491083316383/1000000000000 : ℚ), (-145798483/500000000 : ℚ), (12248172383/100000000000 : ℚ), 2⟩,
    ⟨(247285547137/500000000000 : ℚ), (-3041876593/10000000000 : ℚ), (128686617963/1000000000000 : ℚ), 2⟩,
    ⟨(497216749649/1000000000000 : ℚ), (-3134208967/10000000000 : ℚ), (133265265651/1000000000000 : ℚ), 2⟩,
    ⟨(249497401699/500000000000 : ℚ), (-3194796441/10000000000 : ℚ), (136283145621/1000000000000 : ℚ), 2⟩,
    ⟨(249944065947/500000000000 : ℚ), (-32248061/100000000 : ℚ), (137781950351/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-3228544139/10000000000 : ℚ), (137968831381/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (70198530217/250000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control313.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control313.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate313

namespace DiagonalRamsey.JointInheritedCertificate314
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(164613743761/500000000000 : ℚ), (13924929564249/10000000000 : ℚ), (-459375692583403/1000000000000 : ℚ), 12⟩,
    ⟨(330145555719/1000000000000 : ℚ), (760344300347/5000000000 : ℚ), (-25392207128209/500000000000 : ℚ), 8⟩,
    ⟨(66394570123/200000000000 : ℚ), (532434551529/10000000000 : ℚ), (-3619411385373/200000000000 : ℚ), 7⟩,
    ⟨(167345887181/500000000000 : ℚ), (3275214133/125000000 : ℚ), (-9091284535411/1000000000000 : ℚ), 6⟩,
    ⟨(338276142237/1000000000000 : ℚ), (75887992673/5000000000 : ℚ), (-1346280382191/250000000000 : ℚ), 5⟩,
    ⟨(171345717409/500000000000 : ℚ), (96626229187/10000000000 : ℚ), (-3508974858929/1000000000000 : ℚ), 5⟩,
    ⟨(347895130423/1000000000000 : ℚ), (16336693859/2500000000 : ℚ), (-2429812855499/1000000000000 : ℚ), 4⟩,
    ⟨(353837114621/1000000000000 : ℚ), (368249451/80000000 : ℚ), (-3423113053/1953125000 : ℚ), 4⟩,
    ⟨(180230081427/500000000000 : ℚ), (16673433153/5000000000 : ℚ), (-1299959081513/1000000000000 : ℚ), 4⟩,
    ⟨(367700491547/1000000000000 : ℚ), (12309866967/5000000000 : ℚ), (-196489889793/200000000000 : ℚ), 3⟩,
    ⟨(187744186189/500000000000 : ℚ), (4597815527/2500000000 : ℚ), (-93894862787/125000000000 : ℚ), 3⟩,
    ⟨(95937200949/250000000000 : ℚ), (3453132561/2500000000 : ℚ), (-288725443267/500000000000 : ℚ), 3⟩,
    ⟨(98100558333/250000000000 : ℚ), (129540173/125000000 : ℚ), (-443669060243/1000000000000 : ℚ), 3⟩,
    ⟨(25085332733/62500000000 : ℚ), (7710697049/10000000000 : ℚ), (-169225490221/500000000000 : ℚ), 3⟩,
    ⟨(102637938881/250000000000 : ℚ), (5634829283/10000000000 : ℚ), (-127110045369/500000000000 : ℚ), 3⟩,
    ⟨(419873058361/1000000000000 : ℚ), (3985584699/10000000000 : ℚ), (-232214007/1250000000 : ℚ), 3⟩,
    ⟨(107309865749/250000000000 : ℚ), (1329083141/5000000000 : ℚ), (-12943668221/100000000000 : ℚ), 3⟩,
    ⟨(438560765833/1000000000000 : ℚ), (98613031/625000000 : ℚ), (-41287989711/500000000000 : ℚ), 2⟩,
    ⟨(44774719763/100000000000 : ℚ), (690195951/10000000000 : ℚ), (-5406600893/125000000000 : ℚ), 2⟩,
    ⟨(228355144013/500000000000 : ℚ), (-44749141/10000000000 : ℚ), (-5012506457/500000000000 : ℚ), 2⟩,
    ⟨(232681858781/500000000000 : ℚ), (-328497687/5000000000 : ℚ), (3639129639/200000000000 : ℚ), 2⟩,
    ⟨(23681207449/50000000000 : ℚ), (-1169205573/10000000000 : ℚ), (1689568873/40000000000 : ℚ), 2⟩,
    ⟨(481412029811/1000000000000 : ℚ), (-1598677239/10000000000 : ℚ), (62744200583/1000000000000 : ℚ), 2⟩,
    ⟨(61081544813/125000000000 : ℚ), (-30604821/156250000 : ℚ), (80204776241/1000000000000 : ℚ), 2⟩,
    ⟨(495275406737/1000000000000 : ℚ), (-2259574339/10000000000 : ℚ), (95004890669/1000000000000 : ℚ), 2⟩,
    ⟨(250608695467/500000000000 : ℚ), (-627308113/2500000000 : ℚ), (107443125559/1000000000000 : ℚ), 2⟩,
    ⟨(25321054327/50000000000 : ℚ), (-1356920071/5000000000 : ℚ), (29437779217/250000000000 : ℚ), 2⟩,
    ⟨(510836379121/1000000000000 : ℚ), (-1439067223/5000000000 : ℚ), (63053648433/500000000000 : ℚ), 2⟩,
    ⟨(128605186749/250000000000 : ℚ), (-1502856509/5000000000 : ℚ), (132647189461/1000000000000 : ℚ), 2⟩,
    ⟨(258569835371/500000000000 : ℚ), (-3099240489/10000000000 : ℚ), (137471089697/1000000000000 : ℚ), 2⟩,
    ⟨(518966965639/1000000000000 : ℚ), (-790149371/2500000000 : ℚ), (3516242281/25000000000 : ℚ), 2⟩,
    ⟨(129971258459/250000000000 : ℚ), (-1595491939/5000000000 : ℚ), (142228037297/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-3194768637/10000000000 : ℚ), (28484964607/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (270230344943/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control314.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control314.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate314

namespace DiagonalRamsey.JointInheritedCertificate315
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28726230579/125000000000 : ℚ), (12342148112821/10000000000 : ℚ), (-35534612741141/125000000000 : ℚ), 12⟩,
    ⟨(57633153863/250000000000 : ℚ), (168220403833/1250000000 : ℚ), (-1963931359403/62500000000 : ℚ), 8⟩,
    ⟨(231971196413/1000000000000 : ℚ), (470129165957/10000000000 : ℚ), (-5597211284383/500000000000 : ℚ), 7⟩,
    ⟨(46822346639/200000000000 : ℚ), (115364520051/5000000000 : ℚ), (-1405266540567/250000000000 : ℚ), 6⟩,
    ⟨(118466805629/500000000000 : ℚ), (133240494009/10000000000 : ℚ), (-3327272408021/1000000000000 : ℚ), 5⟩,
    ⟨(120204827187/500000000000 : ℚ), (84533911201/10000000000 : ℚ), (-433181586771/200000000000 : ℚ), 5⟩,
    ⟨(244506386347/1000000000000 : ℚ), (56947999433/10000000000 : ℚ), (-1497689180093/1000000000000 : ℚ), 4⟩,
    ⟨(24918435341/100000000000 : ℚ), (4992215699/1250000000 : ℚ), (-1078173612279/1000000000000 : ℚ), 4⟩,
    ⟨(254398504181/1000000000000 : ℚ), (1151297651/400000000 : ℚ), (-797531754529/1000000000000 : ℚ), 4⟩,
    ⟨(260098623539/1000000000000 : ℚ), (21116301669/10000000000 : ℚ), (-150119881541/250000000000 : ℚ), 3⟩,
    ⟨(266229816219/1000000000000 : ℚ), (15649864049/10000000000 : ℚ), (-456730427701/1000000000000 : ℚ), 3⟩,
    ⟨(272733035483/1000000000000 : ℚ), (5816653273/5000000000 : ℚ), (-348567105553/1000000000000 : ℚ), 3⟩,
    ⟨(139772825887/500000000000 : ℚ), (8607560953/10000000000 : ℚ), (-53013596443/200000000000 : ℚ), 3⟩,
    ⟨(143301027937/500000000000 : ℚ), (6279567221/10000000000 : ℚ), (-199207155691/1000000000000 : ℚ), 3⟩,
    ⟨(293834290753/1000000000000 : ℚ), (2227834003/5000000000 : ℚ), (-14630230871/100000000000 : ℚ), 3⟩,
    ⟨(301172706037/1000000000000 : ℚ), (3004139737/10000000000 : ℚ), (-103139302527/1000000000000 : ℚ), 3⟩,
    ⟨(154273314387/500000000000 : ℚ), (458292147/2500000000 : ℚ), (-8432013499/125000000000 : ℚ), 3⟩,
    ⟨(157942522029/500000000000 : ℚ), (877411557/10000000000 : ℚ), (-37626844781/1000000000000 : ℚ), 2⟩,
    ⟨(323117278937/1000000000000 : ℚ), (17905539/2000000000 : ℚ), (-12461891687/1000000000000 : ℚ), 2⟩,
    ⟨(330173683037/1000000000000 : ℚ), (-35331879/625000000 : ℚ), (8922252733/1000000000000 : ℚ), 2⟩,
    ⟨(5265410927/15625000000 : ℚ), (-278264921/2500000000 : ℚ), (27189879281/1000000000000 : ℚ), 2⟩,
    ⟨(335438983/976562500 : ℚ), (-1573283299/10000000000 : ℚ), (42845438453/1000000000000 : ℚ), 2⟩,
    ⟨(349620711271/1000000000000 : ℚ), (-1960857773/10000000000 : ℚ), (281374677/5000000000 : ℚ), 2⟩,
    ⟨(355320830629/1000000000000 : ℚ), (-1143588893/5000000000 : ℚ), (13555065717/200000000000 : ℚ), 2⟩,
    ⟨(360534981401/1000000000000 : ℚ), (-512202907/2000000000 : ℚ), (9696969753/125000000000 : ℚ), 2⟩,
    ⟨(365212948463/1000000000000 : ℚ), (-69728409/250000000 : ℚ), (85853097809/1000000000000 : ℚ), 2⟩,
    ⟨(369309680437/1000000000000 : ℚ), (-1488380929/5000000000 : ℚ), (23185872453/250000000000 : ℚ), 2⟩,
    ⟨(372785723553/1000000000000 : ℚ), (-1563946479/5000000000 : ℚ), (1229387121/12500000000 : ℚ), 2⟩,
    ⟨(23475475101/62500000000 : ℚ), (-324556031/1000000000 : ℚ), (51376970427/500000000000 : ℚ), 2⟩,
    ⟨(188874069199/500000000000 : ℚ), (-833000783/2500000000 : ℚ), (53005004311/500000000000 : ℚ), 2⟩,
    ⟨(379186719359/1000000000000 : ℚ), (-3388798749/10000000000 : ℚ), (10815952547/100000000000 : ℚ), 2⟩,
    ⟨(379909490179/1000000000000 : ℚ), (-683390423/2000000000 : ℚ), (54614039809/500000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1710229979/5000000000 : ℚ), (54680680883/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (68357930351/200000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control315.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control315.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate315

namespace DiagonalRamsey.JointInheritedCertificate316
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(243370719843/1000000000000 : ℚ), (12533688158529/10000000000 : ℚ), (-152857096904719/500000000000 : ℚ), 12⟩,
    ⟨(244124478123/1000000000000 : ℚ), (683464304333/5000000000 : ℚ), (-33793077652817/1000000000000 : ℚ), 8⟩,
    ⟨(245624735579/1000000000000 : ℚ), (477665695707/10000000000 : ℚ), (-481569462917/40000000000 : ℚ), 7⟩,
    ⟨(30982130489/125000000000 : ℚ), (58628024263/2500000000 : ℚ), (-604563684127/100000000000 : ℚ), 6⟩,
    ⟨(250799904771/1000000000000 : ℚ), (33870115983/2500000000 : ℚ), (-28631311473/8000000000 : ℚ), 5⟩,
    ⟨(254424976799/1000000000000 : ℚ), (3439775253/400000000 : ℚ), (-2330024067087/1000000000000 : ℚ), 5⟩,
    ⟨(258697348569/1000000000000 : ℚ), (57961754483/10000000000 : ℚ), (-1611476629203/1000000000000 : ℚ), 4⟩,
    ⟨(263575874807/1000000000000 : ℚ), (10168197407/2500000000 : ℚ), (-1160395993293/1000000000000 : ℚ), 4⟩,
    ⟨(269013572637/1000000000000 : ℚ), (29332777181/10000000000 : ℚ), (-858670355733/1000000000000 : ℚ), 4⟩,
    ⟨(274958074057/1000000000000 : ℚ), (21538561883/10000000000 : ℚ), (-40427896687/62500000000 : ℚ), 3⟩,
    ⟨(281352130269/1000000000000 : ℚ), (3995058283/2500000000 : ℚ), (-123088269491/250000000000 : ℚ), 3⟩,
    ⟨(36016770377/125000000000 : ℚ), (2973992647/2500000000 : ℚ), (-376136500991/1000000000000 : ℚ), 3⟩,
    ⟨(59047771523/200000000000 : ℚ), (8819287813/10000000000 : ℚ), (-286450682431/1000000000000 : ℚ), 3⟩,
    ⟨(302597791973/1000000000000 : ℚ), (645233339/1000000000 : ℚ), (-215739014479/1000000000000 : ℚ), 3⟩,
    ⟨(310140095531/1000000000000 : ℚ), (4598240153/10000000000 : ℚ), (-3974127237/25000000000 : ℚ), 3⟩,
    ⟨(15889656589/50000000000 : ℚ), (3123066713/10000000000 : ℚ), (-112671289711/1000000000000 : ℚ), 3⟩,
    ⟨(1627415989/5000000000 : ℚ), (1933425847/10000000000 : ℚ), (-9302976649/125000000000 : ℚ), 3⟩,
    ⟨(6662724681/20000000000 : ℚ), (962832731/10000000000 : ℚ), (-21236450103/500000000000 : ℚ), 2⟩,
    ⟨(340678537607/1000000000000 : ℚ), (163101483/10000000000 : ℚ), (-15537887153/1000000000000 : ℚ), 2⟩,
    ⟨(174018735983/500000000000 : ℚ), (-125307687/2500000000 : ℚ), (7332729139/1000000000000 : ℚ), 2⟩,
    ⟨(71028433313/200000000000 : ℚ), (-264151787/2500000000 : ℚ), (6713683181/250000000000 : ℚ), 2⟩,
    ⟨(22620262457/62500000000 : ℚ), (-1522964553/10000000000 : ℚ), (43572014793/1000000000000 : ℚ), 2⟩,
    ⟨(368318255523/1000000000000 : ℚ), (-957735951/5000000000 : ℚ), (57901066701/1000000000000 : ℚ), 2⟩,
    ⟨(23391422309/62500000000 : ℚ), (-2245753123/10000000000 : ℚ), (14032514497/200000000000 : ℚ), 2⟩,
    ⟨(189850227387/500000000000 : ℚ), (-504552023/2000000000 : ℚ), (80604215483/1000000000000 : ℚ), 2⟩,
    ⟨(384578981011/1000000000000 : ℚ), (-688350957/2500000000 : ℚ), (89417382857/1000000000000 : ℚ), 2⟩,
    ⟨(194425676391/500000000000 : ℚ), (-294301511/1000000000 : ℚ), (604684683/6250000000 : ℚ), 2⟩,
    ⟨(392476424809/1000000000000 : ℚ), (-3095683581/10000000000 : ℚ), (102713537627/1000000000000 : ℚ), 2⟩,
    ⟨(395419285669/1000000000000 : ℚ), (-1607253681/5000000000 : ℚ), (53697233391/500000000000 : ℚ), 2⟩,
    ⟨(397651594001/1000000000000 : ℚ), (-3301776189/10000000000 : ℚ), (55427470207/500000000000 : ℚ), 2⟩,
    ⟨(399151851457/1000000000000 : ℚ), (-419887917/1250000000 : ℚ), (113138850791/1000000000000 : ℚ), 2⟩,
    ⟨(199952804869/500000000000 : ℚ), (-3387516831/10000000000 : ℚ), (57137024979/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3391056929/10000000000 : ℚ), (114415637183/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (331913113047/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control316.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control316.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate316

namespace DiagonalRamsey.JointInheritedCertificate317
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(64290214879/250000000000 : ℚ), (12739441977671/10000000000 : ℚ), (-164164533829461/500000000000 : ℚ), 12⟩,
    ⟨(257944501951/1000000000000 : ℚ), (694833507691/5000000000 : ℚ), (-36293612236679/1000000000000 : ℚ), 8⟩,
    ⟨(64876059979/250000000000 : ℚ), (242882021461/5000000000 : ℚ), (-6465316957957/500000000000 : ℚ), 7⟩,
    ⟨(261825052281/1000000000000 : ℚ), (238578423143/10000000000 : ℚ), (-1623428213209/250000000000 : ℚ), 6⟩,
    ⟨(52976917671/200000000000 : ℚ), (137889130383/10000000000 : ℚ), (-1922283496789/500000000000 : ℚ), 5⟩,
    ⟨(134326691567/500000000000 : ℚ), (10945701393/1250000000 : ℚ), (-2503349549559/1000000000000 : ℚ), 5⟩,
    ⟨(136547570531/500000000000 : ℚ), (59053008163/10000000000 : ℚ), (-173171517647/100000000000 : ℚ), 4⟩,
    ⟨(278167085583/1000000000000 : ℚ), (41464545677/10000000000 : ℚ), (-249468547971/200000000000 : ℚ), 4⟩,
    ⟨(283820371099/1000000000000 : ℚ), (29925960931/10000000000 : ℚ), (-184676638861/200000000000 : ℚ), 4⟩,
    ⟨(14500027669/50000000000 : ℚ), (21994022827/10000000000 : ℚ), (-695984857521/1000000000000 : ℚ), 3⟩,
    ⟨(296648113891/1000000000000 : ℚ), (8168418479/5000000000 : ℚ), (-530166939791/1000000000000 : ℚ), 3⟩,
    ⟨(9490594781/31250000000 : ℚ), (48718787/40000000 : ℚ), (-101366306629/250000000000 : ℚ), 3⟩,
    ⟨(311085406477/1000000000000 : ℚ), (9048149347/10000000000 : ℚ), (-309264081747/1000000000000 : ℚ), 3⟩,
    ⟨(79684024883/250000000000 : ℚ), (1327839679/2000000000 : ℚ), (-116723480529/500000000000 : ℚ), 3⟩,
    ⟨(326577431799/1000000000000 : ℚ), (4752530399/10000000000 : ℚ), (-34520764731/200000000000 : ℚ), 3⟩,
    ⟨(334533886963/1000000000000 : ℚ), (1625911477/5000000000 : ℚ), (-61510046287/500000000000 : ℚ), 3⟩,
    ⟨(85632210003/250000000000 : ℚ), (2041999793/10000000000 : ℚ), (-41040320113/500000000000 : ℚ), 3⟩,
    ⟨(43810661897/125000000000 : ℚ), (1055350389/10000000000 : ℚ), (-23952447403/500000000000 : ℚ), 2⟩,
    ⟨(89581656861/250000000000 : ℚ), (242781831/10000000000 : ℚ), (-19116011421/1000000000000 : ℚ), 2⟩,
    ⟨(182988660249/500000000000 : ℚ), (-215925647/5000000000 : ℚ), (5309394839/1000000000000 : ℚ), 2⟩,
    ⟨(373363693983/1000000000000 : ℚ), (-995513201/10000000000 : ℚ), (2614158109/100000000000 : ℚ), 2⟩,
    ⟨(95103653271/250000000000 : ℚ), (-1468543187/10000000000 : ℚ), (43966199597/1000000000000 : ℚ), 2⟩,
    ⟨(96765543399/250000000000 : ℚ), (-933212017/5000000000 : ℚ), (59232057447/1000000000000 : ℚ), 2⟩,
    ⟨(393242355877/1000000000000 : ℚ), (-440205227/2000000000 : ℚ), (72285020583/1000000000000 : ℚ), 2⟩,
    ⟨(398895641393/1000000000000 : ℚ), (-1240747893/5000000000 : ℚ), (10424060291/125000000000 : ℚ), 2⟩,
    ⟨(201983792957/500000000000 : ℚ), (-2714897461/10000000000 : ℚ), (92761279791/1000000000000 : ℚ), 2⟩,
    ⟨(204204671921/500000000000 : ℚ), (-1453341477/5000000000 : ℚ), (12568871567/125000000000 : ℚ), 2⟩,
    ⟨(20608906931/50000000000 : ℚ), (-3061036441/10000000000 : ℚ), (106883768979/1000000000000 : ℚ), 2⟩,
    ⟨(207618837347/500000000000 : ℚ), (-3181128861/10000000000 : ℚ), (27962993171/250000000000 : ℚ), 2⟩,
    ⟨(20877924353/50000000000 : ℚ), (-1634652253/5000000000 : ℚ), (23104708463/200000000000 : ℚ), 2⟩,
    ⟨(16764729001/40000000000 : ℚ), (-1663607751/5000000000 : ℚ), (117946167581/1000000000000 : ℚ), 2⟩,
    ⟨(419901867459/1000000000000 : ℚ), (-134236593/400000000 : ℚ), (119150131331/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-52492037/156250000 : ℚ), (29825071647/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (5029832953/15625000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control317.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control317.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate317

namespace DiagonalRamsey.JointInheritedCertificate351
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(265817328601/1000000000000 : ℚ), (1590811759519/1250000000 : ℚ), (-339018753420873/1000000000000 : ℚ), 12⟩,
    ⟨(53321487321/200000000000 : ℚ), (1388655016091/10000000000 : ℚ), (-18737248757293/500000000000 : ℚ), 8⟩,
    ⟨(268180043443/1000000000000 : ℚ), (2428016119/50000000 : ℚ), (-3337705051889/250000000000 : ℚ), 7⟩,
    ⟨(270520004049/1000000000000 : ℚ), (238605843201/10000000000 : ℚ), (-1340865150833/200000000000 : ℚ), 6⟩,
    ⟨(136802391663/500000000000 : ℚ), (34492194617/2500000000 : ℚ), (-3968943950823/1000000000000 : ℚ), 5⟩,
    ⟨(6935116829/25000000000 : ℚ), (43828231169/5000000000 : ℚ), (-2584083427273/1000000000000 : ℚ), 5⟩,
    ⟨(140941539269/500000000000 : ℚ), (3696286139/625000000 : ℚ), (-1787358322733/1000000000000 : ℚ), 4⟩,
    ⟨(57399373993/200000000000 : ℚ), (20771829167/5000000000 : ℚ), (-128725528597/100000000000 : ℚ), 4⟩,
    ⟨(73174199709/250000000000 : ℚ), (2999515289/1000000000 : ℚ), (-952795192937/1000000000000 : ℚ), 4⟩,
    ⟨(7473199293/25000000000 : ℚ), (11026704447/5000000000 : ℚ), (-89755920991/125000000000 : ℚ), 4⟩,
    ⟨(61126075803/200000000000 : ℚ), (4096800393/2500000000 : ℚ), (-136722979017/250000000000 : ℚ), 3⟩,
    ⟨(2501915783/8000000000 : ℚ), (2444415587/2000000000 : ℚ), (-418198009451/1000000000000 : ℚ), 3⟩,
    ⟨(320186788841/1000000000000 : ℚ), (4541819819/5000000000 : ℚ), (-318938775687/1000000000000 : ℚ), 3⟩,
    ⟨(327900605187/1000000000000 : ℚ), (1667212107/2500000000 : ℚ), (-48146551501/200000000000 : ℚ), 3⟩,
    ⟨(335806633647/1000000000000 : ℚ), (2388651893/5000000000 : ℚ), (-177992972039/1000000000000 : ℚ), 3⟩,
    ⟨(85957183711/250000000000 : ℚ), (102268057/312500000 : ℚ), (-126882971783/1000000000000 : ℚ), 3⟩,
    ⟨(175944825779/500000000000 : ℚ), (128717783/625000000 : ℚ), (-84701448007/1000000000000 : ℚ), 3⟩,
    ⟨(71982350551/200000000000 : ℚ), (214041393/2000000000 : ℚ), (-49505483607/1000000000000 : ℚ), 3⟩,
    ⟨(183908890607/500000000000 : ℚ), (255553117/10000000000 : ℚ), (-4968058887/250000000000 : ℚ), 2⟩,
    ⟨(375531597561/1000000000000 : ℚ), (-420712311/10000000000 : ℚ), (2628097857/500000000000 : ℚ), 2⟩,
    ⟨(191489456763/500000000000 : ℚ), (-985633473/10000000000 : ℚ), (26676338893/1000000000000 : ℚ), 2⟩,
    ⟨(195044003693/500000000000 : ℚ), (-182452453/1250000000 : ℚ), (2249704007/50000000000 : ℚ), 2⟩,
    ⟨(396790414681/1000000000000 : ℚ), (-371642779/2000000000 : ℚ), (3792122183/62500000000 : ℚ), 2⟩,
    ⟨(80604317513/200000000000 : ℚ), (-219333803/1000000000 : ℚ), (9259267093/125000000000 : ℚ), 2⟩,
    ⟨(102180379109/250000000000 : ℚ), (-12370907/50000000 : ℚ), (85471685311/1000000000000 : ℚ), 2⟩,
    ⟨(51729413483/125000000000 : ℚ), (-33848051/125000000 : ℚ), (23770258703/250000000000 : ℚ), 2⟩,
    ⟨(418313713241/1000000000000 : ℚ), (-579961359/2000000000 : ℚ), (103067696221/1000000000000 : ℚ), 2⟩,
    ⟨(105528400769/250000000000 : ℚ), (-763569193/2500000000 : ℚ), (109558502261/1000000000000 : ℚ), 2⟩,
    ⟨(26574898897/62500000000 : ℚ), (-198402679/625000000 : ℚ), (114649294709/1000000000000 : ℚ), 2⟩,
    ⟨(427538342959/1000000000000 : ℚ), (-1631331403/5000000000 : ℚ), (23682133203/200000000000 : ℚ), 2⟩,
    ⟨(107277737449/250000000000 : ℚ), (-132823931/400000000 : ℚ), (15111521373/125000000000 : ℚ), 2⟩,
    ⟨(429901057801/1000000000000 : ℚ), (-837327087/2500000000 : ℚ), (6106264207/50000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1676442583/5000000000 : ℚ), (61139534809/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (326509821209/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control351.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control351.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate351

namespace DiagonalRamsey.JointInheritedCertificate352
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8527913973/31250000000 : ℚ), (6418482127631/5000000000 : ℚ), (-351058462861781/1000000000000 : ℚ), 12⟩,
    ⟨(273697426907/1000000000000 : ℚ), (1400865147267/10000000000 : ℚ), (-7761160597329/200000000000 : ℚ), 8⟩,
    ⟨(137649020879/500000000000 : ℚ), (489953147839/10000000000 : ℚ), (-13825459824309/1000000000000 : ℚ), 7⟩,
    ⟨(277679676893/1000000000000 : ℚ), (120395470541/5000000000 : ℚ), (-3471476600501/500000000000 : ℚ), 6⟩,
    ⟨(56163879173/200000000000 : ℚ), (139263816501/10000000000 : ℚ), (-4110456021023/1000000000000 : ℚ), 5⟩,
    ⟨(142343480731/500000000000 : ℚ), (88501800049/10000000000 : ℚ), (-669111348803/250000000000 : ℚ), 5⟩,
    ⟨(144622563457/500000000000 : ℚ), (29864061383/5000000000 : ℚ), (-925730800231/500000000000 : ℚ), 4⟩,
    ⟨(73612498649/250000000000 : ℚ), (10492574663/2500000000 : ℚ), (-1333638955541/1000000000000 : ℚ), 4⟩,
    ⟨(150125719393/500000000000 : ℚ), (30315068813/10000000000 : ℚ), (-197469366269/200000000000 : ℚ), 4⟩,
    ⟨(306593588407/1000000000000 : ℚ), (2787408279/1250000000 : ℚ), (-93039122953/125000000000 : ℚ), 4⟩,
    ⟨(313415365089/1000000000000 : ℚ), (16579865489/10000000000 : ℚ), (-141783631031/250000000000 : ℚ), 3⟩,
    ⟨(64130214279/200000000000 : ℚ), (6187748583/5000000000 : ℚ), (-86785971279/200000000000 : ℚ), 3⟩,
    ⟨(164115511759/500000000000 : ℚ), (4603743823/5000000000 : ℚ), (-82802264923/250000000000 : ℚ), 3⟩,
    ⟨(168041111187/500000000000 : ℚ), (135400759/200000000 : ℚ), (-15643283107/62500000000 : ℚ), 3⟩,
    ⟨(344129056627/1000000000000 : ℚ), (4860898503/10000000000 : ℚ), (-46348577319/250000000000 : ℚ), 3⟩,
    ⟨(22018376929/62500000000 : ℚ), (835591009/2500000000 : ℚ), (-132541081367/1000000000000 : ℚ), 3⟩,
    ⟨(4506231399/12500000000 : ℚ), (2118342389/10000000000 : ℚ), (-44467461727/500000000000 : ℚ), 3⟩,
    ⟨(368663486157/1000000000000 : ℚ), (560179501/5000000000 : ℚ), (-52563188641/1000000000000 : ℚ), 3⟩,
    ⟨(37671032041/100000000000 : ℚ), (298735109/10000000000 : ℚ), (-10975866959/500000000000 : ℚ), 2⟩,
    ⟨(192280759633/500000000000 : ℚ), (-383131013/10000000000 : ℚ), (998927491/250000000000 : ℚ), 2⟩,
    ⟨(98035367847/250000000000 : ℚ), (-190512673/2000000000 : ℚ), (13052388319/500000000000 : ℚ), 2⟩,
    ⟨(199688588847/500000000000 : ℚ), (-715093759/5000000000 : ℚ), (45003692039/1000000000000 : ℚ), 2⟩,
    ⟨(406198954377/1000000000000 : ℚ), (-1831715431/10000000000 : ℚ), (15293575729/250000000000 : ℚ), 2⟩,
    ⟨(412541103997/1000000000000 : ℚ), (-54230039/250000000 : ℚ), (74988293847/1000000000000 : ℚ), 2⟩,
    ⟨(104585637047/250000000000 : ℚ), (-2451940069/10000000000 : ℚ), (21683329619/250000000000 : ℚ), 2⟩,
    ⟨(42354741587/100000000000 : ℚ), (-671778473/2500000000 : ℚ), (48316065439/500000000000 : ℚ), 2⟩,
    ⟨(214052790661/500000000000 : ℚ), (-576053821/2000000000 : ℚ), (13107095249/125000000000 : ℚ), 2⟩,
    ⟨(431973146919/1000000000000 : ℚ), (-303566409/1000000000 : ℚ), (111539118061/1000000000000 : ℚ), 2⟩,
    ⟨(43511286589/100000000000 : ℚ), (-3156527137/10000000000 : ℚ), (29194732889/250000000000 : ℚ), 2⟩,
    ⟨(17499780041/40000000000 : ℚ), (-81131139/250000000 : ℚ), (120649699793/1000000000000 : ℚ), 2⟩,
    ⟨(439095115877/1000000000000 : ℚ), (-3303502113/10000000000 : ℚ), (1540037999/12500000000 : ℚ), 2⟩,
    ⟨(439899295647/1000000000000 : ℚ), (-3332369417/10000000000 : ℚ), (24894349621/200000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-667193147/2000000000 : ℚ), (62314983991/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (5020949819/15625000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control352.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control352.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate352

namespace DiagonalRamsey.JointInheritedCertificate353
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63270443231/200000000000 : ℚ), (541717859307/400000000 : ℚ), (-429302977820657/1000000000000 : ℚ), 12⟩,
    ⟨(39654499689/125000000000 : ℚ), (36972387251/250000000 : ℚ), (-1898313651851/40000000000 : ℚ), 8⟩,
    ⟨(9968595279/31250000000 : ℚ), (103550195607/2000000000 : ℚ), (-8455075642209/500000000000 : ℚ), 7⟩,
    ⟨(20100776861/62500000000 : ℚ), (796105493/31250000 : ℚ), (-8493848684219/1000000000000 : ℚ), 6⟩,
    ⟨(1269777083/3906250000 : ℚ), (1180305807/80000000 : ℚ), (-2515116205571/500000000000 : ℚ), 5⟩,
    ⟨(329313329109/1000000000000 : ℚ), (23475490129/2500000000 : ℚ), (-819206928313/250000000000 : ℚ), 5⟩,
    ⟨(83580670931/250000000000 : ℚ), (31740207019/5000000000 : ℚ), (-283528169973/125000000000 : ℚ), 4⟩,
    ⟨(340042754269/1000000000000 : ℚ), (22346938479/5000000000 : ℚ), (-1635281143617/1000000000000 : ℚ), 4⟩,
    ⟨(346418453339/1000000000000 : ℚ), (32356159499/10000000000 : ℚ), (-2424269539/2000000000 : ℚ), 4⟩,
    ⟨(70677675893/200000000000 : ℚ), (1193330773/500000000 : ℚ), (-183059250909/200000000000 : ℚ), 4⟩,
    ⟨(360885408449/1000000000000 : ℚ), (3561362993/2000000000 : ℚ), (-349512231279/500000000000 : ℚ), 3⟩,
    ⟨(368837339803/1000000000000 : ℚ), (13351196853/10000000000 : ℚ), (-53655835629/100000000000 : ℚ), 3⟩,
    ⟨(377167592083/1000000000000 : ℚ), (1998754691/2000000000 : ℚ), (-205699187047/500000000000 : ℚ), 3⟩,
    ⟨(385795940403/1000000000000 : ℚ), (1482221891/2000000000 : ℚ), (-312926884743/1000000000000 : ℚ), 3⟩,
    ⟨(197319644527/500000000000 : ℚ), (5389143807/10000000000 : ℚ), (-234064357861/1000000000000 : ℚ), 3⟩,
    ⟨(201806235877/500000000000 : ℚ), (1891005889/5000000000 : ℚ), (-8497372661/50000000000 : ℚ), 3⟩,
    ⟨(412629071847/1000000000000 : ℚ), (248783289/1000000000 : ℚ), (-117149785767/1000000000000 : ℚ), 3⟩,
    ⟨(421602254547/1000000000000 : ℚ), (143393123/1000000000 : ℚ), (-585639257/8000000000 : ℚ), 2⟩,
    ⟨(215222801599/500000000000 : ℚ), (113503511/2000000000 : ℚ), (-36304593451/1000000000000 : ℚ), 2⟩,
    ⟨(219536975759/500000000000 : ℚ), (-150352371/10000000000 : ℚ), (-1020497371/200000000000 : ℚ), 2⟩,
    ⟨(223702101899/500000000000 : ℚ), (-93599081/1250000000 : ℚ), (4283392429/200000000000 : ℚ), 2⟩,
    ⟨(28459758447/62500000000 : ℚ), (-124981361/1000000000 : ℚ), (22013975197/500000000000 : ℚ), 2⟩,
    ⟨(57856645517/125000000000 : ℚ), (-835104511/5000000000 : ℚ), (63325625201/1000000000000 : ℚ), 2⟩,
    ⟨(234911545131/500000000000 : ℚ), (-1011442347/5000000000 : ℚ), (3190810763/40000000000 : ℚ), 2⟩,
    ⟨(119049697333/250000000000 : ℚ), (-1158903941/5000000000 : ℚ), (46859575841/500000000000 : ℚ), 2⟩,
    ⟨(481918859877/1000000000000 : ℚ), (-1281347221/5000000000 : ℚ), (26362456183/250000000000 : ℚ), 2⟩,
    ⟨(121732053623/250000000000 : ℚ), (-690877839/2500000000 : ℚ), (28794341339/250000000000 : ℚ), 2⟩,
    ⟨(491178610353/1000000000000 : ℚ), (-2924846899/10000000000 : ℚ), (123067253971/1000000000000 : ℚ), 2⟩,
    ⟨(19785164553/40000000000 : ℚ), (-3050184003/10000000000 : ℚ), (3231125711/25000000000 : ℚ), 2⟩,
    ⟨(497246494673/1000000000000 : ℚ), (-628420229/2000000000 : ℚ), (16725436163/125000000000 : ℚ), 2⟩,
    ⟨(499005546089/1000000000000 : ℚ), (-3202417441/10000000000 : ℚ), (34201996039/250000000000 : ℚ), 2⟩,
    ⟨(249944663723/500000000000 : ℚ), (-404036647/1250000000 : ℚ), (138300117969/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-3236014553/10000000000 : ℚ), (138486166257/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (36220491311/125000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control353.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control353.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate353

namespace DiagonalRamsey.JointInheritedCertificate354
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23135347369/100000000000 : ℚ), (12232749904723/10000000000 : ℚ), (-283639212021331/1000000000000 : ℚ), 12⟩,
    ⟨(232068815993/1000000000000 : ℚ), (667045576689/5000000000 : ℚ), (-31351493553237/1000000000000 : ℚ), 8⟩,
    ⟨(116746305731/500000000000 : ℚ), (466170987311/10000000000 : ℚ), (-5584158390917/500000000000 : ℚ), 7⟩,
    ⟨(29451393521/125000000000 : ℚ), (228849221413/10000000000 : ℚ), (-5607441950929/1000000000000 : ℚ), 6⟩,
    ⟨(47680804689/200000000000 : ℚ), (66095019459/5000000000 : ℚ), (-3318785429387/1000000000000 : ℚ), 5⟩,
    ⟨(241844340377/1000000000000 : ℚ), (41943661759/5000000000 : ℚ), (-2160022831511/1000000000000 : ℚ), 5⟩,
    ⟨(245898966831/1000000000000 : ℚ), (56523244173/10000000000 : ℚ), (-14933026861/10000000000 : ℚ), 4⟩,
    ⟨(125264427269/500000000000 : ℚ), (792900671/200000000 : ℚ), (-1074730259831/1000000000000 : ℚ), 4⟩,
    ⟨(63922353787/250000000000 : ℚ), (14286521677/5000000000 : ℚ), (-99340294167/125000000000 : ℚ), 4⟩,
    ⟨(130665474821/500000000000 : ℚ), (20961788823/10000000000 : ℚ), (-299059464787/500000000000 : ℚ), 4⟩,
    ⟨(133699563479/500000000000 : ℚ), (1941599797/1250000000 : ℚ), (-454701457381/1000000000000 : ℚ), 3⟩,
    ⟨(8557359601/31250000000 : ℚ), (2308508237/2000000000 : ℚ), (-346792302219/1000000000000 : ℚ), 3⟩,
    ⟨(280578104603/1000000000000 : ℚ), (8535735419/10000000000 : ℚ), (-263494286361/1000000000000 : ℚ), 3⟩,
    ⟨(287561984173/1000000000000 : ℚ), (6221689059/10000000000 : ℚ), (-6181159073/31250000000 : ℚ), 3⟩,
    ⟨(73679971841/250000000000 : ℚ), (55103401/125000000 : ℚ), (-3625716229/25000000000 : ℚ), 3⟩,
    ⟨(150991439827/500000000000 : ℚ), (592954203/2000000000 : ℚ), (-101981722663/1000000000000 : ℚ), 3⟩,
    ⟨(309281014459/1000000000000 : ℚ), (900027031/5000000000 : ℚ), (-6639899887/100000000000 : ℚ), 3⟩,
    ⟨(316544006749/1000000000000 : ℚ), (849246847/10000000000 : ℚ), (-36657858621/1000000000000 : ℚ), 3⟩,
    ⟨(16185095497/50000000000 : ℚ), (1306707/200000000 : ℚ), (-11570951239/1000000000000 : ℚ), 2⟩,
    ⟨(33068578951/100000000000 : ℚ), (-117255259/2000000000 : ℚ), (608977401/62500000000 : ℚ), 2⟩,
    ⟨(337428386881/1000000000000 : ℚ), (-1131380443/10000000000 : ℚ), (27949090077/1000000000000 : ℚ), 2⟩,
    ⟨(68772953431/200000000000 : ℚ), (-12715353/80000000 : ℚ), (43549074809/1000000000000 : ℚ), 2⟩,
    ⟨(349932944471/1000000000000 : ℚ), (-1975181013/10000000000 : ℚ), (14232262101/250000000000 : ℚ), 2⟩,
    ⟨(71114895793/200000000000 : ℚ), (-2299995219/10000000000 : ℚ), (34192789391/500000000000 : ℚ), 2⟩,
    ⟨(14429401583/40000000000 : ℚ), (-2572583603/10000000000 : ℚ), (78147524199/1000000000000 : ℚ), 2⟩,
    ⟨(182682463641/500000000000 : ℚ), (-2799676979/10000000000 : ℚ), (86391550917/1000000000000 : ℚ), 2⟩,
    ⟨(46177444217/125000000000 : ℚ), (-2986465169/10000000000 : ℚ), (5828352689/62500000000 : ℚ), 2⟩,
    ⟨(93214967667/250000000000 : ℚ), (-196057999/625000000 : ℚ), (98837713933/1000000000000 : ℚ), 2⟩,
    ⟨(75130549189/200000000000 : ℚ), (-1627039583/5000000000 : ℚ), (103222070487/1000000000000 : ℚ), 2⟩,
    ⟨(377771282651/1000000000000 : ℚ), (-5218977/15625000 : ℚ), (106464243033/1000000000000 : ℚ), 2⟩,
    ⟨(9479876953/25000000000 : ℚ), (-849173651/2500000000 : ℚ), (13575565969/125000000000 : ℚ), 2⟩,
    ⟨(379910420423/1000000000000 : ℚ), (-214045391/625000000 : ℚ), (54834237661/500000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-428527369/1250000000 : ℚ), (54900591069/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (351831502011/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control354.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control354.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate354

namespace DiagonalRamsey.JointInheritedCertificate355
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12250333849/50000000000 : ℚ), (12424750265607/10000000000 : ℚ), (-305083025129501/1000000000000 : ℚ), 12⟩,
    ⟨(245752562427/1000000000000 : ℚ), (271061810969/2000000000 : ℚ), (-33722390764067/1000000000000 : ℚ), 8⟩,
    ⟨(61809287509/250000000000 : ℚ), (473727405557/10000000000 : ℚ), (-12013388253349/1000000000000 : ℚ), 7⟩,
    ⟨(15590383901/62500000000 : ℚ), (14540196773/625000000 : ℚ), (-3016071100571/500000000000 : ℚ), 6⟩,
    ⟨(50471653153/200000000000 : ℚ), (134437138289/10000000000 : ℚ), (-1785251902473/500000000000 : ℚ), 5⟩,
    ⟨(255945474741/1000000000000 : ℚ), (85353000433/10000000000 : ℚ), (-1162094535899/500000000000 : ℚ), 5⟩,
    ⟨(130086611281/500000000000 : ℚ), (7192634019/1250000000 : ℚ), (-200890606129/125000000000 : ℚ), 4⟩,
    ⟨(53000158741/200000000000 : ℚ), (20191716543/5000000000 : ℚ), (-578488867123/500000000000 : ℚ), 4⟩,
    ⟨(270381696021/1000000000000 : ℚ), (29126198423/10000000000 : ℚ), (-427939853871/500000000000 : ℚ), 4⟩,
    ⟨(138132054239/500000000000 : ℚ), (21386485481/10000000000 : ℚ), (-322250098841/500000000000 : ℚ), 4⟩,
    ⟨(28259138023/100000000000 : ℚ), (15865307483/10000000000 : ℚ), (-30645975323/62500000000 : ℚ), 3⟩,
    ⟨(28930257619/100000000000 : ℚ), (11807107887/10000000000 : ℚ), (-374371205799/1000000000000 : ℚ), 3⟩,
    ⟨(296333063873/1000000000000 : ℚ), (8749170113/10000000000 : ℚ), (-35610652399/125000000000 : ℚ), 3⟩,
    ⟨(1897594599/6250000000 : ℚ), (639600029/1000000000 : ℚ), (-107168228063/500000000000 : ℚ), 3⟩,
    ⟨(62215732351/200000000000 : ℚ), (455225163/1000000000 : ℚ), (-157698645227/1000000000000 : ℚ), 3⟩,
    ⟨(63730352757/200000000000 : ℚ), (1542494021/5000000000 : ℚ), (-111520979283/1000000000000 : ℚ), 3⟩,
    ⟨(163130754409/500000000000 : ℚ), (237687607/1250000000 : ℚ), (-18343575667/250000000000 : ℚ), 3⟩,
    ⟨(10432331589/31250000000 : ℚ), (467885633/5000000000 : ℚ), (-10378014401/250000000000 : ℚ), 3⟩,
    ⟨(341298136763/1000000000000 : ℚ), (139938263/10000000000 : ℚ), (-7327899271/500000000000 : ℚ), 2⟩,
    ⟨(348580208729/1000000000000 : ℚ), (-521231461/10000000000 : ℚ), (8144437401/1000000000000 : ℚ), 2⟩,
    ⟨(88902674103/250000000000 : ℚ), (-1074016869/10000000000 : ℚ), (27603365117/1000000000000 : ℚ), 2⟩,
    ⟨(362321892373/1000000000000 : ℚ), (-1538235859/10000000000 : ℚ), (22132066653/500000000000 : ℚ), 2⟩,
    ⟨(2949193313/8000000000 : ℚ), (-964485089/5000000000 : ℚ), (1463567927/25000000000 : ℚ), 2⟩,
    ⟨(187265788291/500000000000 : ℚ), (-451555809/2000000000 : ℚ), (35379719533/500000000000 : ℚ), 2⟩,
    ⟨(189956239449/500000000000 : ℚ), (-633391439/2500000000 : ℚ), (1623234517/20000000000 : ℚ), 2⟩,
    ⟨(9618501251/25000000000 : ℚ), (-2763204353/10000000000 : ℚ), (89940777481/1000000000000 : ℚ), 2⟩,
    ⟨(388967797861/1000000000000 : ℚ), (-737999359/2500000000 : ℚ), (12155491071/125000000000 : ℚ), 2⟩,
    ⟨(196277503419/500000000000 : ℚ), (-3104012931/10000000000 : ℚ), (51591946597/500000000000 : ℚ), 2⟩,
    ⟨(197733565093/500000000000 : ℚ), (-3222332399/10000000000 : ℚ), (53922852321/500000000000 : ℚ), 2⟩,
    ⟨(397676122567/1000000000000 : ℚ), (-1654616593/5000000000 : ℚ), (111291899347/1000000000000 : ℚ), 2⟩,
    ⟨(12473772193/31250000000 : ℚ), (-673263943/2000000000 : ℚ), (28391579751/250000000000 : ℚ), 2⟩,
    ⟨(199953297811/500000000000 : ℚ), (-3394614301/10000000000 : ℚ), (28674195337/250000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-8495349/25000000 : ℚ), (114837776831/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (5340328859/15625000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control355.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control355.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate355

namespace DiagonalRamsey.JointInheritedCertificate356
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129416294947/500000000000 : ℚ), (6311817736773/5000000000 : ℚ), (-327447777503263/1000000000000 : ℚ), 12⟩,
    ⟨(259608187341/1000000000000 : ℚ), (344321968707/2500000000 : ℚ), (-36195137334371/1000000000000 : ℚ), 8⟩,
    ⟨(32643989101/125000000000 : ℚ), (240777417273/5000000000 : ℚ), (-3223695951567/250000000000 : ℚ), 7⟩,
    ⟨(421518239/1600000000 : ℚ), (3696455171/156250000 : ℚ), (-6475116349087/1000000000000 : ℚ), 6⟩,
    ⟨(133238512903/500000000000 : ℚ), (136764778569/10000000000 : ℚ), (-3833071057571/1000000000000 : ℚ), 5⟩,
    ⟨(270207129587/1000000000000 : ℚ), (86871140903/10000000000 : ℚ), (-2495448898649/1000000000000 : ℚ), 5⟩,
    ⟨(13730164389/50000000000 : ℚ), (29297620269/5000000000 : ℚ), (-107867757841/62500000000 : ℚ), 4⟩,
    ⟨(279623162979/1000000000000 : ℚ), (20574041857/5000000000 : ℚ), (-1242812788767/1000000000000 : ℚ), 4⟩,
    ⟨(285218411041/1000000000000 : ℚ), (29698888913/10000000000 : ℚ), (-919726224441/1000000000000 : ℚ), 4⟩,
    ⟨(72833786667/250000000000 : ℚ), (21826036267/10000000000 : ℚ), (-86618022871/125000000000 : ℚ), 4⟩,
    ⟨(148957231177/500000000000 : ℚ), (8104644909/5000000000 : ℚ), (-65947477243/125000000000 : ℚ), 3⟩,
    ⟨(30489299569/100000000000 : ℚ), (1208063757/1000000000 : ℚ), (-80644767303/200000000000 : ℚ), 3⟩,
    ⟨(312203539587/1000000000000 : ℚ), (4484831441/5000000000 : ℚ), (-307294376051/1000000000000 : ℚ), 3⟩,
    ⟨(31977568951/100000000000 : ℚ), (6575898907/10000000000 : ℚ), (-115848250917/500000000000 : ℚ), 3⟩,
    ⟨(327536521517/1000000000000 : ℚ), (4700667581/10000000000 : ℚ), (-171034436927/1000000000000 : ℚ), 3⟩,
    ⟨(335411294551/1000000000000 : ℚ), (1604365549/5000000000 : ℚ), (-121603248911/1000000000000 : ℚ), 3⟩,
    ⟨(68664834049/200000000000 : ℚ), (1002873887/5000000000 : ℚ), (-40397225597/500000000000 : ℚ), 3⟩,
    ⟨(4389986791/12500000000 : ℚ), (128064191/1250000000 : ℚ), (-46732108007/1000000000000 : ℚ), 3⟩,
    ⟨(179479887643/500000000000 : ℚ), (216290013/10000000000 : ℚ), (-281916291/15625000000 : ℚ), 2⟩,
    ⟨(366531925209/1000000000000 : ℚ), (-1776627/39062500 : ℚ), (629500861/100000000000 : ℚ), 2⟩,
    ⟨(186921234553/500000000000 : ℚ), (-1015589327/10000000000 : ℚ), (1352472203/50000000000 : ℚ), 2⟩,
    ⟨(380821002443/1000000000000 : ℚ), (-743118019/5000000000 : ℚ), (22402561539/500000000000 : ℚ), 2⟩,
    ⟨(24212519883/62500000000 : ℚ), (-941071207/5000000000 : ℚ), (30004994257/500000000000 : ℚ), 2⟩,
    ⟨(98379263439/250000000000 : ℚ), (-1107553257/5000000000 : ℚ), (7300927287/100000000000 : ℚ), 2⟩,
    ⟨(199556150909/500000000000 : ℚ), (-1247110039/5000000000 : ℚ), (8406989833/100000000000 : ℚ), 2⟩,
    ⟨(50516522127/125000000000 : ℚ), (-2726506013/10000000000 : ℚ), (18679669037/200000000000 : ℚ), 2⟩,
    ⟨(408528335209/1000000000000 : ℚ), (-291738421/1000000000 : ℚ), (50576948803/500000000000 : ℚ), 2⟩,
    ⟨(41225843899/100000000000 : ℚ), (-95969197/312500000 : ℚ), (107458548171/1000000000000 : ℚ), 2⟩,
    ⟨(415286565421/1000000000000 : ℚ), (-623154/1953125 : ℚ), (56202215419/500000000000 : ℚ), 2⟩,
    ⟨(104395887997/250000000000 : ℚ), (-3278316991/10000000000 : ℚ), (14507421597/125000000000 : ℚ), 2⟩,
    ⟨(83825455491/200000000000 : ℚ), (-208497621/625000000 : ℚ), (23694193339/200000000000 : ℚ), 2⟩,
    ⟨(209951437451/500000000000 : ℚ), (-3364529819/10000000000 : ℚ), (59834715379/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1684044503/5000000000 : ℚ), (4792755973/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (165814022147/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control356.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control356.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate356

namespace DiagonalRamsey.JointInheritedCertificate390
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267585726049/1000000000000 : ℚ), (12610414751541/10000000000 : ℚ), (-42268648775099/125000000000 : ℚ), 12⟩,
    ⟨(67091830967/250000000000 : ℚ), (344061621661/2500000000 : ℚ), (-18688650416543/500000000000 : ℚ), 9⟩,
    ⟨(269922992293/1000000000000 : ℚ), (96276821701/2000000000 : ℚ), (-3328853320681/250000000000 : ℚ), 7⟩,
    ⟨(54447549877/200000000000 : ℚ), (9463840397/400000000 : ℚ), (-1671485791729/250000000000 : ℚ), 6⟩,
    ⟨(17205581423/62500000000 : ℚ), (136842091147/10000000000 : ℚ), (-3957568437459/1000000000000 : ℚ), 5⟩,
    ⟨(69762066079/250000000000 : ℚ), (86960769373/10000000000 : ℚ), (-1288128369839/500000000000 : ℚ), 5⟩,
    ⟨(141739216587/500000000000 : ℚ), (7335277921/1250000000 : ℚ), (-178157536721/100000000000 : ℚ), 4⟩,
    ⟨(288537144393/1000000000000 : ℚ), (1030675063/250000000 : ℚ), (-256551603519/200000000000 : ℚ), 4⟩,
    ⟨(14708783991/50000000000 : ℚ), (29768144031/10000000000 : ℚ), (-949161374393/1000000000000 : ℚ), 4⟩,
    ⟨(75084934319/250000000000 : ℚ), (10942829763/5000000000 : ℚ), (-357511938131/500000000000 : ℚ), 4⟩,
    ⟨(153484976759/500000000000 : ℚ), (25406269/15625000 : ℚ), (-544318288563/1000000000000 : ℚ), 3⟩,
    ⟨(314002475939/1000000000000 : ℚ), (6061730509/5000000000 : ℚ), (-25997996531/62500000000 : ℚ), 3⟩,
    ⟨(10042799297/31250000000 : ℚ), (9005654997/10000000000 : ℚ), (-316979268097/1000000000000 : ℚ), 3⟩,
    ⟨(329000308997/1000000000000 : ℚ), (132121853/200000000 : ℚ), (-238992098783/1000000000000 : ℚ), 3⟩,
    ⟨(10525661947/31250000000 : ℚ), (472601391/1000000000 : ℚ), (-17643350349/100000000000 : ℚ), 3⟩,
    ⟨(172378439069/500000000000 : ℚ), (646015809/2000000000 : ℚ), (-3921141501/31250000000 : ℚ), 3⟩,
    ⟨(35273097141/100000000000 : ℚ), (505959799/2500000000 : ℚ), (-8342639467/100000000000 : ℚ), 3⟩,
    ⟨(90166666811/250000000000 : ℚ), (519992873/5000000000 : ℚ), (-48344739397/1000000000000 : ℚ), 3⟩,
    ⟨(368487540551/1000000000000 : ℚ), (28710327/1250000000 : ℚ), (-3762384837/200000000000 : ℚ), 2⟩,
    ⟨(94029568011/250000000000 : ℚ), (-443052817/10000000000 : ℚ), (3113839543/500000000000 : ℚ), 2⟩,
    ⟨(383485373609/1000000000000 : ℚ), (-1005083047/10000000000 : ℚ), (27568979963/1000000000000 : ℚ), 2⟩,
    ⟨(39051789603/100000000000 : ℚ), (-1476685121/10000000000 : ℚ), (22908351891/500000000000 : ℚ), 2⟩,
    ⟨(24821757017/62500000000 : ℚ), (-468326197/2500000000 : ℚ), (61434547487/1000000000000 : ℚ), 2⟩,
    ⟨(1575438163/3906250000 : ℚ), (-2206791201/10000000000 : ℚ), (74780072021/1000000000000 : ℚ), 2⟩,
    ⟨(81790141031/200000000000 : ℚ), (-1243139499/5000000000 : ℚ), (2153247071/25000000000 : ℚ), 2⟩,
    ⟨(207004708187/500000000000 : ℚ), (-679706641/2500000000 : ℚ), (95698070641/1000000000000 : ℚ), 2⟩,
    ⟨(26152474077/62500000000 : ℚ), (-581976527/2000000000 : ℚ), (20729976271/200000000000 : ℚ), 2⟩,
    ⟨(21109927339/50000000000 : ℚ), (-3063629837/10000000000 : ℚ), (110111939807/1000000000000 : ℚ), 2⟩,
    ⟨(425250100163/1000000000000 : ℚ), (-198952389/625000000 : ℚ), (57589961943/500000000000 : ℚ), 2⟩,
    ⟨(85512971451/200000000000 : ℚ), (-408881433/1250000000 : ℚ), (59462149501/500000000000 : ℚ), 2⟩,
    ⟨(429120525679/1000000000000 : ℚ), (-3328721181/10000000000 : ℚ), (121394525457/1000000000000 : ℚ), 2⟩,
    ⟨(429902123499/1000000000000 : ℚ), (-13114453/39062500 : ℚ), (122622015013/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-67217209/200000000 : ℚ), (122775098343/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (336192363119/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control390.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control390.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate390

namespace DiagonalRamsey.JointInheritedCertificate391
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54936095521/200000000000 : ℚ), (12717583895193/10000000000 : ℚ), (-87514773079217/250000000000 : ℚ), 12⟩,
    ⟨(275476056559/1000000000000 : ℚ), (1388091606287/10000000000 : ℚ), (-38694187890563/1000000000000 : ℚ), 9⟩,
    ⟨(277059552607/1000000000000 : ℚ), (242801935949/5000000000 : ℚ), (-861554076857/62500000000 : ℚ), 7⟩,
    ⟨(34926964477/125000000000 : ℚ), (119357811483/5000000000 : ℚ), (-6921925936947/1000000000000 : ℚ), 6⟩,
    ⟨(141260927523/500000000000 : ℚ), (27619645889/2000000000 : ℚ), (-819496429481/200000000000 : ℚ), 5⟩,
    ⟨(1789675353/6250000000 : ℚ), (21945158397/2500000000 : ℚ), (-2667549810669/1000000000000 : ℚ), 5⟩,
    ⟨(58171494341/200000000000 : ℚ), (59251985829/10000000000 : ℚ), (-1844914096211/1000000000000 : ℚ), 4⟩,
    ⟨(296006672587/1000000000000 : ℚ), (41640656973/10000000000 : ℚ), (-1328567931149/1000000000000 : ℚ), 4⟩,
    ⟨(75436517377/250000000000 : ℚ), (30078251761/10000000000 : ℚ), (-491633312303/500000000000 : ℚ), 4⟩,
    ⟨(308020388937/1000000000000 : ℚ), (22123911149/10000000000 : ℚ), (-740932286707/1000000000000 : ℚ), 4⟩,
    ⟨(78692301437/250000000000 : ℚ), (2055831337/1250000000 : ℚ), (-141067130259/250000000000 : ℚ), 3⟩,
    ⟨(321927525147/1000000000000 : ℚ), (12272020089/10000000000 : ℚ), (-431455987047/1000000000000 : ℚ), 3⟩,
    ⟨(82356602151/250000000000 : ℚ), (4562760483/5000000000 : ℚ), (-329043052613/1000000000000 : ℚ), 3⟩,
    ⟨(337193637773/1000000000000 : ℚ), (3351986903/5000000000 : ℚ), (-31046827901/125000000000 : ℚ), 3⟩,
    ⟨(34515440999/100000000000 : ℚ), (4806824791/10000000000 : ℚ), (-45920233441/250000000000 : ℚ), 3⟩,
    ⟨(353232058667/1000000000000 : ℚ), (1648747463/5000000000 : ℚ), (-130999631393/1000000000000 : ℚ), 3⟩,
    ⟨(22584299477/62500000000 : ℚ), (416131229/2000000000 : ℚ), (-21885090037/250000000000 : ℚ), 3⟩,
    ⟨(36942644031/100000000000 : ℚ), (1088361643/10000000000 : ℚ), (-51295770921/1000000000000 : ℚ), 3⟩,
    ⟨(377387212527/1000000000000 : ℚ), (271302867/10000000000 : ℚ), (-20795470873/1000000000000 : ℚ), 2⟩,
    ⟨(77030888339/200000000000 : ℚ), (-406858591/10000000000 : ℚ), (631766491/125000000000 : ℚ), 2⟩,
    ⟨(12270416411/31250000000 : ℚ), (-973257037/10000000000 : ℚ), (27076745641/1000000000000 : ℚ), 2⟩,
    ⟨(399811644551/1000000000000 : ℚ), (-1448379703/10000000000 : ℚ), (45899201313/1000000000000 : ℚ), 2⟩,
    ⟨(406560461363/1000000000000 : ℚ), (-369567289/2000000000 : ℚ), (15500581561/250000000000 : ℚ), 2⟩,
    ⟨(51604347599/125000000000 : ℚ), (-2183605461/10000000000 : ℚ), (15151410161/200000000000 : ℚ), 2⟩,
    ⟨(418574177713/1000000000000 : ℚ), (-616230831/2500000000 : ℚ), (21862615767/250000000000 : ℚ), 2⟩,
    ⟨(84744675719/200000000000 : ℚ), (-674732259/2500000000 : ℚ), (24326221249/250000000000 : ℚ), 2⟩,
    ⟨(21411639691/50000000000 : ℚ), (-2891134931/10000000000 : ℚ), (52746006143/500000000000 : ℚ), 2⟩,
    ⟨(432058995253/1000000000000 : ℚ), (-3045773421/10000000000 : ℚ), (14017935927/125000000000 : ℚ), 2⟩,
    ⟨(108791283621/250000000000 : ℚ), (-3166052943/10000000000 : ℚ), (58679417601/500000000000 : ℚ), 2⟩,
    ⟨(437521297693/1000000000000 : ℚ), (-3254345949/10000000000 : ℚ), (121211392193/1000000000000 : ℚ), 2⟩,
    ⟨(439104793741/1000000000000 : ℚ), (-103510143/312500000 : ℚ), (4950106277/40000000000 : ℚ), 2⟩,
    ⟨(87980074539/200000000000 : ℚ), (-3341054597/10000000000 : ℚ), (12501534703/100000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3344633833/10000000000 : ℚ), (31293203897/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (330946585551/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control391.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control391.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate391

namespace DiagonalRamsey.JointInheritedCertificate392
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3522529073/12500000000 : ℚ), (6412179205707/5000000000 : ℚ), (-362144748766777/1000000000000 : ℚ), 12⟩,
    ⟨(282611755529/1000000000000 : ℚ), (1399892337601/10000000000 : ℚ), (-10007616285271/250000000000 : ℚ), 9⟩,
    ⟨(142111409829/500000000000 : ℚ), (489807266947/10000000000 : ℚ), (-3565299718299/250000000000 : ℚ), 7⟩,
    ⟨(286620002797/1000000000000 : ℚ), (120413292107/5000000000 : ℚ), (-7161344870101/1000000000000 : ℚ), 6⟩,
    ⟨(72445054691/250000000000 : ℚ), (139348887563/10000000000 : ℚ), (-4239414858043/1000000000000 : ℚ), 5⟩,
    ⟨(5873460659/20000000000 : ℚ), (5537288709/625000000 : ℚ), (-690036330181/250000000000 : ℚ), 5⟩,
    ⟨(149130477713/500000000000 : ℚ), (29909393781/5000000000 : ℚ), (-954571983519/500000000000 : ℚ), 4⟩,
    ⟨(37937475249/125000000000 : ℚ), (42051923419/10000000000 : ℚ), (-275002356687/200000000000 : ℚ), 4⟩,
    ⟨(309339119691/1000000000000 : ℚ), (30386351693/10000000000 : ℚ), (-203566955261/200000000000 : ℚ), 4⟩,
    ⟨(157861336351/500000000000 : ℚ), (22360419559/10000000000 : ℚ), (-767184525121/1000000000000 : ℚ), 4⟩,
    ⟨(322588983919/1000000000000 : ℚ), (8315868613/5000000000 : ℚ), (-584476725873/1000000000000 : ℚ), 3⟩,
    ⟨(82467981753/250000000000 : ℚ), (496766791/400000000 : ℚ), (-27946149243/62500000000 : ℚ), 3⟩,
    ⟨(168750681629/500000000000 : ℚ), (2311021729/2500000000 : ℚ), (-170626522911/500000000000 : ℚ), 3⟩,
    ⟨(69080763403/200000000000 : ℚ), (1700160233/2500000000 : ℚ), (-16116643711/62500000000 : ℚ), 3⟩,
    ⟨(353503183333/1000000000000 : ℚ), (122162271/250000000 : ℚ), (-38201725257/200000000000 : ℚ), 3⟩,
    ⟨(45215182611/125000000000 : ℚ), (3363822873/10000000000 : ℚ), (-136580253671/1000000000000 : ℚ), 3⟩,
    ⟨(369979503173/1000000000000 : ℚ), (2136432887/10000000000 : ℚ), (-91693812319/1000000000000 : ℚ), 3⟩,
    ⟨(378197780727/1000000000000 : ℚ), (227147617/2000000000 : ℚ), (-54271923021/1000000000000 : ℚ), 3⟩,
    ⟨(77259429409/200000000000 : ℚ), (77989749/2500000000 : ℚ), (-11396330389/500000000000 : ℚ), 2⟩,
    ⟨(197099800401/500000000000 : ℚ), (-185798737/5000000000 : ℚ), (775224047/200000000000 : ℚ), 2⟩,
    ⟨(50228629631/125000000000 : ℚ), (-23558417/250000000 : ℚ), (13293691621/500000000000 : ℚ), 2⟩,
    ⟨(409111980141/1000000000000 : ℚ), (-1420955507/10000000000 : ℚ), (22995211319/500000000000 : ℚ), 2⟩,
    ⟨(207989145679/500000000000 : ℚ), (-911613779/5000000000 : ℚ), (62583480199/1000000000000 : ℚ), 2⟩,
    ⟨(422361844369/1000000000000 : ℚ), (-2161259847/10000000000 : ℚ), (38375542139/500000000000 : ℚ), 2⟩,
    ⟨(107050290517/250000000000 : ℚ), (-1222195367/5000000000 : ℚ), (17758197939/200000000000 : ℚ), 2⟩,
    ⟨(216720004317/500000000000 : ℚ), (-10719359/40000000 : ℚ), (98933898671/1000000000000 : ℚ), 2⟩,
    ⟨(438027931111/1000000000000 : ℚ), (-1436591389/5000000000 : ℚ), (26839519221/250000000000 : ℚ), 2⟩,
    ⟨(27620046581/62500000000 : ℚ), (-378587749/1250000000 : ℚ), (114200280661/1000000000000 : ℚ), 2⟩,
    ⟨(445080961263/1000000000000 : ℚ), (-1574822101/5000000000 : ℚ), (11956395737/100000000000 : ℚ), 2⟩,
    ⟨(223739072201/500000000000 : ℚ), (-3238410639/10000000000 : ℚ), (61762686087/500000000000 : ℚ), 2⟩,
    ⟨(449089208531/1000000000000 : ℚ), (-1648346977/5000000000 : ℚ), (126138103561/1000000000000 : ℚ), 2⟩,
    ⟨(22494931911/50000000000 : ℚ), (-3325573097/10000000000 : ℚ), (127436201703/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3329170823/10000000000 : ℚ), (127598081113/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (13027326971/40000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control392.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control392.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate392

namespace DiagonalRamsey.JointInheritedCertificate393
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144509022917/500000000000 : ℚ), (1293887327311/1000000000 : ℚ), (-374727943319739/1000000000000 : ℚ), 12⟩,
    ⟨(289840874513/1000000000000 : ℚ), (353137593799/2500000000 : ℚ), (-8284375694929/200000000000 : ℚ), 9⟩,
    ⟨(291478607581/1000000000000 : ℚ), (49431734391/1000000000 : ℚ), (-7378638562477/500000000000 : ℚ), 7⟩,
    ⟨(146957736387/500000000000 : ℚ), (121546275429/5000000000 : ℚ), (-7410758647181/1000000000000 : ℚ), 6⟩,
    ⟨(297128001747/1000000000000 : ℚ), (70346081201/5000000000 : ℚ), (-219366562727/50000000000 : ℚ), 5⟩,
    ⟨(301085256091/1000000000000 : ℚ), (89473671747/10000000000 : ℚ), (-1428347621611/500000000000 : ℚ), 5⟩,
    ⟨(305749125283/1000000000000 : ℚ), (60428541599/10000000000 : ℚ), (-61755073267/31250000000 : ℚ), 4⟩,
    ⟨(19442168357/62500000000 : ℚ), (21247404349/5000000000 : ℚ), (-355878477883/250000000000 : ℚ), 4⟩,
    ⟨(63402134649/200000000000 : ℚ), (6143705447/2000000000 : ℚ), (-1053974473317/1000000000000 : ℚ), 4⟩,
    ⟨(5054685893/15625000000 : ℚ), (1130787237/500000000 : ℚ), (-794668335219/1000000000000 : ℚ), 4⟩,
    ⟨(16523993533/50000000000 : ℚ), (8415920287/5000000000 : ℚ), (-9463597989/15625000000 : ℚ), 3⟩,
    ⟨(33788337281/100000000000 : ℚ), (6289255903/5000000000 : ℚ), (-463622611371/1000000000000 : ℚ), 3⟩,
    ⟨(345639103827/1000000000000 : ℚ), (9372697749/10000000000 : ℚ), (-354124910141/1000000000000 : ℚ), 3⟩,
    ⟨(353672371783/1000000000000 : ℚ), (3452845017/5000000000 : ℚ), (-267911124009/1000000000000 : ℚ), 3⟩,
    ⟨(72381162383/200000000000 : ℚ), (2486615909/5000000000 : ℚ), (-24850466041/125000000000 : ℚ), 3⟩,
    ⟨(74052026339/200000000000 : ℚ), (1718092917/5000000000 : ℚ), (-142559848157/1000000000000 : ℚ), 3⟩,
    ⟨(75730974891/200000000000 : ℚ), (2197409027/10000000000 : ℚ), (-96191076987/1000000000000 : ℚ), 3⟩,
    ⟨(77401838847/200000000000 : ℚ), (593818553/5000000000 : ℚ), (-28773544869/500000000000 : ℚ), 3⟩,
    ⟨(395242634367/1000000000000 : ℚ), (356586049/10000000000 : ℚ), (-25052270583/1000000000000 : ℚ), 2⟩,
    ⟨(403275902323/1000000000000 : ℚ), (-332817207/10000000000 : ℚ), (123285349/50000000000 : ℚ), 2⟩,
    ⟨(20551581667/50000000000 : ℚ), (-181653673/2000000000 : ℚ), (25890307671/1000000000000 : ℚ), 2⟩,
    ⟨(418435135489/1000000000000 : ℚ), (-139068889/1000000000 : ℚ), (45894258191/1000000000000 : ℚ), 2⟩,
    ⟨(212707554499/500000000000 : ℚ), (-359205561/2000000000 : ℚ), (15379389/244140625 : ℚ), 2⟩,
    ⟨(86380866581/200000000000 : ℚ), (-1068265071/5000000000 : ℚ), (15517639391/200000000000 : ℚ), 2⟩,
    ⟨(437840312437/1000000000000 : ℚ), (-2421643347/10000000000 : ℚ), (2812056961/31250000000 : ℚ), 2⟩,
    ⟨(443165880867/1000000000000 : ℚ), (-2658673293/10000000000 : ℚ), (50213163137/500000000000 : ℚ), 2⟩,
    ⟨(223914875029/500000000000 : ℚ), (-2853264029/10000000000 : ℚ), (109094854851/1000000000000 : ℚ), 2⟩,
    ⟨(225893502201/500000000000 : ℚ), (-3009751137/10000000000 : ℚ), (29033381727/250000000000 : ℚ), 2⟩,
    ⟨(7109367709/15625000000 : ℚ), (-391427829/1250000000 : ℚ), (60824953311/500000000000 : ℚ), 2⟩,
    ⟨(457436398569/1000000000000 : ℚ), (-1610355337/5000000000 : ℚ), (62861668203/500000000000 : ℚ), 2⟩,
    ⟨(459074131637/1000000000000 : ℚ), (-819832491/2500000000 : ℚ), (128409581327/1000000000000 : ℚ), 2⟩,
    ⟨(114974240079/250000000000 : ℚ), (-3308373629/10000000000 : ℚ), (32436023483/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3311991759/10000000000 : ℚ), (64955254617/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (32036626947/100000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control393.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control393.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate393

namespace DiagonalRamsey.JointInheritedCertificate394
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4629059191/15625000000 : ℚ), (1305282701301/1000000000 : ℚ), (-77498758400753/200000000000 : ℚ), 12⟩,
    ⟨(297095890663/1000000000000 : ℚ), (712572752821/5000000000 : ℚ), (-10708359216327/250000000000 : ℚ), 9⟩,
    ⟨(149380021709/500000000000 : ℚ), (99760873953/2000000000 : ℚ), (-1220840027/80000000 : ℚ), 7⟩,
    ⟨(301236219789/1000000000000 : ℚ), (61336610763/2500000000 : ℚ), (-3831868222189/500000000000 : ℚ), 6⟩,
    ⟨(152250286421/500000000000 : ℚ), (142027875163/10000000000 : ℚ), (-4537338824537/1000000000000 : ℚ), 5⟩,
    ⟨(12340866603/40000000000 : ℚ), (5646590099/625000000 : ℚ), (-2954591630701/1000000000000 : ℚ), 5⟩,
    ⟨(313260771169/1000000000000 : ℚ), (12206863957/2000000000 : ℚ), (-511024936023/250000000000 : ℚ), 4⟩,
    ⟨(4979253921/15625000000 : ℚ), (42934534061/10000000000 : ℚ), (-1472667771771/1000000000000 : ℚ), 4⟩,
    ⟨(32470398889/100000000000 : ℚ), (31048084833/10000000000 : ℚ), (-272647041863/250000000000 : ℚ), 4⟩,
    ⟨(165648948037/500000000000 : ℚ), (22868829263/10000000000 : ℚ), (-822502416007/1000000000000 : ℚ), 4⟩,
    ⟨(67678093913/200000000000 : ℚ), (17029975881/10000000000 : ℚ), (-2508499549/4000000000 : ℚ), 3⟩,
    ⟨(345913404003/1000000000000 : ℚ), (12736088941/10000000000 : ℚ), (-240150911653/500000000000 : ℚ), 3⟩,
    ⟨(353794249417/1000000000000 : ℚ), (4749849561/5000000000 : ℚ), (-367141755593/1000000000000 : ℚ), 3⟩,
    ⟨(180978554479/500000000000 : ℚ), (1752312859/2500000000 : ℚ), (-69515613513/250000000000 : ℚ), 3⟩,
    ⟨(185161684913/500000000000 : ℚ), (2529291269/5000000000 : ℚ), (-206675351311/1000000000000 : ℚ), 3⟩,
    ⟨(75762492071/200000000000 : ℚ), (1753619031/5000000000 : ℚ), (-14859236957/100000000000 : ℚ), 3⟩,
    ⟨(387342625963/1000000000000 : ℚ), (564285131/2500000000 : ℚ), (-100722573837/1000000000000 : ℚ), 3⟩,
    ⟨(98957929123/250000000000 : ℚ), (154793413/1250000000 : ℚ), (-12168321327/200000000000 : ℚ), 3⟩,
    ⟨(5052474717/12500000000 : ℚ), (400072099/10000000000 : ℚ), (-27319353263/1000000000000 : ℚ), 2⟩,
    ⟨(412360836901/1000000000000 : ℚ), (-147568249/5000000000 : ℚ), (528653691/500000000000 : ℚ), 2⟩,
    ⟨(84048336463/200000000000 : ℚ), (-7002107/80000000 : ℚ), (12601408091/500000000000 : ℚ), 2⟩,
    ⟨(427764616753/1000000000000 : ℚ), (-1089163/8000000 : ℚ), (2290685247/50000000000 : ℚ), 2⟩,
    ⟨(108714297561/250000000000 : ℚ), (-1769831477/10000000000 : ℚ), (15856216369/250000000000 : ℚ), 2⟩,
    ⟨(110362774357/250000000000 : ℚ), (-1056389601/5000000000 : ℚ), (78449471403/1000000000000 : ℚ), 2⟩,
    ⟨(223741417687/500000000000 : ℚ), (-119992659/500000000 : ℚ), (45603885991/500000000000 : ℚ), 2⟩,
    ⟨(113223578787/250000000000 : ℚ), (-2638445439/10000000000 : ℚ), (101948164097/1000000000000 : ℚ), 2⟩,
    ⟨(457633421243/1000000000000 : ℚ), (-283426807/1000000000 : ℚ), (55431401399/500000000000 : ℚ), 2⟩,
    ⟨(18466180539/40000000000 : ℚ), (-2991709979/10000000000 : ℚ), (14762408667/125000000000 : ℚ), 2⟩,
    ⟨(464918866529/1000000000000 : ℚ), (-194631271/625000000 : ℚ), (123769324413/1000000000000 : ℚ), 2⟩,
    ⟨(467395042899/1000000000000 : ℚ), (-3203902189/10000000000 : ℚ), (15994430967/125000000000 : ℚ), 2⟩,
    ⟨(93811839131/200000000000 : ℚ), (-203928267/625000000 : ℚ), (130715635223/1000000000000 : ℚ), 2⟩,
    ⟨(234947649047/500000000000 : ℚ), (-3292057869/10000000000 : ℚ), (6604338481/50000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-3295696081/10000000000 : ℚ), (66128873277/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (78758198843/250000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control394.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control394.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate394

namespace DiagonalRamsey.JointInheritedCertificate395
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(37940656669/125000000000 : ℚ), (411438250887/312500000 : ℚ), (-400432988280393/1000000000000 : ℚ), 12⟩,
    ⟨(304374515389/1000000000000 : ℚ), (1437655985937/10000000000 : ℚ), (-22132050260421/500000000000 : ℚ), 9⟩,
    ⟨(61212972121/200000000000 : ℚ), (503260507003/10000000000 : ℚ), (-15770489976919/1000000000000 : ℚ), 7⟩,
    ⟨(77145002513/250000000000 : ℚ), (61896063409/2500000000 : ℚ), (-792008190501/100000000000 : ℚ), 6⟩,
    ⟨(311895741467/1000000000000 : ℚ), (1791919933/125000000 : ℚ), (-1172329047267/250000000000 : ℚ), 5⟩,
    ⟨(315980122541/1000000000000 : ℚ), (45605147591/5000000000 : ℚ), (-3053751069813/1000000000000 : ℚ), 5⟩,
    ⟨(64158763691/200000000000 : ℚ), (12326989369/2000000000 : ℚ), (-1056447298903/500000000000 : ℚ), 4⟩,
    ⟨(326290470683/1000000000000 : ℚ), (43370211601/10000000000 : ℚ), (-1522425513747/1000000000000 : ℚ), 4⟩,
    ⟨(332417143461/1000000000000 : ℚ), (15687164177/5000000000 : ℚ), (-1127637185737/1000000000000 : ℚ), 4⟩,
    ⟨(16955741679/50000000000 : ℚ), (2889888901/1250000000 : ℚ), (-850654539647/1000000000000 : ℚ), 4⟩,
    ⟨(346319038623/1000000000000 : ℚ), (4306419673/2500000000 : ℚ), (-324406523907/500000000000 : ℚ), 3⟩,
    ⟨(176980189079/500000000000 : ℚ), (322287741/250000000 : ℚ), (-124288009049/250000000000 : ℚ), 3⟩,
    ⟨(361965261907/1000000000000 : ℚ), (1203094423/1250000000 : ℚ), (-190141163289/500000000000 : ℚ), 3⟩,
    ⟨(74051319693/200000000000 : ℚ), (711103319/1000000000 : ℚ), (-57660237729/200000000000 : ℚ), 3⟩,
    ⟨(378754537727/1000000000000 : ℚ), (321392863/625000000 : ℚ), (-107303062669/500000000000 : ℚ), 3⟩,
    ⟨(387377239893/1000000000000 : ℚ), (3576750407/10000000000 : ℚ), (-154661860931/1000000000000 : ℚ), 3⟩,
    ⟨(396041663627/1000000000000 : ℚ), (7235691/31250000 : ℚ), (-10527351409/100000000000 : ℚ), 3⟩,
    ⟨(404664365793/1000000000000 : ℚ), (643840653/5000000000 : ℚ), (-40088539/625000000 : ℚ), 3⟩,
    ⟨(82632461011/200000000000 : ℚ), (442245481/10000000000 : ℚ), (-29580922813/1000000000000 : ℚ), 2⟩,
    ⟨(105363410403/250000000000 : ℚ), (-129356929/5000000000 : ℚ), (-168397331/500000000000 : ℚ), 2⟩,
    ⟨(214729262681/500000000000 : ℚ), (-843469149/10000000000 : ℚ), (2453659199/100000000000 : ℚ), 2⟩,
    ⟨(6829685389/15625000000 : ℚ), (-333347043/2500000000 : ℚ), (5719991259/125000000000 : ℚ), 2⟩,
    ⟨(22215203497/50000000000 : ℚ), (-348953751/2000000000 : ℚ), (6388686873/100000000000 : ℚ), 2⟩,
    ⟨(451001760059/1000000000000 : ℚ), (-418026107/2000000000 : ℚ), (39672625907/500000000000 : ℚ), 2⟩,
    ⟨(457128432837/1000000000000 : ℚ), (-2379138131/10000000000 : ℚ), (18493371477/200000000000 : ℚ), 2⟩,
    ⟨(92525017013/200000000000 : ℚ), (-1309634703/5000000000 : ℚ), (1035091579/10000000000 : ℚ), 2⟩,
    ⟨(233719390489/500000000000 : ℚ), (-2816304269/10000000000 : ℚ), (56335719059/500000000000 : ℚ), 2⟩,
    ⟨(471523162053/1000000000000 : ℚ), (-594936957/2000000000 : ℚ), (120106839391/1000000000000 : ℚ), 2⟩,
    ⟨(474838893467/1000000000000 : ℚ), (-619556233/2000000000 : ℚ), (25186279187/200000000000 : ℚ), 2⟩,
    ⟨(238677021457/500000000000 : ℚ), (-1594043633/5000000000 : ℚ), (130230783653/1000000000000 : ℚ), 2⟩,
    ⟨(479044388131/1000000000000 : ℚ), (-1623680897/5000000000 : ℚ), (133065271257/1000000000000 : ℚ), 2⟩,
    ⟨(59986706271/125000000000 : ℚ), (-40959077/125000000 : ℚ), (67236599841/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3280384057/10000000000 : ℚ), (134648759273/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (154842176167/500000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control395.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control395.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate395

namespace DiagonalRamsey.JointInheritedCertificate397
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(396282331937/1000000000000 : ℚ), (14895535042531/10000000000 : ℚ), (-295676105602137/500000000000 : ℚ), 12⟩,
    ⟨(49657837129/125000000000 : ℚ), (25450797623/156250000 : ℚ), (-32688797890441/500000000000 : ℚ), 9⟩,
    ⟨(399213985771/1000000000000 : ℚ), (142849522181/2500000000 : ℚ), (-11649847133767/500000000000 : ℚ), 7⟩,
    ⟨(16084696247/40000000000 : ℚ), (14091401203/500000000 : ℚ), (-11706887588429/1000000000000 : ℚ), 6⟩,
    ⟨(405944996719/1000000000000 : ℚ), (16366008327/1000000000 : ℚ), (-6936278346723/1000000000000 : ℚ), 5⟩,
    ⟨(82131979123/200000000000 : ℚ), (104473009351/10000000000 : ℚ), (-17662114741/3906250000 : ℚ), 5⟩,
    ⟨(406461617/976562500 : ℚ), (8857228191/1250000000 : ℚ), (-3132747616607/1000000000000 : ℚ), 4⟩,
    ⟨(211280941137/500000000000 : ℚ), (50069730863/10000000000 : ℚ), (-565383988701/250000000000 : ℚ), 4⟩,
    ⟨(2148171737/5000000000 : ℚ), (36398431889/10000000000 : ℚ), (-419849752051/250000000000 : ℚ), 4⟩,
    ⟨(10934149487/25000000000 : ℚ), (3372378799/1250000000 : ℚ), (-158916234637/125000000000 : ℚ), 4⟩,
    ⟨(44568231867/100000000000 : ℚ), (20247996007/10000000000 : ℚ), (-974317939191/1000000000000 : ℚ), 3⟩,
    ⟨(454503274079/1000000000000 : ℚ), (15294616213/10000000000 : ℚ), (-375747826137/500000000000 : ℚ), 3⟩,
    ⟨(231871947541/500000000000 : ℚ), (5780095013/5000000000 : ℚ), (-145032248647/250000000000 : ℚ), 3⟩,
    ⟨(9466303789/20000000000 : ℚ), (4343591203/5000000000 : ℚ), (-222792412887/500000000000 : ℚ), 3⟩,
    ⟨(15097655637/31250000000 : ℚ), (1287728961/2000000000 : ℚ), (-84525596881/250000000000 : ℚ), 3⟩,
    ⟨(123269698559/250000000000 : ℚ), (232643053/500000000 : ℚ), (-7842890101/31250000000 : ℚ), 3⟩,
    ⟨(15721274073/31250000000 : ℚ), (3216672319/10000000000 : ℚ), (-89732098507/500000000000 : ℚ), 3⟩,
    ⟨(128258646047/250000000000 : ℚ), (2049188653/10000000000 : ℚ), (-6008396569/50000000000 : ℚ), 3⟩,
    ⟨(261422187561/500000000000 : ℚ), (136439533/1250000000 : ℚ), (-4411246999/62500000000 : ℚ), 2⟩,
    ⟨(532415669489/1000000000000 : ℚ), (300093917/10000000000 : ℚ), (-14416039823/500000000000 : ℚ), 2⟩,
    ⟨(541656290493/1000000000000 : ℚ), (-44717151/1250000000 : ℚ), (6488637077/1000000000000 : ℚ), 2⟩,
    ⟨(550477245901/1000000000000 : ℚ), (-453371697/5000000000 : ℚ), (36462920417/1000000000000 : ℚ), 2⟩,
    ⟨(139698396273/250000000000 : ℚ), (-682941463/5000000000 : ℚ), (61924836661/1000000000000 : ℚ), 2⟩,
    ⟨(141631304293/250000000000 : ℚ), (-1749774501/10000000000 : ℚ), (41761199527/500000000000 : ℚ), 2⟩,
    ⟨(286798841149/500000000000 : ℚ), (-413949441/2000000000 : ℚ), (10176117573/100000000000 : ℚ), 2⟩,
    ⟨(144985717191/250000000000 : ℚ), (-1167300541/5000000000 : ℚ), (117036117427/1000000000000 : ℚ), 2⟩,
    ⟨(585499668957/1000000000000 : ℚ), (-318895489/1250000000 : ℚ), (32413766107/250000000000 : ℚ), 2⟩,
    ⟨(147553641963/250000000000 : ℚ), (-1362350949/5000000000 : ℚ), (13985626669/100000000000 : ℚ), 2⟩,
    ⟨(594042158397/1000000000000 : ℚ), (-2859223471/10000000000 : ℚ), (73910747819/500000000000 : ℚ), 2⟩,
    ⟨(596945578801/1000000000000 : ℚ), (-2957703021/10000000000 : ℚ), (153685820261/1000000000000 : ℚ), 2⟩,
    ⟨(598896867539/1000000000000 : ℚ), (-3022242859/10000000000 : ℚ), (39386193287/250000000000 : ℚ), 2⟩,
    ⟨(299938616317/500000000000 : ℚ), (-3054185697/10000000000 : ℚ), (39864845709/250000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1529081693/5000000000 : ℚ), (79849009889/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (121228089929/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control397.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control397.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate397

namespace DiagonalRamsey.JointInheritedCertificate398
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(116486529941/500000000000 : ℚ), (2425385590943/2000000000 : ℚ), (-283143186356383/1000000000000 : ℚ), 12⟩,
    ⟨(46736121627/200000000000 : ℚ), (661407739411/5000000000 : ℚ), (-31295801867293/1000000000000 : ℚ), 9⟩,
    ⟨(58772222641/250000000000 : ℚ), (9247097061/200000000 : ℚ), (-1393481569731/125000000000 : ℚ), 7⟩,
    ⟨(741201077/3125000000 : ℚ), (227041396103/10000000000 : ℚ), (-5596684406709/1000000000000 : ℚ), 6⟩,
    ⟨(47989357999/200000000000 : ℚ), (65591389433/5000000000 : ℚ), (-3312024113783/1000000000000 : ℚ), 5⟩,
    ⟨(243349622769/1000000000000 : ℚ), (16653876441/2000000000 : ℚ), (-21552867583/10000000000 : ℚ), 5⟩,
    ⟨(247360071823/1000000000000 : ℚ), (28059397661/5000000000 : ℚ), (-1489734490801/1000000000000 : ℚ), 4⟩,
    ⟨(12596975717/50000000000 : ℚ), (19683720539/5000000000 : ℚ), (-66993661261/62500000000 : ℚ), 4⟩,
    ⟨(128521923893/500000000000 : ℚ), (28375288653/10000000000 : ℚ), (-396193677903/500000000000 : ℚ), 4⟩,
    ⟨(131311957319/500000000000 : ℚ), (2081651681/1000000000 : ℚ), (-149034311829/250000000000 : ℚ), 4⟩,
    ⟨(268625975803/1000000000000 : ℚ), (3084648627/2000000000 : ℚ), (-452982569087/1000000000000 : ℚ), 3⟩,
    ⟨(274992228151/1000000000000 : ℚ), (358062629/312500000 : ℚ), (-345276547281/1000000000000 : ℚ), 3⟩,
    ⟨(35207670149/125000000000 : ℚ), (4234583127/5000000000 : ℚ), (-65535233611/250000000000 : ℚ), 3⟩,
    ⟨(36071143441/125000000000 : ℚ), (6168316567/10000000000 : ℚ), (-39315493499/200000000000 : ℚ), 3⟩,
    ⟨(1478245307/5000000000 : ℚ), (4364792991/10000000000 : ℚ), (-143921978599/1000000000000 : ℚ), 3⟩,
    ⟨(302832919369/1000000000000 : ℚ), (2928851319/10000000000 : ℚ), (-2019450083/20000000000 : ℚ), 3⟩,
    ⟨(62010307391/200000000000 : ℚ), (354002591/2000000000 : ℚ), (-2619012153/40000000000 : ℚ), 3⟩,
    ⟨(79308848731/250000000000 : ℚ), (411925679/5000000000 : ℚ), (-7162038453/200000000000 : ℚ), 3⟩,
    ⟨(324315308797/1000000000000 : ℚ), (43664131/10000000000 : ℚ), (-1348934943/125000000000 : ℚ), 3⟩,
    ⟨(82805773783/250000000000 : ℚ), (-604924841/10000000000 : ℚ), (209232391/20000000000 : ℚ), 2⟩,
    ⟨(337892228173/1000000000000 : ℚ), (-229510201/2000000000 : ℚ), (28611521099/1000000000000 : ℚ), 2⟩,
    ⟨(344258480521/1000000000000 : ℚ), (-801771489/5000000000 : ℚ), (44161384141/1000000000000 : ℚ), 2⟩,
    ⟨(175130270843/500000000000 : ℚ), (-1987606443/10000000000 : ℚ), (57496323683/1000000000000 : ℚ), 2⟩,
    ⟨(177920304269/500000000000 : ℚ), (-2311009027/10000000000 : ℚ), (68912681491/1000000000000 : ℚ), 2⟩,
    ⟨(11279529437/31250000000 : ℚ), (-2582426467/10000000000 : ℚ), (15727832777/200000000000 : ℚ), 2⟩,
    ⟨(365524384501/1000000000000 : ℚ), (-561710919/2000000000 : ℚ), (43426166391/500000000000 : ℚ), 2⟩,
    ⟨(73906966711/200000000000 : ℚ), (-2994556471/10000000000 : ℚ), (93688097081/1000000000000 : ℚ), 2⟩,
    ⟨(37293766633/100000000000 : ℚ), (-1572195681/5000000000 : ℚ), (19850062579/200000000000 : ℚ), 2⟩,
    ⟨(93925027921/250000000000 : ℚ), (-130442293/400000000 : ℚ), (103617241531/1000000000000 : ℚ), 2⟩,
    ⟨(1180611143/3125000000 : ℚ), (-1673384593/5000000000 : ℚ), (2136927533/20000000000 : ℚ), 2⟩,
    ⟨(379203848189/1000000000000 : ℚ), (-850771709/2500000000 : ℚ), (54488993083/500000000000 : ℚ), 2⟩,
    ⟨(189955698221/500000000000 : ℚ), (-3431003979/10000000000 : ℚ), (110037601127/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3434482423/10000000000 : ℚ), (1721402603/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (45238204553/125000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control398.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control398.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate398

namespace DiagonalRamsey.JointInheritedCertificate399
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(246660389713/1000000000000 : ℚ), (2462271919657/2000000000 : ℚ), (-304328005300983/1000000000000 : ℚ), 12⟩,
    ⟨(3092478961/12500000000 : ℚ), (1343196130241/10000000000 : ℚ), (-33637918500213/1000000000000 : ℚ), 9⟩,
    ⟨(62216766143/250000000000 : ℚ), (234806244817/5000000000 : ℚ), (-5991280144807/500000000000 : ℚ), 7⟩,
    ⟨(50210497589/200000000000 : ℚ), (57671208701/2500000000 : ℚ), (-1203218931099/200000000000 : ℚ), 6⟩,
    ⟨(253933540177/1000000000000 : ℚ), (66670175283/5000000000 : ℚ), (-3560540137079/1000000000000 : ℚ), 5⟩,
    ⟨(128741237581/500000000000 : ℚ), (84676322491/10000000000 : ℚ), (-2317307103107/1000000000000 : ℚ), 5⟩,
    ⟨(52333022943/200000000000 : ℚ), (5709552997/1000000000 : ℚ), (-12816144703/8000000000 : ℚ), 4⟩,
    ⟨(26644117773/100000000000 : ℚ), (20037876647/5000000000 : ℚ), (-1152988267759/1000000000000 : ℚ), 4⟩,
    ⟨(27176466811/100000000000 : ℚ), (28905652043/10000000000 : ℚ), (-426320584081/500000000000 : ℚ), 4⟩,
    ⟨(69396079433/250000000000 : ℚ), (4244696377/2000000000 : ℚ), (-641793038209/1000000000000 : ℚ), 4⟩,
    ⟨(28384408019/100000000000 : ℚ), (15741654469/10000000000 : ℚ), (-488020717971/1000000000000 : ℚ), 3⟩,
    ⟨(72620917637/250000000000 : ℚ), (11711155047/10000000000 : ℚ), (-37235649103/100000000000 : ℚ), 3⟩,
    ⟨(148719572961/500000000000 : ℚ), (1734641731/2000000000 : ℚ), (-56621492973/200000000000 : ℚ), 3⟩,
    ⟨(152321760641/500000000000 : ℚ), (6334789833/10000000000 : ℚ), (-212750914583/1000000000000 : ℚ), 3⟩,
    ⟨(78006853639/250000000000 : ℚ), (562768301/1250000000 : ℚ), (-156272737877/1000000000000 : ℚ), 3⟩,
    ⟨(319519714813/1000000000000 : ℚ), (60867977/200000000 : ℚ), (-55115168563/500000000000 : ℚ), 3⟩,
    ⟨(81762066777/250000000000 : ℚ), (933276697/5000000000 : ℚ), (-72200193539/1000000000000 : ℚ), 3⟩,
    ⟨(66908113473/200000000000 : ℚ), (453041799/5000000000 : ℚ), (-20219834097/500000000000 : ℚ), 3⟩,
    ⟨(170962230319/500000000000 : ℚ), (114472799/10000000000 : ℚ), (-6836532161/500000000000 : ℚ), 3⟩,
    ⟨(349128835999/1000000000000 : ℚ), (-543268147/10000000000 : ℚ), (9047641037/1000000000000 : ℚ), 2⟩,
    ⟨(356084311373/1000000000000 : ℚ), (-1093242839/10000000000 : ℚ), (14217893529/500000000000 : ℚ), 2⟩,
    ⟨(362723901731/1000000000000 : ℚ), (-1555141661/10000000000 : ℚ), (45033542453/1000000000000 : ℚ), 2⟩,
    ⟨(368983664189/1000000000000 : ℚ), (-194395249/1000000000 : ℚ), (59256179023/1000000000000 : ℚ), 2⟩,
    ⟨(374803313811/1000000000000 : ℚ), (-1135582301/5000000000 : ℚ), (35711754871/500000000000 : ℚ), 2⟩,
    ⟨(380126804191/1000000000000 : ℚ), (-2545628559/10000000000 : ℚ), (81782585731/1000000000000 : ℚ), 2⟩,
    ⟨(192451433603/500000000000 : ℚ), (-277417823/1000000000 : ℚ), (90524324873/1000000000000 : ℚ), 2⟩,
    ⟨(389085506759/1000000000000 : ℚ), (-2962085381/10000000000 : ℚ), (48897922557/500000000000 : ℚ), 2⟩,
    ⟨(392634441743/1000000000000 : ℚ), (-1556697109/5000000000 : ℚ), (103709691223/1000000000000 : ℚ), 2⟩,
    ⟨(49439436747/125000000000 : ℚ), (-1615584083/5000000000 : ℚ), (108350762917/1000000000000 : ℚ), 2⟩,
    ⟨(397700917349/1000000000000 : ℚ), (-3317670989/10000000000 : ℚ), (55890746309/500000000000 : ℚ), 2⟩,
    ⟨(399169665041/1000000000000 : ℚ), (-3374497407/10000000000 : ℚ), (22809129009/200000000000 : ℚ), 2⟩,
    ⟨(399907592207/1000000000000 : ℚ), (-1701331737/5000000000 : ℚ), (115170986653/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-170308639/500000000 : ℚ), (115311342681/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (351716204083/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control399.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control399.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate399

namespace DiagonalRamsey.JointInheritedCertificate400
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(52116522457/200000000000 : ℚ), (12510961440083/10000000000 : ℚ), (-13068293664669/40000000000 : ℚ), 12⟩,
    ⟨(10453991519/40000000000 : ℚ), (1333257773/9765625 : ℚ), (-18056142872181/500000000000 : ℚ), 9⟩,
    ⟨(32859593879/125000000000 : ℚ), (95494011971/2000000000 : ℚ), (-12864539471539/1000000000000 : ℚ), 7⟩,
    ⟨(265148795969/1000000000000 : ℚ), (23463091729/1000000000 : ℚ), (-6459366636673/1000000000000 : ℚ), 6⟩,
    ⟨(268144041751/1000000000000 : ℚ), (67839142083/5000000000 : ℚ), (-3823287556509/1000000000000 : ℚ), 5⟩,
    ⟨(135916821261/500000000000 : ℚ), (10775223599/1250000000 : ℚ), (-2488687514359/1000000000000 : ℚ), 5⟩,
    ⟨(69045516353/250000000000 : ℚ), (29077645159/5000000000 : ℚ), (-1720863700409/1000000000000 : ℚ), 4⟩,
    ⟨(281147432729/1000000000000 : ℚ), (5105610359/1250000000 : ℚ), (-1238888238811/1000000000000 : ℚ), 4⟩,
    ⟨(143340962637/500000000000 : ℚ), (14741027459/5000000000 : ℚ), (-916538403587/1000000000000 : ℚ), 4⟩,
    ⟨(36591530357/125000000000 : ℚ), (21666187579/10000000000 : ℚ), (-690277951937/1000000000000 : ℚ), 4⟩,
    ⟨(299240117611/1000000000000 : ℚ), (8044184329/5000000000 : ℚ), (-525298938689/1000000000000 : ℚ), 3⟩,
    ⟨(306142875147/1000000000000 : ℚ), (5993542349/5000000000 : ℚ), (-401238179927/1000000000000 : ℚ), 3⟩,
    ⟨(62674807627/200000000000 : ℚ), (8895834277/10000000000 : ℚ), (-305542143561/1000000000000 : ℚ), 3⟩,
    ⟨(160431983261/500000000000 : ℚ), (3258301063/5000000000 : ℚ), (-230133995901/1000000000000 : ℚ), 3⟩,
    ⟨(65708105641/200000000000 : ℚ), (4652293609/10000000000 : ℚ), (-21203734897/125000000000 : ℚ), 3⟩,
    ⟨(336329793697/1000000000000 : ℚ), (792179943/2500000000 : ℚ), (-120332891299/1000000000000 : ℚ), 3⟩,
    ⟨(68831349623/200000000000 : ℚ), (394449663/2000000000 : ℚ), (-39820023507/500000000000 : ℚ), 3⟩,
    ⟨(351946013607/1000000000000 : ℚ), (996163431/10000000000 : ℚ), (-45679223151/1000000000000 : ℚ), 3⟩,
    ⟨(35962257529/100000000000 : ℚ), (19206799/1000000000 : ℚ), (-17079505659/1000000000000 : ℚ), 3⟩,
    ⟨(183556251839/500000000000 : ℚ), (-118922513/2500000000 : ℚ), (3589150533/500000000000 : ℚ), 2⟩,
    ⟨(187171833333/500000000000 : ℚ), (-516860303/5000000000 : ℚ), (27861480867/1000000000000 : ℚ), 2⟩,
    ⟨(381246424201/1000000000000 : ℚ), (-1502105401/10000000000 : ℚ), (45553565203/1000000000000 : ℚ), 2⟩,
    ⟨(96938574739/250000000000 : ℚ), (-18961377/100000000 : ℚ), (60701838303/1000000000000 : ℚ), 2⟩,
    ⟨(196902308269/500000000000 : ℚ), (-1113773381/5000000000 : ℚ), (73651061097/1000000000000 : ℚ), 2⟩,
    ⟨(399339109083/1000000000000 : ℚ), (-2505372553/10000000000 : ℚ), (10583476559/125000000000 : ℚ), 2⟩,
    ⟨(404304476401/1000000000000 : ℚ), (-171037413/625000000 : ℚ), (93958317179/1000000000000 : ℚ), 2⟩,
    ⟨(40865289929/100000000000 : ℚ), (-2926614649/10000000000 : ℚ), (1271020807/12500000000 : ℚ), 2⟩,
    ⟨(206171250031/500000000000 : ℚ), (-307955713/1000000000 : ℚ), (10795969497/100000000000 : ℚ), 2⟩,
    ⟨(415337745843/1000000000000 : ℚ), (-799640133/2500000000 : ℚ), (56442211097/500000000000 : ℚ), 2⟩,
    ⟨(20880489539/50000000000 : ℚ), (-3285941861/10000000000 : ℚ), (29130894881/250000000000 : ℚ), 2⟩,
    ⟨(419136753837/1000000000000 : ℚ), (-417916719/1250000000 : ℚ), (118924689467/1000000000000 : ℚ), 2⟩,
    ⟨(419903929527/1000000000000 : ℚ), (-3371776607/10000000000 : ℚ), (6005896173/50000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-675064047/2000000000 : ℚ), (12026673881/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (85346388543/250000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control400.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control400.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate400

namespace DiagonalRamsey.JointInheritedCertificate436
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(269433827713/1000000000000 : ℚ), (6248558402187/5000000000 : ℚ), (-168706549290537/500000000000 : ℚ), 12⟩,
    ⟨(270206531781/1000000000000 : ℚ), (1364146450013/10000000000 : ℚ), (-37294910301961/1000000000000 : ℚ), 9⟩,
    ⟨(135872249177/500000000000 : ℚ), (238637835107/5000000000 : ℚ), (-664265997191/50000000000 : ℚ), 7⟩,
    ⟨(68508228993/250000000000 : ℚ), (234642374909/10000000000 : ℚ), (-1334051956899/200000000000 : ℚ), 6⟩,
    ⟨(11081989837/40000000000 : ℚ), (33937301403/2500000000 : ℚ), (-3947817240963/1000000000000 : ℚ), 6⟩,
    ⟨(280765934489/1000000000000 : ℚ), (86287563797/10000000000 : ℚ), (-128475563453/50000000000 : ℚ), 5⟩,
    ⟨(285145692737/1000000000000 : ℚ), (11647973961/2000000000 : ℚ), (-14212497961/8000000000 : ℚ), 5⟩,
    ⟨(58029368241/200000000000 : ℚ), (40922298211/10000000000 : ℚ), (-1278836149139/1000000000000 : ℚ), 4⟩,
    ⟨(9241288003/31250000000 : ℚ), (14775198923/5000000000 : ℚ), (-472986940793/500000000000 : ℚ), 4⟩,
    ⟨(18863445821/62500000000 : ℚ), (21725303207/10000000000 : ℚ), (-712357005233/1000000000000 : ℚ), 4⟩,
    ⟨(30836990457/100000000000 : ℚ), (1008679269/625000000 : ℚ), (-542036690933/1000000000000 : ℚ), 3⟩,
    ⟨(315322404367/1000000000000 : ℚ), (150373629/125000000 : ℚ), (-413982080923/1000000000000 : ℚ), 3⟩,
    ⟨(322605676153/1000000000000 : ℚ), (1786391609/2000000000 : ℚ), (-157613868793/500000000000 : ℚ), 3⟩,
    ⟨(330149578039/1000000000000 : ℚ), (6547037719/10000000000 : ℚ), (-237431471543/1000000000000 : ℚ), 3⟩,
    ⟨(337881458127/1000000000000 : ℚ), (584745453/1250000000 : ℚ), (-17503217777/100000000000 : ℚ), 3⟩,
    ⟨(43215856773/125000000000 : ℚ), (3190452501/10000000000 : ℚ), (-24842173137/200000000000 : ℚ), 3⟩,
    ⟨(176805105379/500000000000 : ℚ), (995385157/5000000000 : ℚ), (-41139104193/500000000000 : ℚ), 3⟩,
    ⟨(11295487713/31250000000 : ℚ), (101210067/1000000000 : ℚ), (-9459923093/200000000000 : ℚ), 3⟩,
    ⟨(369187486903/1000000000000 : ℚ), (205951599/10000000000 : ℚ), (-8929040003/500000000000 : ℚ), 3⟩,
    ⟨(37673138879/100000000000 : ℚ), (-463415689/10000000000 : ℚ), (1775045911/250000000000 : ℚ), 2⟩,
    ⟨(12000458143/31250000000 : ℚ), (-204537747/2000000000 : ℚ), (3546098943/125000000000 : ℚ), 2⟩,
    ⟨(390967160373/1000000000000 : ℚ), (-746008767/5000000000 : ℚ), (11637889653/250000000000 : ℚ), 2⟩,
    ⟨(397521931807/1000000000000 : ℚ), (-1886754463/10000000000 : ℚ), (15527884549/250000000000 : ℚ), 2⟩,
    ⟨(201807924423/500000000000 : ℚ), (-277334903/1250000000 : ℚ), (75405831353/1000000000000 : ℚ), 2⟩,
    ⟨(204595111869/500000000000 : ℚ), (-2496874203/10000000000 : ℚ), (86710710257/1000000000000 : ℚ), 2⟩,
    ⟨(82838274441/200000000000 : ℚ), (-545671611/2000000000 : ℚ), (96240017869/1000000000000 : ℚ), 2⟩,
    ⟨(209285565227/500000000000 : ℚ), (-1459274539/5000000000 : ℚ), (13019851403/125000000000 : ℚ), 2⟩,
    ⟨(211143659509/500000000000 : ℚ), (-3071606517/10000000000 : ℚ), (22118713501/200000000000 : ℚ), 2⟩,
    ⟨(42530414897/100000000000 : ℚ), (-3190682571/10000000000 : ℚ), (57819923789/500000000000 : ℚ), 2⟩,
    ⟨(427592566589/1000000000000 : ℚ), (-65562151/200000000 : ℚ), (23873605029/200000000000 : ℚ), 2⟩,
    ⟨(214565266581/500000000000 : ℚ), (-208470221/625000000 : ℚ), (121827491723/1000000000000 : ℚ), 2⟩,
    ⟨(429903237229/1000000000000 : ℚ), (-3363976967/10000000000 : ℚ), (961325101/7812500000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-67350437/200000000 : ℚ), (15400253223/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (172957780563/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control436.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control436.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate436

namespace DiagonalRamsey.JointInheritedCertificate437
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(34568447183/125000000000 : ℚ), (12600859849389/10000000000 : ℚ), (-69838225766263/200000000000 : ℚ), 12⟩,
    ⟨(6933354281/25000000000 : ℚ), (275122533321/2000000000 : ℚ), (-38597148413627/1000000000000 : ℚ), 9⟩,
    ⟨(34862472933/125000000000 : ℚ), (24068014031/500000000 : ℚ), (-6874750286407/500000000000 : ℚ), 7⟩,
    ⟨(140614668217/500000000000 : ℚ), (47338792553/2000000000 : ℚ), (-6903554722743/1000000000000 : ℚ), 6⟩,
    ⟨(142150197641/500000000000 : ℚ), (17120614127/1250000000 : ℚ), (-4086106125633/1000000000000 : ℚ), 6⟩,
    ⟨(9002605751/31250000000 : ℚ), (5442558389/625000000 : ℚ), (-531943490031/200000000000 : ℚ), 5⟩,
    ⟨(146270935217/500000000000 : ℚ), (29395561863/5000000000 : ℚ), (-367824665577/200000000000 : ℚ), 5⟩,
    ⟨(74408229207/250000000000 : ℚ), (20661212337/5000000000 : ℚ), (-4137694693/3125000000 : ℚ), 4⟩,
    ⟨(151653746827/500000000000 : ℚ), (7462569601/2500000000 : ℚ), (-195924964967/200000000000 : ℚ), 4⟩,
    ⟨(154755475817/500000000000 : ℚ), (10977808201/5000000000 : ℚ), (-737901771279/1000000000000 : ℚ), 4⟩,
    ⟨(316183548077/1000000000000 : ℚ), (16319211441/10000000000 : ℚ), (-561689200271/1000000000000 : ℚ), 3⟩,
    ⟨(40407627779/125000000000 : ℚ), (97386929/80000000 : ℚ), (-107305450679/250000000000 : ℚ), 3⟩,
    ⟨(330675214153/1000000000000 : ℚ), (22619137/25000000 : ℚ), (-327081155541/1000000000000 : ℚ), 3⟩,
    ⟨(2114717007/6250000000 : ℚ), (6641451371/10000000000 : ℚ), (-9865335937/40000000000 : ℚ), 3⟩,
    ⟨(173112792641/500000000000 : ℚ), (237792687/500000000 : ℚ), (-91061385077/500000000000 : ℚ), 3⟩,
    ⟨(70842401183/200000000000 : ℚ), (1627689463/5000000000 : ℚ), (-12959637509/100000000000 : ℚ), 3⟩,
    ⟨(362237069423/1000000000000 : ℚ), (2045441637/10000000000 : ℚ), (-43135180069/500000000000 : ℚ), 3⟩,
    ⟨(46277936257/125000000000 : ℚ), (1058607461/10000000000 : ℚ), (-50141905987/1000000000000 : ℚ), 3⟩,
    ⟨(189047177109/500000000000 : ℚ), (30740847/1250000000 : ℚ), (-789752207/40000000000 : ℚ), 3⟩,
    ⟨(77154772237/200000000000 : ℚ), (-428683937/10000000000 : ℚ), (1503819783/250000000000 : ℚ), 2⟩,
    ⟨(196594026553/500000000000 : ℚ), (-992175683/10000000000 : ℚ), (13978725187/500000000000 : ℚ), 2⟩,
    ⟨(400265527261/1000000000000 : ℚ), (-1464902263/10000000000 : ℚ), (46708390907/1000000000000 : ℚ), 2⟩,
    ⟨(50867265463/125000000000 : ℚ), (-1862375239/10000000000 : ℚ), (2509923987/40000000000 : ℚ), 2⟩,
    ⟨(103285395421/250000000000 : ℚ), (-2196499543/10000000000 : ℚ), (76446903379/1000000000000 : ℚ), 2⟩,
    ⟨(41881615851/100000000000 : ℚ), (-495291301/2000000000 : ℚ), (88091442513/1000000000000 : ℚ), 2⟩,
    ⟨(52988400613/125000000000 : ℚ), (-2709343061/10000000000 : ℚ), (2447592533/25000000000 : ℚ), 2⟩,
    ⟨(214182845653/500000000000 : ℚ), (-2900639269/10000000000 : ℚ), (53027557213/500000000000 : ℚ), 2⟩,
    ⟨(54018585007/125000000000 : ℚ), (-3054552727/10000000000 : ℚ), (225354239/2000000000 : ℚ), 2⟩,
    ⟨(54402467363/125000000000 : ℚ), (-3174272911/10000000000 : ℚ), (117869079373/1000000000000 : ℚ), 2⟩,
    ⟨(700078867/1600000000 : ℚ), (-3262158087/10000000000 : ℚ), (7606512799/62500000000 : ℚ), 2⟩,
    ⟨(219557452049/500000000000 : ℚ), (-1659935127/5000000000 : ℚ), (124233900391/1000000000000 : ℚ), 2⟩,
    ⟨(219950748937/500000000000 : ℚ), (-3348468649/10000000000 : ℚ), (125490821589/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3352031507/10000000000 : ℚ), (3926486557/31250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (34059495089/100000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control437.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control437.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate437

namespace DiagonalRamsey.JointInheritedCertificate438
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28368864557/100000000000 : ℚ), (12704320665629/10000000000 : ℚ), (-72228703138923/200000000000 : ℚ), 12⟩,
    ⟨(71122249397/250000000000 : ℚ), (1387046928017/10000000000 : ℚ), (-39918622513791/1000000000000 : ℚ), 9⟩,
    ⟨(286081993797/1000000000000 : ℚ), (60679120469/1250000000 : ℚ), (-14220508292009/1000000000000 : ℚ), 7⟩,
    ⟨(288452292773/1000000000000 : ℚ), (238739138651/10000000000 : ℚ), (-1428051729013/200000000000 : ℚ), 6⟩,
    ⟨(7289426681/25000000000 : ℚ), (138176475243/10000000000 : ℚ), (-1056599528481/250000000000 : ℚ), 6⟩,
    ⟨(36928277989/125000000000 : ℚ), (87871304173/10000000000 : ℚ), (-1375607938453/500000000000 : ℚ), 5⟩,
    ⟨(299962693307/1000000000000 : ℚ), (29670016531/5000000000 : ℚ), (-1902568633589/1000000000000 : ℚ), 5⟩,
    ⟨(38142848343/125000000000 : ℚ), (41720615987/10000000000 : ℚ), (-85619845223/62500000000 : ℚ), 4⟩,
    ⟨(77729154273/250000000000 : ℚ), (30148495831/10000000000 : ℚ), (-506867582361/500000000000 : ℚ), 4⟩,
    ⟨(39653572401/125000000000 : ℚ), (4436891213/2000000000 : ℚ), (-95473476649/125000000000 : ℚ), 4⟩,
    ⟨(162008942723/500000000000 : ℚ), (3299643693/2000000000 : ℚ), (-290798910161/500000000000 : ℚ), 3⟩,
    ⟨(331219151077/1000000000000 : ℚ), (3078902201/2500000000 : ℚ), (-222327268441/500000000000 : ℚ), 3⟩,
    ⟨(13550520959/40000000000 : ℚ), (2290549489/2500000000 : ℚ), (-33907983089/100000000000 : ℚ), 3⟩,
    ⟨(8664421313/25000000000 : ℚ), (1346954913/2000000000 : ℚ), (-63985958667/250000000000 : ℚ), 3⟩,
    ⟨(354585385273/1000000000000 : ℚ), (4832704849/10000000000 : ℚ), (-94646614123/500000000000 : ℚ), 3⟩,
    ⟨(90677873921/250000000000 : ℚ), (3319309307/10000000000 : ℚ), (-5401568253/40000000000 : ℚ), 3⟩,
    ⟨(92719231217/250000000000 : ℚ), (2099153591/10000000000 : ℚ), (-22575491253/250000000000 : ℚ), 3⟩,
    ⟨(4737537941/12500000000 : ℚ), (1104186807/10000000000 : ℚ), (-424075357/8000000000 : ℚ), 3⟩,
    ⟨(12094111501/31250000000 : ℚ), (285002743/10000000000 : ℚ), (-4328678057/200000000000 : ℚ), 3⟩,
    ⟨(197412698289/500000000000 : ℚ), (-394826121/10000000000 : ℚ), (4925597083/1000000000000 : ℚ), 2⟩,
    ⟨(16094770779/40000000000 : ℚ), (-192502753/2000000000 : ℚ), (27548586189/1000000000000 : ℚ), 2⟩,
    ⟨(204785267553/500000000000 : ℚ), (-1438617477/10000000000 : ℚ), (23436740979/500000000000 : ℚ), 2⟩,
    ⟨(6505622521/15625000000 : ℚ), (-1838807817/10000000000 : ℚ), (31698755917/500000000000 : ℚ), 2⟩,
    ⟨(21133590173/50000000000 : ℚ), (-2175114841/10000000000 : ℚ), (9688056849/125000000000 : ℚ), 2⟩,
    ⟨(26777852113/62500000000 : ℚ), (-1228409391/5000000000 : ℚ), (1398304737/15625000000 : ℚ), 2⟩,
    ⟨(86725145449/200000000000 : ℚ), (-2691094843/10000000000 : ℚ), (24897232541/250000000000 : ℚ), 2⟩,
    ⟨(2738513729/6250000000 : ℚ), (-2883484859/10000000000 : ℚ), (107974667863/1000000000000 : ℚ), 2⟩,
    ⟨(13812854791/31250000000 : ℚ), (-3038244803/10000000000 : ℚ), (114785209889/1000000000000 : ℚ), 2⟩,
    ⟨(22256806389/50000000000 : ℚ), (-3158601457/10000000000 : ℚ), (24024759281/200000000000 : ℚ), 2⟩,
    ⟨(89501285351/200000000000 : ℚ), (-1623470531/5000000000 : ℚ), (1938539563/15625000000 : ℚ), 2⟩,
    ⟨(112274855741/250000000000 : ℚ), (-3304945557/10000000000 : ℚ), (126666876251/1000000000000 : ℚ), 2⟩,
    ⟨(224949887491/500000000000 : ℚ), (-666737397/2000000000 : ℚ), (15994850067/125000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-417158447/1250000000 : ℚ), (64059954593/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (167627560001/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control438.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control438.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate438

namespace DiagonalRamsey.JointInheritedCertificate439
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(72731066713/250000000000 : ℚ), (12815643206531/10000000000 : ℚ), (-93398458891087/250000000000 : ℚ), 12⟩,
    ⟨(36467240261/125000000000 : ℚ), (349837995449/2500000000 : ℚ), (-41295278453889/1000000000000 : ℚ), 9⟩,
    ⟨(146678698307/500000000000 : ℚ), (244908592829/5000000000 : ℚ), (-14711278502537/1000000000000 : ℚ), 7⟩,
    ⟨(147883547003/500000000000 : ℚ), (240941799811/10000000000 : ℚ), (-3693483808793/500000000000 : ℚ), 6⟩,
    ⟨(298943807561/1000000000000 : ℚ), (139482155843/10000000000 : ℚ), (-4372680822677/1000000000000 : ℚ), 6⟩,
    ⟨(30285694379/100000000000 : ℚ), (88723747483/10000000000 : ℚ), (-569334828077/200000000000 : ℚ), 5⟩,
    ⟨(153734408527/500000000000 : ℚ), (1498315423/250000000 : ℚ), (-1968806936963/1000000000000 : ℚ), 5⟩,
    ⟨(312735012489/1000000000000 : ℚ), (42150970001/10000000000 : ℚ), (-1417834919013/1000000000000 : ℚ), 4⟩,
    ⟨(318604813757/1000000000000 : ℚ), (15235606849/5000000000 : ℚ), (-524710272239/500000000000 : ℚ), 4⟩,
    ⟨(325021691463/1000000000000 : ℚ), (11216227003/5000000000 : ℚ), (-39545431583/50000000000 : ℚ), 4⟩,
    ⟨(66384769513/200000000000 : ℚ), (4173130823/2500000000 : ℚ), (-602494768741/1000000000000 : ℚ), 3⟩,
    ⟨(339244810527/1000000000000 : ℚ), (12470279527/10000000000 : ℚ), (-36871353/80000000 : ℚ), 3⟩,
    ⟨(13876563019/40000000000 : ℚ), (928698699/1000000000 : ℚ), (-351743061363/1000000000000 : ℚ), 3⟩,
    ⟨(70971556639/200000000000 : ℚ), (3418326801/5000000000 : ℚ), (-53161998577/200000000000 : ℚ), 3⟩,
    ⟨(181499715719/500000000000 : ℚ), (4916783211/10000000000 : ℚ), (-196933577791/1000000000000 : ℚ), 3⟩,
    ⟨(371260611681/1000000000000 : ℚ), (42367621/125000000 : ℚ), (-35220853503/250000000000 : ℚ), 3⟩,
    ⟨(379561764243/1000000000000 : ℚ), (539546453/2500000000 : ℚ), (-94679720871/1000000000000 : ℚ), 3⟩,
    ⟨(193911472243/500000000000 : ℚ), (57719901/500000000 : ℚ), (-438892421/7812500000 : ℚ), 3⟩,
    ⟨(395964592729/1000000000000 : ℚ), (164074677/5000000000 : ℚ), (-23807628883/1000000000000 : ℚ), 3⟩,
    ⟨(12622134389/31250000000 : ℚ), (-178678689/5000000000 : ℚ), (3601321347/1000000000000 : ℚ), 2⟩,
    ⟨(102894391349/250000000000 : ℚ), (-464809363/5000000000 : ℚ), (26929851997/1000000000000 : ℚ), 2⟩,
    ⟨(418898528359/1000000000000 : ℚ), (-140941063/1000000000 : ℚ), (46849060953/1000000000000 : ℚ), 2⟩,
    ⟨(425800684461/1000000000000 : ℚ), (-1812574493/10000000000 : ℚ), (31937083289/500000000000 : ℚ), 2⟩,
    ⟨(216108781083/500000000000 : ℚ), (-2151274843/10000000000 : ℚ), (78403006391/1000000000000 : ℚ), 2⟩,
    ⟨(219043681717/500000000000 : ℚ), (-304362279/1250000000 : ℚ), (5671488089/62500000000 : ℚ), 2⟩,
    ⟨(44335355887/100000000000 : ℚ), (-2670704033/10000000000 : ℚ), (6320970447/62500000000 : ℚ), 2⟩,
    ⟨(447965432133/1000000000000 : ℚ), (-2864300549/10000000000 : ℚ), (10976290119/100000000000 : ℚ), 2⟩,
    ⟨(225939284181/500000000000 : ℚ), (-3019995831/10000000000 : ℚ), (11676772951/100000000000 : ℚ), 2⟩,
    ⟨(455055281917/1000000000000 : ℚ), (-3141056849/10000000000 : ℚ), (122257324489/1000000000000 : ℚ), 2⟩,
    ⟨(457464979309/1000000000000 : ℚ), (-1614949999/5000000000 : ℚ), (15788854113/125000000000 : ℚ), 2⟩,
    ⟨(114771113459/250000000000 : ℚ), (-3288228723/10000000000 : ℚ), (128983876259/1000000000000 : ℚ), 2⟩,
    ⟨(459898109071/1000000000000 : ℚ), (-1658564443/5000000000 : ℚ), (65155905863/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1660364581/5000000000 : ℚ), (65238703039/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (329859803331/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control439.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control439.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate439

namespace DiagonalRamsey.JointInheritedCertificate440
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(149093218331/500000000000 : ℚ), (807908716007/625000000 : ℚ), (-386226909978547/1000000000000 : ℚ), 12⟩,
    ⟨(149506633677/500000000000 : ℚ), (1411609058121/10000000000 : ℚ), (-21346046003949/500000000000 : ℚ), 9⟩,
    ⟨(60131793181/200000000000 : ℚ), (494183693347/10000000000 : ℚ), (-475287473693/31250000000 : ℚ), 7⟩,
    ⟨(15155384167/50000000000 : ℚ), (60783770313/2500000000 : ℚ), (-7637244134847/1000000000000 : ℚ), 6⟩,
    ⟨(30633583717/100000000000 : ℚ), (140781882967/10000000000 : ℚ), (-2260528710643/500000000000 : ℚ), 6⟩,
    ⟨(31031233851/100000000000 : ℚ), (3582878723/400000000 : ℚ), (-1471740584777/500000000000 : ℚ), 5⟩,
    ⟨(157499445739/500000000000 : ℚ), (60521970241/10000000000 : ℚ), (-508991579861/250000000000 : ℚ), 5⟩,
    ⟨(320350362007/1000000000000 : ℚ), (21289356561/5000000000 : ℚ), (-36660148671/25000000000 : ℚ), 4⟩,
    ⟨(32631521251/100000000000 : ℚ), (30791732457/10000000000 : ℚ), (-1085581713383/1000000000000 : ℚ), 4⟩,
    ⟨(41604499777/125000000000 : ℚ), (22678539787/10000000000 : ℚ), (-409190717403/500000000000 : ℚ), 4⟩,
    ⟨(67969984079/200000000000 : ℚ), (1055320229/625000000 : ℚ), (-623654442991/1000000000000 : ℚ), 3⟩,
    ⟨(347289431141/1000000000000 : ℚ), (6311700509/5000000000 : ℚ), (-47732588741/100000000000 : ℚ), 3⟩,
    ⟨(3550828839/10000000000 : ℚ), (941034607/1000000000 : ℚ), (-364552849409/1000000000000 : ℚ), 3⟩,
    ⟨(18157761173/50000000000 : ℚ), (1734299171/2500000000 : ℚ), (-275784206659/1000000000000 : ℚ), 3⟩,
    ⟨(371428708779/1000000000000 : ℚ), (999920287/2000000000 : ℚ), (-40930395659/200000000000 : ℚ), 3⟩,
    ⟨(379823661671/1000000000000 : ℚ), (1729156201/5000000000 : ℚ), (-73391032063/500000000000 : ℚ), 3⟩,
    ⟨(7765184683/20000000000 : ℚ), (138504557/625000000 : ℚ), (-12386651749/125000000000 : ℚ), 3⟩,
    ⟨(198327093521/500000000000 : ℚ), (1203509057/10000000000 : ℚ), (-59367888751/1000000000000 : ℚ), 3⟩,
    ⟨(202463836181/500000000000 : ℚ), (370234831/10000000000 : ℚ), (-1299041759/50000000000 : ℚ), 3⟩,
    ⟨(206500005961/500000000000 : ℚ), (-320915447/10000000000 : ℚ), (2277565651/1000000000000 : ℚ), 2⟩,
    ⟨(10519836617/25000000000 : ℚ), (-112215009/1250000000 : ℚ), (328990099/12500000000 : ℚ), 2⟩,
    ⟨(428232975427/1000000000000 : ℚ), (-1381173057/10000000000 : ℚ), (46838754947/1000000000000 : ℚ), 2⟩,
    ⟨(217623448803/500000000000 : ℚ), (-446821567/2500000000 : ℚ), (8046214159/125000000000 : ℚ), 2⟩,
    ⟨(27610480207/62500000000 : ℚ), (-425671691/2000000000 : ℚ), (39662108761/500000000000 : ℚ), 2⟩,
    ⟨(89546506763/200000000000 : ℚ), (-241388233/1000000000 : ℚ), (92021726011/1000000000000 : ℚ), 2⟩,
    ⟨(56635500543/125000000000 : ℚ), (-662800337/2500000000 : ℚ), (5135501253/50000000000 : ℚ), 2⟩,
    ⟨(3576332479/7812500000 : ℚ), (-711497557/2500000000 : ℚ), (111580791827/1000000000000 : ℚ), 2⟩,
    ⟨(115436764663/250000000000 : ℚ), (-1501304539/5000000000 : ℚ), (29695307483/250000000000 : ℚ), 2⟩,
    ⟨(232487606241/500000000000 : ℚ), (-3124365043/10000000000 : ℚ), (124422803103/1000000000000 : ℚ), 2⟩,
    ⟨(467423929917/1000000000000 : ℚ), (-128548187/400000000 : ℚ), (128587761359/1000000000000 : ℚ), 2⟩,
    ⟨(117267407117/250000000000 : ℚ), (-81808823/250000000 : ℚ), (131333931489/1000000000000 : ℚ), 2⟩,
    ⟨(469896459159/1000000000000 : ℚ), (-412676183/1250000000 : ℚ), (1326980851/10000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-3305029131/10000000000 : ℚ), (33217047681/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (40555758291/125000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control440.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control440.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate440

namespace DiagonalRamsey.JointInheritedCertificate441
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(305544984659/1000000000000 : ℚ), (1630663081369/1250000000 : ℚ), (-19969374678969/50000000000 : ℚ), 12⟩,
    ⟨(306384526999/1000000000000 : ℚ), (712368858853/5000000000 : ℚ), (-44147360577317/1000000000000 : ℚ), 9⟩,
    ⟨(154027763213/500000000000 : ℚ), (498862009381/10000000000 : ℚ), (-7864025548961/500000000000 : ℚ), 7⟩,
    ⟨(1213054259/3906250000 : ℚ), (12274298643/500000000 : ℚ), (-3949057385379/500000000000 : ℚ), 6⟩,
    ⟨(313819673589/1000000000000 : ℚ), (4442993519/312500000 : ℚ), (-2337887649067/500000000000 : ℚ), 6⟩,
    ⟨(63571461887/200000000000 : ℚ), (45241147091/5000000000 : ℚ), (-608895584477/200000000000 : ℚ), 5⟩,
    ⟨(80653978301/250000000000 : ℚ), (61155010589/10000000000 : ℚ), (-131629952943/62500000000 : ℚ), 5⟩,
    ⟨(164024828469/500000000000 : ℚ), (4303861797/1000000000 : ℚ), (-1517156258299/1000000000000 : ℚ), 4⟩,
    ⟨(66821242143/200000000000 : ℚ), (31136740613/10000000000 : ℚ), (-280851517543/250000000000 : ℚ), 4⟩,
    ⟨(85181811653/250000000000 : ℚ), (5735941197/2500000000 : ℚ), (-847156923371/1000000000000 : ℚ), 4⟩,
    ⟨(173924500217/500000000000 : ℚ), (3418599223/2000000000 : ℚ), (-322927843303/500000000000 : ℚ), 3⟩,
    ⟨(355402885797/1000000000000 : ℚ), (6394459559/5000000000 : ℚ), (-494606803723/1000000000000 : ℚ), 3⟩,
    ⟨(181658077329/500000000000 : ℚ), (1908782921/2000000000 : ℚ), (-378061139869/1000000000000 : ℚ), 3⟩,
    ⟨(37151259791/100000000000 : ℚ), (704625479/1000000000 : ℚ), (-143170796357/500000000000 : ℚ), 3⟩,
    ⟨(94978319831/250000000000 : ℚ), (1272400551/2500000000 : ℚ), (-212862589573/1000000000000 : ℚ), 3⟩,
    ⟨(388437295747/1000000000000 : ℚ), (141333479/400000000 : ℚ), (-76550154033/500000000000 : ℚ), 3⟩,
    ⟨(4962531953/12500000000 : ℚ), (1139614559/5000000000 : ℚ), (-51933881849/500000000000 : ℚ), 3⟩,
    ⟨(405526572663/1000000000000 : ℚ), (1257198167/10000000000 : ℚ), (-62871055927/1000000000000 : ℚ), 3⟩,
    ⟨(206963627039/500000000000 : ℚ), (416334883/10000000000 : ℚ), (-14214351333/500000000000 : ℚ), 3⟩,
    ⟨(42212369733/100000000000 : ℚ), (-280920601/10000000000 : ℚ), (711018807/1000000000000 : ℚ), 2⟩,
    ⟨(43003696619/100000000000 : ℚ), (-17252959/200000000 : ℚ), (25491986951/1000000000000 : ℚ), 2⟩,
    ⟨(218795425777/500000000000 : ℚ), (-270014887/2000000000 : ℚ), (46633457641/1000000000000 : ℚ), 2⟩,
    ⟨(3557700843/8000000000 : ℚ), (-1759394267/10000000000 : ℚ), (16172008507/250000000000 : ℚ), 2⟩,
    ⟨(56416705159/125000000000 : ℚ), (-2103049789/10000000000 : ℚ), (16016557927/200000000000 : ℚ), 2⟩,
    ⟨(9147803901/20000000000 : ℚ), (-597661831/2500000000 : ℚ), (93148926473/1000000000000 : ℚ), 2⟩,
    ⟨(14463248087/31250000000 : ℚ), (-1314810169/5000000000 : ℚ), (104143478257/1000000000000 : ℚ), 2⟩,
    ⟨(58447817819/125000000000 : ℚ), (-1412857341/5000000000 : ℚ), (22653077699/200000000000 : ℚ), 2⟩,
    ⟨(235810089199/500000000000 : ℚ), (-745836563/2500000000 : ℚ), (120667530367/1000000000000 : ℚ), 2⟩,
    ⟨(474897961683/1000000000000 : ℚ), (-310586527/1000000000 : ℚ), (2529314513/20000000000 : ℚ), 2⟩,
    ⟨(477384325561/1000000000000 : ℚ), (-3195750641/10000000000 : ℚ), (16343185627/125000000000 : ℚ), 2⟩,
    ⟨(479055324989/1000000000000 : ℚ), (-3254750397/10000000000 : ℚ), (133566954877/1000000000000 : ℚ), 2⟩,
    ⟨(3749178651/7812500000 : ℚ), (-1641989533/5000000000 : ℚ), (134968394861/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3287620079/10000000000 : ℚ), (67571572157/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (318976129971/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control441.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control441.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate441

namespace DiagonalRamsey.JointInheritedCertificate442
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(320409515577/1000000000000 : ℚ), (6644709190147/5000000000 : ℚ), (-17065609233893/40000000000 : ℚ), 12⟩,
    ⟨(321273771701/1000000000000 : ℚ), (45366326711/312500000 : ℚ), (-9432181969303/200000000000 : ℚ), 9⟩,
    ⟨(80748490173/250000000000 : ℚ), (254238801863/5000000000 : ℚ), (-840124231951/50000000000 : ℚ), 7⟩,
    ⟨(81388379047/250000000000 : ℚ), (10012706821/400000000 : ℚ), (-8438326767053/1000000000000 : ℚ), 6⟩,
    ⟨(32892778827/100000000000 : ℚ), (145040438337/10000000000 : ℚ), (-312260666587/62500000000 : ℚ), 6⟩,
    ⟨(66616856171/200000000000 : ℚ), (2886028731/312500000 : ℚ), (-3253631978163/1000000000000 : ℚ), 5⟩,
    ⟨(168991482323/500000000000 : ℚ), (12491128113/2000000000 : ℚ), (-2251283808223/1000000000000 : ℚ), 5⟩,
    ⟨(4294708283/12500000000 : ℚ), (2748957623/625000000 : ℚ), (-811134970131/500000000000 : ℚ), 4⟩,
    ⟨(87452876117/250000000000 : ℚ), (15922610733/5000000000 : ℚ), (-1201758465789/1000000000000 : ℚ), 4⟩,
    ⟨(89156861299/250000000000 : ℚ), (5872048589/2500000000 : ℚ), (-181355454323/200000000000 : ℚ), 4⟩,
    ⟨(363958843587/1000000000000 : ℚ), (700779149/400000000 : ℚ), (-86483624323/125000000000 : ℚ), 3⟩,
    ⟨(371735094267/1000000000000 : ℚ), (13128283563/10000000000 : ℚ), (-530438535449/1000000000000 : ℚ), 3⟩,
    ⟨(94970326923/250000000000 : ℚ), (4908774679/5000000000 : ℚ), (-203044224537/500000000000 : ℚ), 3⟩,
    ⟨(388319031373/1000000000000 : ℚ), (7269453573/10000000000 : ℚ), (-154133272137/500000000000 : ℚ), 3⟩,
    ⟨(198483502709/500000000000 : ℚ), (5273577331/10000000000 : ℚ), (-229936601111/1000000000000 : ℚ), 3⟩,
    ⟨(40574194511/100000000000 : ℚ), (3686481381/10000000000 : ℚ), (-166264684273/1000000000000 : ℚ), 3⟩,
    ⟨(414559342983/1000000000000 : ℚ), (481587111/2000000000 : ℚ), (-28461194507/250000000000 : ℚ), 3⟩,
    ⟨(16933371307/40000000000 : ℚ), (273281461/2000000000 : ℚ), (-2808990643/40000000000 : ℚ), 3⟩,
    ⟨(5399778209/12500000000 : ℚ), (254955987/5000000000 : ℚ), (-33606634639/1000000000000 : ℚ), 3⟩,
    ⟨(440419980401/1000000000000 : ℚ), (-99960319/5000000000 : ℚ), (-265137129/100000000000 : ℚ), 2⟩,
    ⟨(224283096913/500000000000 : ℚ), (-395894937/5000000000 : ℚ), (23651241749/1000000000000 : ℚ), 2⟩,
    ⟨(228171222253/500000000000 : ℚ), (-1287402799/10000000000 : ℚ), (230357489/5000000000 : ℚ), 2⟩,
    ⟨(463673842897/1000000000000 : ℚ), (-425832211/2500000000 : ℚ), (521613263/8000000000 : ℚ), 2⟩,
    ⟨(58811222953/125000000000 : ℚ), (-513076497/2500000000 : ℚ), (81499844547/1000000000000 : ℚ), 2⟩,
    ⟨(476724625453/1000000000000 : ℚ), (-2344174583/10000000000 : ℚ), (23830422169/250000000000 : ℚ), 2⟩,
    ⟨(482318323447/1000000000000 : ℚ), (-129327681/500000000 : ℚ), (53471739167/500000000000 : ℚ), 2⟩,
    ⟨(243608503619/500000000000 : ℚ), (-2785335663/10000000000 : ℚ), (23315860517/200000000000 : ℚ), 2⟩,
    ⟨(245686749911/500000000000 : ℚ), (-1472525863/5000000000 : ℚ), (24878772417/200000000000 : ℚ), 2⟩,
    ⟨(98949554381/200000000000 : ℚ), (-1534570489/5000000000 : ℚ), (13051207951/100000000000 : ℚ), 2⟩,
    ⟨(497307327401/1000000000000 : ℚ), (-790037289/2500000000 : ℚ), (33756570037/250000000000 : ℚ), 2⟩,
    ⟨(499027516391/1000000000000 : ℚ), (-402483999/1250000000 : ℚ), (34500365257/250000000000 : ℚ), 2⟩,
    ⟨(124972943129/250000000000 : ℚ), (-649890939/2000000000 : ℚ), (223166393/1600000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1626569807/5000000000 : ℚ), (139663221617/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (30794572571/100000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control442.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control442.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate442

namespace DiagonalRamsey.JointInheritedCertificate443
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3985342193/10000000000 : ℚ), (29554542796879/5000000000 : ℚ), (-2356994000619947/1000000000000 : ℚ), 14⟩,
    ⟨(199388428553/500000000000 : ℚ), (6536445615759/10000000000 : ℚ), (-261559685959299/1000000000000 : ℚ), 11⟩,
    ⟨(199630774091/500000000000 : ℚ), (583609084249/2500000000 : ℚ), (-18784991312961/200000000000 : ℚ), 9⟩,
    ⟨(199993562433/500000000000 : ℚ), (1178492711583/10000000000 : ℚ), (-47739899156749/1000000000000 : ℚ), 8⟩,
    ⟨(200475919589/500000000000 : ℚ), (351900257553/5000000000 : ℚ), (-28733726497073/1000000000000 : ℚ), 7⟩,
    ⟨(402153367039/1000000000000 : ℚ), (46416115107/1000000000 : ℚ), (-19112858680441/1000000000000 : ℚ), 7⟩,
    ⟨(403588813861/1000000000000 : ℚ), (81696251769/2500000000 : ℚ), (-13579462900261/1000000000000 : ℚ), 6⟩,
    ⟨(405254721529/1000000000000 : ℚ), (15057844313/625000000 : ℚ), (-10107796489401/1000000000000 : ℚ), 6⟩,
    ⟨(101786769181/250000000000 : ℚ), (9189824951/500000000 : ℚ), (-3893829714579/500000000000 : ℚ), 6⟩,
    ⟨(409261320597/1000000000000 : ℚ), (143936301327/10000000000 : ℚ), (-1540214966631/250000000000 : ℚ), 5⟩,
    ⟨(1646369439/4000000000 : ℚ), (14383789147/1250000000 : ℚ), (-497634504019/100000000000 : ℚ), 5⟩,
    ⟨(82826915701/200000000000 : ℚ), (2922823619/312500000 : ℚ), (-408720347197/100000000000 : ℚ), 5⟩,
    ⟨(208440926217/500000000000 : ℚ), (9632043119/1250000000 : ℚ), (-3402819252067/1000000000000 : ℚ), 5⟩,
    ⟨(419827563113/1000000000000 : ℚ), (501520319/78125000 : ℚ), (-572967620511/200000000000 : ℚ), 4⟩,
    ⟨(105741153517/250000000000 : ℚ), (26987995409/5000000000 : ℚ), (-60857627137/25000000000 : ℚ), 4⟩,
    ⟨(426285447869/1000000000000 : ℚ), (11433624931/2500000000 : ℚ), (-1042205251767/500000000000 : ℚ), 4⟩,
    ⟨(85956412867/200000000000 : ℚ), (7800068991/2000000000 : ℚ), (-1796213988313/1000000000000 : ℚ), 4⟩,
    ⟨(108361509953/250000000000 : ℚ), (4179323619/1250000000 : ℚ), (-155602714887/100000000000 : ℚ), 4⟩,
    ⟨(437268547461/1000000000000 : ℚ), (2878781259/1000000000 : ℚ), (-676879152263/500000000000 : ℚ), 4⟩,
    ⟨(220620189263/500000000000 : ℚ), (994929651/400000000 : ℚ), (-590917691561/500000000000 : ℚ), 4⟩,
    ⟨(11133799113/25000000000 : ℚ), (21548825223/10000000000 : ℚ), (-1034487197461/1000000000000 : ℚ), 3⟩,
    ⟨(44959340027/100000000000 : ℚ), (149640169/80000000 : ℚ), (-907253031633/1000000000000 : ℚ), 3⟩,
    ⟨(113488616947/250000000000 : ℚ), (16256293467/10000000000 : ℚ), (-398320630207/500000000000 : ℚ), 3⟩,
    ⟨(229212330439/500000000000 : ℚ), (14135096169/10000000000 : ℚ), (-349943701883/500000000000 : ℚ), 3⟩,
    ⟨(92598642091/200000000000 : ℚ), (6143770469/5000000000 : ℚ), (-76847480149/125000000000 : ℚ), 3⟩,
    ⟨(467649110483/1000000000000 : ℚ), (10670233319/10000000000 : ℚ), (-539532396193/1000000000000 : ℚ), 3⟩,
    ⟨(47238114449/100000000000 : ℚ), (9247930333/10000000000 : ℚ), (-472689919549/1000000000000 : ℚ), 3⟩,
    ⟨(477177912591/1000000000000 : ℚ), (62435819/78125000 : ℚ), (-20652872683/50000000000 : ℚ), 3⟩,
    ⟨(241013929477/500000000000 : ℚ), (6878014597/10000000000 : ℚ), (-359646480087/1000000000000 : ℚ), 3⟩,
    ⟨(486919299631/1000000000000 : ℚ), (2943441399/5000000000 : ℚ), (-9738553083/31250000000 : ℚ), 3⟩,
    ⟨(245920225357/500000000000 : ℚ), (500190937/1000000000 : ℚ), (-26832910757/100000000000 : ℚ), 3⟩,
    ⟨(496779456719/1000000000000 : ℚ), (4209255497/10000000000 : ℚ), (-114575530533/500000000000 : ℚ), 3⟩,
    ⟨(125431104787/250000000000 : ℚ), (1748619587/5000000000 : ℚ), (-48401653729/250000000000 : ℚ), 3⟩,
    ⟨(506663425153/1000000000000 : ℚ), (571190189/2000000000 : ℚ), (-161275915853/1000000000000 : ℚ), 3⟩,
    ⟨(127896144059/250000000000 : ℚ), (2276946887/10000000000 : ℚ), (-26359942541/200000000000 : ℚ), 3⟩,
    ⟨(516476016913/1000000000000 : ℚ), (1753001619/10000000000 : ℚ), (-104869293993/1000000000000 : ℚ), 3⟩,
    ⟨(130331490819/250000000000 : ℚ), (25558167/200000000 : ℚ), (-80218330293/1000000000000 : ℚ), 3⟩,
    ⟨(263061365689/500000000000 : ℚ), (846316019/10000000000 : ℚ), (-57616218559/1000000000000 : ℚ), 2⟩,
    ⟨(66356845673/125000000000 : ℚ), (226797953/5000000000 : ℚ), (-18431310781/500000000000 : ℚ), 2⟩,
    ⟨(133877666353/250000000000 : ℚ), (95731801/10000000000 : ℚ), (-17782963449/1000000000000 : ℚ), 2⟩,
    ⟨(540079214989/1000000000000 : ℚ), (-230770883/10000000000 : ℚ), (-224694691/1000000000000 : ℚ), 2⟩,
    ⟨(544549408079/1000000000000 : ℚ), (-528960669/10000000000 : ℚ), (1594581933/100000000000 : ℚ), 2⟩,
    ⟨(548910475597/1000000000000 : ℚ), (-801503121/10000000000 : ℚ), (6169180689/200000000000 : ℚ), 2⟩,
    ⟨(553151911347/1000000000000 : ℚ), (-525366877/5000000000 : ℚ), (8915752373/200000000000 : ℚ), 2⟩,
    ⟨(557263497341/1000000000000 : ℚ), (-159837823/1250000000 : ℚ), (57235326927/1000000000000 : ℚ), 2⟩,
    ⟨(561235328407/1000000000000 : ℚ), (-743605883/5000000000 : ℚ), (68895825299/1000000000000 : ℚ), 2⟩,
    ⟨(70632229507/125000000000 : ℚ), (-167784751/1000000000 : ℚ), (39815555293/500000000000 : ℚ), 2⟩,
    ⟨(142180452883/250000000000 : ℚ), (-185200723/1000000000 : ℚ), (17900760207/200000000000 : ℚ), 2⟩,
    ⟨(286109213999/500000000000 : ℚ), (-2010922701/10000000000 : ℚ), (308028917/3125000000 : ℚ), 2⟩,
    ⟨(575539261799/1000000000000 : ℚ), (-2155679869/10000000000 : ℚ), (53438200011/500000000000 : ℚ), 2⟩,
    ⟨(289338156377/500000000000 : ℚ), (-2287235837/10000000000 : ℚ), (3577139673/31250000000 : ℚ), 2⟩,
    ⟨(290811011717/500000000000 : ℚ), (-1203216723/5000000000 : ℚ), (60691804343/500000000000 : ℚ), 2⟩,
    ⟨(292184648681/500000000000 : ℚ), (-251401383/1000000000 : ℚ), (25531084227/200000000000 : ℚ), 2⟩,
    ⟨(586911516117/1000000000000 : ℚ), (-652656803/2500000000 : ℚ), (6665671639/50000000000 : ℚ), 2⟩,
    ⟨(58924255527/100000000000 : ℚ), (-13484211/50000000 : ℚ), (138383495087/1000000000000 : ℚ), 2⟩,
    ⟨(591356799143/1000000000000 : ℚ), (-2773153783/10000000000 : ℚ), (142888134377/1000000000000 : ℚ), 2⟩,
    ⟨(296624577169/500000000000 : ℚ), (-2839990187/10000000000 : ℚ), (146846853021/1000000000000 : ℚ), 2⟩,
    ⟨(297457531003/500000000000 : ℚ), (-2897718731/10000000000 : ℚ), (30055277663/200000000000 : ℚ), 2⟩,
    ⟨(149087627207/250000000000 : ℚ), (-2946650799/10000000000 : ℚ), (76595466921/500000000000 : ℚ), 2⟩,
    ⟨(597552036689/1000000000000 : ℚ), (-23336297/78125000 : ℚ), (155602326407/1000000000000 : ℚ), 2⟩,
    ⟨(299258375501/500000000000 : ℚ), (-1509557851/5000000000 : ℚ), (1230626573/7812500000 : ℚ), 2⟩,
    ⟨(119848465537/200000000000 : ℚ), (-3043025673/10000000000 : ℚ), (158952119521/1000000000000 : ℚ), 2⟩,
    ⟨(599727018761/1000000000000 : ℚ), (-1529449211/5000000000 : ℚ), (7995183307/50000000000 : ℚ), 2⟩,
    ⟨(599969656567/1000000000000 : ℚ), (-3066814733/10000000000 : ℚ), (80189262363/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1533901667/5000000000 : ℚ), (160437839293/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (250564311343/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control443.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control443.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate443

namespace DiagonalRamsey.JointInheritedCertificate445
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49678454107/200000000000 : ℚ), (12201108773253/10000000000 : ℚ), (-303708839939311/1000000000000 : ℚ), 12⟩,
    ⟨(15570116453/62500000000 : ℚ), (1331431401603/10000000000 : ℚ), (-1342740758033/40000000000 : ℚ), 9⟩,
    ⟨(250574022297/1000000000000 : ℚ), (116405612937/2500000000 : ℚ), (-5978571534141/500000000000 : ℚ), 7⟩,
    ⟨(252734762597/1000000000000 : ℚ), (57197473889/2500000000 : ℚ), (-6002796728731/1000000000000 : ℚ), 6⟩,
    ⟨(255583275037/1000000000000 : ℚ), (4133801601/312500000 : ℚ), (-3552231896951/1000000000000 : ℚ), 6⟩,
    ⟨(129546063443/500000000000 : ℚ), (42012478687/5000000000 : ℚ), (-115576381053/50000000000 : ℚ), 5⟩,
    ⟨(131613762991/500000000000 : ℚ), (56667975677/10000000000 : ℚ), (-199712088011/125000000000 : ℚ), 5⟩,
    ⟨(26794964617/100000000000 : ℚ), (19890743441/5000000000 : ℚ), (-229917218503/200000000000 : ℚ), 4⟩,
    ⟨(136606505427/500000000000 : ℚ), (28695481109/10000000000 : ℚ), (-849858351001/1000000000000 : ℚ), 4⟩,
    ⟨(34870866369/125000000000 : ℚ), (10534370457/5000000000 : ℚ), (-159862525311/250000000000 : ℚ), 4⟩,
    ⟨(28515599307/100000000000 : ℚ), (15624741067/10000000000 : ℚ), (-486004117369/1000000000000 : ℚ), 3⟩,
    ⟨(72930148289/250000000000 : ℚ), (1452601533/1250000000 : ℚ), (-3705911943/10000000000 : ℚ), 3⟩,
    ⟨(298597510521/1000000000000 : ℚ), (8601999981/10000000000 : ℚ), (-140771040087/500000000000 : ℚ), 3⟩,
    ⟨(152860258347/500000000000 : ℚ), (6277669133/10000000000 : ℚ), (-105674566183/500000000000 : ℚ), 3⟩,
    ⟨(31302101323/100000000000 : ℚ), (1113902521/2500000000 : ℚ), (-31001631549/200000000000 : ℚ), 3⟩,
    ⟨(160214346179/500000000000 : ℚ), (3004964061/10000000000 : ℚ), (-54541606447/500000000000 : ℚ), 3⟩,
    ⟨(81968053519/250000000000 : ℚ), (1834426937/10000000000 : ℚ), (-71155316583/1000000000000 : ℚ), 3⟩,
    ⟨(83819973301/250000000000 : ℚ), (878946411/10000000000 : ℚ), (-2467809709/62500000000 : ℚ), 3⟩,
    ⟨(17129019487/50000000000 : ℚ), (45668379/5000000000 : ℚ), (-4095551/320000000 : ℚ), 3⟩,
    ⟨(349703395913/1000000000000 : ℚ), (-281578517/5000000000 : ℚ), (1970055837/200000000000 : ℚ), 3⟩,
    ⟨(178290156639/500000000000 : ℚ), (-1110470829/10000000000 : ℚ), (116695877/4000000000 : ℚ), 2⟩,
    ⟨(90786228341/250000000000 : ℚ), (-1570173361/10000000000 : ℚ), (22856958957/500000000000 : ℚ), 2⟩,
    ⟨(184666987741/500000000000 : ℚ), (-391432641/2000000000 : ℚ), (59884893429/1000000000000 : ℚ), 2⟩,
    ⟨(18754394779/50000000000 : ℚ), (-2282863273/10000000000 : ℚ), (36003177879/500000000000 : ℚ), 2⟩,
    ⟨(47543907533/125000000000 : ℚ), (-1278037111/5000000000 : ℚ), (82325104897/1000000000000 : ℚ), 2⟩,
    ⟨(385073380453/1000000000000 : ℚ), (-278359199/1000000000 : ℚ), (22757968913/250000000000 : ℚ), 2⟩,
    ⟨(97302194887/250000000000 : ℚ), (-1485329639/5000000000 : ℚ), (491368239/5000000000 : ℚ), 2⟩,
    ⟨(392717631397/1000000000000 : ℚ), (-78032449/250000000 : ℚ), (20832571747/200000000000 : ℚ), 2⟩,
    ⟨(395566143837/1000000000000 : ℚ), (-809638601/2500000000 : ℚ), (27196080817/250000000000 : ℚ), 2⟩,
    ⟨(397726884137/1000000000000 : ℚ), (-415584951/1250000000 : ℚ), (112200406959/1000000000000 : ℚ), 2⟩,
    ⟨(199589521593/500000000000 : ℚ), (-3381259167/10000000000 : ℚ), (114454823847/1000000000000 : ℚ), 2⟩,
    ⟨(399908635899/1000000000000 : ℚ), (-3409303249/10000000000 : ℚ), (115575306321/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1706398687/5000000000 : ℚ), (115715055359/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (361687049337/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control445.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control445.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate445

namespace DiagonalRamsey.JointInheritedCertificate446
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32793627457/125000000000 : ℚ), (12393226858087/10000000000 : ℚ), (-325814747931829/1000000000000 : ℚ), 12⟩,
    ⟨(263107694737/1000000000000 : ℚ), (169082919723/1250000000 : ℚ), (-36012505418651/1000000000000 : ℚ), 9⟩,
    ⟨(264617738443/1000000000000 : ℚ), (94636914703/2000000000 : ℚ), (-6414092532653/500000000000 : ℚ), 7⟩,
    ⟨(266864608229/1000000000000 : ℚ), (232587160101/10000000000 : ℚ), (-3220244081023/500000000000 : ℚ), 6⟩,
    ⟨(67456666377/250000000000 : ℚ), (8408190337/625000000 : ℚ), (-3811602851401/1000000000000 : ℚ), 6⟩,
    ⟨(68368846013/250000000000 : ℚ), (85492332251/10000000000 : ℚ), (-248064697531/100000000000 : ℚ), 5⟩,
    ⟨(55555124941/200000000000 : ℚ), (14421773197/2500000000 : ℚ), (-342984501197/200000000000 : ℚ), 5⟩,
    ⟨(282685973799/1000000000000 : ℚ), (10130214711/2500000000 : ℚ), (-1234268319283/1000000000000 : ℚ), 4⟩,
    ⟨(288159141989/1000000000000 : ℚ), (1828083963/625000000 : ℚ), (-228201579659/250000000000 : ℚ), 4⟩,
    ⟨(294142419673/1000000000000 : ℚ), (21493912667/10000000000 : ℚ), (-34358689639/50000000000 : ℚ), 4⟩,
    ⟨(60115636923/200000000000 : ℚ), (3191503529/2000000000 : ℚ), (-522657860569/1000000000000 : ℚ), 3⟩,
    ⟨(307404456881/1000000000000 : ℚ), (11885459401/10000000000 : ℚ), (-398950895299/1000000000000 : ℚ), 3⟩,
    ⟨(314555495739/1000000000000 : ℚ), (550959183/625000000 : ℚ), (-30353351731/100000000000 : ℚ), 3⟩,
    ⟨(321962432773/1000000000000 : ℚ), (1612935627/2500000000 : ℚ), (-228350739831/1000000000000 : ℚ), 3⟩,
    ⟨(329553935133/1000000000000 : ℚ), (4599219263/10000000000 : ℚ), (-6721324977/40000000000 : ℚ), 3⟩,
    ⟨(337256892499/1000000000000 : ℚ), (624939061/2000000000 : ℚ), (-3715422507/31250000000 : ℚ), 3⟩,
    ⟨(172498560591/500000000000 : ℚ), (193528897/1000000000 : ℚ), (-78335660153/1000000000000 : ℚ), 3⟩,
    ⟨(352700078549/1000000000000 : ℚ), (96480263/1000000000 : ℚ), (-44492115509/1000000000000 : ℚ), 3⟩,
    ⟨(90072895227/250000000000 : ℚ), (82601227/5000000000 : ℚ), (-7997643107/500000000000 : ℚ), 3⟩,
    ⟨(367698517943/1000000000000 : ℚ), (-12472633/250000000 : ℚ), (1021458059/125000000000 : ℚ), 3⟩,
    ⟨(234280973/625000000 : ℚ), (-1053944607/10000000000 : ℚ), (230194643/8000000000 : ℚ), 2⟩,
    ⟨(381675829067/1000000000000 : ℚ), (-151986153/1000000000 : ℚ), (46395023637/1000000000000 : ℚ), 2⟩,
    ⟨(388111594009/1000000000000 : ℚ), (-477962319/2500000000 : ℚ), (61480141047/1000000000000 : ℚ), 2⟩,
    ⟨(98523717923/250000000000 : ℚ), (-448312473/2000000000 : ℚ), (37186895169/500000000000 : ℚ), 2⟩,
    ⟨(199784019941/500000000000 : ℚ), (-157374019/625000000 : ℚ), (2133551551/25000000000 : ℚ), 2⟩,
    ⟨(404478388977/1000000000000 : ℚ), (-1374027777/5000000000 : ℚ), (47295404721/500000000000 : ℚ), 2⟩,
    ⟨(40877862963/100000000000 : ℚ), (-587426547/2000000000 : ℚ), (12784854209/125000000000 : ℚ), 2⟩,
    ⟨(412427348173/1000000000000 : ℚ), (-96541463/312500000 : ℚ), (54263874317/500000000000 : ℚ), 2⟩,
    ⟨(415389405453/1000000000000 : ℚ), (-3207752787/10000000000 : ℚ), (113429389629/1000000000000 : ℚ), 2⟩,
    ⟨(208818137619/500000000000 : ℚ), (-102959783/312500000 : ℚ), (117051351423/1000000000000 : ℚ), 2⟩,
    ⟨(13098322467/31250000000 : ℚ), (-335182983/1000000000 : ℚ), (119441054437/1000000000000 : ℚ), 2⟩,
    ⟨(209952497013/500000000000 : ℚ), (-422517097/1250000000 : ℚ), (120628601797/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3383663493/10000000000 : ℚ), (120776707183/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (70243168481/200000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control446.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control446.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate446

namespace DiagonalRamsey.JointInheritedCertificate481
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(271297904793/1000000000000 : ℚ), (1547288324759/1250000000 : ℚ), (-336505071690963/1000000000000 : ℚ), 12⟩,
    ⟨(272061638229/1000000000000 : ℚ), (1351435741287/10000000000 : ℚ), (-7438679217457/200000000000 : ℚ), 9⟩,
    ⟨(273581749931/1000000000000 : ℚ), (472948669697/10000000000 : ℚ), (-3312082036419/250000000000 : ℚ), 7⟩,
    ⟨(34480450049/125000000000 : ℚ), (9303127821/400000000 : ℚ), (-3325523363481/500000000000 : ℚ), 6⟩,
    ⟨(69706351689/250000000000 : ℚ), (134590213059/10000000000 : ℚ), (-3935923340811/1000000000000 : ℚ), 6⟩,
    ⟨(282498452597/1000000000000 : ℚ), (85570729031/10000000000 : ℚ), (-640331448639/250000000000 : ℚ), 5⟩,
    ⟨(71706841119/250000000000 : ℚ), (225651553/39062500 : ℚ), (-1770513845163/1000000000000 : ℚ), 5⟩,
    ⟨(58354090521/200000000000 : ℚ), (4059495687/1000000000 : ℚ), (-318533358553/250000000000 : ℚ), 4⟩,
    ⟨(297280112343/1000000000000 : ℚ), (29315396559/10000000000 : ℚ), (-471088003669/500000000000 : ℚ), 4⟩,
    ⟨(9478227583/31250000000 : ℚ), (21551446099/10000000000 : ℚ), (-709199622411/1000000000000 : ℚ), 4⟩,
    ⟨(121008577/390625000 : ℚ), (1600693807/1000000000 : ℚ), (-539352125643/1000000000000 : ℚ), 4⟩,
    ⟨(316653742559/1000000000000 : ℚ), (2981888003/2500000000 : ℚ), (-411659150149/1000000000000 : ℚ), 3⟩,
    ⟨(323852459923/1000000000000 : ℚ), (8851029267/10000000000 : ℚ), (-39148747413/125000000000 : ℚ), 3⟩,
    ⟨(331308781627/1000000000000 : ℚ), (12660041/19531250 : ℚ), (-117812315389/500000000000 : ℚ), 3⟩,
    ⟨(169475449609/500000000000 : ℚ), (1156201917/2500000000 : ℚ), (-34683330947/200000000000 : ℚ), 3⟩,
    ⟨(346705214927/1000000000000 : ℚ), (31464659/100000000 : ℚ), (-30689242523/250000000000 : ℚ), 3⟩,
    ⟨(354497050453/1000000000000 : ℚ), (195394139/1000000000 : ℚ), (-16192615403/200000000000 : ℚ), 3⟩,
    ⟨(181125683081/500000000000 : ℚ), (490471253/5000000000 : ℚ), (-46105154801/1000000000000 : ℚ), 3⟩,
    ⟨(369893483753/1000000000000 : ℚ), (179345419/10000000000 : ℚ), (-4192391059/250000000000 : ℚ), 3⟩,
    ⟨(188674902729/500000000000 : ℚ), (-60790849/1250000000 : ℚ), (126485683/15625000000 : ℚ), 3⟩,
    ⟨(384548522821/1000000000000 : ℚ), (-521286493/5000000000 : ℚ), (14640343851/500000000000 : ℚ), 3⟩,
    ⟨(19571015413/50000000000 : ℚ), (-301881107/2000000000 : ℚ), (1480931993/31250000000 : ℚ), 2⟩,
    ⟨(99474745681/250000000000 : ℚ), (-1902075211/10000000000 : ℚ), (7860580387/125000000000 : ℚ), 2⟩,
    ⟨(403922153037/1000000000000 : ℚ), (-111614291/500000000 : ℚ), (38060791381/500000000000 : ℚ), 2⟩,
    ⟨(16377272511/40000000000 : ℚ), (-1254531203/5000000000 : ℚ), (43688209091/500000000000 : ℚ), 2⟩,
    ⟨(51796862613/125000000000 : ℚ), (-1369689937/5000000000 : ℚ), (19372522821/200000000000 : ℚ), 2⟩,
    ⟨(418703812783/1000000000000 : ℚ), (-1464311451/5000000000 : ℚ), (52372466909/500000000000 : ℚ), 2⟩,
    ⟨(412477401/976562500 : ℚ), (-3080924853/10000000000 : ℚ), (111149623381/1000000000000 : ℚ), 2⟩,
    ⟨(106339666247/250000000000 : ℚ), (-799854533/2500000000 : ℚ), (58086030571/500000000000 : ℚ), 2⟩,
    ⟨(427620515449/1000000000000 : ℚ), (-3286418227/10000000000 : ℚ), (119882479091/1000000000000 : ℚ), 2⟩,
    ⟨(429140627151/1000000000000 : ℚ), (-3343556631/10000000000 : ℚ), (122330164053/1000000000000 : ℚ), 2⟩,
    ⟨(429904360587/1000000000000 : ℚ), (-842968237/2500000000 : ℚ), (123546411919/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3375400769/10000000000 : ℚ), (123698091361/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (44464348263/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control481.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control481.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate481

namespace DiagonalRamsey.JointInheritedCertificate482
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69607325147/250000000000 : ℚ), (6239205438491/5000000000 : ℚ), (-69627626004817/200000000000 : ℚ), 12⟩,
    ⟨(279206838813/1000000000000 : ℚ), (340624855977/2500000000 : ℚ), (-19239764513427/500000000000 : ℚ), 9⟩,
    ⟨(56150885429/200000000000 : ℚ), (476889624719/10000000000 : ℚ), (-13706712889523/1000000000000 : ℚ), 7⟩,
    ⟨(283057161463/1000000000000 : ℚ), (46911484801/2000000000 : ℚ), (-275255438267/40000000000 : ℚ), 6⟩,
    ⟨(35761608147/125000000000 : ℚ), (135762870911/10000000000 : ℚ), (-4072425168453/1000000000000 : ℚ), 6⟩,
    ⟨(144916151399/500000000000 : ℚ), (17267171143/2000000000 : ℚ), (-2650336344187/1000000000000 : ℚ), 5⟩,
    ⟨(588478923/2000000000 : ℚ), (11659658577/2000000000 : ℚ), (-1832219316261/1000000000000 : ℚ), 5⟩,
    ⟨(18704493621/62500000000 : ℚ), (40980619103/10000000000 : ℚ), (-263743435669/200000000000 : ℚ), 4⟩,
    ⟨(30488114699/100000000000 : ℚ), (29604323589/10000000000 : ℚ), (-243831728351/250000000000 : ℚ), 4⟩,
    ⟨(311013188529/1000000000000 : ℚ), (1360827609/625000000 : ℚ), (-367172037469/500000000000 : ℚ), 4⟩,
    ⟨(7940224191/25000000000 : ℚ), (8090256953/5000000000 : ℚ), (-111735368397/200000000000 : ℚ), 4⟩,
    ⟨(64920992673/200000000000 : ℚ), (12065553079/10000000000 : ℚ), (-213312716853/500000000000 : ℚ), 3⟩,
    ⟨(8298345011/25000000000 : ℚ), (8962227127/10000000000 : ℚ), (-12992468837/40000000000 : ℚ), 3⟩,
    ⟨(169762449079/500000000000 : ℚ), (3286302933/5000000000 : ℚ), (-122313818597/500000000000 : ℚ), 3⟩,
    ⟨(347305150099/1000000000000 : ℚ), (4699534267/10000000000 : ℚ), (-180334467619/1000000000000 : ℚ), 3⟩,
    ⟨(355199628183/1000000000000 : ℚ), (1604345587/5000000000 : ℚ), (-127990868549/1000000000000 : ℚ), 3⟩,
    ⟨(363132304271/1000000000000 : ℚ), (1003140343/5000000000 : ℚ), (-84820970297/1000000000000 : ℚ), 3⟩,
    ⟨(74205356471/200000000000 : ℚ), (512707283/5000000000 : ℚ), (-48827555737/1000000000000 : ℚ), 3⟩,
    ⟨(75761406859/200000000000 : ℚ), (54381767/2500000000 : ℚ), (-9273697473/500000000000 : ℚ), 3⟩,
    ⟨(193199066007/500000000000 : ℚ), (-453191713/10000000000 : ℚ), (284319913/40000000000 : ℚ), 3⟩,
    ⟨(393726969089/1000000000000 : ℚ), (-506747609/5000000000 : ℚ), (28958665009/1000000000000 : ℚ), 3⟩,
    ⟨(200361482407/500000000000 : ℚ), (-148359283/1000000000 : ℚ), (47628786641/1000000000000 : ℚ), 2⟩,
    ⟨(16292749757/40000000000 : ℚ), (-1878889269/10000000000 : ℚ), (31798627991/500000000000 : ℚ), 2⟩,
    ⟨(51681348183/125000000000 : ℚ), (-138200593/625000000 : ℚ), (3089343027/40000000000 : ℚ), 2⟩,
    ⟨(209530017259/500000000000 : ℚ), (-248967429/1000000000 : ℚ), (44411881909/500000000000 : ℚ), 2⟩,
    ⟨(424092470953/1000000000000 : ℚ), (-2721334347/10000000000 : ℚ), (49294662733/500000000000 : ℚ), 2⟩,
    ⟨(53562453707/125000000000 : ℚ), (-1455817067/5000000000 : ℚ), (26675330503/250000000000 : ℚ), 2⟩,
    ⟨(216119533639/500000000000 : ℚ), (-95773557/312500000 : ℚ), (113290896119/1000000000000 : ℚ), 2⟩,
    ⟨(435274770991/1000000000000 : ℚ), (-795965479/2500000000 : ℚ), (118457178641/1000000000000 : ℚ), 2⟩,
    ⟨(437577505309/1000000000000 : ℚ), (-817825239/2500000000 : ℚ), (122273200097/1000000000000 : ℚ), 2⟩,
    ⟨(439125093641/1000000000000 : ℚ), (-3328721717/10000000000 : ℚ), (62395116501/500000000000 : ℚ), 2⟩,
    ⟨(219951315933/500000000000 : ℚ), (-1678588093/5000000000 : ℚ), (31510211169/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-672144227/2000000000 : ℚ), (126196805163/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (350322150173/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control482.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control482.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate482

namespace DiagonalRamsey.JointInheritedCertificate483
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8926750661/31250000000 : ℚ), (786659371193/625000000 : ℚ), (-90065933955039/250000000000 : ℚ), 12⟩,
    ⟨(71611726357/250000000000 : ℚ), (687226569389/5000000000 : ℚ), (-19910126443249/500000000000 : ℚ), 9⟩,
    ⟨(72005264333/250000000000 : ℚ), (240574529271/5000000000 : ℚ), (-14184652897629/1000000000000 : ℚ), 7⟩,
    ⟨(290363316921/1000000000000 : ℚ), (118348844971/5000000000 : ℚ), (-1780407177293/250000000000 : ℚ), 6⟩,
    ⟨(58690225391/200000000000 : ℚ), (27406361141/2000000000 : ℚ), (-4214859662131/1000000000000 : ℚ), 6⟩,
    ⟨(59450950027/200000000000 : ℚ), (17432901877/2000000000 : ℚ), (-137163532673/50000000000 : ℚ), 5⟩,
    ⟨(30173755549/100000000000 : ℚ), (58874511387/10000000000 : ℚ), (-1896694318511/1000000000000 : ℚ), 5⟩,
    ⟨(153428185577/500000000000 : ℚ), (8279847819/2000000000 : ℚ), (-1365347511357/1000000000000 : ℚ), 4⟩,
    ⟨(62512380027/200000000000 : ℚ), (5983675413/2000000000 : ℚ), (-505021255787/500000000000 : ℚ), 4⟩,
    ⟨(318799195069/1000000000000 : ℚ), (22014703547/10000000000 : ℚ), (-760716597923/1000000000000 : ℚ), 4⟩,
    ⟨(325508187397/1000000000000 : ℚ), (4092452447/2500000000 : ℚ), (-578985802073/1000000000000 : ℚ), 4⟩,
    ⟨(166312132927/500000000000 : ℚ), (6108170251/5000000000 : ℚ), (-442394212857/1000000000000 : ℚ), 3⟩,
    ⟨(85019724679/250000000000 : ℚ), (17742149/19531250 : ℚ), (-84274333863/250000000000 : ℚ), 3⟩,
    ⟨(10868759181/31250000000 : ℚ), (53376783/80000000 : ℚ), (-254186806419/1000000000000 : ℚ), 3⟩,
    ⟨(355714089827/1000000000000 : ℚ), (4781729171/10000000000 : ℚ), (-93861742439/500000000000 : ℚ), 3⟩,
    ⟨(363744072639/1000000000000 : ℚ), (163865159/500000000 : ℚ), (-66814070047/500000000000 : ℚ), 3⟩,
    ⟨(23238306819/62500000000 : ℚ), (2064137209/10000000000 : ℚ), (-89027550167/1000000000000 : ℚ), 3⟩,
    ⟨(94960722979/250000000000 : ℚ), (268674801/2500000000 : ℚ), (-10370843091/200000000000 : ℚ), 3⟩,
    ⟨(387756687951/1000000000000 : ℚ), (129973309/5000000000 : ℚ), (-20593179419/1000000000000 : ℚ), 3⟩,
    ⟨(395478083027/1000000000000 : ℚ), (-416289661/10000000000 : ℚ), (5882750187/1000000000000 : ℚ), 3⟩,
    ⟨(402932715889/1000000000000 : ℚ), (-981037671/10000000000 : ℚ), (3552874119/125000000000 : ℚ), 2⟩,
    ⟨(205024397173/500000000000 : ℚ), (-1454719287/10000000000 : ℚ), (23837145929/500000000000 : ℚ), 2⟩,
    ⟨(208378893337/500000000000 : ℚ), (-1852905271/10000000000 : ℚ), (6413303597/100000000000 : ℚ), 2⟩,
    ⟨(52874385201/125000000000 : ℚ), (-2187551269/10000000000 : ℚ), (19545598247/250000000000 : ℚ), 2⟩,
    ⟨(428700610589/1000000000000 : ℚ), (-493576281/2000000000 : ℚ), (22529775567/250000000000 : ℚ), 2⟩,
    ⟨(433819426253/1000000000000 : ℚ), (-540205629/2000000000 : ℚ), (100173094129/1000000000000 : ℚ), 2⟩,
    ⟨(54787778951/125000000000 : ℚ), (-2892500539/10000000000 : ℚ), (108522035667/1000000000000 : ℚ), 2⟩,
    ⟨(110526463697/250000000000 : ℚ), (-609305871/2000000000 : ℚ), (2306044243/20000000000 : ℚ), 2⟩,
    ⟨(222596832411/500000000000 : ℚ), (-3166322117/10000000000 : ℚ), (60308349319/500000000000 : ℚ), 2⟩,
    ⟨(447535924411/1000000000000 : ℚ), (-101695333/312500000 : ℚ), (124541471017/1000000000000 : ℚ), 2⟩,
    ⟨(89822015263/200000000000 : ℚ), (-1655993309/5000000000 : ℚ), (25425978591/200000000000 : ℚ), 2⟩,
    ⟨(449900960591/1000000000000 : ℚ), (-208787213/625000000 : ℚ), (32103968029/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-668831899/2000000000 : ℚ), (64288119189/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (344871893413/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control483.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control483.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate483

namespace DiagonalRamsey.JointInheritedCertificate484
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(292911527129/1000000000000 : ℚ), (1586817784861/1250000000 : ℚ), (-93144485852393/250000000000 : ℚ), 12⟩,
    ⟨(29371561893/100000000000 : ℚ), (1386389904729/10000000000 : ℚ), (-2573861933747/62500000000 : ℚ), 9⟩,
    ⟨(4614313417/15625000000 : ℚ), (242700963351/5000000000 : ℚ), (-1466998473299/100000000000 : ℚ), 7⟩,
    ⟨(148848716647/500000000000 : ℚ), (29854281063/1250000000 : ℚ), (-736556597733/100000000000 : ℚ), 6⟩,
    ⟨(37604601101/125000000000 : ℚ), (69149103461/5000000000 : ℚ), (-4359467915309/1000000000000 : ℚ), 6⟩,
    ⟨(304703951327/1000000000000 : ℚ), (43995610649/5000000000 : ℚ), (-88675304337/31250000000 : ℚ), 5⟩,
    ⟨(309261618157/1000000000000 : ℚ), (11889825289/2000000000 : ℚ), (-1962132669113/1000000000000 : ℚ), 5⟩,
    ⟨(39308239559/125000000000 : ℚ), (20908233127/5000000000 : ℚ), (-1412665108431/1000000000000 : ℚ), 4⟩,
    ⟨(80066681509/250000000000 : ℚ), (1209247091/400000000 : ℚ), (-1045261742053/1000000000000 : ℚ), 4⟩,
    ⟨(163304090941/500000000000 : ℚ), (11127504619/5000000000 : ℚ), (-98433109373/125000000000 : ℚ), 4⟩,
    ⟨(333429212323/1000000000000 : ℚ), (8279010041/5000000000 : ℚ), (-599578277467/1000000000000 : ℚ), 4⟩,
    ⟨(340664127107/1000000000000 : ℚ), (3091523879/2500000000 : ℚ), (-458378130893/1000000000000 : ℚ), 3⟩,
    ⟨(6964865001/20000000000 : ℚ), (9204742633/10000000000 : ℚ), (-87386576003/250000000000 : ℚ), 3⟩,
    ⟨(71218718011/200000000000 : ℚ), (6770632779/10000000000 : ℚ), (-131934723381/500000000000 : ℚ), 3⟩,
    ⟨(45517443007/125000000000 : ℚ), (4862995253/10000000000 : ℚ), (-195204854389/1000000000000 : ℚ), 3⟩,
    ⟨(372303625117/1000000000000 : ℚ), (3345010863/10000000000 : ℚ), (-139333241413/1000000000000 : ℚ), 3⟩,
    ⟨(95126802169/250000000000 : ℚ), (1060555619/5000000000 : ℚ), (-93282495021/1000000000000 : ℚ), 3⟩,
    ⟨(388671289737/1000000000000 : ℚ), (1123121239/10000000000 : ℚ), (-27456856197/500000000000 : ℚ), 3⟩,
    ⟨(198358621869/500000000000 : ℚ), (301521997/10000000000 : ℚ), (-22659377273/1000000000000 : ℚ), 3⟩,
    ⟨(404567583743/1000000000000 : ℚ), (-190107261/5000000000 : ℚ), (2323520839/500000000000 : ℚ), 3⟩,
    ⟨(82429341337/200000000000 : ℚ), (-189878161/2000000000 : ℚ), (3485603739/125000000000 : ℚ), 2⟩,
    ⟨(41938162147/100000000000 : ℚ), (-89165073/625000000 : ℚ), (4772367663/100000000000 : ℚ), 2⟩,
    ⟨(426202651911/1000000000000 : ℚ), (-365540487/2000000000 : ℚ), (32338885753/500000000000 : ℚ), 2⟩,
    ⟨(108136026939/250000000000 : ℚ), (-1082330501/5000000000 : ℚ), (3165767649/40000000000 : ℚ), 2⟩,
    ⟨(438344917321/1000000000000 : ℚ), (-2446844407/10000000000 : ℚ), (91430594127/1000000000000 : ℚ), 2⟩,
    ⟨(110887303909/250000000000 : ℚ), (-1340733503/5000000000 : ℚ), (50887747559/500000000000 : ℚ), 2⟩,
    ⟨(89621376493/200000000000 : ℚ), (-11226963/39062500 : ℚ), (6897706009/62500000000 : ℚ), 2⟩,
    ⟨(90394804997/200000000000 : ℚ), (-1514516211/5000000000 : ℚ), (117335527489/1000000000000 : ℚ), 2⟩,
    ⟨(455113400499/1000000000000 : ℚ), (-3149503321/10000000000 : ℚ), (122799289681/1000000000000 : ℚ), 2⟩,
    ⟨(91498955021/200000000000 : ℚ), (-3237916403/10000000000 : ℚ), (63416782703/500000000000 : ℚ), 2⟩,
    ⟨(459095214863/1000000000000 : ℚ), (-1647982119/5000000000 : ℚ), (129493854237/1000000000000 : ℚ), 2⟩,
    ⟨(57487413333/125000000000 : ℚ), (-3324725677/10000000000 : ℚ), (130815432711/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-832077173/2500000000 : ℚ), (6549011667/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (339400187327/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control484.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control484.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate484

namespace DiagonalRamsey.JointInheritedCertificate485
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300194026247/1000000000000 : ℚ), (6401118766951/5000000000 : ℚ), (-192537274081063/500000000000 : ℚ), 12⟩,
    ⟨(37626399459/125000000000 : ℚ), (1398293006671/10000000000 : ℚ), (-42563448494521/1000000000000 : ℚ), 9⟩,
    ⟨(75659416183/250000000000 : ℚ), (244821098963/5000000000 : ℚ), (-3701771064/244140625 : ℚ), 7⟩,
    ⟨(76264442411/250000000000 : ℚ), (240964011401/10000000000 : ℚ), (-7613065026319/1000000000000 : ℚ), 6⟩,
    ⟨(308248203471/1000000000000 : ℚ), (34890049297/2500000000 : ℚ), (-1126541789081/250000000000 : ℚ), 6⟩,
    ⟨(156089120297/500000000000 : ℚ), (22203681709/2500000000 : ℚ), (-586659226211/200000000000 : ℚ), 5⟩,
    ⟨(316810032607/1000000000000 : ℚ), (6002122573/1000000000 : ℚ), (-2028491465843/1000000000000 : ℚ), 5⟩,
    ⟨(322098972819/1000000000000 : ℚ), (42231609091/10000000000 : ℚ), (-730318109603/500000000000 : ℚ), 4⟩,
    ⟨(163997062923/500000000000 : ℚ), (3817772517/1250000000 : ℚ), (-1080956983253/1000000000000 : ℚ), 4⟩,
    ⟨(334438718141/1000000000000 : ℚ), (11246858959/5000000000 : ℚ), (-814565594179/1000000000000 : ℚ), 4⟩,
    ⟨(170685342379/500000000000 : ℚ), (16744778851/10000000000 : ℚ), (-620434106323/1000000000000 : ℚ), 4⟩,
    ⟨(348723267069/1000000000000 : ℚ), (1564313537/1250000000 : ℚ), (-237279701217/500000000000 : ℚ), 3⟩,
    ⟨(178212827843/500000000000 : ℚ), (2331061843/2500000000 : ℚ), (-181071340711/500000000000 : ℚ), 3⟩,
    ⟨(364403672397/1000000000000 : ℚ), (274719099/400000000 : ℚ), (-34207633793/125000000000 : ℚ), 3⟩,
    ⟨(18629024227/50000000000 : ℚ), (494312623/1000000000 : ℚ), (-202765264273/1000000000000 : ℚ), 3⟩,
    ⟨(380877344943/1000000000000 : ℚ), (426453701/1250000000 : ℚ), (-72546912817/500000000000 : ℚ), 3⟩,
    ⟨(194607175153/500000000000 : ℚ), (17416287/80000000 : ℚ), (-97574260653/1000000000000 : ℚ), 3⟩,
    ⟨(39751121071/100000000000 : ℚ), (58526421/500000000 : ℚ), (-57995178839/1000000000000 : ℚ), 3⟩,
    ⟨(405688022853/1000000000000 : ℚ), (342113163/10000000000 : ℚ), (-12367848097/500000000000 : ℚ), 3⟩,
    ⟨(103416509891/250000000000 : ℚ), (-43137011/1250000000 : ℚ), (3410671111/1000000000000 : ℚ), 3⟩,
    ⟨(421368428181/1000000000000 : ℚ), (-229668941/2500000000 : ℚ), (213699603/7812500000 : ℚ), 2⟩,
    ⟨(107180252623/250000000000 : ℚ), (-279894459/2000000000 : ℚ), (47785946007/1000000000000 : ℚ), 2⟩,
    ⟨(435652977109/1000000000000 : ℚ), (-1803388373/10000000000 : ℚ), (2038754637/31250000000 : ℚ), 2⟩,
    ⟨(110524392351/250000000000 : ℚ), (-1071320523/5000000000 : ℚ), (80127380611/1000000000000 : ℚ), 2⟩,
    ⟨(447992722431/1000000000000 : ℚ), (-303332653/1250000000 : ℚ), (46383206241/500000000000 : ℚ), 2⟩,
    ⟨(453281662643/1000000000000 : ℚ), (-2662745157/10000000000 : ℚ), (5170224999/50000000000 : ℚ), 2⟩,
    ⟨(91582690931/200000000000 : ℚ), (-2856531273/10000000000 : ℚ), (112232905843/1000000000000 : ℚ), 2⟩,
    ⟨(230921745889/500000000000 : ℚ), (-376543967/1250000000 : ℚ), (119398506511/1000000000000 : ℚ), 2⟩,
    ⟨(232516962803/500000000000 : ℚ), (-19584327/62500000 : ℚ), (125012507249/1000000000000 : ℚ), 2⟩,
    ⟨(467454030517/1000000000000 : ℚ), (-3222383579/10000000000 : ℚ), (16144619753/125000000000 : ℚ), 2⟩,
    ⟨(234540249789/500000000000 : ℚ), (-3280739029/10000000000 : ℚ), (65944768957/500000000000 : ℚ), 2⟩,
    ⟨(469897669003/1000000000000 : ℚ), (-661930197/2000000000 : ℚ), (133246920899/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1656626331/5000000000 : ℚ), (66708090641/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (6678164957/20000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control485.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control485.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate485

namespace DiagonalRamsey.JointInheritedCertificate486
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23552884037/40000000000 : ℚ), (4042358848727/2000000000 : ℚ), (-59582501035067/50000000000 : ℚ), 12⟩,
    ⟨(589838367423/1000000000000 : ℚ), (2217726215059/10000000000 : ℚ), (-8236432005873/62500000000 : ℚ), 9⟩,
    ⟨(591861113217/1000000000000 : ℚ), (156378074993/2000000000 : ℚ), (-23497157879359/500000000000 : ℚ), 7⟩,
    ⟨(594870858159/1000000000000 : ℚ), (48499829679/1250000000 : ℚ), (-11817587534849/500000000000 : ℚ), 6⟩,
    ⟨(14970965419/25000000000 : ℚ), (56717713533/2500000000 : ℚ), (-1752933201849/125000000000 : ℚ), 6⟩,
    ⟨(75465772167/125000000000 : ℚ), (29185924833/2000000000 : ℚ), (-57245114757/6250000000 : ℚ), 5⟩,
    ⟨(609486470007/1000000000000 : ℚ), (99806185239/10000000000 : ℚ), (-795349264169/125000000000 : ℚ), 5⟩,
    ⟨(308032010003/500000000000 : ℚ), (71180690333/10000000000 : ℚ), (-4609572245601/1000000000000 : ℚ), 4⟩,
    ⟨(623395481929/1000000000000 : ℚ), (26142995673/5000000000 : ℚ), (-3439172590817/1000000000000 : ℚ), 4⟩,
    ⟨(9865785153/15625000000 : ℚ), (39220935313/10000000000 : ℚ), (-523968207523/200000000000 : ℚ), 4⟩,
    ⟨(320015568499/500000000000 : ℚ), (29853574823/10000000000 : ℚ), (-506148844339/250000000000 : ℚ), 3⟩,
    ⟨(649175119691/1000000000000 : ℚ), (716877219/312500000 : ℚ), (-197391168717/125000000000 : ℚ), 3⟩,
    ⟨(329377068159/500000000000 : ℚ), (17715841959/10000000000 : ℚ), (-1237612457503/1000000000000 : ℚ), 3⟩,
    ⟨(334337967857/500000000000 : ℚ), (1711304189/1250000000 : ℚ), (-121316710481/125000000000 : ℚ), 3⟩,
    ⟨(678844965527/1000000000000 : ℚ), (10537882981/10000000000 : ℚ), (-758195773389/1000000000000 : ℚ), 3⟩,
    ⟨(17229082311/25000000000 : ℚ), (8034973907/10000000000 : ℚ), (-293523063299/500000000000 : ℚ), 3⟩,
    ⟨(174882886331/250000000000 : ℚ), (3012448397/5000000000 : ℚ), (-8950281899/20000000000 : ℚ), 3⟩,
    ⟨(709849872237/1000000000000 : ℚ), (4395043451/10000000000 : ℚ), (-166343626557/500000000000 : ℚ), 3⟩,
    ⟨(720018902049/1000000000000 : ℚ), (3062991127/10000000000 : ℚ), (-237474416903/1000000000000 : ℚ), 2⟩,
    ⟨(145988140289/200000000000 : ℚ), (983701621/5000000000 : ℚ), (-158061259801/1000000000000 : ℚ), 2⟩,
    ⟨(739519718073/1000000000000 : ℚ), (106197483/1000000000 : ℚ), (-91547394767/1000000000000 : ℚ), 2⟩,
    ⟨(374331850383/500000000000 : ℚ), (155658019/5000000000 : ℚ), (-35699153499/1000000000000 : ℚ), 2⟩,
    ⟨(189321146993/250000000000 : ℚ), (-311900127/10000000000 : ℚ), (11222024459/1000000000000 : ℚ), 2⟩,
    ⟨(382649677917/500000000000 : ℚ), (-828947011/10000000000 : ℚ), (50580683479/1000000000000 : ℚ), 2⟩,
    ⟨(386315408879/500000000000 : ℚ), (-628240071/5000000000 : ℚ), (83454017099/1000000000000 : ℚ), 2⟩,
    ⟨(194802091939/250000000000 : ℚ), (-401893987/2500000000 : ℚ), (110694645861/1000000000000 : ℚ), 2⟩,
    ⟨(784968660427/1000000000000 : ℚ), (-236561349/1250000000 : ℚ), (16622068737/125000000000 : ℚ), 2⟩,
    ⟨(197464055251/250000000000 : ℚ), (-2119219697/10000000000 : ℚ), (150828928987/1000000000000 : ℚ), 2⟩,
    ⟨(158764795921/200000000000 : ℚ), (-143369311/625000000 : ℚ), (82330629491/500000000000 : ℚ), 2⟩,
    ⟨(796833724547/1000000000000 : ℚ), (-302644983/1250000000 : ℚ), (87390889341/500000000000 : ℚ), 2⟩,
    ⟨(798856470341/1000000000000 : ℚ), (-1252124207/5000000000 : ℚ), (181410925671/1000000000000 : ℚ), 2⟩,
    ⟨(799872736839/1000000000000 : ℚ), (-2545278467/10000000000 : ℚ), (92345359421/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1275191673/5000000000 : ℚ), (92549538341/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (25404197903/200000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control486.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control486.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate486

namespace DiagonalRamsey.JointInheritedCertificate487
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66048862881/250000000000 : ℚ), (12278151302397/10000000000 : ℚ), (-325049041154907/1000000000000 : ℚ), 12⟩,
    ⟨(264945240889/1000000000000 : ℚ), (268073155593/2000000000 : ℚ), (-718536052841/20000000000 : ℚ), 9⟩,
    ⟨(133218799369/500000000000 : ℚ), (469005010349/10000000000 : ℚ), (-6398442155499/500000000000 : ℚ), 7⟩,
    ⟨(16791134553/62500000000 : ℚ), (28824655773/1250000000 : ℚ), (-200755562981/31250000000 : ℚ), 6⟩,
    ⟨(27158551807/100000000000 : ℚ), (13341623727/1000000000 : ℚ), (-3801464616037/1000000000000 : ℚ), 6⟩,
    ⟨(68797875569/250000000000 : ℚ), (8480448673/1000000000 : ℚ), (-2473636569749/1000000000000 : ℚ), 5⟩,
    ⟨(279441377867/1000000000000 : ℚ), (28617150831/5000000000 : ℚ), (-1709715377359/1000000000000 : ℚ), 5⟩,
    ⟨(142147108109/500000000000 : ℚ), (20104182617/5000000000 : ℚ), (-19221837021/15625000000 : ℚ), 4⟩,
    ⟨(289703281843/1000000000000 : ℚ), (29025587139/10000000000 : ℚ), (-909500637151/1000000000000 : ℚ), 4⟩,
    ⟨(295616482483/1000000000000 : ℚ), (21328800893/10000000000 : ℚ), (-85551336999/125000000000 : ℚ), 4⟩,
    ⟨(2359194303/7812500000 : ℚ), (7916268431/5000000000 : ℚ), (-130074094789/250000000000 : ℚ), 4⟩,
    ⟨(38590399091/125000000000 : ℚ), (5894372207/5000000000 : ℚ), (-99224419823/250000000000 : ℚ), 3⟩,
    ⟨(315790477549/1000000000000 : ℚ), (8739040409/10000000000 : ℚ), (-2357222397/7812500000 : ℚ), 3⟩,
    ⟨(80777665857/250000000000 : ℚ), (6390498657/10000000000 : ℚ), (-45348088281/200000000000 : ℚ), 3⟩,
    ⟨(20663328311/62500000000 : ℚ), (2274657999/5000000000 : ℚ), (-166588472299/1000000000000 : ℚ), 3⟩,
    ⟨(169112996077/500000000000 : ℚ), (1541743671/5000000000 : ℚ), (-7349356631/62500000000 : ℚ), 3⟩,
    ⟨(8646889153/25000000000 : ℚ), (1900860323/10000000000 : ℚ), (-77153567581/1000000000000 : ℚ), 3⟩,
    ⟨(176744152649/500000000000 : ℚ), (187148019/2000000000 : ℚ), (-21708290417/500000000000 : ℚ), 3⟩,
    ⟨(180495447423/500000000000 : ℚ), (140444811/10000000000 : ℚ), (-15013914581/1000000000000 : ℚ), 3⟩,
    ⟨(184155540363/500000000000 : ℚ), (-260084741/5000000000 : ℚ), (9069317533/1000000000000 : ℚ), 3⟩,
    ⟨(187689182773/500000000000 : ℚ), (-1072347137/10000000000 : ℚ), (29597329267/1000000000000 : ℚ), 3⟩,
    ⟨(38212468749/100000000000 : ℚ), (-12287229/80000000 : ℚ), (5893931501/125000000000 : ℚ), 2⟩,
    ⟨(388485075791/1000000000000 : ℚ), (-962967959/5000000000 : ℚ), (62177381091/1000000000000 : ℚ), 2⟩,
    ⟨(394398276431/1000000000000 : ℚ), (-90161073/400000000 : ℚ), (9377339607/125000000000 : ℚ), 2⟩,
    ⟨(49975917757/125000000000 : ℚ), (-252910579/1000000000 : ℚ), (42970588543/500000000000 : ℚ), 2⟩,
    ⟨(404660180407/1000000000000 : ℚ), (-551614419/2000000000 : ℚ), (1903006703/20000000000 : ℚ), 2⟩,
    ⟨(204455027999/500000000000 : ℚ), (-2946250763/10000000000 : ℚ), (51402388549/500000000000 : ℚ), 2⟩,
    ⟨(103129010051/250000000000 : ℚ), (-154886423/500000000 : ℚ), (27256487013/250000000000 : ℚ), 2⟩,
    ⟨(207721702713/500000000000 : ℚ), (-3215601601/10000000000 : ℚ), (56952774883/500000000000 : ℚ), 2⟩,
    ⟨(26103997471/62500000000 : ℚ), (-3302158693/10000000000 : ℚ), (1836110517/15625000000 : ℚ), 2⟩,
    ⟨(83831263477/200000000000 : ℚ), (-1679506001/5000000000 : ℚ), (119889860249/1000000000000 : ℚ), 2⟩,
    ⟨(1679624427/4000000000 : ℚ), (-338718879/1000000000 : ℚ), (60535981439/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3390699309/10000000000 : ℚ), (121219388167/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (180542831873/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control487.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control487.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate487

namespace DiagonalRamsey.JointInheritedCertificate515
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(273243377117/1000000000000 : ℚ), (1532720239451/1250000000 : ℚ), (-41964302096567/125000000000 : ℚ), 12⟩,
    ⟨(273997748217/1000000000000 : ℚ), (334744149827/2500000000 : ℚ), (-18552452602711/500000000000 : ℚ), 9⟩,
    ⟨(275499225413/1000000000000 : ℚ), (468712131477/10000000000 : ℚ), (-13216012458099/1000000000000 : ℚ), 7⟩,
    ⟨(17358334291/62500000000 : ℚ), (115280053501/5000000000 : ℚ), (-3317105428611/500000000000 : ℚ), 6⟩,
    ⟨(7016965053/25000000000 : ℚ), (133459066329/10000000000 : ℚ), (-3925461444341/1000000000000 : ℚ), 6⟩,
    ⟨(71076655351/250000000000 : ℚ), (42436259551/5000000000 : ℚ), (-510818952317/200000000000 : ℚ), 5⟩,
    ⟨(144291233349/500000000000 : ℚ), (57307060469/10000000000 : ℚ), (-882573042271/500000000000 : ℚ), 5⟩,
    ⟨(146732479637/500000000000 : ℚ), (64444231/16000000 : ℚ), (-634970198159/500000000000 : ℚ), 4⟩,
    ⟨(298907078061/1000000000000 : ℚ), (1454411283/500000000 : ℚ), (-469387160897/500000000000 : ℚ), 4⟩,
    ⟨(304856412479/1000000000000 : ℚ), (5345971937/2500000000 : ℚ), (-706359559521/1000000000000 : ℚ), 4⟩,
    ⟨(155627833593/500000000000 : ℚ), (635208001/400000000 : ℚ), (-268464047893/500000000000 : ℚ), 4⟩,
    ⟨(318043213861/1000000000000 : ℚ), (1478697859/1250000000 : ℚ), (-409554710373/1000000000000 : ℚ), 3⟩,
    ⟨(162576842359/500000000000 : ℚ), (8773842901/10000000000 : ℚ), (-311338871531/1000000000000 : ℚ), 3⟩,
    ⟨(332518602037/1000000000000 : ℚ), (3210050011/5000000000 : ℚ), (-11698993993/50000000000 : ℚ), 3⟩,
    ⟨(170033518819/500000000000 : ℚ), (4574523469/10000000000 : ℚ), (-85971993391/500000000000 : ℚ), 3⟩,
    ⟨(173863147979/500000000000 : ℚ), (3105043993/10000000000 : ℚ), (-24286135183/200000000000 : ℚ), 3⟩,
    ⟨(71084522831/200000000000 : ℚ), (1919428903/10000000000 : ℚ), (-15952664927/200000000000 : ℚ), 3⟩,
    ⟨(90770468119/250000000000 : ℚ), (951898261/10000000000 : ℚ), (-45016196543/1000000000000 : ℚ), 3⟩,
    ⟨(92657577019/250000000000 : ℚ), (9667923/625000000 : ℚ), (-15778515807/1000000000000 : ℚ), 3⟩,
    ⟨(75599045079/200000000000 : ℚ), (-253713911/5000000000 : ℚ), (4499543629/500000000000 : ℚ), 3⟩,
    ⟨(96276424063/250000000000 : ℚ), (-530380579/5000000000 : ℚ), (7526770129/250000000000 : ℚ), 3⟩,
    ⟨(391893242927/1000000000000 : ℚ), (-762596099/5000000000 : ℚ), (9629404177/200000000000 : ℚ), 3⟩,
    ⟨(199146248817/500000000000 : ℚ), (-1915873403/10000000000 : ℚ), (63580329283/1000000000000 : ℚ), 2⟩,
    ⟨(101060458013/250000000000 : ℚ), (-2244435267/10000000000 : ℚ), (76762913249/1000000000000 : ℚ), 2⟩,
    ⟨(409683950839/1000000000000 : ℚ), (-2519847541/10000000000 : ℚ), (43985078973/500000000000 : ℚ), 2⟩,
    ⟨(51820805427/125000000000 : ℚ), (-1374521503/5000000000 : ℚ), (24353808601/250000000000 : ℚ), 2⟩,
    ⟨(418842288709/1000000000000 : ℚ), (-1468687007/5000000000 : ℚ), (52631339809/500000000000 : ℚ), 2⟩,
    ⟨(422470307993/1000000000000 : ℚ), (-617789813/2000000000 : ℚ), (27909640439/250000000000 : ℚ), 2⟩,
    ⟨(425415561457/1000000000000 : ℚ), (-801720391/2500000000 : ℚ), (23327623673/200000000000 : ℚ), 2⟩,
    ⟨(427649684701/1000000000000 : ℚ), (-3293472777/10000000000 : ℚ), (120331471387/1000000000000 : ℚ), 2⟩,
    ⟨(53643895237/125000000000 : ℚ), (-1675172017/5000000000 : ℚ), (12276782539/100000000000 : ℚ), 2⟩,
    ⟨(107476383249/250000000000 : ℚ), (-3378528387/10000000000 : ℚ), (12397842167/100000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3382039787/10000000000 : ℚ), (31032348821/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (913889843/2500000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control515.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control515.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate515

namespace DiagonalRamsey.JointInheritedCertificate516
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280392500877/1000000000000 : ℚ), (12358087957677/10000000000 : ℚ), (-347199306302011/1000000000000 : ℚ), 12⟩,
    ⟨(281160591453/1000000000000 : ℚ), (1349622258019/10000000000 : ℚ), (-19187288478711/500000000000 : ℚ), 9⟩,
    ⟨(282689375473/1000000000000 : ℚ), (472503861143/10000000000 : ℚ), (-1708559078283/125000000000 : ℚ), 7⟩,
    ⟨(284964129911/1000000000000 : ℚ), (116232069593/5000000000 : ℚ), (-1715382083291/250000000000 : ℚ), 6⟩,
    ⟨(287962947639/1000000000000 : ℚ), (67293481293/5000000000 : ℚ), (-2030067985183/500000000000 : ℚ), 6⟩,
    ⟨(291656948403/1000000000000 : ℚ), (85608259529/10000000000 : ℚ), (-2641882515369/1000000000000 : ℚ), 5⟩,
    ⟨(59202111391/200000000000 : ℚ), (14454495579/2500000000 : ℚ), (-365195264287/200000000000 : ℚ), 5⟩,
    ⟨(60196369133/200000000000 : ℚ), (8129646629/2000000000 : ℚ), (-1313866859021/1000000000000 : ℚ), 4⟩,
    ⟨(306522938307/1000000000000 : ℚ), (29365727361/10000000000 : ℚ), (-485706753637/500000000000 : ℚ), 4⟩,
    ⟨(312580471127/1000000000000 : ℚ), (10798395191/5000000000 : ℚ), (-731094265171/1000000000000 : ℚ), 4⟩,
    ⟨(12763844271/40000000000 : ℚ), (16046703173/10000000000 : ℚ), (-555917235201/1000000000000 : ℚ), 4⟩,
    ⟨(81501774029/250000000000 : ℚ), (119618563/100000000 : ℚ), (-424241018763/1000000000000 : ℚ), 3⟩,
    ⟨(166623441273/500000000000 : ℚ), (8880329213/10000000000 : ℚ), (-322723366569/1000000000000 : ℚ), 3⟩,
    ⟨(340745742963/1000000000000 : ℚ), (1301366983/2000000000 : ℚ), (-121389579931/500000000000 : ℚ), 3⟩,
    ⟨(348431459243/1000000000000 : ℚ), (4645930303/10000000000 : ℚ), (-22335603567/125000000000 : ℚ), 3⟩,
    ⟨(44528751717/125000000000 : ℚ), (791107977/2500000000 : ℚ), (-12650927159/100000000000 : ℚ), 3⟩,
    ⟨(3640663021/10000000000 : ℚ), (1969316219/10000000000 : ℚ), (-41741839327/500000000000 : ℚ), 3⟩,
    ⟨(371864856593/1000000000000 : ℚ), (994228917/10000000000 : ℚ), (-476157673/10000000000 : ℚ), 3⟩,
    ⟨(379550572873/1000000000000 : ℚ), (190979129/10000000000 : ℚ), (-8722897319/500000000000 : ℚ), 3⟩,
    ⟨(38704943329/100000000000 : ℚ), (-47597617/1000000000 : ℚ), (10140301/1250000000 : ℚ), 3⟩,
    ⟨(9857230493/25000000000 : ℚ), (-129149747/1250000000 : ℚ), (7469149747/250000000000 : ℚ), 3⟩,
    ⟨(401200209061/1000000000000 : ℚ), (-300151039/2000000000 : ℚ), (48470171679/1000000000000 : ℚ), 3⟩,
    ⟨(407715844709/1000000000000 : ℚ), (-1893948773/10000000000 : ℚ), (64370912639/1000000000000 : ℚ), 2⟩,
    ⟨(413773377529/1000000000000 : ℚ), (-1112263051/5000000000 : ℚ), (77947631373/1000000000000 : ℚ), 2⟩,
    ⟨(41931447017/100000000000 : ℚ), (-31269367/125000000 : ℚ), (89485826087/1000000000000 : ℚ), 2⟩,
    ⟨(424285758881/1000000000000 : ℚ), (-2732024479/10000000000 : ℚ), (2480165131/25000000000 : ℚ), 2⟩,
    ⟨(428639367433/1000000000000 : ℚ), (-2921361547/10000000000 : ℚ), (107280721503/1000000000000 : ℚ), 2⟩,
    ⟨(108083342049/250000000000 : ℚ), (-1536857133/5000000000 : ℚ), (56919537249/500000000000 : ℚ), 2⟩,
    ⟨(108833046481/250000000000 : ℚ), (-3192230887/10000000000 : ℚ), (118980602601/1000000000000 : ℚ), 2⟩,
    ⟨(437606940363/1000000000000 : ℚ), (-3279238801/10000000000 : ℚ), (1918409177/15625000000 : ℚ), 2⟩,
    ⟨(439135724383/1000000000000 : ℚ), (-667275589/2000000000 : ℚ), (62641495103/500000000000 : ℚ), 2⟩,
    ⟨(439903814959/1000000000000 : ℚ), (-84117333/250000000 : ℚ), (126527505257/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-1684110481/5000000000 : ℚ), (126682704529/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (360093227729/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control516.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control516.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate516

namespace DiagonalRamsey.JointInheritedCertificate517
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287637359619/1000000000000 : ℚ), (12462555662891/10000000000 : ℚ), (-22448480271787/62500000000 : ℚ), 12⟩,
    ⟨(288418708959/1000000000000 : ℚ), (272233965373/2000000000 : ℚ), (-7939744751971/200000000000 : ℚ), 9⟩,
    ⟨(4530841919/15625000000 : ℚ), (23830917613/500000000 : ℚ), (-3535111944189/250000000000 : ℚ), 7⟩,
    ⟨(146143952009/500000000000 : ℚ), (366455311/15625000 : ℚ), (-7098729870697/1000000000000 : ℚ), 6⟩,
    ⟨(295338487273/1000000000000 : ℚ), (33953116273/2500000000 : ℚ), (-4200732265797/1000000000000 : ℚ), 6⟩,
    ⟨(299096253799/1000000000000 : ℚ), (86408420487/10000000000 : ℚ), (-1366793729513/500000000000 : ℚ), 5⟩,
    ⟨(1214100057/4000000000 : ℚ), (58374270311/10000000000 : ℚ), (-944785999937/500000000000 : ℚ), 5⟩,
    ⟨(7714552931/25000000000 : ℚ), (1642090619/400000000 : ℚ), (-1359837368979/1000000000000 : ℚ), 4⟩,
    ⟨(62843772021/200000000000 : ℚ), (1483436817/500000000 : ℚ), (-502807934961/500000000000 : ℚ), 4⟩,
    ⟨(40047619741/125000000000 : ℚ), (1091483323/500000000 : ℚ), (-378528119087/500000000000 : ℚ), 4⟩,
    ⟨(16350453317/50000000000 : ℚ), (16229180167/10000000000 : ℚ), (-287945162963/500000000000 : ℚ), 4⟩,
    ⟨(41754919129/125000000000 : ℚ), (6053564903/5000000000 : ℚ), (-439729906363/1000000000000 : ℚ), 3⟩,
    ⟨(341404112501/1000000000000 : ℚ), (8997553781/10000000000 : ℚ), (-1339088403/4000000000 : ℚ), 3⟩,
    ⟨(43629052261/125000000000 : ℚ), (6602555807/10000000000 : ℚ), (-252135185051/1000000000000 : ℚ), 3⟩,
    ⟨(356850805039/1000000000000 : ℚ), (1181236283/2500000000 : ℚ), (-46474406119/250000000000 : ℚ), 3⟩,
    ⟨(182391989007/500000000000 : ℚ), (1615165391/5000000000 : ℚ), (-13199212149/100000000000 : ℚ), 3⟩,
    ⟨(372755536221/1000000000000 : ℚ), (2024832381/10000000000 : ℚ), (-87553704259/1000000000000 : ℚ), 3⟩,
    ⟨(95172177299/250000000000 : ℚ), (1041473403/10000000000 : ℚ), (-50520664809/1000000000000 : ℚ), 3⟩,
    ⟨(194253548073/500000000000 : ℚ), (115801031/5000000000 : ℚ), (-2422770251/125000000000 : ℚ), 3⟩,
    ⟨(396135401733/1000000000000 : ℚ), (-440672013/10000000000 : ℚ), (6986043783/1000000000000 : ℚ), 3⟩,
    ⟨(201750080601/500000000000 : ℚ), (-1002175441/10000000000 : ℚ), (183945221/6250000000 : ℚ), 3⟩,
    ⟨(82106089579/200000000000 : ℚ), (-736591379/5000000000 : ℚ), (12149649017/250000000000 : ℚ), 3⟩,
    ⟨(208579278153/500000000000 : ℚ), (-1869155651/10000000000 : ℚ), (64983364909/1000000000000 : ℚ), 2⟩,
    ⟨(42332065413/100000000000 : ℚ), (-2201968079/10000000000 : ℚ), (39483925681/500000000000 : ℚ), 2⟩,
    ⟨(214478698497/500000000000 : ℚ), (-1240391157/5000000000 : ℚ), (4542407233/50000000000 : ℚ), 2⟩,
    ⟨(86802899997/200000000000 : ℚ), (-339085443/1250000000 : ℚ), (2017073493/20000000000 : ℚ), 2⟩,
    ⟨(87688652087/200000000000 : ℚ), (-1451572221/5000000000 : ℚ), (109161717229/1000000000000 : ℚ), 2⟩,
    ⟨(442201026961/1000000000000 : ℚ), (-3056367741/10000000000 : ℚ), (2318164967/20000000000 : ℚ), 2⟩,
    ⟨(445251610217/1000000000000 : ℚ), (-3175539519/10000000000 : ℚ), (121196099389/1000000000000 : ℚ), 2⟩,
    ⟨(223782815709/500000000000 : ℚ), (-3263015541/10000000000 : ℚ), (5004042289/40000000000 : ℚ), 2⟩,
    ⟨(112280201319/250000000000 : ℚ), (-132818239/400000000 : ℚ), (127676346379/1000000000000 : ℚ), 2⟩,
    ⟨(89980430923/200000000000 : ℚ), (-1674459409/5000000000 : ℚ), (1611947277/12500000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1676232373/5000000000 : ℚ), (64557665783/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (177285585787/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control517.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control517.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate517

namespace DiagonalRamsey.JointInheritedCertificate546
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(297201642329/500000000000 : ℚ), (19760792578579/10000000000 : ℚ), (-294012510845603/250000000000 : ℚ), 12⟩,
    ⟨(595392692427/1000000000000 : ℚ), (542187255041/2500000000 : ℚ), (-130052794759931/1000000000000 : ℚ), 9⟩,
    ⟨(298680989713/500000000000 : ℚ), (764865179609/10000000000 : ℚ), (-46373773453437/1000000000000 : ℚ), 7⟩,
    ⟨(300146090173/500000000000 : ℚ), (379680757513/10000000000 : ℚ), (-23320314810359/1000000000000 : ℚ), 6⟩,
    ⟨(2416620303/4000000000 : ℚ), (44416439619/2000000000 : ℚ), (-6917191296799/500000000000 : ℚ), 6⟩,
    ⟨(608913463843/1000000000000 : ℚ), (4465415721/312500000 : ℚ), (-225844661561/25000000000 : ℚ), 5⟩,
    ⟨(614521518747/1000000000000 : ℚ), (48877292217/5000000000 : ℚ), (-6273955544343/1000000000000 : ℚ), 5⟩,
    ⟨(155231307957/250000000000 : ℚ), (8716314603/1250000000 : ℚ), (-141989977961/31250000000 : ℚ), 4⟩,
    ⟨(628062931827/1000000000000 : ℚ), (12806443831/2500000000 : ℚ), (-26473466127/7812500000 : ℚ), 4⟩,
    ⟨(635865878793/1000000000000 : ℚ), (19212596079/5000000000 : ℚ), (-645002147649/250000000000 : ℚ), 4⟩,
    ⟨(251663643/390625000 : ℚ), (14621802811/5000000000 : ℚ), (-49814364261/25000000000 : ℚ), 4⟩,
    ⟨(130632248811/200000000000 : ℚ), (4492866229/2000000000 : ℚ), (-24265131101/15625000000 : ℚ), 3⟩,
    ⟨(20702721829/31250000000 : ℚ), (17339374499/10000000000 : ℚ), (-243191918551/200000000000 : ℚ), 3⟩,
    ⟨(26885867057/40000000000 : ℚ), (669442119/500000000 : ℚ), (-952423253391/1000000000000 : ℚ), 3⟩,
    ⟨(85255868841/125000000000 : ℚ), (10293728019/10000000000 : ℚ), (-148583880443/200000000000 : ℚ), 3⟩,
    ⟨(138418515277/200000000000 : ℚ), (3917763669/5000000000 : ℚ), (-574071955029/1000000000000 : ℚ), 3⟩,
    ⟨(43886675533/62500000000 : ℚ), (5860699499/10000000000 : ℚ), (-436434353199/1000000000000 : ℚ), 3⟩,
    ⟨(142446486837/200000000000 : ℚ), (4258949181/10000000000 : ℚ), (-161591608189/500000000000 : ℚ), 3⟩,
    ⟨(90266588561/125000000000 : ℚ), (589903653/2000000000 : ℚ), (-22929238507/100000000000 : ℚ), 3⟩,
    ⟨(146358457277/200000000000 : ℚ), (936142999/5000000000 : ℚ), (-7549787083/50000000000 : ℚ), 3⟩,
    ⟨(741118140859/1000000000000 : ℚ), (981846991/10000000000 : ℚ), (-10678640543/125000000000 : ℚ), 2⟩,
    ⟨(750020458833/1000000000000 : ℚ), (48696951/2000000000 : ℚ), (-3798303293/125000000000 : ℚ), 2⟩,
    ⟨(18960337653/25000000000 : ℚ), (-23101143/625000000 : ℚ), (1981211531/125000000000 : ℚ), 2⟩,
    ⟨(383108226543/500000000000 : ℚ), (-439173161/5000000000 : ℚ), (13656811879/250000000000 : ℚ), 2⟩,
    ⟨(154670830617/200000000000 : ℚ), (-1299054961/10000000000 : ℚ), (43505207821/500000000000 : ℚ), 2⟩,
    ⟨(389878933083/500000000000 : ℚ), (-822293917/5000000000 : ℚ), (113841464191/1000000000000 : ℚ), 2⟩,
    ⟨(78536592107/100000000000 : ℚ), (-96250991/500000000 : ℚ), (6789304277/50000000000 : ℚ), 2⟩,
    ⟨(790124309163/1000000000000 : ℚ), (-107410227/500000000 : ℚ), (153366839169/1000000000000 : ℚ), 2⟩,
    ⟨(793987204567/1000000000000 : ℚ), (-2320179103/10000000000 : ℚ), (166987927367/1000000000000 : ℚ), 2⟩,
    ⟨(796917405487/1000000000000 : ℚ), (-97818493/400000000 : ℚ), (8847675221/50000000000 : ℚ), 2⟩,
    ⟨(399443346243/500000000000 : ℚ), (-2527270997/10000000000 : ℚ), (183481004219/1000000000000 : ℚ), 2⟩,
    ⟨(159975220051/200000000000 : ℚ), (-2567670559/10000000000 : ℚ), (18671046623/100000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1286348533/5000000000 : ℚ), (93556277807/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (27600438173/200000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control546.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control546.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate546

namespace DiagonalRamsey.JointInheritedCertificate650
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63550395629/125000000000 : ℚ), (961624831623/625000000 : ℚ), (-195820025654041/250000000000 : ℚ), 12⟩,
    ⟨(20373008007/40000000000 : ℚ), (168704383289/1000000000 : ℚ), (-86588473045899/1000000000000 : ℚ), 9⟩,
    ⟨(12779009769/25000000000 : ℚ), (118814911189/2000000000 : ℚ), (-30853467044357/1000000000000 : ℚ), 8⟩,
    ⟨(513891062897/1000000000000 : ℚ), (3678762843/125000000 : ℚ), (-484322451203/31250000000 : ℚ), 7⟩,
    ⟨(517490918721/1000000000000 : ℚ), (171704978307/10000000000 : ℚ), (-9179795505123/1000000000000 : ℚ), 6⟩,
    ⟨(521925289653/1000000000000 : ℚ), (110137330203/10000000000 : ℚ), (-5981874315363/1000000000000 : ℚ), 6⟩,
    ⟨(527151470277/1000000000000 : ℚ), (37531826879/5000000000 : ℚ), (-16184093929/3906250000 : ℚ), 5⟩,
    ⟨(106623825923/200000000000 : ℚ), (10660272813/2000000000 : ℚ), (-93438681357/31250000000 : ℚ), 5⟩,
    ⟨(539770795847/1000000000000 : ℚ), (1557574133/400000000 : ℚ), (-554995497237/250000000000 : ℚ), 4⟩,
    ⟨(547042409791/1000000000000 : ℚ), (29009112671/10000000000 : ℚ), (-1680623919673/1000000000000 : ℚ), 4⟩,
    ⟨(554863941829/1000000000000 : ℚ), (21888665601/10000000000 : ℚ), (-644248831099/500000000000 : ℚ), 4⟩,
    ⟨(563160066331/1000000000000 : ℚ), (8315956737/5000000000 : ℚ), (-497381669737/500000000000 : ℚ), 4⟩,
    ⟨(114370177417/200000000000 : ℚ), (12657451823/10000000000 : ℚ), (-769299451029/1000000000000 : ℚ), 4⟩,
    ⟨(116170541347/200000000000 : ℚ), (9592453287/10000000000 : ℚ), (-592712165719/1000000000000 : ℚ), 3⟩,
    ⟨(147519708209/250000000000 : ℚ), (5751387/8000000 : ℚ), (-452058996781/1000000000000 : ℚ), 3⟩,
    ⟨(37465025797/62500000000 : ℚ), (5278268657/10000000000 : ℚ), (-84609284103/250000000000 : ℚ), 3⟩,
    ⟨(12176945787/20000000000 : ℚ), (3740545119/10000000000 : ℚ), (-245562037443/1000000000000 : ℚ), 3⟩,
    ⟨(309104434633/500000000000 : ℚ), (486459/1953125 : ℚ), (-10556094091/62500000000 : ℚ), 3⟩,
    ⟨(78429374421/125000000000 : ℚ), (1466210513/10000000000 : ℚ), (-105105741061/1000000000000 : ℚ), 3⟩,
    ⟨(636436815017/1000000000000 : ℚ), (155193571/2500000000 : ℚ), (-25844845173/500000000000 : ℚ), 3⟩,
    ⟨(645127635771/1000000000000 : ℚ), (-40296611/5000000000 : ℚ), (-6754619281/1000000000000 : ℚ), 3⟩,
    ⟨(326711880137/500000000000 : ℚ), (-166134789/2500000000 : ℚ), (31154345317/1000000000000 : ℚ), 3⟩,
    ⟨(661245292311/1000000000000 : ℚ), (-287893241/2500000000 : ℚ), (7895636121/125000000000 : ℚ), 3⟩,
    ⟨(133703381251/200000000000 : ℚ), (-1557596501/10000000000 : ℚ), (22539576971/250000000000 : ℚ), 3⟩,
    ⟨(675168572487/1000000000000 : ℚ), (-18949997/100000000 : ℚ), (22564964103/200000000000 : ℚ), 3⟩,
    ⟨(340568115913/500000000000 : ℚ), (-1086727877/5000000000 : ℚ), (65853656793/500000000000 : ℚ), 3⟩,
    ⟨(686362412449/1000000000000 : ℚ), (-240050483/1000000000 : ℚ), (1177849051/8000000000 : ℚ), 3⟩,
    ⟨(690796783381/1000000000000 : ℚ), (-2581986211/10000000000 : ℚ), (159727207231/1000000000000 : ℚ), 3⟩,
    ⟨(138879327841/200000000000 : ℚ), (-272235953/1000000000 : ℚ), (84724618523/500000000000 : ℚ), 3⟩,
    ⟨(348563655671/500000000000 : ℚ), (-706235689/2500000000 : ℚ), (17658651359/100000000000 : ℚ), 3⟩,
    ⟨(698962501927/1000000000000 : ℚ), (-723021397/2500000000 : ℚ), (290037381/1600000000 : ℚ), 3⟩,
    ⟨(699884537071/1000000000000 : ℚ), (-731322673/2500000000 : ℚ), (183595803493/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-146471217/500000000 : ℚ), (183885135007/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (123684096249/500000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control650.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control650.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate650

namespace DiagonalRamsey.JointInheritedCertificate662
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127894932801/250000000000 : ℚ), (7590719251509/5000000000 : ℚ), (-777671969481017/1000000000000 : ℚ), 12⟩,
    ⟨(512486479531/1000000000000 : ℚ), (1664861363193/10000000000 : ℚ), (-2686427395587/31250000000 : ℚ), 9⟩,
    ⟨(514291243703/1000000000000 : ℚ), (293188732643/5000000000 : ℚ), (-3062950121331/100000000000 : ℚ), 8⟩,
    ⟨(103395328571/200000000000 : ℚ), (72636805961/2500000000 : ℚ), (-15384238918361/1000000000000 : ℚ), 7⟩,
    ⟨(130129203781/250000000000 : ℚ), (169547245419/10000000000 : ℚ), (-1822188372027/200000000000 : ℚ), 6⟩,
    ⟨(524877666717/1000000000000 : ℚ), (27192697429/2500000000 : ℚ), (-1483979923343/250000000000 : ℚ), 6⟩,
    ⟨(66252150031/125000000000 : ℚ), (74140932019/10000000000 : ℚ), (-4110349998523/1000000000000 : ℚ), 5⟩,
    ⟨(535885919201/1000000000000 : ℚ), (52649215313/10000000000 : ℚ), (-185345842047/62500000000 : ℚ), 5⟩,
    ⟨(542427304603/1000000000000 : ℚ), (38462331293/10000000000 : ℚ), (-550253502209/250000000000 : ℚ), 4⟩,
    ⟨(274789179669/500000000000 : ℚ), (28650671863/10000000000 : ℚ), (-83277246923/50000000000 : ℚ), 4⟩,
    ⟨(557270214839/1000000000000 : ℚ), (4322680941/2000000000 : ℚ), (-63812871507/50000000000 : ℚ), 4⟩,
    ⟨(141357198583/250000000000 : ℚ), (8208343647/5000000000 : ℚ), (-24616520851/25000000000 : ℚ), 4⟩,
    ⟨(286987763119/500000000000 : ℚ), (12486590469/10000000000 : ℚ), (-190212207991/250000000000 : ℚ), 4⟩,
    ⟨(116565620171/200000000000 : ℚ), (4727518879/5000000000 : ℚ), (-117113182773/200000000000 : ℚ), 3⟩,
    ⟨(147975315763/250000000000 : ℚ), (7077468197/10000000000 : ℚ), (-222980833037/500000000000 : ℚ), 3⟩,
    ⟨(150276908329/250000000000 : ℚ), (5186468843/10000000000 : ℚ), (-66639275831/200000000000 : ℚ), 3⟩,
    ⟨(152589637317/250000000000 : ℚ), (916122169/2500000000 : ℚ), (-3012872789/12500000000 : ℚ), 3⟩,
    ⟨(154891229883/250000000000 : ℚ), (2427167291/10000000000 : ℚ), (-82478794141/500000000000 : ℚ), 3⟩,
    ⟨(628638081729/1000000000000 : ℚ), (1412813937/10000000000 : ℚ), (-5083254549/50000000000 : ℚ), 3⟩,
    ⟨(318745328173/500000000000 : ℚ), (575578241/10000000000 : ℚ), (-190126987/3906250000 : ℚ), 3⟩,
    ⟨(161509347063/250000000000 : ℚ), (-119093563/10000000000 : ℚ), (-320163/78125000 : ℚ), 3⟩,
    ⟨(130839193549/200000000000 : ℚ), (-697548347/10000000000 : ℚ), (16751569279/500000000000 : ℚ), 3⟩,
    ⟨(330943911623/500000000000 : ℚ), (-23601361/200000000 : ℚ), (32625692389/500000000000 : ℚ), 3⟩,
    ⟨(669038877981/1000000000000 : ℚ), (-316476077/2000000000 : ℚ), (23005336261/250000000000 : ℚ), 3⟩,
    ⟨(675580263383/1000000000000 : ℚ), (-191674079/1000000000 : ℚ), (5724954179/50000000000 : ℚ), 3⟩,
    ⟨(10647640349/15625000000 : ℚ), (-2192717879/10000000000 : ℚ), (13322349023/100000000000 : ℚ), 3⟩,
    ⟨(686588515867/1000000000000 : ℚ), (-604442551/2500000000 : ℚ), (148616861151/1000000000000 : ℚ), 3⟩,
    ⟨(34547468373/50000000000 : ℚ), (-519534693/2000000000 : ℚ), (161007686839/1000000000000 : ℚ), 3⟩,
    ⟨(694489539729/1000000000000 : ℚ), (-1368419129/5000000000 : ℚ), (170647727641/1000000000000 : ℚ), 3⟩,
    ⟨(697174938881/1000000000000 : ℚ), (-2838545613/10000000000 : ℚ), (177724781007/1000000000000 : ℚ), 3⟩,
    ⟨(698979703053/1000000000000 : ℚ), (-726279687/2500000000 : ℚ), (45593019883/250000000000 : ℚ), 3⟩,
    ⟨(34994322569/50000000000 : ℚ), (-2938043207/10000000000 : ℚ), (92337461223/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-294214197/1000000000 : ℚ), (924809063/5000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (255209852093/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control662.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control662.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate662

namespace DiagonalRamsey.JointInheritedCertificate663
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(153162879547/250000000000 : ℚ), (3658115528803/2000000000 : ℚ), (-280452621277107/250000000000 : ℚ), 12⟩,
    ⟨(306776554339/500000000000 : ℚ), (1004414405709/5000000000 : ℚ), (-124036441150489/1000000000000 : ℚ), 9⟩,
    ⟨(9614806357/15625000000 : ℚ), (354569404029/5000000000 : ℚ), (-22107630260427/500000000000 : ℚ), 8⟩,
    ⟨(618017730701/1000000000000 : ℚ), (70474737091/2000000000 : ℚ), (-888986342917/40000000000 : ℚ), 7⟩,
    ⟨(124307553097/200000000000 : ℚ), (8252336041/400000000 : ℚ), (-13176098483641/1000000000000 : ℚ), 6⟩,
    ⟨(625873811339/1000000000000 : ℚ), (132855341623/10000000000 : ℚ), (-429844200823/50000000000 : ℚ), 6⟩,
    ⟨(630984109771/1000000000000 : ℚ), (90946314597/10000000000 : ℚ), (-5964368066121/1000000000000 : ℚ), 5⟩,
    ⟨(79602430727/125000000000 : ℚ), (12979897411/2000000000 : ℚ), (-269622600479/62500000000 : ℚ), 5⟩,
    ⟨(128664724399/200000000000 : ℚ), (23840124091/5000000000 : ℚ), (-1606129635971/500000000000 : ℚ), 4⟩,
    ⟨(325216999769/500000000000 : ℚ), (17877075507/5000000000 : ℚ), (-610271714207/250000000000 : ℚ), 4⟩,
    ⟨(329041050811/500000000000 : ℚ), (27188857047/10000000000 : ℚ), (-940451506597/500000000000 : ℚ), 4⟩,
    ⟨(333097136421/500000000000 : ℚ), (5214108749/2500000000 : ℚ), (-1461755183713/1000000000000 : ℚ), 4⟩,
    ⟨(134938477711/200000000000 : ℚ), (125493347/78125000 : ℚ), (-285124271503/250000000000 : ℚ), 4⟩,
    ⟨(341747303631/500000000000 : ℚ), (2472736219/2000000000 : ℚ), (-222336143357/250000000000 : ℚ), 3⟩,
    ⟨(10820564981/15625000000 : ℚ), (295682119/312500000 : ℚ), (-689751091501/1000000000000 : ℚ), 3⟩,
    ⟨(701670160649/1000000000000 : ℚ), (1430911029/2000000000 : ℚ), (-264476817433/500000000000 : ℚ), 3⟩,
    ⟨(142173690963/200000000000 : ℚ), (2649536841/5000000000 : ℚ), (-397936916491/1000000000000 : ℚ), 3⟩,
    ⟨(720022456679/1000000000000 : ℚ), (3792713747/10000000000 : ℚ), (-145093709451/500000000000 : ℚ), 3⟩,
    ⟨(364522004101/500000000000 : ℚ), (2560221533/10000000000 : ℚ), (-100452858697/500000000000 : ℚ), 3⟩,
    ⟨(184461556727/250000000000 : ℚ), (772755303/5000000000 : ℚ), (-5059771641/40000000000 : ℚ), 3⟩,
    ⟨(373172171311/500000000000 : ℚ), (706172829/10000000000 : ℚ), (-3210808819/50000000000 : ℚ), 3⟩,
    ⟨(377228256921/500000000000 : ℚ), (4872931/5000000000 : ℚ), (-1495316631/125000000000 : ℚ), 3⟩,
    ⟨(381052307963/500000000000 : ℚ), (-284436783/5000000000 : ℚ), (7977160483/250000000000 : ℚ), 3⟩,
    ⟨(769214993469/1000000000000 : ℚ), (-41970103/400000000 : ℚ), (68686296863/1000000000000 : ℚ), 3⟩,
    ⟨(48482448103/62500000000 : ℚ), (-144672583/1000000000 : ℚ), (99387772667/1000000000000 : ℚ), 3⟩,
    ⟨(781554505693/1000000000000 : ℚ), (-88666999/500000000 : ℚ), (24963571413/200000000000 : ℚ), 3⟩,
    ⟨(6293318433/8000000000 : ℚ), (-1019272669/5000000000 : ℚ), (145612080079/1000000000000 : ℚ), 3⟩,
    ⟨(791000849979/1000000000000 : ℚ), (-1124853367/5000000000 : ℚ), (81134372259/500000000000 : ℚ), 3⟩,
    ⟨(397260442381/500000000000 : ℚ), (-482496497/2000000000 : ℚ), (87586375027/500000000000 : ℚ), 3⟩,
    ⟨(99648876077/125000000000 : ℚ), (-1265552399/5000000000 : ℚ), (184613286967/1000000000000 : ℚ), 3⟩,
    ⟨(399492753393/500000000000 : ℚ), (-104343363/400000000 : ℚ), (95398395341/500000000000 : ℚ), 3⟩,
    ⟨(199971774319/250000000000 : ℚ), (-661712971/2500000000 : ℚ), (96928027489/500000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-2651613457/10000000000 : ℚ), (97118476977/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (3480966189/20000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control663.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control663.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate663
