import S7_ParameterChoice.Source.Joint.Controls.ControlPrecision
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeData
import S7_ParameterChoice.Source.Joint.Controls.FastControlDomain
import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointInheritedCertificate286
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36014172443/125000000000 : ℚ), (14729418295139/10000000000 : ℚ), (-212603223625417/500000000000 : ℚ), 12⟩,
    ⟨(288892438099/1000000000000 : ℚ), (160881700791/1000000000 : ℚ), (-9399251514543/200000000000 : ℚ), 8⟩,
    ⟨(290443052449/1000000000000 : ℚ), (563356934951/10000000000 : ℚ), (-523103544123/31250000000 : ℚ), 7⟩,
    ⟨(292750289329/1000000000000 : ℚ), (55444759231/2000000000 : ℚ), (-8403050569991/1000000000000 : ℚ), 6⟩,
    ⟨(295791928789/1000000000000 : ℚ), (160539210391/10000000000 : ℚ), (-1243075137389/250000000000 : ℚ), 5⟩,
    ⟨(9360583693/31250000000 : ℚ), (25535403693/2500000000 : ℚ), (-808863846387/250000000000 : ℚ), 5⟩,
    ⟨(151977227123/500000000000 : ℚ), (34501199219/5000000000 : ℚ), (-2236296204567/1000000000000 : ℚ), 4⟩,
    ⟨(154498365331/500000000000 : ℚ), (24262406101/5000000000 : ℚ), (-100574572163/62500000000 : ℚ), 4⟩,
    ⟨(157308473773/500000000000 : ℚ), (17533291247/5000000000 : ℚ), (-37183291397/31250000000 : ℚ), 4⟩,
    ⟨(5011890299/15625000000 : ℚ), (12899007529/5000000000 : ℚ), (-223904557493/250000000000 : ℚ), 4⟩,
    ⟨(327369655049/1000000000000 : ℚ), (3835108509/2000000000 : ℚ), (-3405735829/5000000000 : ℚ), 3⟩,
    ⟨(2675034641/8000000000 : ℚ), (7150318233/5000000000 : ℚ), (-519947169097/1000000000000 : ℚ), 3⟩,
    ⟨(4271531217/12500000000 : ℚ), (10622501759/10000000000 : ℚ), (-197838712399/500000000000 : ℚ), 3⟩,
    ⟨(174664219019/500000000000 : ℚ), (7789008029/10000000000 : ℚ), (-297823433597/1000000000000 : ℚ), 3⟩,
    ⟨(71424780559/200000000000 : ℚ), (1391767811/2500000000 : ℚ), (-219375506719/1000000000000 : ℚ), 3⟩,
    ⟨(365033817043/1000000000000 : ℚ), (3797847729/10000000000 : ℚ), (-155519438091/1000000000000 : ℚ), 3⟩,
    ⟨(372982003983/1000000000000 : ℚ), (2370385949/10000000000 : ℚ), (-102864674389/1000000000000 : ℚ), 3⟩,
    ⟨(38089191823/100000000000 : ℚ), (150692577/1250000000 : ℚ), (-29485904887/500000000000 : ℚ), 2⟩,
    ⟨(388687382987/1000000000000 : ℚ), (122914779/5000000000 : ℚ), (-1378356629/62500000000 : ℚ), 2⟩,
    ⟨(198146661833/500000000000 : ℚ), (-551144449/10000000000 : ℚ), (4609525501/500000000000 : ℚ), 2⟩,
    ⟨(403636490901/1000000000000 : ℚ), (-76066639/625000000 : ℚ), (35848027037/1000000000000 : ℚ), 2⟩,
    ⟨(51330770747/125000000000 : ℚ), (-443969599/2500000000 : ℚ), (1464890499/25000000000 : ℚ), 2⟩,
    ⟨(41725484189/100000000000 : ℚ), (-28072977/125000000 : ℚ), (39023427101/500000000000 : ℚ), 2⟩,
    ⟨(10584971837/25000000000 : ℚ), (-1320482941/5000000000 : ℚ), (47326617081/500000000000 : ℚ), 2⟩,
    ⟨(429019090363/1000000000000 : ℚ), (-743020179/2500000000 : ℚ), (54382191851/500000000000 : ℚ), 2⟩,
    ⟨(434061366779/1000000000000 : ℚ), (-3247550501/10000000000 : ℚ), (30162801923/250000000000 : ℚ), 2⟩,
    ⟨(8769542857/20000000000 : ℚ), (-868460099/2500000000 : ℚ), (65261526841/500000000000 : ℚ), 2⟩,
    ⟨(442223892237/1000000000000 : ℚ), (-3655917141/10000000000 : ℚ), (69270270423/500000000000 : ℚ), 2⟩,
    ⟨(27829095731/62500000000 : ℚ), (-75950953/200000000 : ℚ), (144825184623/1000000000000 : ℚ), 2⟩,
    ⟨(447572768577/1000000000000 : ℚ), (-1950759227/5000000000 : ℚ), (18683323079/125000000000 : ℚ), 2⟩,
    ⟨(449123382927/1000000000000 : ℚ), (-3969794167/10000000000 : ℚ), (3050553937/20000000000 : ℚ), 2⟩,
    ⟨(449902441481/1000000000000 : ℚ), (-15639169/39062500 : ℚ), (77024268109/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1001960569/2500000000 : ℚ), (154238191171/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (55277379493/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control286.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control286.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate286

namespace DiagonalRamsey.JointInheritedCertificate287
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252365838577/1000000000000 : ℚ), (3536467189739/2500000000 : ℚ), (-89430015906283/250000000000 : ℚ), 12⟩,
    ⟨(63269077251/250000000000 : ℚ), (30886341301/200000000 : ℚ), (-9883797009639/250000000000 : ℚ), 8⟩,
    ⟨(6362260191/25000000000 : ℚ), (270188942989/5000000000 : ℚ), (-14080233662397/1000000000000 : ℚ), 7⟩,
    ⟨(128297257971/500000000000 : ℚ), (26568033273/1000000000 : ℚ), (-1766730894449/250000000000 : ℚ), 6⟩,
    ⟨(259368370197/1000000000000 : ℚ), (76848758313/5000000000 : ℚ), (-104513724783/25000000000 : ℚ), 5⟩,
    ⟨(262785256671/1000000000000 : ℚ), (9767554491/1000000000 : ℚ), (-1359606610677/500000000000 : ℚ), 5⟩,
    ⟨(266812268881/1000000000000 : ℚ), (13179645251/2000000000 : ℚ), (-1878458429283/1000000000000 : ℚ), 4⟩,
    ⟨(271410624497/1000000000000 : ℚ), (46270728813/10000000000 : ℚ), (-13506842489/10000000000 : ℚ), 4⟩,
    ⟨(138268019421/500000000000 : ℚ), (8344094751/2500000000 : ℚ), (-997683623067/1000000000000 : ℚ), 4⟩,
    ⟨(70534787843/250000000000 : ℚ), (12249561151/5000000000 : ℚ), (-149977540351/200000000000 : ℚ), 4⟩,
    ⟨(288166001051/1000000000000 : ℚ), (9078861189/5000000000 : ℚ), (-569183621617/1000000000000 : ℚ), 3⟩,
    ⟨(294558546023/1000000000000 : ℚ), (13490182767/10000000000 : ℚ), (-17330995443/40000000000 : ℚ), 3⟩,
    ⟨(60251044517/200000000000 : ℚ), (9968290259/10000000000 : ℚ), (-328416323157/1000000000000 : ℚ), 3⟩,
    ⟨(308191538081/1000000000000 : ℚ), (3627248643/5000000000 : ℚ), (-30720587881/125000000000 : ℚ), 3⟩,
    ⟨(78825173/250000000 : ℚ), (5125488081/10000000000 : ℚ), (-89712832417/500000000000 : ℚ), 3⟩,
    ⟨(40314277413/125000000000 : ℚ), (3429168493/10000000000 : ℚ), (-31338042961/250000000000 : ℚ), 3⟩,
    ⟨(164881324891/500000000000 : ℚ), (1029688147/5000000000 : ℚ), (-80695150343/1000000000000 : ℚ), 3⟩,
    ⟨(336976177087/1000000000000 : ℚ), (940443303/10000000000 : ℚ), (-21702970241/500000000000 : ℚ), 2⟩,
    ⟨(172042665503/500000000000 : ℚ), (17462161/10000000000 : ℚ), (-11984808419/1000000000000 : ℚ), 2⟩,
    ⟨(351021646501/1000000000000 : ℚ), (-375012511/5000000000 : ℚ), (7341385913/500000000000 : ℚ), 2⟩,
    ⟨(357718323063/1000000000000 : ℚ), (-1392221093/10000000000 : ℚ), (37435437093/1000000000000 : ℚ), 2⟩,
    ⟨(72822173607/200000000000 : ℚ), (-1931922507/10000000000 : ℚ), (28455301989/500000000000 : ℚ), 2⟩,
    ⟨(74027543543/200000000000 : ℚ), (-119324571/500000000 : ℚ), (14719304073/200000000000 : ℚ), 2⟩,
    ⟨(75148166049/200000000000 : ℚ), (-692311071/2500000000 : ℚ), (43934612931/500000000000 : ℚ), 2⟩,
    ⟨(380866244589/1000000000000 : ℚ), (-123617769/400000000 : ℚ), (6251202229/62500000000 : ℚ), 2⟩,
    ⟨(77092920041/200000000000 : ℚ), (-3358019311/10000000000 : ℚ), (13783885907/125000000000 : ℚ), 2⟩,
    ⟨(77898322483/200000000000 : ℚ), (-715617559/2000000000 : ℚ), (14849729519/125000000000 : ℚ), 2⟩,
    ⟨(392908498889/1000000000000 : ℚ), (-3755344867/10000000000 : ℚ), (62865948721/500000000000 : ℚ), 2⟩,
    ⟨(49460294143/125000000000 : ℚ), (-1946674051/5000000000 : ℚ), (131173184269/1000000000000 : ℚ), 2⟩,
    ⟨(198893230723/500000000000 : ℚ), (-3994727059/10000000000 : ℚ), (135195187807/1000000000000 : ℚ), 2⟩,
    ⟨(199600280041/500000000000 : ℚ), (-406133449/1000000000 : ℚ), (34462359141/250000000000 : ℚ), 2⟩,
    ⟨(39991103051/100000000000 : ℚ), (-1023587753/2500000000 : ℚ), (34792157267/250000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4002407/9765625 : ℚ), (69666580497/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (302706645479/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control287.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control287.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate287

namespace DiagonalRamsey.JointInheritedCertificate288
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(266507295419/1000000000000 : ℚ), (7184486704633/5000000000 : ℚ), (-383711929157517/1000000000000 : ℚ), 12⟩,
    ⟨(66811489833/250000000000 : ℚ), (784487861857/5000000000 : ℚ), (-42408655652929/1000000000000 : ℚ), 8⟩,
    ⟨(268716173421/1000000000000 : ℚ), (137290516277/2500000000 : ℚ), (-1510424136371/100000000000 : ℚ), 7⟩,
    ⟨(135451889361/500000000000 : ℚ), (6752310889/250000000 : ℚ), (-7581401285519/1000000000000 : ℚ), 6⟩,
    ⟨(273787707397/1000000000000 : ℚ), (390780169/25000000 : ℚ), (-4485360391387/1000000000000 : ℚ), 5⟩,
    ⟨(277340185639/1000000000000 : ℚ), (12422737587/1250000000 : ℚ), (-729477419963/250000000000 : ℚ), 5⟩,
    ⟨(14076350057/50000000000 : ℚ), (67083970093/10000000000 : ℚ), (-1008070725331/500000000000 : ℚ), 4⟩,
    ⟨(286307832577/1000000000000 : ℚ), (9426309239/2000000000 : ℚ), (-1450105636567/1000000000000 : ℚ), 4⟩,
    ⟨(291636637931/1000000000000 : ℚ), (3402170087/1000000000 : ℚ), (-535776505341/500000000000 : ℚ), 4⟩,
    ⟨(297462097893/1000000000000 : ℚ), (24994930349/10000000000 : ℚ), (-201464872913/250000000000 : ℚ), 4⟩,
    ⟨(151864055049/500000000000 : ℚ), (9273082891/5000000000 : ℚ), (-306071179751/500000000000 : ℚ), 3⟩,
    ⟨(12414973177/40000000000 : ℚ), (13799441919/10000000000 : ℚ), (-58310537411/125000000000 : ℚ), 3⟩,
    ⟨(317336749147/1000000000000 : ℚ), (10217910431/10000000000 : ℚ), (-177070249861/500000000000 : ℚ), 3⟩,
    ⟨(324548317357/1000000000000 : ℚ), (7458447043/10000000000 : ℚ), (-265624118629/1000000000000 : ℚ), 3⟩,
    ⟨(33193958271/100000000000 : ℚ), (5294000203/10000000000 : ℚ), (-19461131013/100000000000 : ℚ), 3⟩,
    ⟨(169719681641/500000000000 : ℚ), (3569894311/10000000000 : ℚ), (-68379826653/500000000000 : ℚ), 3⟩,
    ⟨(86743858021/250000000000 : ℚ), (87125413/400000000 : ℚ), (-89011622479/1000000000000 : ℚ), 3⟩,
    ⟨(22154700791/62500000000 : ℚ), (3255391/31250000 : ℚ), (-24584084173/500000000000 : ℚ), 2⟩,
    ⟨(361866478009/1000000000000 : ℚ), (104771537/10000000000 : ℚ), (-78094883/5000000000 : ℚ), 2⟩,
    ⟨(369078046219/1000000000000 : ℚ), (-336962497/5000000000 : ℚ), (12833123659/1000000000000 : ℚ), 2⟩,
    ⟨(376040465941/1000000000000 : ℚ), (-1325134001/10000000000 : ℚ), (37089397849/1000000000000 : ℚ), 2⟩,
    ⟨(95671671317/250000000000 : ℚ), (-1872090111/10000000000 : ℚ), (14458818203/250000000000 : ℚ), 2⟩,
    ⟨(388952697473/1000000000000 : ℚ), (-2332497537/10000000000 : ℚ), (37798071573/500000000000 : ℚ), 2⟩,
    ⟨(78955631487/200000000000 : ℚ), (-2719941637/10000000000 : ℚ), (22694247153/250000000000 : ℚ), 2⟩,
    ⟨(400106962789/1000000000000 : ℚ), (-1522448923/5000000000 : ℚ), (51845484551/500000000000 : ℚ), 2⟩,
    ⟨(202443897113/500000000000 : ℚ), (-165773103/500000000 : ℚ), (114580366029/1000000000000 : ℚ), 2⟩,
    ⟨(409074609727/1000000000000 : ℚ), (-707576969/2000000000 : ℚ), (123632107327/1000000000000 : ℚ), 2⟩,
    ⟨(412627087969/1000000000000 : ℚ), (-37169649/100000000 : ℚ), (5239575053/40000000000 : ℚ), 2⟩,
    ⟨(83102203329/200000000000 : ℚ), (-3856339551/10000000000 : ℚ), (3419008119/25000000000 : ℚ), 2⟩,
    ⟨(83539724389/200000000000 : ℚ), (-247418633/625000000 : ℚ), (70512290523/500000000000 : ℚ), 2⟩,
    ⟨(209584418017/500000000000 : ℚ), (-4025935957/10000000000 : ℚ), (28767604723/200000000000 : ℚ), 2⟩,
    ⟨(419907499947/1000000000000 : ℚ), (-4059260997/10000000000 : ℚ), (145236134407/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4063413007/10000000000 : ℚ), (145410499591/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (146116136371/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control288.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control288.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate288

namespace DiagonalRamsey.JointInheritedCertificate324
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(275306093777/1000000000000 : ℚ), (7180395224079/5000000000 : ℚ), (-396135994374581/1000000000000 : ℚ), 12⟩,
    ⟨(276050538319/1000000000000 : ℚ), (392123403787/2500000000 : ℚ), (-43781011113669/1000000000000 : ℚ), 8⟩,
    ⟨(55506451599/200000000000 : ℚ), (68649035283/1250000000 : ℚ), (-15592466946733/1000000000000 : ℚ), 7⟩,
    ⟨(139868491517/500000000000 : ℚ), (135108728831/5000000000 : ℚ), (-1565209785061/200000000000 : ℚ), 6⟩,
    ⟨(28264348073/100000000000 : ℚ), (156450788187/10000000000 : ℚ), (-289361287273/62500000000 : ℚ), 5⟩,
    ⟨(3577796999/12500000000 : ℚ), (99512245343/10000000000 : ℚ), (-602321329253/200000000000 : ℚ), 5⟩,
    ⟨(145221670279/500000000000 : ℚ), (33599852583/5000000000 : ℚ), (-2080677963007/1000000000000 : ℚ), 4⟩,
    ⟨(147630792889/500000000000 : ℚ), (4723165919/1000000000 : ℚ), (-1496360662991/1000000000000 : ℚ), 4⟩,
    ⟨(150316046621/500000000000 : ℚ), (1705352989/500000000 : ℚ), (-1105605235047/1000000000000 : ℚ), 4⟩,
    ⟨(306503142029/1000000000000 : ℚ), (12533530811/5000000000 : ℚ), (-25980350527/31250000000 : ℚ), 4⟩,
    ⟨(39102273841/125000000000 : ℚ), (18606763509/10000000000 : ℚ), (-126290382319/200000000000 : ℚ), 3⟩,
    ⟨(31951642197/100000000000 : ℚ), (13850161057/10000000000 : ℚ), (-240577598043/500000000000 : ℚ), 3⟩,
    ⟨(163266664063/500000000000 : ℚ), (1282535023/1250000000 : ℚ), (-18262913707/50000000000 : ℚ), 3⟩,
    ⟨(333801332553/1000000000000 : ℚ), (299753533/400000000 : ℚ), (-273966392531/1000000000000 : ℚ), 3⟩,
    ⟨(68250088079/200000000000 : ℚ), (5323618477/10000000000 : ℚ), (-100375022947/500000000000 : ℚ), 3⟩,
    ⟨(348808912673/1000000000000 : ℚ), (718956917/2000000000 : ℚ), (-3528129167/25000000000 : ℚ), 3⟩,
    ⟨(178201978583/500000000000 : ℚ), (21991929/100000000 : ℚ), (-91934067343/1000000000000 : ℚ), 3⟩,
    ⟨(363962429443/1000000000000 : ℚ), (264927217/2500000000 : ℚ), (-25452621629/500000000000 : ℚ), 3⟩,
    ⟨(185705768643/500000000000 : ℚ), (15039753/1250000000 : ℚ), (-16374928039/1000000000000 : ℚ), 2⟩,
    ⟨(378679541713/1000000000000 : ℚ), (-660287439/10000000000 : ℚ), (1289415257/100000000000 : ℚ), 2⟩,
    ⟨(96424111967/250000000000 : ℚ), (-656485877/5000000000 : ℚ), (37833783993/1000000000000 : ℚ), 2⟩,
    ⟨(39239467911/100000000000 : ℚ), (-232631441/1250000000 : ℚ), (14788223517/250000000000 : ℚ), 2⟩,
    ⟨(39870972781/100000000000 : ℚ), (-2322301161/10000000000 : ℚ), (15479027977/200000000000 : ℚ), 2⟩,
    ⟨(404580776597/1000000000000 : ℚ), (-135518271/500000000 : ℚ), (9297978649/100000000000 : ℚ), 2⟩,
    ⟨(409951284061/1000000000000 : ℚ), (-3035769387/10000000000 : ℚ), (53115604269/500000000000 : ℚ), 2⟩,
    ⟨(1296154779/3125000000 : ℚ), (-3306649873/10000000000 : ℚ), (23480099331/200000000000 : ℚ), 2⟩,
    ⟨(418989109919/1000000000000 : ℚ), (-3529290619/10000000000 : ℚ), (63340737823/500000000000 : ℚ), 2⟩,
    ⟨(422569389109/1000000000000 : ℚ), (-1854258353/5000000000 : ℚ), (67111342123/500000000000 : ℚ), 2⟩,
    ⟨(106368971701/250000000000 : ℚ), (-3847985929/10000000000 : ℚ), (35034092269/250000000000 : ℚ), 2⟩,
    ⟨(106920152961/250000000000 : ℚ), (-790080591/2000000000 : ℚ), (72252602329/500000000000 : ℚ), 2⟩,
    ⟨(670566143/1562500000 : ℚ), (-502209249/1250000000 : ℚ), (147387225183/1000000000000 : ℚ), 2⟩,
    ⟨(429906776061/1000000000000 : ℚ), (-810202789/2000000000 : ℚ), (148819289491/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-4055167741/10000000000 : ℚ), (2328091927/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (296020419669/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control324.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control324.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate324

namespace DiagonalRamsey.JointInheritedCertificate325
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141273383191/500000000000 : ℚ), (1810064344129/1250000000 : ℚ), (-102484460662997/250000000000 : ℚ), 12⟩,
    ⟨(35413061229/125000000000 : ℚ), (316345588553/2000000000 : ℚ), (-9061384833313/200000000000 : ℚ), 8⟩,
    ⟨(142406319721/500000000000 : ℚ), (276954008869/5000000000 : ℚ), (-8068156369417/500000000000 : ℚ), 7⟩,
    ⟨(143528345453/500000000000 : ℚ), (272586997401/10000000000 : ℚ), (-8099334821767/1000000000000 : ℚ), 6⟩,
    ⟨(290015032781/1000000000000 : ℚ), (157855656251/10000000000 : ℚ), (-958347153447/200000000000 : ℚ), 5⟩,
    ⟨(293659174619/1000000000000 : ℚ), (50214836951/5000000000 : ℚ), (-1558608928833/500000000000 : ℚ), 5⟩,
    ⟨(297954021341/1000000000000 : ℚ), (67837667229/10000000000 : ℚ), (-2153894941297/1000000000000 : ℚ), 4⟩,
    ⟨(151429105613/500000000000 : ℚ), (47695154097/10000000000 : ℚ), (-1549265380473/1000000000000 : ℚ), 4⟩,
    ⟨(308324514243/1000000000000 : ℚ), (4306850431/1250000000 : ℚ), (-572473618893/500000000000 : ℚ), 4⟩,
    ⟨(78575071727/250000000000 : ℚ), (12667228343/5000000000 : ℚ), (-861215695311/1000000000000 : ℚ), 4⟩,
    ⟨(160363989631/500000000000 : ℚ), (18816425921/10000000000 : ℚ), (-654393231509/1000000000000 : ℚ), 3⟩,
    ⟨(65509137823/200000000000 : ℚ), (7008606487/5000000000 : ℚ), (-498927030213/1000000000000 : ℚ), 3⟩,
    ⟨(20917984887/62500000000 : ℚ), (10395211883/10000000000 : ℚ), (-379063438753/1000000000000 : ℚ), 3⟩,
    ⟨(171042702233/500000000000 : ℚ), (7604149133/10000000000 : ℚ), (-142332943289/500000000000 : ℚ), 3⟩,
    ⟨(349667384559/1000000000000 : ℚ), (2707402183/5000000000 : ℚ), (-104488370841/500000000000 : ℚ), 3⟩,
    ⟨(22335042491/62500000000 : ℚ), (367095733/1000000000 : ℚ), (-29471001317/200000000000 : ℚ), 3⟩,
    ⟨(9127279993/25000000000 : ℚ), (2263482071/10000000000 : ℚ), (-19306442873/200000000000 : ℚ), 3⟩,
    ⟨(186392247509/500000000000 : ℚ), (1114530897/10000000000 : ℚ), (-54156903429/1000000000000 : ℚ), 3⟩,
    ⟨(38036647511/100000000000 : ℚ), (41890297/2500000000 : ℚ), (-9253240547/500000000000 : ℚ), 2⟩,
    ⟨(48470515173/125000000000 : ℚ), (-123826551/2000000000 : ℚ), (11700325687/1000000000000 : ℚ), 2⟩,
    ⟨(197453095231/500000000000 : ℚ), (-1276719313/10000000000 : ℚ), (58482307/1562500000 : ℚ), 2⟩,
    ⟨(200861950157/500000000000 : ℚ), (-365750083/2000000000 : ℚ), (11882622599/200000000000 : ℚ), 2⟩,
    ⟨(102037898167/250000000000 : ℚ), (-286648039/1250000000 : ℚ), (78217137717/1000000000000 : ℚ), 2⟩,
    ⟨(414127365333/1000000000000 : ℚ), (-536762087/2000000000 : ℚ), (23568875119/250000000000 : ℚ), 2⟩,
    ⟨(419593668351/1000000000000 : ℚ), (-752817051/2500000000 : ℚ), (26981178267/250000000000 : ℚ), 2⟩,
    ⟨(106124464559/250000000000 : ℚ), (-3283784917/10000000000 : ℚ), (29856348509/250000000000 : ℚ), 2⟩,
    ⟨(214396352479/500000000000 : ℚ), (-3507715731/10000000000 : ℚ), (64489415339/500000000000 : ℚ), 2⟩,
    ⟨(108109211699/250000000000 : ℚ), (-3687941663/10000000000 : ℚ), (8546210333/62500000000 : ℚ), 2⟩,
    ⟨(435395188671/1000000000000 : ℚ), (-3828163649/10000000000 : ℚ), (35705923101/250000000000 : ℚ), 2⟩,
    ⟨(87527848027/200000000000 : ℚ), (-1965559361/5000000000 : ℚ), (9207362823/62500000000 : ℚ), 2⟩,
    ⟨(27446711859/62500000000 : ℚ), (-1999368079/5000000000 : ℚ), (150282092801/1000000000000 : ℚ), 2⟩,
    ⟨(87981022639/200000000000 : ℚ), (-2016122843/5000000000 : ℚ), (7587746129/50000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-4036420511/10000000000 : ℚ), (75969297531/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (72658694631/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control325.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control325.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate325

namespace DiagonalRamsey.JointInheritedCertificate326
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(72452114893/250000000000 : ℚ), (14599095754649/10000000000 : ℚ), (-5298883174369/12500000000 : ℚ), 12⟩,
    ⟨(72644840193/250000000000 : ℚ), (1594834725633/10000000000 : ℚ), (-9370334933209/200000000000 : ℚ), 8⟩,
    ⟨(73028434743/250000000000 : ℚ), (558577466497/10000000000 : ℚ), (-16686826580521/1000000000000 : ℚ), 7⟩,
    ⟨(294396817271/1000000000000 : ℚ), (8591644767/312500000 : ℚ), (-8375936740677/1000000000000 : ℚ), 6⟩,
    ⟨(37175826047/125000000000 : ℚ), (39811456261/2500000000 : ℚ), (-123890709747/25000000000 : ℚ), 5⟩,
    ⟨(75278531589/250000000000 : ℚ), (101337057583/10000000000 : ℚ), (-3224069611733/1000000000000 : ℚ), 5⟩,
    ⟨(305483665783/1000000000000 : ℚ), (13693651257/2000000000 : ℚ), (-1113976294499/500000000000 : ℚ), 4⟩,
    ⟨(155236572803/500000000000 : ℚ), (48152947627/10000000000 : ℚ), (-200345106429/125000000000 : ℚ), 4⟩,
    ⟨(158017257203/500000000000 : ℚ), (34797958697/10000000000 : ℚ), (-2369427887/2000000000 : ℚ), 4⟩,
    ⟨(322114213161/1000000000000 : ℚ), (12799020033/5000000000 : ℚ), (-891369413567/1000000000000 : ℚ), 4⟩,
    ⟨(328653691049/1000000000000 : ℚ), (19022839161/10000000000 : ℚ), (-677560673043/1000000000000 : ℚ), 3⟩,
    ⟨(167794984661/500000000000 : ℚ), (28362871/20000000 : ℚ), (-258431764931/500000000000 : ℚ), 3⟩,
    ⟨(34285624783/100000000000 : ℚ), (1315954423/1250000000 : ℚ), (-392986876549/1000000000000 : ℚ), 3⟩,
    ⟨(175191274169/500000000000 : ℚ), (1928050703/2500000000 : ℚ), (-295448068223/1000000000000 : ℚ), 3⟩,
    ⟨(179048194229/500000000000 : ℚ), (2751966531/5000000000 : ℚ), (-217258495389/1000000000000 : ℚ), 3⟩,
    ⟨(365923479693/1000000000000 : ℚ), (149809389/400000000 : ℚ), (-30723651937/200000000000 : ℚ), 3⟩,
    ⟨(2990307543/8000000000 : ℚ), (1163004407/5000000000 : ℚ), (-25286678503/250000000000 : ℚ), 3⟩,
    ⟨(381615534109/1000000000000 : ℚ), (1167701061/10000000000 : ℚ), (-7176427303/125000000000 : ℚ), 3⟩,
    ⟨(389329374229/1000000000000 : ℚ), (213245459/10000000000 : ℚ), (-2063019269/100000000000 : ℚ), 2⟩,
    ⟨(396855674737/1000000000000 : ℚ), (-579458077/10000000000 : ℚ), (10522813767/1000000000000 : ℚ), 2⟩,
    ⟨(80824390649/200000000000 : ℚ), (-620939741/5000000000 : ℚ), (9261645737/250000000000 : ℚ), 2⟩,
    ⟨(205529115759/500000000000 : ℚ), (-1797804073/10000000000 : ℚ), (29850811403/500000000000 : ℚ), 2⟩,
    ⟨(208798854703/500000000000 : ℚ), (-283171563/1250000000 : ℚ), (79071561791/1000000000000 : ℚ), 2⟩,
    ⟨(423677408161/1000000000000 : ℚ), (-1329258891/5000000000 : ℚ), (47803430001/500000000000 : ℚ), 2⟩,
    ⟨(429238776961/1000000000000 : ℚ), (-746998213/2500000000 : ℚ), (10965634929/100000000000 : ℚ), 2⟩,
    ⟨(27139266049/62500000000 : ℚ), (-1631057437/5000000000 : ℚ), (3037258083/25000000000 : ℚ), 2⟩,
    ⟨(109649449053/250000000000 : ℚ), (-3487309957/10000000000 : ℚ), (131317651537/1000000000000 : ℚ), 2⟩,
    ⟨(442305314191/1000000000000 : ℚ), (-3668514699/10000000000 : ℚ), (139298575251/1000000000000 : ℚ), 2⟩,
    ⟨(445315105297/1000000000000 : ℚ), (-3809472909/10000000000 : ℚ), (145554311527/1000000000000 : ℚ), 2⟩,
    ⟨(111899545899/250000000000 : ℚ), (-782590757/2000000000 : ℚ), (150174229139/1000000000000 : ℚ), 2⟩,
    ⟨(112283140449/250000000000 : ℚ), (-995227383/2500000000 : ℚ), (153221113509/1000000000000 : ℚ), 2⟩,
    ⟨(89980692599/200000000000 : ℚ), (-2007292307/5000000000 : ℚ), (38683716779/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2009389983/5000000000 : ℚ), (77461818847/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (142623710819/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control326.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control326.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate326

namespace DiagonalRamsey.JointInheritedCertificate327
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(148580468887/500000000000 : ℚ), (14726428174239/10000000000 : ℚ), (-438449727058011/1000000000000 : ℚ), 12⟩,
    ⟨(37243072479/125000000000 : ℚ), (160891094463/1000000000 : ℚ), (-24229588878569/500000000000 : ℚ), 8⟩,
    ⟨(299504317047/1000000000000 : ℚ), (281796906231/5000000000 : ℚ), (-107873831743/6250000000 : ℚ), 7⟩,
    ⟨(301825128297/1000000000000 : ℚ), (55490735449/2000000000 : ℚ), (-433195745539/50000000000 : ℚ), 6⟩,
    ⟨(304884662901/1000000000000 : ℚ), (40185215873/2500000000 : ℚ), (-5126332109437/1000000000000 : ℚ), 5⟩,
    ⟨(77163363967/250000000000 : ℚ), (102313636603/10000000000 : ℚ), (-667084590707/200000000000 : ℚ), 5⟩,
    ⟨(313095211661/1000000000000 : ℚ), (34573778099/5000000000 : ℚ), (-2305184941759/1000000000000 : ℚ), 4⟩,
    ⟨(63633430749/200000000000 : ℚ), (48646633553/10000000000 : ℚ), (-829300002029/500000000000 : ℚ), 4⟩,
    ⟨(5059694321/15625000000 : ℚ), (35168472867/10000000000 : ℚ), (-38320951521/31250000000 : ℚ), 4⟩,
    ⟨(66000123171/200000000000 : ℚ), (6470757861/2500000000 : ℚ), (-922926081759/1000000000000 : ℚ), 4⟩,
    ⟨(84162043293/250000000000 : ℚ), (19246358853/10000000000 : ℚ), (-701850910647/1000000000000 : ℚ), 3⟩,
    ⟨(85924772221/250000000000 : ℚ), (717978293/500000000 : ℚ), (-33482128143/62500000000 : ℚ), 3⟩,
    ⟨(351085458819/1000000000000 : ℚ), (426861347/400000000 : ℚ), (-407665146663/1000000000000 : ℚ), 3⟩,
    ⟨(358736148197/1000000000000 : ℚ), (1957461569/2500000000 : ℚ), (-306861436807/1000000000000 : ℚ), 3⟩,
    ⟨(45822184587/125000000000 : ℚ), (350073071/625000000 : ℚ), (-11303697463/50000000000 : ℚ), 3⟩,
    ⟨(374533928037/1000000000000 : ℚ), (19132197/50000000 : ℚ), (-32067483183/200000000000 : ℚ), 3⟩,
    ⟨(382528877243/1000000000000 : ℚ), (2394514039/10000000000 : ℚ), (-53077214557/500000000000 : ℚ), 3⟩,
    ⟨(48810666073/125000000000 : ℚ), (122608077/1000000000 : ℚ), (-1525206263/25000000000 : ℚ), 3⟩,
    ⟨(398326657083/1000000000000 : ℚ), (263512183/10000000000 : ℚ), (-11527327597/500000000000 : ℚ), 2⟩,
    ⟨(405977346461/1000000000000 : ℚ), (-535714787/10000000000 : ℚ), (226965939/25000000000 : ℚ), 2⟩,
    ⟨(103340929099/250000000000 : ℚ), (-240678691/2000000000 : ℚ), (36425851111/1000000000000 : ℚ), 2⟩,
    ⟨(105103658027/250000000000 : ℚ), (-881779711/5000000000 : ℚ), (747182043/12500000000 : ℚ), 2⟩,
    ⟨(17082487577/40000000000 : ℚ), (-2234548949/10000000000 : ℚ), (39864698187/500000000000 : ℚ), 2⟩,
    ⟨(13538824023/31250000000 : ℚ), (-1315224523/5000000000 : ℚ), (12094651267/125000000000 : ℚ), 2⟩,
    ⟨(87779130307/200000000000 : ℚ), (-185133403/625000000 : ℚ), (27804926853/250000000000 : ℚ), 2⟩,
    ⟨(443967593619/1000000000000 : ℚ), (-3238018767/10000000000 : ℚ), (123397299899/1000000000000 : ℚ), 2⟩,
    ⟨(112102337353/250000000000 : ℚ), (-692920859/2000000000 : ℚ), (33376698367/250000000000 : ℚ), 2⟩,
    ⟨(452178142379/1000000000000 : ℚ), (-729377469/2000000000 : ℚ), (2834292213/20000000000 : ℚ), 2⟩,
    ⟨(455237676983/1000000000000 : ℚ), (-1894328909/5000000000 : ℚ), (148146712583/1000000000000 : ℚ), 2⟩,
    ⟨(457558488233/1000000000000 : ℚ), (-389271951/1000000000 : ℚ), (76448005953/500000000000 : ℚ), 2⟩,
    ⟨(57389778181/125000000000 : ℚ), (-792209861/2000000000 : ℚ), (31205562409/200000000000 : ℚ), 2⟩,
    ⟨(459901867507/1000000000000 : ℚ), (-998726883/2500000000 : ℚ), (615561053/3906250000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3999125597/10000000000 : ℚ), (157777639857/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (69955530343/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control327.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control327.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate327

namespace DiagonalRamsey.JointInheritedCertificate328
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27392132097/125000000000 : ℚ), (540409233043/400000000 : ℚ), (-296672863009913/1000000000000 : ℚ), 12⟩,
    ⟨(219766817871/1000000000000 : ℚ), (737241381543/5000000000 : ℚ), (-32785538711823/1000000000000 : ℚ), 8⟩,
    ⟨(110510137559/500000000000 : ℚ), (103140144863/2000000000 : ℚ), (-182412028653/15625000000 : ℚ), 7⟩,
    ⟨(111442678519/500000000000 : ℚ), (253393813239/10000000000 : ℚ), (-1171558760131/200000000000 : ℚ), 6⟩,
    ⟨(225344101873/1000000000000 : ℚ), (146480017423/10000000000 : ℚ), (-692775414677/200000000000 : ℚ), 5⟩,
    ⟨(114186415283/500000000000 : ℚ), (23250945999/2500000000 : ℚ), (-562949145541/250000000000 : ℚ), 5⟩,
    ⟨(231942374803/1000000000000 : ℚ), (7834491759/1250000000 : ℚ), (-777187170471/500000000000 : ℚ), 4⟩,
    ⟨(236018357923/1000000000000 : ℚ), (21973272281/5000000000 : ℚ), (-558251160369/500000000000 : ℚ), 4⟩,
    ⟨(240561525981/1000000000000 : ℚ), (31643402829/10000000000 : ℚ), (-82355935551/100000000000 : ℚ), 4⟩,
    ⟨(245528125783/1000000000000 : ℚ), (23173309149/10000000000 : ℚ), (-24713987371/40000000000 : ℚ), 4⟩,
    ⟨(250870326259/1000000000000 : ℚ), (428055547/250000000 : ℚ), (-467765800089/1000000000000 : ℚ), 3⟩,
    ⟨(128268339549/500000000000 : ℚ), (12667392109/10000000000 : ℚ), (-177408850303/500000000000 : ℚ), 3⟩,
    ⟨(10498904569/40000000000 : ℚ), (2326191857/2500000000 : ℚ), (-267607612097/1000000000000 : ℚ), 3⟩,
    ⟨(268620965339/1000000000000 : ℚ), (6712327233/10000000000 : ℚ), (-12425210519/62500000000 : ℚ), 3⟩,
    ⟨(137461260229/500000000000 : ℚ), (4677098259/10000000000 : ℚ), (-4484957013/31250000000 : ℚ), 3⟩,
    ⟨(140658296081/500000000000 : ℚ), (305408743/1000000000 : ℚ), (-9839928507/100000000000 : ℚ), 3⟩,
    ⟨(71935400511/250000000000 : ℚ), (871068023/5000000000 : ℚ), (-30542473437/500000000000 : ℚ), 3⟩,
    ⟨(73533918437/250000000000 : ℚ), (669181167/10000000000 : ℚ), (-1195167061/40000000000 : ℚ), 3⟩,
    ⟨(300437228867/1000000000000 : ℚ), (-108518021/5000000000 : ℚ), (-1770459143/500000000000 : ℚ), 2⟩,
    ⟨(306585579981/1000000000000 : ℚ), (-954994827/10000000000 : ℚ), (18851313033/1000000000000 : ℚ), 2⟩,
    ⟨(78130378777/250000000000 : ℚ), (-786699147/5000000000 : ℚ), (37990129979/1000000000000 : ℚ), 2⟩,
    ⟨(318187867947/1000000000000 : ℚ), (-2093892097/10000000000 : ℚ), (10880247739/200000000000 : ℚ), 2⟩,
    ⟨(323530068423/1000000000000 : ℚ), (-2532946391/10000000000 : ℚ), (68486653083/1000000000000 : ℚ), 2⟩,
    ⟨(13139866729/40000000000 : ℚ), (-2903180821/10000000000 : ℚ), (40277698061/500000000000 : ℚ), 2⟩,
    ⟨(333039836283/1000000000000 : ℚ), (-3214311319/10000000000 : ℚ), (11355709843/125000000000 : ℚ), 2⟩,
    ⟨(337115819403/1000000000000 : ℚ), (-1736917653/5000000000 : ℚ), (99541160843/1000000000000 : ℚ), 2⟩,
    ⟨(8517134091/25000000000 : ℚ), (-3687532629/10000000000 : ℚ), (106783018609/1000000000000 : ℚ), 2⟩,
    ⟨(343714092333/1000000000000 : ℚ), (-1929917171/5000000000 : ℚ), (112678979001/1000000000000 : ℚ), 2⟩,
    ⟨(21635802323/62500000000 : ℚ), (-62407731/156250000 : ℚ), (117310105919/1000000000000 : ℚ), 2⟩,
    ⟨(21752369943/62500000000 : ℚ), (-4092791287/10000000000 : ℚ), (24147174729/200000000000 : ℚ), 2⟩,
    ⟨(69858275267/200000000000 : ℚ), (-4157668187/10000000000 : ℚ), (61498944917/500000000000 : ℚ), 2⟩,
    ⟨(34992113743/100000000000 : ℚ), (-2094918233/5000000000 : ℚ), (62061255761/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4193844983/10000000000 : ℚ), (124262793833/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (84613372199/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control328.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control328.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate328

namespace DiagonalRamsey.JointInheritedCertificate329
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4796934903/20000000000 : ℚ), (690383514197/500000000 : ℚ), (-165922633260331/500000000000 : ℚ), 12⟩,
    ⟨(60130303669/250000000000 : ℚ), (1507355823843/10000000000 : ℚ), (-36673555757107/1000000000000 : ℚ), 8⟩,
    ⟨(120931829109/500000000000 : ℚ), (131852537801/2500000000 : ℚ), (-13059645451303/1000000000000 : ℚ), 7⟩,
    ⟨(24386114731/100000000000 : ℚ), (51854907347/2000000000 : ℚ), (-6553550357801/1000000000000 : ℚ), 6⟩,
    ⟨(246494445041/1000000000000 : ℚ), (149964400349/10000000000 : ℚ), (-3875893952907/1000000000000 : ℚ), 5⟩,
    ⟨(124869095657/500000000000 : ℚ), (47638768133/5000000000 : ℚ), (-2520198625883/1000000000000 : ℚ), 5⟩,
    ⟨(253561147079/1000000000000 : ℚ), (16063950481/2500000000 : ℚ), (-1740190702083/1000000000000 : ℚ), 4⟩,
    ⟨(128963247591/500000000000 : ℚ), (22546716857/5000000000 : ℚ), (-15631476373/12500000000 : ℚ), 4⟩,
    ⟨(52558438987/200000000000 : ℚ), (16251610403/5000000000 : ℚ), (-461485258169/500000000000 : ℚ), 4⟩,
    ⟨(26811138699/100000000000 : ℚ), (23834032933/10000000000 : ℚ), (-346505733909/500000000000 : ℚ), 4⟩,
    ⟨(136916422309/500000000000 : ℚ), (2205006359/1250000000 : ℚ), (-262642708503/500000000000 : ℚ), 3⟩,
    ⟨(17493841691/62500000000 : ℚ), (1307989861/1000000000 : ℚ), (-79821851391/200000000000 : ℚ), 3⟩,
    ⟨(35782351269/125000000000 : ℚ), (9638007751/10000000000 : ℚ), (-301732733691/1000000000000 : ℚ), 3⟩,
    ⟨(4575682019/15625000000 : ℚ), (6984919521/10000000000 : ℚ), (-1799624121/8000000000 : ℚ), 3⟩,
    ⟨(299592568649/1000000000000 : ℚ), (980535439/2000000000 : ℚ), (-16330288333/100000000000 : ℚ), 3⟩,
    ⟨(306440572667/1000000000000 : ℚ), (1621421813/5000000000 : ℚ), (-28257217139/250000000000 : ℚ), 3⟩,
    ⟨(19582606953/62500000000 : ℚ), (1901815891/10000000000 : ℚ), (-71488860847/1000000000000 : ℚ), 3⟩,
    ⟨(160084857633/500000000000 : ℚ), (805756363/10000000000 : ℚ), (-36783319333/1000000000000 : ℚ), 3⟩,
    ⟨(326918634699/1000000000000 : ℚ), (-98907893/10000000000 : ℚ), (-7521976293/1000000000000 : ℚ), 2⟩,
    ⟨(333503473763/1000000000000 : ℚ), (-425822841/5000000000 : ℚ), (4332010489/250000000000 : ℚ), 2⟩,
    ⟨(339860816859/1000000000000 : ℚ), (-1481915963/10000000000 : ℚ), (38543633591/1000000000000 : ℚ), 2⟩,
    ⟨(345929439297/1000000000000 : ℚ), (-2011948567/10000000000 : ℚ), (886171867/15625000000 : ℚ), 2⟩,
    ⟨(14066035877/40000000000 : ℚ), (-2458669377/10000000000 : ℚ), (72293945153/1000000000000 : ℚ), 2⟩,
    ⟨(17848504449/50000000000 : ℚ), (-2835055993/10000000000 : ℚ), (21407046549/250000000000 : ℚ), 2⟩,
    ⟨(361835788733/1000000000000 : ℚ), (-3151106669/10000000000 : ℚ), (96986122661/1000000000000 : ℚ), 2⟩,
    ⟨(91550284209/250000000000 : ℚ), (-3414541719/10000000000 : ℚ), (106574995333/1000000000000 : ℚ), 2⟩,
    ⟨(370024092601/1000000000000 : ℚ), (-3631316489/10000000000 : ℚ), (7159647239/62500000000 : ℚ), 2⟩,
    ⟨(186633919437/500000000000 : ℚ), (-1902999567/5000000000 : ℚ), (121046146663/1000000000000 : ℚ), 2⟩,
    ⟨(75180227321/200000000000 : ℚ), (-394204949/1000000000 : ℚ), (3941946029/31250000000 : ℚ), 2⟩,
    ⟨(377898625697/1000000000000 : ℚ), (-808404771/2000000000 : ℚ), (25982052113/200000000000 : ℚ), 2⟩,
    ⟨(379241069239/1000000000000 : ℚ), (-821544551/2000000000 : ℚ), (132397409721/1000000000000 : ℚ), 2⟩,
    ⟨(75983107753/200000000000 : ℚ), (-2070146613/5000000000 : ℚ), (133633712511/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4144351607/10000000000 : ℚ), (133787913831/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (40334688339/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control329.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control329.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate329

namespace DiagonalRamsey.JointInheritedCertificate330
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(26815444841/100000000000 : ℚ), (14249832745307/10000000000 : ℚ), (-191434875903541/500000000000 : ℚ), 12⟩,
    ⟨(268885185611/1000000000000 : ℚ), (778115213977/5000000000 : ℚ), (-10578614497839/250000000000 : ℚ), 9⟩,
    ⟨(54067924523/200000000000 : ℚ), (272412034539/5000000000 : ℚ), (-3013976427827/200000000000 : ℚ), 7⟩,
    ⟨(136251876199/500000000000 : ℚ), (268023656419/10000000000 : ℚ), (-7563528436599/1000000000000 : ℚ), 6⟩,
    ⟨(275356733207/1000000000000 : ℚ), (31030199651/2000000000 : ℚ), (-4474272874419/1000000000000 : ℚ), 5⟩,
    ⟨(139435544639/500000000000 : ℚ), (19732832163/2000000000 : ℚ), (-2910258433933/1000000000000 : ℚ), 5⟩,
    ⟨(3537662193/12500000000 : ℚ), (66610569563/10000000000 : ℚ), (-402093791891/200000000000 : ℚ), 4⟩,
    ⟨(143871251533/500000000000 : ℚ), (46804152733/10000000000 : ℚ), (-1445677909417/1000000000000 : ℚ), 4⟩,
    ⟨(293014124219/1000000000000 : ℚ), (33786759131/10000000000 : ℚ), (-533980661569/500000000000 : ℚ), 4⟩,
    ⟨(59755414061/200000000000 : ℚ), (4964230257/2000000000 : ℚ), (-802858947729/1000000000000 : ℚ), 4⟩,
    ⟨(76243960251/250000000000 : ℚ), (9207139899/5000000000 : ℚ), (-152394460051/250000000000 : ℚ), 3⟩,
    ⟨(77887684691/250000000000 : ℚ), (13697086637/10000000000 : ℚ), (-2901582287/6250000000 : ℚ), 3⟩,
    ⟨(318438443727/1000000000000 : ℚ), (2027378319/2000000000 : ℚ), (-88043093067/250000000000 : ℚ), 3⟩,
    ⟨(40696577941/125000000000 : ℚ), (1478637021/2000000000 : ℚ), (-131934619969/500000000000 : ℚ), 3⟩,
    ⟨(332884572117/1000000000000 : ℚ), (1048121557/2000000000 : ℚ), (-48258378279/250000000000 : ℚ), 3⟩,
    ⟨(34030387143/100000000000 : ℚ), (1762803643/5000000000 : ℚ), (-67665967497/500000000000 : ℚ), 3⟩,
    ⟨(8693976739/25000000000 : ℚ), (2140950909/10000000000 : ℚ), (-87713264283/1000000000000 : ℚ), 3⟩,
    ⟨(355178368873/1000000000000 : ℚ), (1010165697/10000000000 : ℚ), (-47982812431/1000000000000 : ℚ), 3⟩,
    ⟨(362490317461/1000000000000 : ℚ), (77727253/10000000000 : ℚ), (-2906662937/200000000000 : ℚ), 2⟩,
    ⟨(184812248631/500000000000 : ℚ), (-10895359/156250000 : ℚ), (3457564217/250000000000 : ℚ), 2⟩,
    ⟨(15060488089/40000000000 : ℚ), (-1345506937/10000000000 : ℚ), (950191411/25000000000 : ℚ), 2⟩,
    ⟨(191543549993/500000000000 : ℚ), (-1889982819/10000000000 : ℚ), (29341620787/500000000000 : ℚ), 2⟩,
    ⟨(97321467671/250000000000 : ℚ), (-2348334391/10000000000 : ℚ), (149182901/1953125000 : ℚ), 2⟩,
    ⟨(395048816771/1000000000000 : ℚ), (-273407217/1000000000 : ℚ), (91507299467/1000000000000 : ℚ), 2⟩,
    ⟨(400320437923/1000000000000 : ℚ), (-611523033/2000000000 : ℚ), (104372962933/1000000000000 : ℚ), 2⟩,
    ⟨(405049965549/1000000000000 : ℚ), (-3327016277/10000000000 : ℚ), (115220616931/1000000000000 : ℚ), 2⟩,
    ⟨(409191851711/1000000000000 : ℚ), (-443561631/1250000000 : ℚ), (124236958449/1000000000000 : ℚ), 2⟩,
    ⟨(206353103891/500000000000 : ℚ), (-465852343/1250000000 : ℚ), (8222811829/62500000000 : ℚ), 2⟩,
    ⟨(415559188591/1000000000000 : ℚ), (-483201403/1250000000 : ℚ), (137312717167/1000000000000 : ℚ), 2⟩,
    ⟨(208861659187/500000000000 : ℚ), (-1983772607/5000000000 : ℚ), (28311931429/200000000000 : ℚ), 2⟩,
    ⟨(209588877689/500000000000 : ℚ), (-4034505591/10000000000 : ℚ), (2887232059/20000000000 : ℚ), 2⟩,
    ⟨(419908492579/1000000000000 : ℚ), (-4067693563/10000000000 : ℚ), (145753979687/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4071828517/10000000000 : ℚ), (72963814409/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (150683924579/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control330.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control330.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate330

namespace DiagonalRamsey.JointInheritedCertificate363
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276990802041/1000000000000 : ℚ), (1779221136859/1250000000 : ℚ), (-197511050453479/500000000000 : ℚ), 12⟩,
    ⟨(277727139141/1000000000000 : ℚ), (777437765503/5000000000 : ℚ), (-1364268703543/31250000000 : ℚ), 9⟩,
    ⟨(69798180503/250000000000 : ℚ), (136135526501/2500000000 : ℚ), (-3109442652207/200000000000 : ℚ), 7⟩,
    ⟨(28137343629/100000000000 : ℚ), (33498865701/1250000000 : ℚ), (-390130259503/50000000000 : ℚ), 6⟩,
    ⟨(35531035063/125000000000 : ℚ), (3879887183/250000000 : ℚ), (-923062719249/200000000000 : ℚ), 5⟩,
    ⟨(287789568333/1000000000000 : ℚ), (1974647939/200000000 : ℚ), (-3001685816883/1000000000000 : ℚ), 5⟩,
    ⟨(291963195239/1000000000000 : ℚ), (66682638761/10000000000 : ℚ), (-518343705147/250000000000 : ℚ), 5⟩,
    ⟨(148364483457/500000000000 : ℚ), (9374427463/2000000000 : ℚ), (-1490703673849/1000000000000 : ℚ), 4⟩,
    ⟨(302040986371/1000000000000 : ℚ), (16923833277/5000000000 : ℚ), (-1101052988813/1000000000000 : ℚ), 4⟩,
    ⟨(307848095959/1000000000000 : ℚ), (1554636293/625000000 : ℚ), (-165519779583/200000000000 : ℚ), 4⟩,
    ⟨(157047185019/500000000000 : ℚ), (3691927727/2000000000 : ℚ), (-628253378507/1000000000000 : ℚ), 3⟩,
    ⟨(160359826787/500000000000 : ℚ), (6867717869/5000000000 : ℚ), (-23919684313/50000000000 : ℚ), 3⟩,
    ⟨(163830070733/500000000000 : ℚ), (5084535173/5000000000 : ℚ), (-181419849483/500000000000 : ℚ), 3⟩,
    ⟨(16742449651/50000000000 : ℚ), (1484014201/2000000000 : ℚ), (-135911993617/500000000000 : ℚ), 3⟩,
    ⟨(171108487833/500000000000 : ℚ), (2631522169/5000000000 : ℚ), (-99417552219/500000000000 : ℚ), 3⟩,
    ⟨(349693131703/1000000000000 : ℚ), (443046033/1250000000 : ℚ), (-139401219223/1000000000000 : ℚ), 3⟩,
    ⟨(357205461663/1000000000000 : ℚ), (2156724637/10000000000 : ℚ), (-90373096247/1000000000000 : ℚ), 3⟩,
    ⟨(364681617701/1000000000000 : ℚ), (1023550601/10000000000 : ℚ), (-49485156193/1000000000000 : ℚ), 3⟩,
    ⟨(372049600347/1000000000000 : ℚ), (17846757/2000000000 : ℚ), (-1884729237/125000000000 : ℚ), 3⟩,
    ⟨(379238451901/1000000000000 : ℚ), (-687246863/10000000000 : ℚ), (2816627899/200000000000 : ℚ), 2⟩,
    ⟨(24136183737/62500000000 : ℚ), (-1336548429/10000000000 : ℚ), (38927382007/1000000000000 : ℚ), 2⟩,
    ⟨(12275131979/31250000000 : ℚ), (-470459009/2500000000 : ℚ), (15040561537/250000000000 : ℚ), 2⟩,
    ⟨(399050497407/1000000000000 : ℚ), (-58519299/250000000 : ℚ), (9791279097/125000000000 : ℚ), 2⟩,
    ⟨(80971521399/200000000000 : ℚ), (-1363458491/5000000000 : ℚ), (93849747477/1000000000000 : ℚ), 2⟩,
    ⟨(410169626453/1000000000000 : ℚ), (-1525366281/5000000000 : ℚ), (10704451651/100000000000 : ℚ), 2⟩,
    ⟨(414935398127/1000000000000 : ℚ), (-3320306831/10000000000 : ℚ), (59082566233/500000000000 : ℚ), 2⟩,
    ⟨(209554512517/500000000000 : ℚ), (-1770943009/5000000000 : ℚ), (127405030921/1000000000000 : ℚ), 2⟩,
    ⟨(422650312863/1000000000000 : ℚ), (-3720266247/10000000000 : ℚ), (134912443037/1000000000000 : ℚ), 2⟩,
    ⟨(425525157077/1000000000000 : ℚ), (-3859083111/10000000000 : ℚ), (140799372081/1000000000000 : ℚ), 2⟩,
    ⟨(85541174271/200000000000 : ℚ), (-495128077/1250000000 : ℚ), (72574151873/500000000000 : ℚ), 2⟩,
    ⟨(17166858169/40000000000 : ℚ), (-2013992519/5000000000 : ℚ), (148017132193/1000000000000 : ℚ), 2⟩,
    ⟨(17196311653/40000000000 : ℚ), (-507646447/1250000000 : ℚ), (14944262363/100000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1016326571/2500000000 : ℚ), (29924079403/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (152567685899/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control363.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control363.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate363

namespace DiagonalRamsey.JointInheritedCertificate364
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71061560433/250000000000 : ℚ), (7174761018333/5000000000 : ℚ), (-102164984041579/250000000000 : ℚ), 12⟩,
    ⟨(71248946669/250000000000 : ℚ), (78383521639/500000000 : ℚ), (-45164292440959/1000000000000 : ℚ), 9⟩,
    ⟨(71621914509/250000000000 : ℚ), (68637619037/1250000000 : ℚ), (-1608450339257/100000000000 : ℚ), 7⟩,
    ⟨(11548299531/40000000000 : ℚ), (844629343/31250000 : ℚ), (-8072548623191/1000000000000 : ℚ), 6⟩,
    ⟨(145816949607/500000000000 : ℚ), (78276635573/5000000000 : ℚ), (-2387624192679/500000000000 : ℚ), 5⟩,
    ⟨(295238707917/1000000000000 : ℚ), (19923780761/2000000000 : ℚ), (-776486415511/250000000000 : ℚ), 5⟩,
    ⟨(149743599053/500000000000 : ℚ), (67298943793/10000000000 : ℚ), (-107281250129/50000000000 : ℚ), 5⟩,
    ⟨(9510576703/31250000000 : ℚ), (23659878897/5000000000 : ℚ), (-192860334697/125000000000 : ℚ), 4⟩,
    ⟨(154872878419/500000000000 : ℚ), (17091685917/5000000000 : ℚ), (-1139830213189/1000000000000 : ℚ), 4⟩,
    ⟨(157828514927/500000000000 : ℚ), (25132200471/10000000000 : ℚ), (-8569912759/10000000000 : ℚ), 4⟩,
    ⟨(20125959047/62500000000 : ℚ), (149294723/80000000 : ℚ), (-325412246957/500000000000 : ℚ), 3⟩,
    ⟨(65751893497/200000000000 : ℚ), (13896441897/10000000000 : ℚ), (-30991041051/62500000000 : ℚ), 3⟩,
    ⟨(67164889693/200000000000 : ℚ), (10299025299/10000000000 : ℚ), (-188191546601/500000000000 : ℚ), 3⟩,
    ⟨(171571124031/500000000000 : ℚ), (1881556863/2500000000 : ℚ), (-141149308209/500000000000 : ℚ), 3⟩,
    ⟨(175321195933/500000000000 : ℚ), (133767951/250000000 : ℚ), (-51716590103/250000000000 : ℚ), 3⟩,
    ⟨(358252649391/1000000000000 : ℚ), (904384143/2500000000 : ℚ), (-145459423501/1000000000000 : ℚ), 3⟩,
    ⟨(365899729699/1000000000000 : ℚ), (221841507/1000000000 : ℚ), (-47409550441/500000000000 : ℚ), 3⟩,
    ⟨(46688748403/125000000000 : ℚ), (269025229/2500000000 : ℚ), (-26300399313/500000000000 : ℚ), 3⟩,
    ⟨(95252532757/250000000000 : ℚ), (16808847/1250000000 : ℚ), (-854340817/50000000000 : ℚ), 3⟩,
    ⟨(621324689/1600000000 : ℚ), (-647881457/10000000000 : ℚ), (650029941/50000000000 : ℚ), 2⟩,
    ⟨(79078582321/200000000000 : ℚ), (-1301907307/10000000000 : ℚ), (38624050007/1000000000000 : ℚ), 2⟩,
    ⟨(201068517169/500000000000 : ℚ), (-1850999791/10000000000 : ℚ), (60516205773/1000000000000 : ℚ), 2⟩,
    ⟨(102123837309/250000000000 : ℚ), (-1156499647/5000000000 : ℚ), (79239181183/1000000000000 : ℚ), 2⟩,
    ⟨(103601655563/250000000000 : ℚ), (-6754017/25000000 : ℚ), (95226686291/1000000000000 : ℚ), 2⟩,
    ⟨(209906962297/500000000000 : ℚ), (-3027394611/10000000000 : ℚ), (10881444183/100000000000 : ℚ), 2⟩,
    ⟨(53083147623/125000000000 : ℚ), (-659707719/2000000000 : ℚ), (12026245463/100000000000 : ℚ), 2⟩,
    ⟨(107228417793/250000000000 : ℚ), (-1760677121/5000000000 : ℚ), (64885766353/500000000000 : ℚ), 2⟩,
    ⟨(108129619969/250000000000 : ℚ), (-925172981/2500000000 : ℚ), (8593477441/62500000000 : ℚ), 2⟩,
    ⟨(87088978163/200000000000 : ℚ), (-384022907/1000000000 : ℚ), (143551168301/1000000000000 : ℚ), 2⟩,
    ⟨(218832360527/500000000000 : ℚ), (-3942685069/10000000000 : ℚ), (9251492603/62500000000 : ℚ), 2⟩,
    ⟨(219578296207/500000000000 : ℚ), (-2004988283/5000000000 : ℚ), (75486998647/500000000000 : ℚ), 2⟩,
    ⟨(219953068679/500000000000 : ℚ), (-505415641/1250000000 : ℚ), (19054971159/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2023739963/5000000000 : ℚ), (30524512179/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (4682196007/15625000000 : ℚ)
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
theorem certOK : JointInheritedControls.control364.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control364.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate364

namespace DiagonalRamsey.JointInheritedCertificate365
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291593802319/1000000000000 : ℚ), (23158855513/16000000 : ℚ), (-26428880192193/62500000000 : ℚ), 12⟩,
    ⟨(146178055893/500000000000 : ℚ), (790731747263/5000000000 : ℚ), (-46734531355149/1000000000000 : ℚ), 9⟩,
    ⟨(18367086829/62500000000 : ℚ), (277008523501/5000000000 : ℚ), (-416104943959/25000000000 : ℚ), 7⟩,
    ⟨(296131022541/1000000000000 : ℚ), (68188138301/2500000000 : ℚ), (-522114887393/62500000000 : ℚ), 6⟩,
    ⟨(149553634687/500000000000 : ℚ), (158019132131/10000000000 : ℚ), (-617747487513/125000000000 : ℚ), 5⟩,
    ⟨(236541771/781250000 : ℚ), (100576760113/10000000000 : ℚ), (-3214700657409/1000000000000 : ℚ), 5⟩,
    ⟨(307094307571/1000000000000 : ℚ), (1359310173/200000000 : ℚ), (-444209596871/200000000000 : ℚ), 5⟩,
    ⟨(4875440303/15625000000 : ℚ), (47804440581/10000000000 : ℚ), (-1597406267651/1000000000000 : ℚ), 4⟩,
    ⟨(317527566457/1000000000000 : ℚ), (34547353239/10000000000 : ℚ), (-590199993561/500000000000 : ℚ), 4⟩,
    ⟨(64707901333/200000000000 : ℚ), (25412368851/10000000000 : ℚ), (-221947654023/250000000000 : ℚ), 4⟩,
    ⟨(20625381359/62500000000 : ℚ), (9440880557/5000000000 : ℚ), (-674523305007/1000000000000 : ℚ), 3⟩,
    ⟨(336865074849/1000000000000 : ℚ), (7035936417/5000000000 : ℚ), (-32139948997/62500000000 : ℚ), 3⟩,
    ⟨(172025185159/500000000000 : ℚ), (5220449439/5000000000 : ℚ), (-390687316157/1000000000000 : ℚ), 3⟩,
    ⟨(35149278983/100000000000 : ℚ), (1528472101/2000000000 : ℚ), (-58682152721/200000000000 : ℚ), 3⟩,
    ⟨(71824131763/200000000000 : ℚ), (5446840741/10000000000 : ℚ), (-215437889547/1000000000000 : ℚ), 3⟩,
    ⟨(14674420669/40000000000 : ℚ), (3697937451/10000000000 : ℚ), (-151980276209/1000000000000 : ℚ), 3⟩,
    ⟨(374637824499/1000000000000 : ℚ), (2286359741/10000000000 : ℚ), (-99665185837/1000000000000 : ℚ), 3⟩,
    ⟨(382377682409/1000000000000 : ℚ), (283528073/2500000000 : ℚ), (-28032851103/500000000000 : ℚ), 3⟩,
    ⟨(195002775697/500000000000 : ℚ), (92260841/5000000000 : ℚ), (-9701770747/500000000000 : ℚ), 2⟩,
    ⟨(198723985453/500000000000 : ℚ), (-120846533/2000000000 : ℚ), (5822188993/500000000000 : ℚ), 2⟩,
    ⟨(3237066131/8000000000 : ℚ), (-1263419169/10000000000 : ℚ), (19037529069/500000000000 : ℚ), 2⟩,
    ⟨(10287305987/25000000000 : ℚ), (-181667611/1000000000 : ℚ), (60647581939/1000000000000 : ℚ), 2⟩,
    ⟨(417958834559/1000000000000 : ℚ), (-2282035569/10000000000 : ℚ), (39972271521/500000000000 : ℚ), 2⟩,
    ⟨(423970774767/1000000000000 : ℚ), (-1336674721/5000000000 : ℚ), (48207820883/500000000000 : ℚ), 2⟩,
    ⟨(53683770229/125000000000 : ℚ), (-960419/3200000 : ℚ), (110409141993/1000000000000 : ℚ), 2⟩,
    ⟨(434404033653/1000000000000 : ℚ), (-3274185741/10000000000 : ℚ), (7637181571/62500000000 : ℚ), 2⟩,
    ⟨(54840609293/125000000000 : ℚ), (-437296083/1250000000 : ℚ), (32995365983/250000000000 : ℚ), 2⟩,
    ⟨(8847821437/20000000000 : ℚ), (-919691753/2500000000 : ℚ), (69964397021/500000000000 : ℚ), 2⟩,
    ⟨(445367318683/1000000000000 : ℚ), (-954775839/2500000000 : ℚ), (73078950789/500000000000 : ℚ), 2⟩,
    ⟨(11190623799/25000000000 : ℚ), (-1961065483/5000000000 : ℚ), (150757990583/1000000000000 : ℚ), 2⟩,
    ⟨(224571114719/500000000000 : ℚ), (-79795813/200000000 : ℚ), (30758344811/200000000000 : ℚ), 2⟩,
    ⟨(89980907781/200000000000 : ℚ), (-1005829877/2500000000 : ℚ), (38824730667/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-4027496667/10000000000 : ℚ), (155486874913/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (1176579339/4000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control365.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control365.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate365

namespace DiagonalRamsey.JointInheritedCertificate366
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(59792699149/200000000000 : ℚ), (14598031433859/10000000000 : ℚ), (-218624770949949/500000000000 : ℚ), 12⟩,
    ⟨(11989538529/40000000000 : ℚ), (1595143082787/10000000000 : ℚ), (-24162598007717/500000000000 : ℚ), 9⟩,
    ⟨(37660116853/125000000000 : ℚ), (558891874221/10000000000 : ℚ), (-268923875167/15625000000 : ℚ), 7⟩,
    ⟨(303576055697/1000000000000 : ℚ), (137601169011/5000000000 : ℚ), (-8638730514457/1000000000000 : ℚ), 6⟩,
    ⟨(306601722577/1000000000000 : ℚ), (79735897101/5000000000 : ℚ), (-5110819922521/1000000000000 : ℚ), 5⟩,
    ⟨(77582199159/250000000000 : ℚ), (101525553193/10000000000 : ℚ), (-664961745999/200000000000 : ℚ), 5⟩,
    ⟨(62944276823/200000000000 : ℚ), (8578173029/1250000000 : ℚ), (-2297390538439/1000000000000 : ℚ), 5⟩,
    ⟨(159868590997/500000000000 : ℚ), (24141959653/5000000000 : ℚ), (-66103137769/40000000000 : ℚ), 4⟩,
    ⟨(162663942699/500000000000 : ℚ), (4363389927/1250000000 : ℚ), (-152679780871/125000000000 : ℚ), 4⟩,
    ⟨(331439652797/1000000000000 : ℚ), (6422253043/2500000000 : ℚ), (-918933160109/1000000000000 : ℚ), 4⟩,
    ⟨(33801362453/100000000000 : ℚ), (9549328369/5000000000 : ℚ), (-139695017239/200000000000 : ℚ), 3⟩,
    ⟨(43123311207/125000000000 : ℚ), (178058149/125000000 : ℚ), (-532807918339/1000000000000 : ℚ), 3⟩,
    ⟨(44036386959/125000000000 : ℚ), (10580406439/10000000000 : ℚ), (-405127304993/1000000000000 : ℚ), 3⟩,
    ⟨(89964273807/250000000000 : ℚ), (3878175621/5000000000 : ℚ), (-304619944117/1000000000000 : ℚ), 3⟩,
    ⟨(367611623613/1000000000000 : ℚ), (221639983/400000000 : ℚ), (-224076340027/1000000000000 : ℚ), 3⟩,
    ⟨(375480000479/1000000000000 : ℚ), (1888259623/5000000000 : ℚ), (-158544424511/1000000000000 : ℚ), 3⟩,
    ⟨(383386449057/1000000000000 : ℚ), (117630229/500000000 : ℚ), (-20907181981/200000000000 : ℚ), 3⟩,
    ⟨(391254825923/1000000000000 : ℚ), (1190523371/10000000000 : ℚ), (-372127827/6250000000 : ℚ), 3⟩,
    ⟨(99752338577/250000000000 : ℚ), (233056327/10000000000 : ℚ), (-21718361343/1000000000000 : ℚ), 2⟩,
    ⟨(50821919233/125000000000 : ℚ), (-140507129/2500000000 : ℚ), (2059879963/200000000000 : ℚ), 2⟩,
    ⟨(10346998997/25000000000 : ℚ), (-613157099/5000000000 : ℚ), (4693089493/125000000000 : ℚ), 2⟩,
    ⟨(210426412503/500000000000 : ℚ), (-1783682583/10000000000 : ℚ), (7600433181/125000000000 : ℚ), 2⟩,
    ⟨(427426796739/1000000000000 : ℚ), (-563089049/2500000000 : ℚ), (80679023287/1000000000000 : ℚ), 2⟩,
    ⟨(216769282069/500000000000 : ℚ), (-1323168459/5000000000 : ℚ), (48818661829/500000000000 : ℚ), 2⟩,
    ⟨(219564633771/500000000000 : ℚ), (-372054381/1250000000 : ℚ), (112039370483/1000000000000 : ℚ), 2⟩,
    ⟨(444145065421/1000000000000 : ℚ), (-101594217/312500000 : ℚ), (124165038849/1000000000000 : ℚ), 2⟩,
    ⟨(4485376529/10000000000 : ℚ), (-434567623/1250000000 : ℚ), (134230715413/1000000000000 : ℚ), 2⟩,
    ⟨(452264726959/1000000000000 : ℚ), (-1828990119/5000000000 : ℚ), (71201245501/500000000000 : ℚ), 2⟩,
    ⟨(455290393839/1000000000000 : ℚ), (-3799100203/10000000000 : ℚ), (29761212809/200000000000 : ℚ), 2⟩,
    ⟨(57198189339/125000000000 : ℚ), (-3902687871/10000000000 : ℚ), (15353414297/100000000000 : ℚ), 2⟩,
    ⟨(459127986311/1000000000000 : ℚ), (-39707081/100000000 : ℚ), (78325939953/500000000000 : ℚ), 2⟩,
    ⟨(459902953791/1000000000000 : ℚ), (-4004413451/10000000000 : ℚ), (79100345469/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-801722499/2000000000 : ℚ), (158393826571/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (288625974457/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control366.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control366.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate366

namespace DiagonalRamsey.JointInheritedCertificate367
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(153176433867/500000000000 : ℚ), (3680130331361/2500000000 : ℚ), (-451809880575303/1000000000000 : ℚ), 12⟩,
    ⟨(12285615941/40000000000 : ℚ), (201085305883/1250000000 : ℚ), (-4993489967293/100000000000 : ℚ), 9⟩,
    ⟨(77176968939/250000000000 : ℚ), (11274315793/200000000 : ℚ), (-17784790216887/1000000000000 : ℚ), 7⟩,
    ⟨(77760050941/250000000000 : ℚ), (277625812697/10000000000 : ℚ), (-557935304717/62500000000 : ℚ), 6⟩,
    ⟨(62822984191/200000000000 : ℚ), (8045413263/500000000 : ℚ), (-33010049197/6250000000 : ℚ), 5⟩,
    ⟨(158951208061/500000000000 : ℚ), (102463272367/10000000000 : ℚ), (-687231997197/200000000000 : ℚ), 5⟩,
    ⟨(64473242723/200000000000 : ℚ), (34638562069/5000000000 : ℚ), (-2374571936999/1000000000000 : ℚ), 5⟩,
    ⟨(163731662313/500000000000 : ℚ), (48757101309/10000000000 : ℚ), (-1708336788557/1000000000000 : ℚ), 4⟩,
    ⟨(83286165297/250000000000 : ℚ), (282094511/80000000 : ℚ), (-12628948213/10000000000 : ℚ), 4⟩,
    ⟨(13574220357/40000000000 : ℚ), (6490359819/2500000000 : ℚ), (-237594333453/250000000000 : ℚ), 4⟩,
    ⟨(346036053977/1000000000000 : ℚ), (3862391243/2000000000 : ℚ), (-90330566557/125000000000 : ℚ), 3⟩,
    ⟨(88280489761/250000000000 : ℚ), (3603574511/2500000000 : ℚ), (-275766134751/500000000000 : ℚ), 3⟩,
    ⟨(360544982987/1000000000000 : ℚ), (2679283959/2500000000 : ℚ), (-104919026403/250000000000 : ℚ), 3⟩,
    ⟨(92058409507/250000000000 : ℚ), (1966960371/2500000000 : ℚ), (-63180413799/200000000000 : ℚ), 3⟩,
    ⟨(188056939107/500000000000 : ℚ), (2816439657/5000000000 : ℚ), (-232759921429/1000000000000 : ℚ), 3⟩,
    ⟨(15364392501/40000000000 : ℚ), (3853001399/10000000000 : ℚ), (-41282987567/250000000000 : ℚ), 3⟩,
    ⟨(12254513617/31250000000 : ℚ), (302112169/1250000000 : ℚ), (-1709576563/15625000000 : ℚ), 3⟩,
    ⟨(80028074011/200000000000 : ℚ), (311276323/2500000000 : ℚ), (-63007965271/1000000000000 : ℚ), 3⟩,
    ⟨(204010305121/500000000000 : ℚ), (55973059/2000000000 : ℚ), (-960611101/40000000000 : ℚ), 2⟩,
    ⟨(207854632641/500000000000 : ℚ), (-521462141/10000000000 : ℚ), (8980742343/1000000000000 : ℚ), 2⟩,
    ⟨(16925291569/40000000000 : ℚ), (-1190771823/10000000000 : ℚ), (7409463447/200000000000 : ℚ), 2⟩,
    ⟨(107554548573/250000000000 : ℚ), (-175218707/1000000000 : ℚ), (243989917/4000000000 : ℚ), 2⟩,
    ⟨(27306171209/62500000000 : ℚ), (-1112059631/5000000000 : ℚ), (16291134181/200000000000 : ℚ), 2⟩,
    ⟨(443109587081/1000000000000 : ℚ), (-262071907/1000000000 : ℚ), (98904290717/1000000000000 : ℚ), 2⟩,
    ⟨(448790923643/1000000000000 : ℚ), (-2952914547/10000000000 : ℚ), (22743453897/200000000000 : ℚ), 2⟩,
    ⟨(226944017327/500000000000 : ℚ), (-807290839/2500000000 : ℚ), (126184647497/1000000000000 : ℚ), 2⟩,
    ⟨(458351832147/1000000000000 : ℚ), (-864000903/2500000000 : ℚ), (136530787719/1000000000000 : ℚ), 2⟩,
    ⟨(231069663657/500000000000 : ℚ), (-3638460197/10000000000 : ℚ), (4528999821/31250000000 : ℚ), 2⟩,
    ⟨(93042808901/200000000000 : ℚ), (-3780345241/10000000000 : ℚ), (75753367587/500000000000 : ℚ), 2⟩,
    ⟨(467546372513/1000000000000 : ℚ), (-1942239619/5000000000 : ℚ), (156363281819/1000000000000 : ℚ), 2⟩,
    ⟨(29319615609/62500000000 : ℚ), (-3860206/9765625 : ℚ), (159565318131/1000000000000 : ℚ), 2⟩,
    ⟨(93980276107/200000000000 : ℚ), (-996682069/2500000000 : ℚ), (161155882573/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-997737161/2500000000 : ℚ), (161354219071/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (283105876773/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control367.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control367.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate367

namespace DiagonalRamsey.JointInheritedCertificate368
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(220589598931/1000000000000 : ℚ), (6700200265309/5000000000 : ℚ), (-148100576083237/500000000000 : ℚ), 12⟩,
    ⟨(110606184927/500000000000 : ℚ), (2856960741/19531250 : ℚ), (-8183122950561/250000000000 : ℚ), 9⟩,
    ⟨(8898076563/40000000000 : ℚ), (63965820593/1250000000 : ℚ), (-11654817217163/1000000000000 : ℚ), 7⟩,
    ⟨(112148147053/500000000000 : ℚ), (251506469059/10000000000 : ℚ), (-2923735451573/500000000000 : ℚ), 6⟩,
    ⟨(226727747559/1000000000000 : ℚ), (145425483261/10000000000 : ℚ), (-1728677355159/500000000000 : ℚ), 5⟩,
    ⟨(229722858209/1000000000000 : ℚ), (23088707333/2500000000 : ℚ), (-2247200990837/1000000000000 : ℚ), 5⟩,
    ⟨(233252781501/1000000000000 : ℚ), (62249766513/10000000000 : ℚ), (-31017811303/20000000000 : ℚ), 5⟩,
    ⟨(118641761173/500000000000 : ℚ), (43653012757/10000000000 : ℚ), (-111372043/100000000 : ℚ), 4⟩,
    ⟨(48355252501/200000000000 : ℚ), (7858381417/2500000000 : ℚ), (-821251510103/1000000000000 : ℚ), 4⟩,
    ⟨(61671933609/250000000000 : ℚ), (2877319051/1250000000 : ℚ), (-615879750747/1000000000000 : ℚ), 4⟩,
    ⟨(251970637977/1000000000000 : ℚ), (265704233/156250000 : ℚ), (-466047875351/1000000000000 : ℚ), 3⟩,
    ⟨(257574095881/1000000000000 : ℚ), (12576652141/10000000000 : ℚ), (-353295206769/1000000000000 : ℚ), 3⟩,
    ⟨(32930517973/125000000000 : ℚ), (4616524011/5000000000 : ℚ), (-266241950451/1000000000000 : ℚ), 3⟩,
    ⟨(67381062479/250000000000 : ℚ), (6654617449/10000000000 : ℚ), (-98783690517/500000000000 : ℚ), 3⟩,
    ⟨(68938964883/250000000000 : ℚ), (2314960923/5000000000 : ℚ), (-71196318339/500000000000 : ℚ), 3⟩,
    ⟨(35259869853/125000000000 : ℚ), (1507491449/5000000000 : ℚ), (-97368611077/1000000000000 : ℚ), 3⟩,
    ⟨(28843265289/100000000000 : ℚ), (854663377/5000000000 : ℚ), (-15034566691/250000000000 : ℚ), 3⟩,
    ⟨(147377876091/500000000000 : ℚ), (160340167/2500000000 : ℚ), (-14503726497/500000000000 : ℚ), 3⟩,
    ⟨(300987361797/1000000000000 : ℚ), (-240846549/10000000000 : ℚ), (-273666157/100000000000 : ℚ), 3⟩,
    ⟨(30706746793/100000000000 : ℚ), (-39021711/400000000 : ℚ), (9797274779/500000000000 : ℚ), 2⟩,
    ⟨(312937515833/1000000000000 : ℚ), (-1591265673/10000000000 : ℚ), (38678096203/1000000000000 : ℚ), 2⟩,
    ⟨(39817621717/125000000000 : ℚ), (-1054770569/5000000000 : ℚ), (55039225191/1000000000000 : ℚ), 2⟩,
    ⟨(161911938639/500000000000 : ℚ), (-1273375769/5000000000 : ℚ), (690796507/10000000000 : ℚ), 2⟩,
    ⟨(41091918651/125000000000 : ℚ), (-2915451339/10000000000 : ℚ), (81108201177/1000000000000 : ℚ), 2⟩,
    ⟨(333228089367/1000000000000 : ℚ), (-322530747/1000000000 : ℚ), (45681480387/500000000000 : ℚ), 2⟩,
    ⟨(84314707553/250000000000 : ℚ), (-3483780073/10000000000 : ℚ), (100027503759/1000000000000 : ℚ), 2⟩,
    ⟨(68157750701/200000000000 : ℚ), (-739324077/2000000000 : ℚ), (268107363/2500000000 : ℚ), 2⟩,
    ⟨(171891932077/500000000000 : ℚ), (-1934118711/5000000000 : ℚ), (28279241253/250000000000 : ℚ), 2⟩,
    ⟨(346215317607/1000000000000 : ℚ), (-1563269/3906250 : ℚ), (117730588833/1000000000000 : ℚ), 2⟩,
    ⟨(348059697639/1000000000000 : ℚ), (-4100278697/10000000000 : ℚ), (121143259359/1000000000000 : ℚ), 2⟩,
    ⟨(17464962093/50000000000 : ℚ), (-1041225711/2500000000 : ℚ), (61698279461/500000000000 : ℚ), 2⟩,
    ⟨(349922012783/1000000000000 : ℚ), (-419694619/1000000000 : ℚ), (62258413453/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-1050234789/2500000000 : ℚ), (62328282557/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (87073241599/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control368.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control368.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate368

namespace DiagonalRamsey.JointInheritedCertificate369
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30174749937/125000000000 : ℚ), (13692779601971/10000000000 : ℚ), (-331201128811807/1000000000000 : ℚ), 12⟩,
    ⟨(242065003809/1000000000000 : ℚ), (1495078371477/10000000000 : ℚ), (-9150334204561/250000000000 : ℚ), 9⟩,
    ⟨(243392588821/1000000000000 : ℚ), (523237485689/10000000000 : ℚ), (-13033180726969/1000000000000 : ℚ), 7⟩,
    ⟨(6134199229/25000000000 : ℚ), (257287832263/10000000000 : ℚ), (-817461610331/125000000000 : ℚ), 6⟩,
    ⟨(61993030209/250000000000 : ℚ), (37212810069/2500000000 : ℚ), (-3867226739917/1000000000000 : ℚ), 5⟩,
    ⟨(251179964443/1000000000000 : ℚ), (47295253961/5000000000 : ℚ), (-2514161495379/1000000000000 : ℚ), 5⟩,
    ⟨(254960606693/1000000000000 : ℚ), (2552132603/400000000 : ℚ), (-173566977537/100000000000 : ℚ), 5⟩,
    ⟨(259277637937/1000000000000 : ℚ), (44780894231/10000000000 : ℚ), (-623476360891/500000000000 : ℚ), 4⟩,
    ⟨(264089482801/1000000000000 : ℚ), (16139581713/5000000000 : ℚ), (-46002434609/50000000000 : ℚ), 4⟩,
    ⟨(269349800591/1000000000000 : ℚ), (23668426769/10000000000 : ℚ), (-690546474439/1000000000000 : ℚ), 4⟩,
    ⟨(27500793157/100000000000 : ℚ), (17514426931/10000000000 : ℚ), (-523159131027/1000000000000 : ℚ), 3⟩,
    ⟨(70252346211/250000000000 : ℚ), (12982426101/10000000000 : ℚ), (-198621817567/500000000000 : ℚ), 3⟩,
    ⟨(143648181569/500000000000 : ℚ), (9560857257/10000000000 : ℚ), (-300074340731/1000000000000 : ℚ), 3⟩,
    ⟨(73452079853/250000000000 : ℚ), (865346059/1250000000 : ℚ), (-111732058547/500000000000 : ℚ), 3⟩,
    ⟨(300482539969/1000000000000 : ℚ), (4851822987/10000000000 : ℚ), (-20244507861/125000000000 : ℚ), 3⟩,
    ⟨(1200213861/3906250000 : ℚ), (640131441/2000000000 : ℚ), (-111803635067/1000000000000 : ℚ), 3⟩,
    ⟨(78514931171/250000000000 : ℚ), (1866394573/10000000000 : ℚ), (-70369445731/1000000000000 : ℚ), 3⟩,
    ⟨(320831933131/1000000000000 : ℚ), (387848789/5000000000 : ℚ), (-8939301119/250000000000 : ℚ), 3⟩,
    ⟨(40938269211/125000000000 : ℚ), (-124657167/10000000000 : ℚ), (-6578892103/1000000000000 : ℚ), 3⟩,
    ⟨(334018109963/1000000000000 : ℚ), (-873890831/10000000000 : ℚ), (454920153/25000000000 : ℚ), 2⟩,
    ⟨(1329316751/3906250000 : ℚ), (-1501284719/10000000000 : ℚ), (39345707997/1000000000000 : ℚ), 2⟩,
    ⟨(34630654153/100000000000 : ℚ), (-50723491/250000000 : ℚ), (11491453163/200000000000 : ℚ), 2⟩,
    ⟨(351964672509/1000000000000 : ℚ), (-618421653/2500000000 : ℚ), (14596553019/200000000000 : ℚ), 2⟩,
    ⟨(357224990299/1000000000000 : ℚ), (-712108153/2500000000 : ℚ), (10783694669/125000000000 : ℚ), 2⟩,
    ⟨(90509208791/250000000000 : ℚ), (-197695167/625000000 : ℚ), (19517156649/200000000000 : ℚ), 2⟩,
    ⟨(366353866407/1000000000000 : ℚ), (-428179569/1250000000 : ℚ), (107138493641/1000000000000 : ℚ), 2⟩,
    ⟨(185067254329/500000000000 : ℚ), (-3641298441/10000000000 : ℚ), (57543548119/500000000000 : ℚ), 2⟩,
    ⟨(46667794033/125000000000 : ℚ), (-763050497/2000000000 : ℚ), (121553420907/1000000000000 : ℚ), 2⟩,
    ⟨(18797325197/50000000000 : ℚ), (-3950740123/10000000000 : ℚ), (126629282491/1000000000000 : ℚ), 2⟩,
    ⟨(377921884279/1000000000000 : ℚ), (-506287981/1250000000 : ℚ), (2037220867/15625000000 : ℚ), 2⟩,
    ⟨(379249469291/1000000000000 : ℚ), (-823146859/2000000000 : ℚ), (132859225559/1000000000000 : ℚ), 2⟩,
    ⟨(75983294721/200000000000 : ℚ), (-4148172111/10000000000 : ℚ), (134090508241/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4152213983/10000000000 : ℚ), (134244082471/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (33224886841/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control369.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control369.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate369

namespace DiagonalRamsey.JointInheritedCertificate370
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134912390947/500000000000 : ℚ), (706345507907/500000000 : ℚ), (-2386992608863/6250000000 : ℚ), 12⟩,
    ⟨(27054748083/100000000000 : ℚ), (1543065921901/10000000000 : ℚ), (-42208149338251/1000000000000 : ℚ), 9⟩,
    ⟨(67996479679/250000000000 : ℚ), (135083969791/2500000000 : ℚ), (-300622883333/20000000000 : ℚ), 7⟩,
    ⟨(27412624261/100000000000 : ℚ), (3323485029/125000000 : ℚ), (-471462995681/62500000000 : ℚ), 6⟩,
    ⟨(276947840021/1000000000000 : ℚ), (38486089359/2500000000 : ℚ), (-1115453883833/250000000000 : ℚ), 5⟩,
    ⟨(11216941497/40000000000 : ℚ), (97916290517/10000000000 : ℚ), (-725420637759/250000000000 : ℚ), 5⟩,
    ⟨(56903972391/200000000000 : ℚ), (66115918017/10000000000 : ℚ), (-1002064328687/500000000000 : ℚ), 5⟩,
    ⟨(289197363767/1000000000000 : ℚ), (11615268993/2500000000 : ℚ), (-360186053537/250000000000 : ℚ), 4⟩,
    ⟨(147205497981/500000000000 : ℚ), (209624063/62500000 : ℚ), (-531986226123/500000000000 : ℚ), 4⟩,
    ⟨(300110548411/1000000000000 : ℚ), (3079750501/1250000000 : ℚ), (-799538029739/1000000000000 : ℚ), 4⟩,
    ⟨(76560282827/250000000000 : ℚ), (18274910493/10000000000 : ℚ), (-60674931563/100000000000 : ℚ), 3⟩,
    ⟨(31274370379/100000000000 : ℚ), (13588654483/10000000000 : ℚ), (-461800693223/1000000000000 : ℚ), 3⟩,
    ⟨(9986113829/31250000000 : ℚ), (125635869/125000000 : ℚ), (-175008008863/500000000000 : ℚ), 3⟩,
    ⟨(81652836207/250000000000 : ℚ), (7323754727/10000000000 : ℚ), (-16372022523/62500000000 : ℚ), 3⟩,
    ⟨(333842860421/1000000000000 : ℚ), (5183705833/10000000000 : ℚ), (-95657417409/500000000000 : ℚ), 3⟩,
    ⟨(170590272929/500000000000 : ℚ), (217396077/625000000 : ℚ), (-66890286661/500000000000 : ℚ), 3⟩,
    ⟨(348553735217/1000000000000 : ℚ), (2101208437/10000000000 : ℚ), (-345221943/4000000000 : ℚ), 3⟩,
    ⟨(355891420653/1000000000000 : ℚ), (244098519/2500000000 : ℚ), (-5837484109/125000000000 : ℚ), 3⟩,
    ⟨(181561468123/500000000000 : ℚ), (48754109/10000000000 : ℚ), (-13359984749/1000000000000 : ℚ), 3⟩,
    ⟨(370178638547/1000000000000 : ℚ), (-90297063/1250000000 : ℚ), (116458689/7812500000 : ℚ), 2⟩,
    ⟨(75398115457/200000000000 : ℚ), (-1367382589/10000000000 : ℚ), (19499095727/500000000000 : ℚ), 2⟩,
    ⟨(191746574883/500000000000 : ℚ), (-1909218521/10000000000 : ℚ), (59597531099/1000000000000 : ℚ), 2⟩,
    ⟨(48702966583/125000000000 : ℚ), (-236538187/1000000000 : ℚ), (15445687409/200000000000 : ℚ), 2⟩,
    ⟨(395323285113/1000000000000 : ℚ), (-1374651893/5000000000 : ℚ), (46147330717/500000000000 : ℚ), 2⟩,
    ⟨(400536917307/1000000000000 : ℚ), (-383917909/1250000000 : ℚ), (105108456549/1000000000000 : ℚ), 2⟩,
    ⟨(405214419119/1000000000000 : ℚ), (-3339507391/10000000000 : ℚ), (57955709101/500000000000 : ℚ), 2⟩,
    ⟨(8186214873/20000000000 : ℚ), (-355997841/1000000000 : ℚ), (7805621507/62500000000 : ℚ), 2⟩,
    ⟨(412786441053/1000000000000 : ℚ), (-934375597/2500000000 : ℚ), (132186799903/1000000000000 : ℚ), 2⟩,
    ⟨(83121607693/200000000000 : ℚ), (-775135267/2000000000 : ℚ), (137909806141/1000000000000 : ℚ), 2⟩,
    ⟨(208874181179/500000000000 : ℚ), (-994289833/2500000000 : ℚ), (142138331669/1000000000000 : ℚ), 2⟩,
    ⟨(104796700061/250000000000 : ℚ), (-126369533/312500000 : ℚ), (72464030781/500000000000 : ℚ), 2⟩,
    ⟨(20995474959/50000000000 : ℚ), (-4076867479/10000000000 : ℚ), (146314348539/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2040492161/5000000000 : ℚ), (29297447459/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (310570225433/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control370.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control370.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate370

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
theorem certOK : JointInheritedControls.control407.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control407.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate407

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
theorem certOK : JointInheritedControls.control408.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control408.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate408

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
theorem certOK : JointInheritedControls.control409.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control409.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate409

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
theorem certOK : JointInheritedControls.control410.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control410.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate410

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
theorem certOK : JointInheritedControls.control411.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control411.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate411

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
theorem certOK : JointInheritedControls.control412.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control412.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate412

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
theorem certOK : JointInheritedControls.control413.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control413.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate413

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
theorem certOK : JointInheritedControls.control453.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control453.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate453

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
theorem certOK : JointInheritedControls.control454.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control454.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate454

namespace DiagonalRamsey.JointInheritedCertificate455
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(77549430237/250000000000 : ℚ), (451928012549/312500000 : ℚ), (-44940760035937/100000000000 : ℚ), 12⟩,
    ⟨(155483374439/500000000000 : ℚ), (1580923938133/10000000000 : ℚ), (-24833334236289/500000000000 : ℚ), 9⟩,
    ⟨(156248699289/500000000000 : ℚ), (27711691091/500000000 : ℚ), (-17687285782001/1000000000000 : ℚ), 7⟩,
    ⟨(157387464527/500000000000 : ℚ), (68271227993/2500000000 : ℚ), (-8876501182423/1000000000000 : ℚ), 6⟩,
    ⟨(79444351611/250000000000 : ℚ), (79174156999/5000000000 : ℚ), (-5250507657143/1000000000000 : ℚ), 6⟩,
    ⟨(321475915249/1000000000000 : ℚ), (1576149983/156250000 : ℚ), (-682973644309/200000000000 : ℚ), 5⟩,
    ⟨(325834836807/1000000000000 : ℚ), (68224046943/10000000000 : ℚ), (-589732453527/250000000000 : ℚ), 5⟩,
    ⟨(1033788101/3125000000 : ℚ), (48025927151/10000000000 : ℚ), (-169624927757/100000000000 : ℚ), 4⟩,
    ⟨(67272009427/200000000000 : ℚ), (17367673847/5000000000 : ℚ), (-1253194449979/1000000000000 : ℚ), 4⟩,
    ⟨(342424972377/1000000000000 : ℚ), (25571021593/10000000000 : ℚ), (-471181836339/500000000000 : ℚ), 4⟩,
    ⟨(348948559499/1000000000000 : ℚ), (19015163471/10000000000 : ℚ), (-715873019679/1000000000000 : ℚ), 4⟩,
    ⟨(355867982793/1000000000000 : ℚ), (14183810079/10000000000 : ℚ), (-54570790863/100000000000 : ℚ), 3⟩,
    ⟨(90779151107/250000000000 : ℚ), (2633691653/2500000000 : ℚ), (-41459588433/100000000000 : ℚ), 3⟩,
    ⟨(370624616217/1000000000000 : ℚ), (3860575201/5000000000 : ℚ), (-6228437301/20000000000 : ℚ), 3⟩,
    ⟨(378319711901/1000000000000 : ℚ), (5513156211/10000000000 : ℚ), (-228774531111/1000000000000 : ℚ), 3⟩,
    ⟨(386127783503/1000000000000 : ℚ), (1877010923/5000000000 : ℚ), (-80781269019/500000000000 : ℚ), 3⟩,
    ⟨(24623352189/62500000000 : ℚ), (2334129173/10000000000 : ℚ), (-53099421401/500000000000 : ℚ), 3⟩,
    ⟨(3214253653/8000000000 : ℚ), (23503787/200000000 : ℚ), (-15025351609/250000000000 : ℚ), 3⟩,
    ⟨(40947680231/100000000000 : ℚ), (110134147/5000000000 : ℚ), (-21377410599/1000000000000 : ℚ), 3⟩,
    ⟨(208492407049/500000000000 : ℚ), (-572684043/10000000000 : ℚ), (5691125421/500000000000 : ℚ), 3⟩,
    ⟨(212116717867/500000000000 : ℚ), (-247027279/2000000000 : ℚ), (313921079/8000000000 : ℚ), 2⟩,
    ⟨(431152859027/1000000000000 : ℚ), (-89545019/500000000 : ℚ), (63005882997/1000000000000 : ℚ), 2⟩,
    ⟨(8753528923/20000000000 : ℚ), (-2258156651/10000000000 : ℚ), (83301449597/1000000000000 : ℚ), 2⟩,
    ⟨(443741371391/1000000000000 : ℚ), (-2650883103/10000000000 : ℚ), (10060738403/100000000000 : ℚ), 2⟩,
    ⟨(224644613103/500000000000 : ℚ), (-2979876969/10000000000 : ℚ), (57648110331/500000000000 : ℚ), 2⟩,
    ⟨(11356664543/25000000000 : ℚ), (-325349589/1000000000 : ℚ), (25531385157/200000000000 : ℚ), 2⟩,
    ⟨(458625503277/1000000000000 : ℚ), (-869550243/2500000000 : ℚ), (68956510691/500000000000 : ℚ), 2⟩,
    ⟨(231162006041/500000000000 : ℚ), (-731791539/2000000000 : ℚ), (146236144637/1000000000000 : ℚ), 2⟩,
    ⟨(3635363199/7812500000 : ℚ), (-1899766339/5000000000 : ℚ), (76378117113/500000000000 : ℚ), 2⟩,
    ⟨(467604019949/1000000000000 : ℚ), (-3902712281/10000000000 : ℚ), (78784574673/500000000000 : ℚ), 2⟩,
    ⟨(29320916853/62500000000 : ℚ), (-1985230413/5000000000 : ℚ), (160742267501/1000000000000 : ℚ), 2⟩,
    ⟨(234951848789/500000000000 : ℚ), (-4004030453/10000000000 : ℚ), (40579605977/250000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-4008212537/10000000000 : ℚ), (40628740421/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (60136331791/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control455.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control455.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate455

namespace DiagonalRamsey.JointInheritedCertificate456
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(317715586999/1000000000000 : ℚ), (3646484696493/2500000000 : ℚ), (-116061797811691/250000000000 : ℚ), 12⟩,
    ⟨(318496559879/1000000000000 : ℚ), (199332322981/1250000000 : ℚ), (-25653621540143/500000000000 : ℚ), 9⟩,
    ⟨(320050984443/1000000000000 : ℚ), (279564210039/5000000000 : ℚ), (-2283993624521/125000000000 : ℚ), 7⟩,
    ⟨(161181945367/500000000000 : ℚ), (68886179027/2500000000 : ℚ), (-917026296207/100000000000 : ℚ), 6⟩,
    ⟨(325413004199/1000000000000 : ℚ), (159806950821/10000000000 : ℚ), (-2712285717783/500000000000 : ℚ), 6⟩,
    ⟨(329168960209/1000000000000 : ℚ), (5091314391/500000000 : ℚ), (-3528356569917/1000000000000 : ℚ), 5⟩,
    ⟨(333595586853/1000000000000 : ℚ), (68886592667/10000000000 : ℚ), (-1218797229083/500000000000 : ℚ), 5⟩,
    ⟨(338650253299/1000000000000 : ℚ), (24253639727/5000000000 : ℚ), (-1753081806083/1000000000000 : ℚ), 4⟩,
    ⟨(43035535043/125000000000 : ℚ), (2193526917/625000000 : ℚ), (-647726528209/500000000000 : ℚ), 4⟩,
    ⟨(87610852307/250000000000 : ℚ), (12924285181/5000000000 : ℚ), (-4872101661/5000000000 : ℚ), 4⟩,
    ⟨(178534162087/500000000000 : ℚ), (3846529541/2000000000 : ℚ), (-185129563871/250000000000 : ℚ), 4⟩,
    ⟨(91023805907/250000000000 : ℚ), (3589231557/2500000000 : ℚ), (-564806783217/1000000000000 : ℚ), 3⟩,
    ⟨(92864108677/250000000000 : ℚ), (1067440733/1000000000 : ℚ), (-3355020453/7812500000 : ℚ), 3⟩,
    ⟨(11846283279/31250000000 : ℚ), (3917553433/5000000000 : ℚ), (-322943068841/1000000000000 : ℚ), 3⟩,
    ⟨(386895684929/1000000000000 : ℚ), (350446401/625000000 : ℚ), (-118825712593/500000000000 : ℚ), 3⟩,
    ⟨(394825035649/1000000000000 : ℚ), (479039571/1250000000 : ℚ), (-168307481621/1000000000000 : ℚ), 3⟩,
    ⟨(402792753107/1000000000000 : ℚ), (2399992603/10000000000 : ℚ), (-111204936399/1000000000000 : ℚ), 3⟩,
    ⟨(102680525957/250000000000 : ℚ), (1231141823/10000000000 : ℚ), (-6367561463/100000000000 : ℚ), 3⟩,
    ⟨(418536723829/1000000000000 : ℚ), (268281833/10000000000 : ℚ), (-297040851/12500000000 : ℚ), 3⟩,
    ⟨(6658771157/15625000000 : ℚ), (-66381363/1250000000 : ℚ), (9988707571/1000000000000 : ℚ), 3⟩,
    ⟨(54190320641/125000000000 : ℚ), (-119864161/1000000000 : ℚ), (38678950861/1000000000000 : ℚ), 2⟩,
    ⟨(220274732291/500000000000 : ℚ), (-1758547171/10000000000 : ℚ), (6314484367/100000000000 : ℚ), 2⟩,
    ⟨(55896797441/125000000000 : ℚ), (-2229140217/10000000000 : ℚ), (84029876333/1000000000000 : ℚ), 2⟩,
    ⟨(113333377103/250000000000 : ℚ), (-1312275011/5000000000 : ℚ), (12728930051/125000000000 : ℚ), 2⟩,
    ⟨(458967535457/1000000000000 : ℚ), (-73892343/250000000 : ℚ), (116935302647/1000000000000 : ℚ), 2⟩,
    ⟨(464022201903/1000000000000 : ℚ), (-80775601/250000000 : ℚ), (25928168407/200000000000 : ℚ), 2⟩,
    ⟨(117112207137/250000000000 : ℚ), (-3457077293/10000000000 : ℚ), (140179756229/1000000000000 : ℚ), 2⟩,
    ⟨(472204784557/1000000000000 : ℚ), (-909719491/2500000000 : ℚ), (148730054677/1000000000000 : ℚ), 2⟩,
    ⟨(237626949011/500000000000 : ℚ), (-15120953/40000000 : ℚ), (19428321213/125000000000 : ℚ), 2⟩,
    ⟨(477566804313/1000000000000 : ℚ), (-3883978741/10000000000 : ℚ), (160368817771/1000000000000 : ℚ), 2⟩,
    ⟨(479121228877/1000000000000 : ℚ), (-3952088183/10000000000 : ℚ), (81813387863/500000000000 : ℚ), 2⟩,
    ⟨(239951100879/500000000000 : ℚ), (-3985834419/10000000000 : ℚ), (8262247263/50000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3990038401/10000000000 : ℚ), (82723357909/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (294933499137/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control456.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control456.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate456

namespace DiagonalRamsey.JointInheritedCertificate457
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13970418553/62500000000 : ℚ), (13164044173457/10000000000 : ℚ), (-73707572368693/250000000000 : ℚ), 12⟩,
    ⟨(56033833341/250000000000 : ℚ), (89842262123/625000000 : ℚ), (-8144710536737/250000000000 : ℚ), 9⟩,
    ⟨(45069348979/200000000000 : ℚ), (251557951581/5000000000 : ℚ), (-5799274094447/500000000000 : ℚ), 7⟩,
    ⟨(45429852977/200000000000 : ℚ), (247396612367/10000000000 : ℚ), (-1454509054803/250000000000 : ℚ), 6⟩,
    ⟨(229525534081/1000000000000 : ℚ), (71557923871/5000000000 : ℚ), (-343896920501/100000000000 : ℚ), 6⟩,
    ⟨(3632072933/15625000000 : ℚ), (90924444169/10000000000 : ℚ), (-2234416056121/1000000000000 : ℚ), 5⟩,
    ⟨(5897561897/25000000000 : ℚ), (61304070297/10000000000 : ℚ), (-1541335535319/1000000000000 : ℚ), 5⟩,
    ⟨(29980216881/125000000000 : ℚ), (5374634709/1250000000 : ℚ), (-276550454273/250000000000 : ℚ), 4⟩,
    ⟨(48846501599/200000000000 : ℚ), (30961213017/10000000000 : ℚ), (-12736014061/15625000000 : ℚ), 4⟩,
    ⟨(249032509179/1000000000000 : ℚ), (4533572823/2000000000 : ℚ), (-610707097249/1000000000000 : ℚ), 4⟩,
    ⟨(63548877991/250000000000 : ℚ), (2092228489/1250000000 : ℚ), (-28849813139/62500000000 : ℚ), 4⟩,
    ⟨(259671793811/1000000000000 : ℚ), (12368357629/10000000000 : ℚ), (-174699582527/500000000000 : ℚ), 3⟩,
    ⟨(66352153783/250000000000 : ℚ), (9067457833/10000000000 : ℚ), (-52557217737/200000000000 : ℚ), 3⟩,
    ⟨(271350727201/1000000000000 : ℚ), (3260330987/5000000000 : ℚ), (-194470467447/1000000000000 : ℚ), 3⟩,
    ⟨(277440904231/1000000000000 : ℚ), (4519878993/10000000000 : ℚ), (-139595433181/1000000000000 : ℚ), 3⟩,
    ⟨(35452561811/125000000000 : ℚ), (730838019/2500000000 : ℚ), (-47413347849/500000000000 : ℚ), 3⟩,
    ⟨(14491499257/50000000000 : ℚ), (1632113089/10000000000 : ℚ), (-1806792821/31250000000 : ℚ), 3⟩,
    ⟨(296009575397/1000000000000 : ℚ), (143902059/2500000000 : ℚ), (-3360043587/125000000000 : ℚ), 3⟩,
    ⟨(302099752427/1000000000000 : ℚ), (-148682799/5000000000 : ℚ), (-156209691/200000000000 : ℚ), 3⟩,
    ⟨(308041864497/1000000000000 : ℚ), (-256134729/2500000000 : ℚ), (4279501623/200000000000 : ℚ), 3⟩,
    ⟨(313778685817/1000000000000 : ℚ), (-408519229/2500000000 : ℚ), (20172395071/500000000000 : ℚ), 3⟩,
    ⟨(19953435479/62500000000 : ℚ), (-2147233933/10000000000 : ℚ), (11316861613/200000000000 : ℚ), 2⟩,
    ⟨(324417970449/1000000000000 : ℚ), (-322523981/1250000000 : ℚ), (7051653577/100000000000 : ℚ), 2⟩,
    ⟨(329217971633/1000000000000 : ℚ), (-2945355239/10000000000 : ℚ), (4122470257/50000000000 : ℚ), 2⟩,
    ⟨(16680437229/50000000000 : ℚ), (-1626138811/5000000000 : ℚ), (92620341509/1000000000000 : ℚ), 2⟩,
    ⟨(84387000937/250000000000 : ℚ), (-877083099/2500000000 : ℚ), (50606211727/500000000000 : ℚ), 2⟩,
    ⟨(85249452979/250000000000 : ℚ), (-743840789/2000000000 : ℚ), (3386449501/31250000000 : ℚ), 2⟩,
    ⟨(343924945547/1000000000000 : ℚ), (-3889249641/10000000000 : ℚ), (114189602599/1000000000000 : ℚ), 2⟩,
    ⟨(346301214743/1000000000000 : ℚ), (-2010883649/5000000000 : ℚ), (29690716453/250000000000 : ℚ), 2⟩,
    ⟨(348103734733/1000000000000 : ℚ), (-4119191791/10000000000 : ℚ), (30536357339/250000000000 : ℚ), 2⟩,
    ⟨(43664393283/125000000000 : ℚ), (-4183237027/10000000000 : ℚ), (124378735863/1000000000000 : ℚ), 2⟩,
    ⟨(17496189139/50000000000 : ℚ), (-1053748577/2500000000 : ℚ), (125489030817/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-2109475837/5000000000 : ℚ), (62813761761/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (46019442979/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control457.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control457.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate457

namespace DiagonalRamsey.JointInheritedCertificate458
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(122291801663/500000000000 : ℚ), (13453643738897/10000000000 : ℚ), (-41211055869869/125000000000 : ℚ), 12⟩,
    ⟨(245235277331/1000000000000 : ℚ), (734743554339/5000000000 : ℚ), (-1821595005659/50000000000 : ℚ), 9⟩,
    ⟨(246532349363/1000000000000 : ℚ), (10290425519/200000000 : ℚ), (-12971207318729/1000000000000 : ℚ), 7⟩,
    ⟨(248462327911/1000000000000 : ℚ), (63281722351/2500000000 : ℚ), (-6507331642627/1000000000000 : ℚ), 6⟩,
    ⟨(125503313113/500000000000 : ℚ), (29302566643/2000000000 : ℚ), (-3847057846539/1000000000000 : ℚ), 6⟩,
    ⟨(254140741323/1000000000000 : ℚ), (93142547889/10000000000 : ℚ), (-100006878407/40000000000 : ℚ), 5⟩,
    ⟨(128917244981/500000000000 : ℚ), (62846387479/10000000000 : ℚ), (-1725243258463/1000000000000 : ℚ), 5⟩,
    ⟨(65513074831/250000000000 : ℚ), (44117616801/10000000000 : ℚ), (-619385980537/500000000000 : ℚ), 4⟩,
    ⟨(266753549599/1000000000000 : ℚ), (31802023653/10000000000 : ℚ), (-182676059211/200000000000 : ℚ), 4⟩,
    ⟨(33986620647/125000000000 : ℚ), (1165729961/500000000 : ℚ), (-684951020247/1000000000000 : ℚ), 4⟩,
    ⟨(11096842027/40000000000 : ℚ), (17245206547/10000000000 : ℚ), (-518358201841/1000000000000 : ℚ), 4⟩,
    ⟨(28328456761/100000000000 : ℚ), (6386483957/5000000000 : ℚ), (-393052865639/1000000000000 : ℚ), 3⟩,
    ⟨(72356761777/250000000000 : ℚ), (9394679673/10000000000 : ℚ), (-74091783229/250000000000 : ℚ), 3⟩,
    ⟨(73947333433/250000000000 : ℚ), (3394318209/5000000000 : ℚ), (-44030154637/200000000000 : ℚ), 3⟩,
    ⟨(151155077593/500000000000 : ℚ), (948379457/2000000000 : ℚ), (-4967849521/31250000000 : ℚ), 3⟩,
    ⟨(154463356197/500000000000 : ℚ), (3109353567/10000000000 : ℚ), (-109098202211/1000000000000 : ℚ), 3⟩,
    ⟨(78893821073/250000000000 : ℚ), (1789657931/10000000000 : ℚ), (-13581133591/200000000000 : ℚ), 3⟩,
    ⟨(644383683/2000000000 : ℚ), (355264293/5000000000 : ℚ), (-8376271673/250000000000 : ℚ), 3⟩,
    ⟨(164356331477/500000000000 : ℚ), (-18051769/1000000000 : ℚ), (-2256948139/500000000000 : ℚ), 3⟩,
    ⟨(335074949579/1000000000000 : ℚ), (-14408999/156250000 : ℚ), (20095376621/1000000000000 : ℚ), 3⟩,
    ⟨(85304357269/250000000000 : ℚ), (-1543348627/10000000000 : ℚ), (20547916797/500000000000 : ℚ), 3⟩,
    ⟨(347080946011/1000000000000 : ℚ), (-2065860391/10000000000 : ℚ), (3692187329/62500000000 : ℚ), 2⟩,
    ⟨(35260903151/100000000000 : ℚ), (-3132923/12500000 : ℚ), (9310346581/125000000000 : ℚ), 2⟩,
    ⟨(22359277943/62500000000 : ℚ), (-89923041/312500000 : ℚ), (21916378053/250000000000 : ℚ), 2⟩,
    ⟨(181224848681/500000000000 : ℚ), (-159464349/500000000 : ℚ), (49445310467/500000000000 : ℚ), 2⟩,
    ⟨(91666876681/250000000000 : ℚ), (-68983583/200000000 : ℚ), (54182297943/500000000000 : ℚ), 2⟩,
    ⟨(370361255363/1000000000000 : ℚ), (-3663070227/10000000000 : ℚ), (11624641659/100000000000 : ℚ), 2⟩,
    ⟨(373495370461/1000000000000 : ℚ), (-3835452043/10000000000 : ℚ), (61328788007/500000000000 : ℚ), 2⟩,
    ⟨(15041586751/40000000000 : ℚ), (-992431477/2500000000 : ℚ), (127689620657/1000000000000 : ℚ), 2⟩,
    ⟨(377969647323/1000000000000 : ℚ), (-813680837/2000000000 : ℚ), (26281958983/200000000000 : ℚ), 2⟩,
    ⟨(94816679839/250000000000 : ℚ), (-2066627961/5000000000 : ℚ), (133865187111/1000000000000 : ℚ), 2⟩,
    ⟨(4748979917/12500000000 : ℚ), (-416540781/1000000000 : ℚ), (67542823649/500000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4169414101/10000000000 : ℚ), (33809467499/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (87891263193/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control458.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control458.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate458

namespace DiagonalRamsey.JointInheritedCertificate459
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129397585239/500000000000 : ℚ), (13652336539909/10000000000 : ℚ), (-88496958944689/250000000000 : ℚ), 12⟩,
    ⟨(64868675143/250000000000 : ℚ), (372862136619/2500000000 : ℚ), (-39117846750613/1000000000000 : ℚ), 9⟩,
    ⟨(260827216513/1000000000000 : ℚ), (522345248947/10000000000 : ℚ), (-6964043688759/500000000000 : ℚ), 7⟩,
    ⟨(52567938567/200000000000 : ℚ), (64264289321/2500000000 : ℚ), (-6987847374011/1000000000000 : ℚ), 6⟩,
    ⟨(265492748289/1000000000000 : ℚ), (148842197757/10000000000 : ℚ), (-103288784187/25000000000 : ℚ), 6⟩,
    ⟨(268760832501/1000000000000 : ℚ), (23665760623/2500000000 : ℚ), (-167840791421/62500000000 : ℚ), 5⟩,
    ⟨(136306236017/500000000000 : ℚ), (12780636117/2000000000 : ℚ), (-231684466427/125000000000 : ℚ), 5⟩,
    ⟨(138505286747/500000000000 : ℚ), (22442490047/5000000000 : ℚ), (-1331226117091/1000000000000 : ℚ), 4⟩,
    ⟨(281912780759/1000000000000 : ℚ), (8094353849/2500000000 : ℚ), (-981937711851/1000000000000 : ℚ), 4⟩,
    ⟨(287271882893/1000000000000 : ℚ), (23756785467/10000000000 : ℚ), (-147353446767/200000000000 : ℚ), 4⟩,
    ⟨(146518134407/500000000000 : ℚ), (17591730987/10000000000 : ℚ), (-34874956759/62500000000 : ℚ), 4⟩,
    ⟨(149575212167/500000000000 : ℚ), (13048935827/10000000000 : ℚ), (-84713949397/200000000000 : ℚ), 3⟩,
    ⟨(305555466793/1000000000000 : ℚ), (9617507421/10000000000 : ℚ), (-319876191109/1000000000000 : ℚ), 3⟩,
    ⟨(31218971213/100000000000 : ℚ), (6970774613/10000000000 : ℚ), (-238166770399/1000000000000 : ℚ), 3⟩,
    ⟨(318989268937/1000000000000 : ℚ), (4892469701/10000000000 : ℚ), (-172607423759/1000000000000 : ℚ), 3⟩,
    ⟨(81472163441/250000000000 : ℚ), (1617592317/5000000000 : ℚ), (-59595945877/500000000000 : ℚ), 3⟩,
    ⟨(332821421763/1000000000000 : ℚ), (1895939881/10000000000 : ℚ), (-75099191909/1000000000000 : ℚ), 3⟩,
    ⟨(33972080659/100000000000 : ℚ), (200317013/2500000000 : ℚ), (-38300287563/1000000000000 : ℚ), 3⟩,
    ⟨(346520363397/1000000000000 : ℚ), (-102192563/10000000000 : ℚ), (-1827323763/250000000000 : ℚ), 3⟩,
    ⟨(176577304367/500000000000 : ℚ), (-213449783/2500000000 : ℚ), (18978458223/1000000000000 : ℚ), 3⟩,
    ⟨(359559651193/1000000000000 : ℚ), (-74148023/500000000 : ℚ), (258715949/6250000000 : ℚ), 3⟩,
    ⟨(365673806713/1000000000000 : ℚ), (-2011893033/10000000000 : ℚ), (60571311511/1000000000000 : ℚ), 2⟩,
    ⟨(185719096317/500000000000 : ℚ), (-1228765089/5000000000 : ℚ), (38496639931/500000000000 : ℚ), 2⟩,
    ⟨(23549830923/62500000000 : ℚ), (-708216851/2500000000 : ℚ), (22758441629/250000000000 : ℚ), 2⟩,
    ⟨(381699502033/1000000000000 : ℚ), (-1573962413/5000000000 : ℚ), (25745310543/250000000000 : ℚ), 2⟩,
    ⟨(386097603493/1000000000000 : ℚ), (-852611157/2500000000 : ℚ), (14132335529/125000000000 : ℚ), 2⟩,
    ⟨(194974621513/500000000000 : ℚ), (-113325057/312500000 : ℚ), (3035948341/25000000000 : ℚ), 2⟩,
    ⟨(196608663619/500000000000 : ℚ), (-3800381007/10000000000 : ℚ), (128250446597/1000000000000 : ℚ), 2⟩,
    ⟨(98967595673/250000000000 : ℚ), (-983963733/2500000000 : ℚ), (133595377103/1000000000000 : ℚ), 2⟩,
    ⟨(198941429507/500000000000 : ℚ), (-126105921/312500000 : ℚ), (137545624941/1000000000000 : ℚ), 2⟩,
    ⟨(79847074991/200000000000 : ℚ), (-410079177/1000000000 : ℚ), (28030455991/200000000000 : ℚ), 2⟩,
    ⟨(399914905049/1000000000000 : ℚ), (-826642593/2000000000 : ℚ), (70723874339/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-2068626321/5000000000 : ℚ), (35402329639/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (21276597627/62500000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control459.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control459.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate459

namespace DiagonalRamsey.JointInheritedCertificate494
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(152319252919/500000000000 : ℚ), (443842559487/312500000 : ℚ), (-433449296583427/1000000000000 : ℚ), 12⟩,
    ⟨(305386163061/1000000000000 : ℚ), (310549085961/2000000000 : ℚ), (-47900923930073/1000000000000 : ℚ), 9⟩,
    ⟨(306874277159/1000000000000 : ℚ), (108878965777/2000000000 : ℚ), (-8528469290963/500000000000 : ℚ), 7⟩,
    ⟨(309088516781/1000000000000 : ℚ), (134125386969/5000000000 : ℚ), (-8558958530401/1000000000000 : ℚ), 6⟩,
    ⟨(312007557587/1000000000000 : ℚ), (155546790031/10000000000 : ℚ), (-1265420358403/250000000000 : ℚ), 6⟩,
    ⟨(15780164381/50000000000 : ℚ), (19816782879/2000000000 : ℚ), (-3291188140091/1000000000000 : ℚ), 5⟩,
    ⟨(319841078033/1000000000000 : ℚ), (67004750079/10000000000 : ℚ), (-568177162061/250000000000 : ℚ), 5⟩,
    ⟨(81170029147/250000000000 : ℚ), (9431255671/2000000000 : ℚ), (-816760340239/500000000000 : ℚ), 4⟩,
    ⟨(330073800699/1000000000000 : ℚ), (213083387/62500000 : ℚ), (-1206157227939/1000000000000 : ℚ), 4⟩,
    ⟨(335970186239/1000000000000 : ℚ), (12542048343/5000000000 : ℚ), (-181264041257/200000000000 : ℚ), 4⟩,
    ⟨(342312487793/1000000000000 : ℚ), (9318840407/5000000000 : ℚ), (-687826183411/1000000000000 : ℚ), 4⟩,
    ⟨(43629953191/125000000000 : ℚ), (3471443007/2500000000 : ℚ), (-16364237181/31250000000 : ℚ), 3⟩,
    ⟨(44510851679/125000000000 : ℚ), (5147870699/5000000000 : ℚ), (-79429911873/200000000000 : ℚ), 3⟩,
    ⟨(5677909113/15625000000 : ℚ), (940850773/1250000000 : ℚ), (-297587961663/1000000000000 : ℚ), 3⟩,
    ⟨(370867438007/1000000000000 : ℚ), (133829691/250000000 : ℚ), (-54455728607/250000000000 : ℚ), 3⟩,
    ⟨(378458529183/1000000000000 : ℚ), (362085969/1000000000 : ℚ), (-30588828069/200000000000 : ℚ), 3⟩,
    ⟨(96521587601/250000000000 : ℚ), (2222110037/10000000000 : ℚ), (-99492266649/1000000000000 : ℚ), 3⟩,
    ⟨(393677441581/1000000000000 : ℚ), (1080006031/10000000000 : ℚ), (-2199090743/40000000000 : ℚ), 3⟩,
    ⟨(100289674089/250000000000 : ℚ), (27719373/2000000000 : ℚ), (-549184637/31250000000 : ℚ), 3⟩,
    ⟨(102114516539/250000000000 : ℚ), (-80430341/1250000000 : ℚ), (14076468331/1000000000000 : ℚ), 3⟩,
    ⟨(20775262703/50000000000 : ℚ), (-259407867/2000000000 : ℚ), (5124777721/125000000000 : ℚ), 3⟩,
    ⟨(84446478359/200000000000 : ℚ), (-14418701/78125000 : ℚ), (31985864063/500000000000 : ℚ), 3⟩,
    ⟨(428574693349/1000000000000 : ℚ), (-1153485823/5000000000 : ℚ), (16719259321/200000000000 : ℚ), 2⟩,
    ⟨(434471078889/1000000000000 : ℚ), (-673726821/2500000000 : ℚ), (100334818397/1000000000000 : ℚ), 2⟩,
    ⟨(439864763/1000000000 : ℚ), (-3020007887/10000000000 : ℚ), (22909197029/200000000000 : ℚ), 2⟩,
    ⟨(88940760311/200000000000 : ℚ), (-3290482297/10000000000 : ℚ), (126507884573/1000000000000 : ℚ), 2⟩,
    ⟨(14029424749/31250000000 : ℚ), (-1756337493/5000000000 : ℚ), (136435500083/1000000000000 : ℚ), 2⟩,
    ⟨(452537322001/1000000000000 : ℚ), (-3691460433/10000000000 : ℚ), (14449380973/100000000000 : ℚ), 2⟩,
    ⟨(455456362807/1000000000000 : ℚ), (-1915267569/5000000000 : ℚ), (150807630133/1000000000000 : ℚ), 2⟩,
    ⟨(114417650607/250000000000 : ℚ), (-983158203/2500000000 : ℚ), (155468984577/1000000000000 : ℚ), 2⟩,
    ⟨(459158716527/1000000000000 : ℚ), (-3999680173/10000000000 : ℚ), (15854251861/100000000000 : ℚ), 2⟩,
    ⟨(367925099/800000000 : ℚ), (-4032905139/10000000000 : ℚ), (40017328009/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-63078819/156250000 : ℚ), (80129849683/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (315421245581/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control494.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control494.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate494

namespace DiagonalRamsey.JointInheritedCertificate495
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(207676044409/500000000000 : ℚ), (8149235799899/5000000000 : ℚ), (-84752995928643/125000000000 : ℚ), 12⟩,
    ⟨(416240683159/1000000000000 : ℚ), (1784447220359/10000000000 : ℚ), (-74943553449541/1000000000000 : ℚ), 9⟩,
    ⟨(26125582137/62500000000 : ℚ), (627000686189/10000000000 : ℚ), (-6674304238819/250000000000 : ℚ), 7⟩,
    ⟨(420640949033/1000000000000 : ℚ), (61958024323/2000000000 : ℚ), (-1675622645677/125000000000 : ℚ), 6⟩,
    ⟨(424110243599/1000000000000 : ℚ), (18019844439/1000000000 : ℚ), (-991882786839/125000000000 : ℚ), 6⟩,
    ⟨(6693496667/15625000000 : ℚ), (115199721919/10000000000 : ℚ), (-516634496719/100000000000 : ℚ), 5⟩,
    ⟨(27088776359/62500000000 : ℚ), (78224055321/10000000000 : ℚ), (-714815335747/200000000000 : ℚ), 5⟩,
    ⟨(439171643217/1000000000000 : ℚ), (6914536719/1250000000 : ℚ), (-2575236099931/1000000000000 : ℚ), 4⟩,
    ⟨(222791031851/500000000000 : ℚ), (40221355791/10000000000 : ℚ), (-1907864197333/1000000000000 : ℚ), 4⟩,
    ⟨(28286871709/62500000000 : ℚ), (7449875043/2500000000 : ℚ), (-288018959369/200000000000 : ℚ), 4⟩,
    ⟨(460127804393/1000000000000 : ℚ), (2792025109/1250000000 : ℚ), (-1099679888629/1000000000000 : ℚ), 4⟩,
    ⟨(93624608233/200000000000 : ℚ), (16832099041/10000000000 : ℚ), (-84434641583/100000000000 : ℚ), 3⟩,
    ⟨(476498659159/1000000000000 : ℚ), (3168401549/2500000000 : ℚ), (-648026167773/1000000000000 : ℚ), 3⟩,
    ⟨(97034799319/200000000000 : ℚ), (4733842549/5000000000 : ℚ), (-123484706987/250000000000 : ℚ), 3⟩,
    ⟨(494065505233/1000000000000 : ℚ), (6953571337/10000000000 : ℚ), (-92722567573/250000000000 : ℚ), 3⟩,
    ⟨(251543777491/500000000000 : ℚ), (309567073/625000000 : ℚ), (-135592459421/500000000000 : ℚ), 3⟩,
    ⟨(512153258571/1000000000000 : ℚ), (104416627/312500000 : ℚ), (-189395249553/1000000000000 : ℚ), 3⟩,
    ⟨(3257345677/6250000000 : ℚ), (2028962777/10000000000 : ℚ), (-60804324291/500000000000 : ℚ), 3⟩,
    ⟨(530066816957/1000000000000 : ℚ), (118848151/1250000000 : ℚ), (-16237795143/250000000000 : ℚ), 3⟩,
    ⟨(269371077197/500000000000 : ℚ), (58511937/10000000000 : ℚ), (-17277773591/1000000000000 : ℚ), 3⟩,
    ⟨(136779443097/250000000000 : ℚ), (-684115991/10000000000 : ℚ), (2879304771/125000000000 : ℚ), 2⟩,
    ⟨(13877825229/25000000000 : ℚ), (-1304636127/10000000000 : ℚ), (57227060129/1000000000000 : ℚ), 2⟩,
    ⟨(562650866209/1000000000000 : ℚ), (-228019619/1250000000 : ℚ), (86258495063/1000000000000 : ℚ), 2⟩,
    ⟨(569658749851/1000000000000 : ℚ), (-70592951/312500000 : ℚ), (55436698417/500000000000 : ℚ), 2⟩,
    ⟨(115213834067/200000000000 : ℚ), (-1310864767/5000000000 : ℚ), (131652667679/1000000000000 : ℚ), 2⟩,
    ⟨(581820391809/1000000000000 : ℚ), (-2922248111/10000000000 : ℚ), (29809994591/200000000000 : ℚ), 2⟩,
    ⟨(36678564179/62500000000 : ℚ), (-1584078523/5000000000 : ℚ), (1634187431/10000000000 : ℚ), 2⟩,
    ⟨(295565284977/500000000000 : ℚ), (-673067963/2000000000 : ℚ), (87516163931/500000000000 : ℚ), 2⟩,
    ⟨(14864996613/25000000000 : ℚ), (-219892151/625000000 : ℚ), (184099110321/1000000000000 : ℚ), 2⟩,
    ⟨(597231499361/1000000000000 : ℚ), (-1815141471/5000000000 : ℚ), (23846725071/125000000000 : ℚ), 2⟩,
    ⟨(599000130393/1000000000000 : ℚ), (-740742551/2000000000 : ℚ), (195165732387/1000000000000 : ℚ), 2⟩,
    ⟨(299944362367/500000000000 : ℚ), (-3740062641/10000000000 : ℚ), (39468940681/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-936147363/2500000000 : ℚ), (98808143411/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (57879352733/250000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control495.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control495.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate495

namespace DiagonalRamsey.JointInheritedCertificate496
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(251845149061/500000000000 : ℚ), (74549544359589/10000000000 : ℚ), (-3756594815630353/1000000000000 : ℚ), 14⟩,
    ⟨(503926726141/1000000000000 : ℚ), (8250215065331/10000000000 : ℚ), (-208436746314009/500000000000 : ℚ), 11⟩,
    ⟨(252199506301/500000000000 : ℚ), (2949967758241/10000000000 : ℚ), (-935599279271/6250000000 : ℚ), 9⟩,
    ⟨(505106019727/1000000000000 : ℚ), (745701559267/5000000000 : ℚ), (-4755365817073/62500000000 : ℚ), 8⟩,
    ⟨(506046044273/1000000000000 : ℚ), (446075751751/5000000000 : ℚ), (-2862112561813/62500000000 : ℚ), 8⟩,
    ⟨(12680420541/25000000000 : ℚ), (294723248147/5000000000 : ℚ), (-15230083384837/500000000000 : ℚ), 7⟩,
    ⟨(12715388283/25000000000 : ℚ), (41579005571/1000000000 : ℚ), (-2164121861407/100000000000 : ℚ), 7⟩,
    ⟨(255119401851/500000000000 : ℚ), (153581635347/5000000000 : ℚ), (-1006769394567/62500000000 : ℚ), 6⟩,
    ⟨(256041364089/500000000000 : ℚ), (58704015783/2500000000 : ℚ), (-12410757185927/1000000000000 : ℚ), 6⟩,
    ⟨(257071431287/500000000000 : ℚ), (184284275671/10000000000 : ℚ), (-9818289045189/1000000000000 : ℚ), 6⟩,
    ⟨(258207121923/500000000000 : ℚ), (147648013423/10000000000 : ℚ), (-7930775745181/1000000000000 : ℚ), 5⟩,
    ⟨(129722850009/250000000000 : ℚ), (120276184353/10000000000 : ℚ), (-26056273477/4000000000 : ℚ), 5⟩,
    ⟨(521568363459/1000000000000 : ℚ), (1986293727/200000000 : ℚ), (-5423742304043/1000000000000 : ℚ), 5⟩,
    ⟨(131109671269/250000000000 : ℚ), (10365905097/1250000000 : ℚ), (-4566791735771/1000000000000 : ℚ), 5⟩,
    ⟨(52749545003/100000000000 : ℚ), (69889254019/10000000000 : ℚ), (-194056480419/50000000000 : ℚ), 4⟩,
    ⟨(265365647153/500000000000 : ℚ), (59358852319/10000000000 : ℚ), (-3324025967367/1000000000000 : ℚ), 4⟩,
    ⟨(534138422473/1000000000000 : ℚ), (10148395149/2000000000 : ℚ), (-2865292966671/1000000000000 : ℚ), 4⟩,
    ⟨(26885431323/50000000000 : ℚ), (8721967501/2000000000 : ℚ), (-2483113304763/1000000000000 : ℚ), 4⟩,
    ⟨(541433305333/1000000000000 : ℚ), (18823374351/5000000000 : ℚ), (-2161402038889/1000000000000 : ℚ), 4⟩,
    ⟨(272651743007/500000000000 : ℚ), (4077023087/1250000000 : ℚ), (-377617977011/200000000000 : ℚ), 4⟩,
    ⟨(549309844899/1000000000000 : ℚ), (14169077171/5000000000 : ℚ), (-1653977707381/1000000000000 : ℚ), 4⟩,
    ⟨(6918034129/12500000000 : ℚ), (12336883459/5000000000 : ℚ), (-1451954887261/1000000000000 : ℚ), 3⟩,
    ⟨(8713940403/15625000000 : ℚ), (21514495561/10000000000 : ℚ), (-638227613687/500000000000 : ℚ), 3⟩,
    ⟨(112409594801/200000000000 : ℚ), (3754914549/2000000000 : ℚ), (-1123071334131/1000000000000 : ℚ), 3⟩,
    ⟨(141624900371/250000000000 : ℚ), (3277103203/2000000000 : ℚ), (-247069210031/250000000000 : ℚ), 3⟩,
    ⟨(571036343869/1000000000000 : ℚ), (1786516081/1250000000 : ℚ), (-217305832049/250000000000 : ℚ), 3⟩,
    ⟨(575647271749/1000000000000 : ℚ), (1556192279/1250000000 : ℚ), (-763589850309/1000000000000 : ℚ), 3⟩,
    ⟨(145080319249/250000000000 : ℚ), (10820976557/10000000000 : ℚ), (-669470031193/1000000000000 : ℚ), 3⟩,
    ⟨(585047099521/1000000000000 : ℚ), (9376096247/10000000000 : ℚ), (-36580400001/62500000000 : ℚ), 3⟩,
    ⟨(117962670881/200000000000 : ℚ), (8089680907/10000000000 : ℚ), (-254862347537/500000000000 : ℚ), 3⟩,
    ⟨(594608559321/1000000000000 : ℚ), (3470323589/5000000000 : ℚ), (-44168299423/100000000000 : ℚ), 3⟩,
    ⟨(599421162201/1000000000000 : ℚ), (5911265641/10000000000 : ℚ), (-380231966297/1000000000000 : ℚ), 3⟩,
    ⟨(604239569063/1000000000000 : ℚ), (4986547471/10000000000 : ℚ), (-8114588773/25000000000 : ℚ), 3⟩,
    ⟨(609052171943/1000000000000 : ℚ), (830751557/2000000000 : ℚ), (-274066084507/1000000000000 : ℚ), 3⟩,
    ⟨(613847376859/1000000000000 : ℚ), (3402026699/10000000000 : ℚ), (-228104401671/1000000000000 : ℚ), 3⟩,
    ⟨(309306815871/500000000000 : ℚ), (1361018171/5000000000 : ℚ), (-46550951659/250000000000 : ℚ), 3⟩,
    ⟨(155834863567/250000000000 : ℚ), (131610461/625000000 : ℚ), (-147937078453/1000000000000 : ℚ), 3⟩,
    ⟨(314006729757/500000000000 : ℚ), (1546292479/10000000000 : ℚ), (-112933872669/1000000000000 : ℚ), 3⟩,
    ⟨(126524877479/200000000000 : ℚ), (32425223/312500000 : ℚ), (-80872028119/1000000000000 : ℚ), 3⟩,
    ⟨(637161129779/1000000000000 : ℚ), (71811283/1250000000 : ℚ), (-51470398247/1000000000000 : ℚ), 2⟩,
    ⟨(320806378629/500000000000 : ℚ), (30477767/2000000000 : ℚ), (-24482909873/1000000000000 : ℚ), 2⟩,
    ⟨(10093258523/15625000000 : ℚ), (-58169523/2500000000 : ℚ), (306385417/1000000000000 : ℚ), 2⟩,
    ⟨(40638625059/62500000000 : ℚ), (-584199529/10000000000 : ℚ), (23087448751/1000000000000 : ℚ), 2⟩,
    ⟨(163587721591/250000000000 : ℚ), (-113154977/1250000000 : ℚ), (22013865627/500000000000 : ℚ), 2⟩,
    ⟨(658357245249/1000000000000 : ℚ), (-37452977/312500000 : ℚ), (63275106737/1000000000000 : ℚ), 2⟩,
    ⟨(662227425931/1000000000000 : ℚ), (-1466342031/10000000000 : ℚ), (80960353771/1000000000000 : ℚ), 2⟩,
    ⟨(166488026201/250000000000 : ℚ), (-855438371/5000000000 : ℚ), (97199265851/1000000000000 : ℚ), 2⟩,
    ⟨(669522308791/1000000000000 : ℚ), (-483487763/2500000000 : ℚ), (112094449693/1000000000000 : ℚ), 2⟩,
    ⟨(672929436957/1000000000000 : ℚ), (-1068600577/5000000000 : ℚ), (31434216053/250000000000 : ℚ), 2⟩,
    ⟨(338082640617/500000000000 : ℚ), (-290259129/1250000000 : ℚ), (27641428063/200000000000 : ℚ), 2⟩,
    ⟨(679222046187/1000000000000 : ℚ), (-1244922063/5000000000 : ℚ), (149576716039/1000000000000 : ℚ), 2⟩,
    ⟨(170523091951/250000000000 : ℚ), (-1320820981/5000000000 : ℚ), (159908815819/1000000000000 : ℚ), 2⟩,
    ⟨(684769331227/1000000000000 : ℚ), (-2778460187/10000000000 : ℚ), (21157411953/125000000000 : ℚ), 2⟩,
    ⟨(687246487417/1000000000000 : ℚ), (-1450586197/5000000000 : ℚ), (177677374633/1000000000000 : ℚ), 2⟩,
    ⟨(689517868689/1000000000000 : ℚ), (-3010544033/10000000000 : ℚ), (92603133801/500000000000 : ℚ), 2⟩,
    ⟨(138315600617/200000000000 : ℚ), (-310724267/1000000000 : ℚ), (95941865957/500000000000 : ℚ), 2⟩,
    ⟨(346710963781/500000000000 : ℚ), (-398980851/1250000000 : ℚ), (197742540459/1000000000000 : ℚ), 2⟩,
    ⟨(695045199943/1000000000000 : ℚ), (-1632426711/5000000000 : ℚ), (202810886231/1000000000000 : ℚ), 2⟩,
    ⟨(87055488703/125000000000 : ℚ), (-1663342191/5000000000 : ℚ), (103556365077/500000000000 : ℚ), 2⟩,
    ⟨(69761468699/100000000000 : ℚ), (-1688845923/5000000000 : ℚ), (210668093247/1000000000000 : ℚ), 2⟩,
    ⟨(43659669471/62500000000 : ℚ), (-1709081371/5000000000 : ℚ), (213493301269/1000000000000 : ℚ), 2⟩,
    ⟨(699261718661/1000000000000 : ℚ), (-3448322393/10000000000 : ℚ), (215601182621/1000000000000 : ℚ), 2⟩,
    ⟨(699734005123/1000000000000 : ℚ), (-3468337363/10000000000 : ℚ), (108500612541/500000000000 : ℚ), 2⟩,
    ⟨(349985216571/500000000000 : ℚ), (-1739158773/5000000000 : ℚ), (108849845191/500000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-217472737/625000000 : ℚ), (27223365717/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (42137590997/250000000000 : ℚ)
  μ := (7/10 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control496.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control496.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate496

namespace DiagonalRamsey.JointInheritedCertificate497
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49243946139/200000000000 : ℚ), (13329042454387/10000000000 : ℚ), (-328808528873993/1000000000000 : ℚ), 12⟩,
    ⟨(246863531047/1000000000000 : ℚ), (291226796499/2000000000 : ℚ), (-7266684681811/200000000000 : ℚ), 9⟩,
    ⟨(124072465801/500000000000 : ℚ), (509963739099/10000000000 : ℚ), (-1293524844233/100000000000 : ℚ), 7⟩,
    ⟨(62512897943/250000000000 : ℚ), (250945631149/10000000000 : ℚ), (-6488600435047/1000000000000 : ℚ), 6⟩,
    ⟨(252565149377/1000000000000 : ℚ), (36320857583/2500000000 : ℚ), (-3835420287253/1000000000000 : ℚ), 6⟩,
    ⟨(255661397483/1000000000000 : ℚ), (23094726197/2500000000 : ℚ), (-1246064963409/500000000000 : ℚ), 5⟩,
    ⟨(259310517529/1000000000000 : ℚ), (62340061183/10000000000 : ℚ), (-1719274545741/1000000000000 : ℚ), 5⟩,
    ⟨(131738683247/500000000000 : ℚ), (10941376731/2500000000 : ℚ), (-1234110007151/1000000000000 : ℚ), 4⟩,
    ⟨(16757613459/62500000000 : ℚ), (15773954289/5000000000 : ℚ), (-909598117589/1000000000000 : ℚ), 4⟩,
    ⟨(136599567749/500000000000 : ℚ), (23125579503/10000000000 : ℚ), (-681792576301/1000000000000 : ℚ), 4⟩,
    ⟨(69665107397/250000000000 : ℚ), (17100979377/10000000000 : ℚ), (-20626442517/40000000000 : ℚ), 4⟩,
    ⟨(56890620473/200000000000 : ℚ), (12660474737/10000000000 : ℚ), (-390709286191/1000000000000 : ℚ), 3⟩,
    ⟨(11620854689/40000000000 : ℚ), (581577359/625000000 : ℚ), (-294302966403/1000000000000 : ℚ), 3⟩,
    ⟨(14840339173/50000000000 : ℚ), (6716311563/10000000000 : ℚ), (-109156677651/500000000000 : ℚ), 3⟩,
    ⟨(151624409537/500000000000 : ℚ), (2341268599/5000000000 : ℚ), (-78661011831/500000000000 : ℚ), 3⟩,
    ⟨(61957086749/200000000000 : ℚ), (3059991343/10000000000 : ℚ), (-6725524183/62500000000 : ℚ), 3⟩,
    ⟨(158176838149/500000000000 : ℚ), (1748132377/10000000000 : ℚ), (-4159555433/62500000000 : ℚ), 3⟩,
    ⟨(322890290969/1000000000000 : ℚ), (337618089/5000000000 : ℚ), (-32271639673/1000000000000 : ℚ), 3⟩,
    ⟨(329332326583/1000000000000 : ℚ), (-52697093/2500000000 : ℚ), (-846334767/250000000000 : ℚ), 3⟩,
    ⟨(167808871409/500000000000 : ℚ), (-29636147/312500000 : ℚ), (2641396199/125000000000 : ℚ), 3⟩,
    ⟨(170843003839/500000000000 : ℚ), (-4894279/31250000 : ℚ), (1051233119/25000000000 : ℚ), 3⟩,
    ⟨(69495736091/200000000000 : ℚ), (-2085902939/10000000000 : ℚ), (29977723793/500000000000 : ℚ), 3⟩,
    ⟨(70587994909/200000000000 : ℚ), (-1262037693/5000000000 : ℚ), (37649283329/500000000000 : ℚ), 3⟩,
    ⟨(358017294699/1000000000000 : ℚ), (-723339801/2500000000 : ℚ), (4421219347/50000000000 : ℚ), 2⟩,
    ⟨(362661743549/1000000000000 : ℚ), (-3203521999/10000000000 : ℚ), (99599827671/1000000000000 : ℚ), 2⟩,
    ⟨(183414296257/500000000000 : ℚ), (-3462107821/10000000000 : ℚ), (54515506993/500000000000 : ℚ), 2⟩,
    ⟨(4630971407/12500000000 : ℚ), (-146997451/400000000 : ℚ), (116876635689/1000000000000 : ℚ), 2⟩,
    ⟨(186786980333/500000000000 : ℚ), (-3846470741/10000000000 : ℚ), (123257956341/1000000000000 : ℚ), 2⟩,
    ⟨(376087518271/1000000000000 : ℚ), (-1990045347/5000000000 : ℚ), (128266341119/1000000000000 : ℚ), 2⟩,
    ⟨(377994178441/1000000000000 : ℚ), (-2039146043/5000000000 : ℚ), (16496111589/125000000000 : ℚ), 2⟩,
    ⟨(94818894749/250000000000 : ℚ), (-4142832213/10000000000 : ℚ), (26882518963/200000000000 : ℚ), 2⟩,
    ⟨(94979844837/250000000000 : ℚ), (-2087415081/5000000000 : ℚ), (135627227367/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-2089408649/5000000000 : ℚ), (135778722469/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (361310469103/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control497.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control497.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate497

namespace DiagonalRamsey.JointInheritedCertificate498
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65129242799/250000000000 : ℚ), (1352692887361/1000000000 : ℚ), (-353057450625133/1000000000000 : ℚ), 12⟩,
    ⟨(52237643069/200000000000 : ℚ), (92375474849/625000000 : ℚ), (-39013757819843/1000000000000 : ℚ), 9⟩,
    ⟨(65631059799/250000000000 : ℚ), (258878674997/5000000000 : ℚ), (-694505232781/50000000000 : ℚ), 7⟩,
    ⟨(264512176107/1000000000000 : ℚ), (254861338983/10000000000 : ℚ), (-6968080984459/1000000000000 : ℚ), 6⟩,
    ⟨(267132881161/1000000000000 : ℚ), (73802353103/5000000000 : ℚ), (-4119285525499/1000000000000 : ℚ), 6⟩,
    ⟨(135180557767/500000000000 : ℚ), (375578219/40000000 : ℚ), (-2676988393119/1000000000000 : ℚ), 5⟩,
    ⟨(54833157913/200000000000 : ℚ), (31696922231/5000000000 : ℚ), (-923601698091/500000000000 : ℚ), 5⟩,
    ⟨(278510262163/1000000000000 : ℚ), (22265491129/5000000000 : ℚ), (-1326335101537/1000000000000 : ℚ), 4⟩,
    ⟨(141676346841/500000000000 : ℚ), (6424427007/2000000000 : ℚ), (-488988238917/500000000000 : ℚ), 4⟩,
    ⟨(14432322443/50000000000 : ℚ), (23567082671/10000000000 : ℚ), (-733465005351/1000000000000 : ℚ), 4⟩,
    ⟨(14717027297/50000000000 : ℚ), (8723575039/5000000000 : ℚ), (-555184302019/1000000000000 : ℚ), 4⟩,
    ⟨(150190073827/500000000000 : ℚ), (12936317123/10000000000 : ℚ), (-421128011103/1000000000000 : ℚ), 3⟩,
    ⟨(306707089337/1000000000000 : ℚ), (1905619861/2000000000 : ℚ), (-317729309307/1000000000000 : ℚ), 3⟩,
    ⟨(156630219541/500000000000 : ℚ), (1379719007/2000000000 : ℚ), (-118129525067/500000000000 : ℚ), 3⟩,
    ⟨(319977084547/1000000000000 : ℚ), (2416666303/5000000000 : ℚ), (-170898165659/1000000000000 : ℚ), 3⟩,
    ⟨(163396170383/500000000000 : ℚ), (159304957/500000000 : ℚ), (-117650534171/1000000000000 : ℚ), 3⟩,
    ⟨(41705071637/125000000000 : ℚ), (927363849/5000000000 : ℚ), (-73702157619/1000000000000 : ℚ), 3⟩,
    ⟨(68091165863/200000000000 : ℚ), (766313471/10000000000 : ℚ), (-37028880177/1000000000000 : ℚ), 3⟩,
    ⟨(17358623739/50000000000 : ℚ), (-132109607/10000000000 : ℚ), (-6148265411/1000000000000 : ℚ), 3⟩,
    ⟨(14149032981/40000000000 : ℚ), (-879616533/10000000000 : ℚ), (20041903969/1000000000000 : ℚ), 3⟩,
    ⟨(703228059/1953125000 : ℚ), (-1505412247/10000000000 : ℚ), (42371446431/1000000000000 : ℚ), 3⟩,
    ⟨(183046183961/500000000000 : ℚ), (-1015782051/5000000000 : ℚ), (61471414899/1000000000000 : ℚ), 3⟩,
    ⟨(185893232501/500000000000 : ℚ), (-247489499/1000000000 : ℚ), (77825423501/1000000000000 : ℚ), 2⟩,
    ⟨(18854011009/50000000000 : ℚ), (-2848317651/10000000000 : ℚ), (11475761981/125000000000 : ℚ), 2⟩,
    ⟨(381922651699/1000000000000 : ℚ), (-3161789453/10000000000 : ℚ), (51850693809/500000000000 : ℚ), 2⟩,
    ⟨(386267124297/1000000000000 : ℚ), (-3423004527/10000000000 : ℚ), (1421673521/12500000000 : ℚ), 2⟩,
    ⟨(48758974791/125000000000 : ℚ), (-113684401/312500000 : ℚ), (3814847233/31250000000 : ℚ), 2⟩,
    ⟨(196650016351/500000000000 : ℚ), (-3811034329/10000000000 : ℚ), (64428144819/500000000000 : ℚ), 2⟩,
    ⟨(79184147551/200000000000 : ℚ), (-3945855803/10000000000 : ℚ), (26835275411/200000000000 : ℚ), 2⟩,
    ⟨(397908674667/1000000000000 : ℚ), (-4044914627/10000000000 : ℚ), (138108122921/1000000000000 : ℚ), 2⟩,
    ⟨(399244698517/1000000000000 : ℚ), (-1027501531/2500000000 : ℚ), (35175626309/250000000000 : ℚ), 2⟩,
    ⟨(199957971333/500000000000 : ℚ), (-1035568449/2500000000 : ℚ), (141991856333/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-414629437/1000000000 : ℚ), (142152662387/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (87496661889/250000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control498.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control498.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate498

namespace DiagonalRamsey.JointInheritedCertificate499
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17190674117/62500000000 : ℚ), (858972252343/625000000 : ℚ), (-47339149753471/125000000000 : ℚ), 12⟩,
    ⟨(55149667067/200000000000 : ℚ), (1501956548161/10000000000 : ℚ), (-41849888803337/1000000000000 : ℚ), 9⟩,
    ⟨(866052239/3125000000 : ℚ), (131573277173/2500000000 : ℚ), (-3725169429419/250000000000 : ℚ), 7⟩,
    ⟨(69800639609/250000000000 : ℚ), (259151946381/10000000000 : ℚ), (-7475708759757/1000000000000 : ℚ), 6⟩,
    ⟨(4405093219/15625000000 : ℚ), (75074908169/5000000000 : ℚ), (-4419956262213/1000000000000 : ℚ), 6⟩,
    ⟨(285280711317/1000000000000 : ℚ), (95557639167/10000000000 : ℚ), (-1436457628513/500000000000 : ℚ), 5⟩,
    ⟨(289234486307/1000000000000 : ℚ), (516409537/80000000 : ℚ), (-1982905206203/1000000000000 : ℚ), 5⟩,
    ⟨(73437303493/250000000000 : ℚ), (45372569263/10000000000 : ℚ), (-712134967211/500000000000 : ℚ), 4⟩,
    ⟨(37347676877/125000000000 : ℚ), (1637709873/500000000 : ℚ), (-262672532361/250000000000 : ℚ), 4⟩,
    ⟨(9508832081/31250000000 : ℚ), (6013419389/2500000000 : ℚ), (-78851346253/100000000000 : ℚ), 4⟩,
    ⟨(310199869027/1000000000000 : ℚ), (17829201469/10000000000 : ℚ), (-597389559059/1000000000000 : ℚ), 4⟩,
    ⟨(316476156039/1000000000000 : ℚ), (6620596187/5000000000 : ℚ), (-453712232347/1000000000000 : ℚ), 3⟩,
    ⟨(64610208711/200000000000 : ℚ), (4887393391/5000000000 : ℚ), (-68585590337/200000000000 : ℚ), 3⟩,
    ⟨(164930605907/500000000000 : ℚ), (7100672601/10000000000 : ℚ), (-31959032501/125000000000 : ℚ), 3⟩,
    ⟨(84210268793/250000000000 : ℚ), (5000753981/10000000000 : ℚ), (-185702111969/1000000000000 : ℚ), 3⟩,
    ⟨(34392341373/100000000000 : ℚ), (3326313657/10000000000 : ℚ), (-5149190053/40000000000 : ℚ), 3⟩,
    ⟨(70208004139/200000000000 : ℚ), (986703609/5000000000 : ℚ), (-81735334647/1000000000000 : ℚ), 3⟩,
    ⟨(89530589813/250000000000 : ℚ), (216959711/2500000000 : ℚ), (-8509231463/200000000000 : ℚ), 3⟩,
    ⟨(36510222261/100000000000 : ℚ), (-44314101/10000000000 : ℚ), (-957051923/100000000000 : ℚ), 3⟩,
    ⟨(371912390869/1000000000000 : ℚ), (-802847667/10000000000 : ℚ), (1837549109/100000000000 : ℚ), 3⟩,
    ⟨(75697455677/200000000000 : ℚ), (-287503661/2000000000 : ℚ), (2109181351/50000000000 : ℚ), 3⟩,
    ⟨(192381782699/500000000000 : ℚ), (-1970820353/10000000000 : ℚ), (195413881/3125000000 : ℚ), 3⟩,
    ⟨(48835100979/125000000000 : ℚ), (-1209955241/5000000000 : ℚ), (1249098711/15625000000 : ℚ), 2⟩,
    ⟨(24761376213/62500000000 : ℚ), (-559592841/2000000000 : ℚ), (47407266241/500000000000 : ℚ), 2⟩,
    ⟨(401214220453/1000000000000 : ℚ), (-3115146643/10000000000 : ℚ), (107459469427/1000000000000 : ℚ), 2⟩,
    ⟨(405728948117/1000000000000 : ℚ), (-3379316359/10000000000 : ℚ), (118117285723/1000000000000 : ℚ), 2⟩,
    ⟨(409682723107/1000000000000 : ℚ), (-3596541089/10000000000 : ℚ), (126973253417/1000000000000 : ℚ), 2⟩,
    ⟨(51629683551/125000000000 : ℚ), (-3771478413/10000000000 : ℚ), (67084623549/500000000000 : ℚ), 2⟩,
    ⟨(103940218997/250000000000 : ℚ), (-195382873/500000000 : ℚ), (27962476251/200000000000 : ℚ), 2⟩,
    ⟨(52228339743/125000000000 : ℚ), (-2003843173/5000000000 : ℚ), (35995369003/250000000000 : ℚ), 2⟩,
    ⟨(419215099089/1000000000000 : ℚ), (-16293609/40000000 : ℚ), (7336590513/50000000000 : ℚ), 2⟩,
    ⟨(52489081069/125000000000 : ℚ), (-2052987777/5000000000 : ℚ), (37024616681/250000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4110034027/10000000000 : ℚ), (74134452427/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (169272527779/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control499.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control499.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate499

namespace DiagonalRamsey.JointInheritedCertificate522
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(35530420679/125000000000 : ℚ), (3430377832221/2500000000 : ℚ), (-195361984796793/500000000000 : ℚ), 12⟩,
    ⟨(284944800503/1000000000000 : ℚ), (749971580717/5000000000 : ℚ), (-43176230230247/1000000000000 : ℚ), 9⟩,
    ⟨(286340915441/1000000000000 : ℚ), (262889219009/5000000000 : ℚ), (-3843068622797/250000000000 : ℚ), 7⟩,
    ⟨(288418264897/1000000000000 : ℚ), (259003779273/10000000000 : ℚ), (-771182701669/100000000000 : ℚ), 6⟩,
    ⟨(291156842859/1000000000000 : ℚ), (150127087331/10000000000 : ℚ), (-4559183968793/1000000000000 : ℚ), 6⟩,
    ⟨(11781211013/40000000000 : ℚ), (95583019279/10000000000 : ℚ), (-740778168009/250000000000 : ℚ), 5⟩,
    ⟨(37313259287/125000000000 : ℚ), (32297184001/5000000000 : ℚ), (-204491958051/100000000000 : ℚ), 5⟩,
    ⟨(151522975327/500000000000 : ℚ), (11355092447/2500000000 : ℚ), (-293723916159/200000000000 : ℚ), 4⟩,
    ⟨(308106182909/1000000000000 : ℚ), (8200172397/2500000000 : ℚ), (-1083252427143/1000000000000 : ℚ), 4⟩,
    ⟨(156819019129/500000000000 : ℚ), (12048142671/5000000000 : ℚ), (-32513181749/40000000000 : ℚ), 4⟩,
    ⟨(319588241909/1000000000000 : ℚ), (17866997073/10000000000 : ℚ), (-615720419143/1000000000000 : ℚ), 4⟩,
    ⟨(325899490149/1000000000000 : ℚ), (530963079/400000000 : ℚ), (-93513931989/200000000000 : ℚ), 3⟩,
    ⟨(332511002207/1000000000000 : ℚ), (2450768241/2500000000 : ℚ), (-353361500909/1000000000000 : ℚ), 3⟩,
    ⟨(42419888201/125000000000 : ℚ), (890607749/1250000000 : ℚ), (-65858421309/250000000000 : ℚ), 3⟩,
    ⟨(86594462343/250000000000 : ℚ), (5021415727/10000000000 : ℚ), (-95672116251/500000000000 : ℚ), 3⟩,
    ⟨(353499639161/1000000000000 : ℚ), (1672008789/5000000000 : ℚ), (-66334173987/500000000000 : ℚ), 3⟩,
    ⟨(90163972061/250000000000 : ℚ), (1988687751/10000000000 : ℚ), (-84289265121/1000000000000 : ℚ), 3⟩,
    ⟨(367777678033/1000000000000 : ℚ), (881176861/10000000000 : ℚ), (-21982075507/500000000000 : ℚ), 3⟩,
    ⟨(374796421797/1000000000000 : ℚ), (-6499781/2000000000 : ℚ), (-10049557293/1000000000000 : ℚ), 3⟩,
    ⟨(190822262599/500000000000 : ℚ), (-792198073/10000000000 : ℚ), (18677261889/1000000000000 : ℚ), 3⟩,
    ⟨(48532004657/125000000000 : ℚ), (-142773713/1000000000 : ℚ), (43137620829/1000000000000 : ℚ), 3⟩,
    ⟨(49320910687/125000000000 : ℚ), (-1961665859/10000000000 : ℚ), (32016419321/500000000000 : ℚ), 3⟩,
    ⟨(400517489147/1000000000000 : ℚ), (-2411190643/10000000000 : ℚ), (16380197821/200000000000 : ℚ), 3⟩,
    ⟨(25378084031/62500000000 : ℚ), (-1394765243/5000000000 : ℚ), (12144648457/125000000000 : ℚ), 3⟩,
    ⟨(411109576751/1000000000000 : ℚ), (-776721931/2500000000 : ℚ), (110122676107/1000000000000 : ℚ), 2⟩,
    ⟨(415649453109/1000000000000 : ℚ), (-421394011/1250000000 : ℚ), (121046136603/1000000000000 : ℚ), 2⟩,
    ⟨(5245315651/12500000000 : ℚ), (-3588416843/10000000000 : ℚ), (130119509481/1000000000000 : ℚ), 2⟩,
    ⟨(211499342273/500000000000 : ℚ), (-3763359979/10000000000 : ℚ), (27497968291/200000000000 : ℚ), 2⟩,
    ⟨(106434315627/250000000000 : ℚ), (-779905297/2000000000 : ℚ), (143268196617/1000000000000 : ℚ), 2⟩,
    ⟨(106953652991/250000000000 : ℚ), (-3999536349/10000000000 : ℚ), (147536329421/1000000000000 : ℚ), 2⟩,
    ⟨(214605363451/500000000000 : ℚ), (-508154393/1250000000 : ℚ), (150351592157/1000000000000 : ℚ), 2⟩,
    ⟨(429912161973/1000000000000 : ℚ), (-4097798597/10000000000 : ℚ), (75875195417/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2050927889/5000000000 : ℚ), (151924831763/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (34214674181/100000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control522.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control522.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate522

namespace DiagonalRamsey.JointInheritedCertificate523
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(247885954099/1000000000000 : ℚ), (13200815927281/10000000000 : ℚ), (-40979689867443/125000000000 : ℚ), 12⟩,
    ⟨(49704347193/200000000000 : ℚ), (72118968797/500000000 : ℚ), (-36224809586901/1000000000000 : ℚ), 9⟩,
    ⟨(249787176771/1000000000000 : ℚ), (505262620827/10000000000 : ℚ), (-2579125867769/200000000000 : ℚ), 7⟩,
    ⟨(251670089629/1000000000000 : ℚ), (248691838389/10000000000 : ℚ), (-6467993981123/1000000000000 : ℚ), 6⟩,
    ⟨(254152341059/1000000000000 : ℚ), (36002680553/2500000000 : ℚ), (-3822642605497/1000000000000 : ℚ), 6⟩,
    ⟨(257210025623/1000000000000 : ℚ), (91586742953/10000000000 : ℚ), (-310415055731/125000000000 : ℚ), 5⟩,
    ⟨(260813696147/1000000000000 : ℚ), (61813710253/10000000000 : ℚ), (-1712753252157/1000000000000 : ℚ), 5⟩,
    ⟨(52985729463/200000000000 : ℚ), (43398690521/10000000000 : ℚ), (-614515378327/500000000000 : ℚ), 4⟩,
    ⟨(269515249897/1000000000000 : ℚ), (15641314699/5000000000 : ℚ), (-452744736379/500000000000 : ℚ), 4⟩,
    ⟨(137264666201/500000000000 : ℚ), (22927867467/10000000000 : ℚ), (-678371710551/1000000000000 : ℚ), 4⟩,
    ⟨(69980651619/250000000000 : ℚ), (3389969507/2000000000 : ℚ), (-256374215043/500000000000 : ℚ), 4⟩,
    ⟨(14282156597/50000000000 : ℚ), (6271203397/5000000000 : ℚ), (-97046418597/250000000000 : ℚ), 3⟩,
    ⟨(18227238563/62500000000 : ℚ), (9211233079/10000000000 : ℚ), (-58417248541/200000000000 : ℚ), 3⟩,
    ⟨(148921474423/500000000000 : ℚ), (1660052101/2500000000 : ℚ), (-6760784609/31250000000 : ℚ), 3⟩,
    ⟨(152102374691/500000000000 : ℚ), (4620016067/10000000000 : ℚ), (-31111900911/200000000000 : ℚ), 3⟩,
    ⟨(155329975499/500000000000 : ℚ), (601591979/2000000000 : ℚ), (-106019457793/1000000000000 : ℚ), 3⟩,
    ⟨(158573193287/500000000000 : ℚ), (34086671/200000000 : ℚ), (-13022547051/200000000000 : ℚ), 3⟩,
    ⟨(32360158819/100000000000 : ℚ), (318996001/5000000000 : ℚ), (-30960589797/1000000000000 : ℚ), 3⟩,
    ⟨(13198535549/40000000000 : ℚ), (-48549587/2000000000 : ℚ), (-2187360523/1000000000000 : ℚ), 3⟩,
    ⟨(336170520563/1000000000000 : ℚ), (-976010207/10000000000 : ℚ), (22229495751/1000000000000 : ℚ), 3⟩,
    ⟨(342163205631/1000000000000 : ℚ), (-198785529/1250000000 : ℚ), (43059530571/1000000000000 : ℚ), 3⟩,
    ⟨(69576746219/200000000000 : ℚ), (-2107092103/10000000000 : ℚ), (60887689573/1000000000000 : ℚ), 3⟩,
    ⟨(353277005169/1000000000000 : ℚ), (-635709163/2500000000 : ℚ), (9520248543/125000000000 : ℚ), 3⟩,
    ⟨(14331643507/40000000000 : ℚ), (-18188151/62500000 : ℚ), (44613688323/500000000000 : ℚ), 3⟩,
    ⟨(22679855641/62500000000 : ℚ), (-1609298323/5000000000 : ℚ), (50175100661/500000000000 : ℚ), 3⟩,
    ⟨(22937040089/62500000000 : ℚ), (-434475979/1250000000 : ℚ), (109736146709/1000000000000 : ℚ), 2⟩,
    ⟨(370596311949/1000000000000 : ℚ), (-92187961/250000000 : ℚ), (117543557507/1000000000000 : ℚ), 2⟩,
    ⟨(373653996513/1000000000000 : ℚ), (-964540441/2500000000 : ℚ), (123893424019/1000000000000 : ℚ), 2⟩,
    ⟨(376136247943/1000000000000 : ℚ), (-399109417/1000000000 : ℚ), (2013701487/15625000000 : ℚ), 2⟩,
    ⟨(378019160801/1000000000000 : ℚ), (-4088794247/10000000000 : ℚ), (26512181213/200000000000 : ℚ), 2⟩,
    ⟨(189642300803/500000000000 : ℚ), (-2076503421/5000000000 : ℚ), (33748079003/250000000000 : ℚ), 2⟩,
    ⟨(23745023967/62500000000 : ℚ), (-2092421501/5000000000 : ℚ), (136200823093/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-2094405003/5000000000 : ℚ), (17043944181/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (371114686741/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control523.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control523.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate523

namespace DiagonalRamsey.JointInheritedCertificate524
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2622676717/10000000000 : ℚ), (13397474267521/10000000000 : ℚ), (-176008127596763/500000000000 : ℚ), 12⟩,
    ⟨(65732622707/250000000000 : ℚ), (146411841779/1000000000 : ℚ), (-19448670409213/500000000000 : ℚ), 9⟩,
    ⟨(132124872887/500000000000 : ℚ), (513009109799/10000000000 : ℚ), (-6923836429943/500000000000 : ℚ), 7⟩,
    ⟨(26621273139/100000000000 : ℚ), (252584487757/10000000000 : ℚ), (-3473018402157/500000000000 : ℚ), 6⟩,
    ⟨(134400271527/500000000000 : ℚ), (146318809941/10000000000 : ℚ), (-2052818007203/500000000000 : ℚ), 6⟩,
    ⟨(271988258723/1000000000000 : ℚ), (93094168317/10000000000 : ℚ), (-1333796816821/500000000000 : ℚ), 5⟩,
    ⟨(137872589477/500000000000 : ℚ), (3928880729/625000000 : ℚ), (-1840261757109/1000000000000 : ℚ), 5⟩,
    ⟨(5600702451/20000000000 : ℚ), (44160504577/10000000000 : ℚ), (-132093914053/100000000000 : ℚ), 4⟩,
    ⟨(28481677501/100000000000 : ℚ), (7963582403/2500000000 : ℚ), (-243405141929/250000000000 : ℚ), 4⟩,
    ⟨(145022043203/500000000000 : ℚ), (11683807283/5000000000 : ℚ), (-91230722329/125000000000 : ℚ), 4⟩,
    ⟨(295666714873/1000000000000 : ℚ), (43237/25000 : ℚ), (-138027287611/250000000000 : ℚ), 4⟩,
    ⟨(4712976741/15625000000 : ℚ), (512696579/400000000 : ℚ), (-104617258671/250000000000 : ℚ), 3⟩,
    ⟨(307878041439/1000000000000 : ℚ), (188670753/200000000 : ℚ), (-315398380113/1000000000000 : ℚ), 3⟩,
    ⟨(78587284447/250000000000 : ℚ), (6822138241/10000000000 : ℚ), (-234193488847/1000000000000 : ℚ), 3⟩,
    ⟨(80245370069/250000000000 : ℚ), (4770607969/10000000000 : ℚ), (-169052104157/1000000000000 : ℚ), 3⟩,
    ⟨(16385559791/50000000000 : ℚ), (3133975679/10000000000 : ℚ), (-28997373237/250000000000 : ℚ), 3⟩,
    ⟨(334473473579/1000000000000 : ℚ), (905460011/5000000000 : ℚ), (-36099763337/500000000000 : ℚ), 3⟩,
    ⟨(341203189123/1000000000000 : ℚ), (29164907/400000000 : ℚ), (-8915892637/250000000000 : ℚ), 3⟩,
    ⟨(347835531611/1000000000000 : ℚ), (-81984559/5000000000 : ℚ), (-612888651/125000000000 : ℚ), 3⟩,
    ⟨(8857665699/25000000000 : ℚ), (-453567463/5000000000 : ℚ), (21181262981/1000000000000 : ℚ), 3⟩,
    ⟨(14422166319/40000000000 : ℚ), (-47792679/312500000 : ℚ), (21708665171/500000000000 : ℚ), 3⟩,
    ⟨(183258977263/500000000000 : ℚ), (-205257197/1000000000 : ℚ), (31217330663/500000000000 : ℚ), 3⟩,
    ⟨(372140582993/1000000000000 : ℚ), (-2493460061/10000000000 : ℚ), (15743155043/200000000000 : ℚ), 3⟩,
    ⟨(37736789439/100000000000 : ℚ), (-572971047/2000000000 : ℚ), (46316239027/500000000000 : ℚ), 3⟩,
    ⟨(7642990937/20000000000 : ℚ), (-1588324187/5000000000 : ℚ), (104472105157/1000000000000 : ℚ), 2⟩,
    ⟨(193219745223/500000000000 : ℚ), (-859120651/2500000000 : ℚ), (57228380427/500000000000 : ℚ), 2⟩,
    ⟨(97549102669/250000000000 : ℚ), (-365025649/1000000000 : ℚ), (2455152067/20000000000 : ℚ), 2⟩,
    ⟨(78676825269/200000000000 : ℚ), (-152899821/400000000 : ℚ), (129505548157/1000000000000 : ℚ), 2⟩,
    ⟨(395971938009/1000000000000 : ℚ), (-39566271/100000000 : ℚ), (67399660409/500000000000 : ℚ), 2⟩,
    ⟨(198967461813/500000000000 : ℚ), (-4055183013/10000000000 : ℚ), (69355743957/500000000000 : ℚ), 2⟩,
    ⟨(399254178571/1000000000000 : ℚ), (-2059972997/5000000000 : ℚ), (35323223069/250000000000 : ℚ), 2⟩,
    ⟨(399916997699/1000000000000 : ℚ), (-4152051407/10000000000 : ℚ), (142575776763/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4156051791/10000000000 : ℚ), (28547155097/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (44951379437/125000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control524.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control524.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate524

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
theorem certOK : JointInheritedControls.control525.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control525.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate525

namespace DiagonalRamsey.JointInheritedCertificate552
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71530454399/250000000000 : ℚ), (13581538330273/10000000000 : ℚ), (-97320190477631/250000000000 : ℚ), 12⟩,
    ⟨(286814212857/1000000000000 : ℚ), (1484890743787/10000000000 : ℚ), (-5376891645869/125000000000 : ℚ), 9⟩,
    ⟨(144096167617/500000000000 : ℚ), (520615313063/10000000000 : ℚ), (-382843735859/25000000000 : ℚ), 7⟩,
    ⟨(18140182041/62500000000 : ℚ), (256518153793/10000000000 : ℚ), (-1920391494757/250000000000 : ℚ), 7⟩,
    ⟨(14647309847/50000000000 : ℚ), (148717160767/10000000000 : ℚ), (-4540559405129/1000000000000 : ℚ), 6⟩,
    ⟨(148138076991/500000000000 : ℚ), (18940284369/2000000000 : ℚ), (-2950384353177/1000000000000 : ℚ), 5⟩,
    ⟨(12008028579/40000000000 : ℚ), (6400595359/1000000000 : ℚ), (-2035588974199/1000000000000 : ℚ), 5⟩,
    ⟨(60936416551/200000000000 : ℚ), (1800342267/400000000 : ℚ), (-292285553703/200000000000 : ℚ), 4⟩,
    ⟨(309677100797/1000000000000 : ℚ), (16250859139/5000000000 : ℚ), (-107749749709/100000000000 : ℚ), 4⟩,
    ⟨(157568831923/500000000000 : ℚ), (11936356471/5000000000 : ℚ), (-808089953841/1000000000000 : ℚ), 4⟩,
    ⟨(64202236739/200000000000 : ℚ), (17695620253/10000000000 : ℚ), (-305864086097/500000000000 : ℚ), 4⟩,
    ⟨(327241095137/1000000000000 : ℚ), (6569949981/5000000000 : ℚ), (-232073245951/500000000000 : ℚ), 4⟩,
    ⟨(333767400719/1000000000000 : ℚ), (9696071471/10000000000 : ℚ), (-2737377681/7812500000 : ℚ), 3⟩,
    ⟨(42565906069/125000000000 : ℚ), (3519072521/5000000000 : ℚ), (-260814837641/1000000000000 : ℚ), 3⟩,
    ⟨(86863884401/250000000000 : ℚ), (4950131831/10000000000 : ℚ), (-189019416191/1000000000000 : ℚ), 3⟩,
    ⟨(70897108933/200000000000 : ℚ), (82116961/250000000 : ℚ), (-65294605183/500000000000 : ℚ), 3⟩,
    ⟨(90387391731/250000000000 : ℚ), (969368309/5000000000 : ℚ), (-82418517133/1000000000000 : ℚ), 3⟩,
    ⟨(73715914797/200000000000 : ℚ), (838705619/10000000000 : ℚ), (-42272323111/1000000000000 : ℚ), 3⟩,
    ⟨(187753931519/500000000000 : ℚ), (-6893931/1000000000 : ℚ), (-8512785637/1000000000000 : ℚ), 3⟩,
    ⟨(38226771087/100000000000 : ℚ), (-411863531/5000000000 : ℚ), (2509846697/125000000000 : ℚ), 3⟩,
    ⟨(97198504113/250000000000 : ℚ), (-727617131/5000000000 : ℚ), (44420684919/1000000000000 : ℚ), 3⟩,
    ⟨(197511963947/500000000000 : ℚ), (-496458487/2500000000 : ℚ), (32606027267/500000000000 : ℚ), 3⟩,
    ⟨(400897447743/1000000000000 : ℚ), (-608150173/2500000000 : ℚ), (41494648203/500000000000 : ℚ), 3⟩,
    ⟨(406358010793/1000000000000 : ℚ), (-2808654049/10000000000 : ℚ), (98166264791/1000000000000 : ℚ), 3⟩,
    ⟨(205676514417/500000000000 : ℚ), (-78103013/250000000 : ℚ), (111063230441/1000000000000 : ℚ), 3⟩,
    ⟨(83166879423/200000000000 : ℚ), (-1693415739/5000000000 : ℚ), (15241014639/125000000000 : ℚ), 3⟩,
    ⟨(419758957607/1000000000000 : ℚ), (-3602835017/10000000000 : ℚ), (130952266593/1000000000000 : ℚ), 2⟩,
    ⟨(423088914649/1000000000000 : ℚ), (-3776774137/10000000000 : ℚ), (138282250309/1000000000000 : ℚ), 2⟩,
    ⟨(212896099467/500000000000 : ℚ), (-1956083471/5000000000 : ℚ), (144028757123/1000000000000 : ℚ), 2⟩,
    ⟨(85568555271/200000000000 : ℚ), (-1002903303/2500000000 : ℚ), (74136625617/500000000000 : ℚ), 2⟩,
    ⟨(107305224683/250000000000 : ℚ), (-2038472023/5000000000 : ℚ), (9442054493/62500000000 : ℚ), 2⟩,
    ⟨(429913293993/1000000000000 : ℚ), (-821865163/2000000000 : ℚ), (38115971109/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-4113360393/10000000000 : ℚ), (30527470757/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (175788124767/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control552.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control552.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate552

namespace DiagonalRamsey.JointInheritedCertificate553
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18348866273/62500000000 : ℚ), (6847088815613/5000000000 : ℚ), (-402737817135867/1000000000000 : ℚ), 12⟩,
    ⟨(294286478847/1000000000000 : ℚ), (748672428643/5000000000 : ℚ), (-44502760926327/1000000000000 : ℚ), 9⟩,
    ⟨(295688929943/1000000000000 : ℚ), (2050996623/39062500 : ℚ), (-792191520211/50000000000 : ℚ), 7⟩,
    ⟨(297775707287/1000000000000 : ℚ), (258750611979/10000000000 : ℚ), (-7947842348359/1000000000000 : ℚ), 7⟩,
    ⟨(30052671407/100000000000 : ℚ), (75020980997/5000000000 : ℚ), (-939656936717/200000000000 : ℚ), 6⟩,
    ⟨(60783091319/200000000000 : ℚ), (95567524559/10000000000 : ℚ), (-3053172456613/1000000000000 : ℚ), 5⟩,
    ⟨(153954649709/500000000000 : ℚ), (16152250647/2500000000 : ℚ), (-2106791775767/1000000000000 : ℚ), 5⟩,
    ⟨(6249395593/20000000000 : ℚ), (22723661881/5000000000 : ℚ), (-1512825760087/1000000000000 : ℚ), 4⟩,
    ⟨(79388244343/250000000000 : ℚ), (32831436213/10000000000 : ℚ), (-557835968851/500000000000 : ℚ), 4⟩,
    ⟨(323109938613/1000000000000 : ℚ), (2412668547/1000000000 : ℚ), (-167400962741/200000000000 : ℚ), 4⟩,
    ⟨(329087146797/1000000000000 : ℚ), (17895125191/10000000000 : ℚ), (-633913352563/1000000000000 : ℚ), 4⟩,
    ⟨(335427038143/1000000000000 : ℚ), (415599009/312500000 : ℚ), (-481292708873/1000000000000 : ℚ), 4⟩,
    ⟨(34206855603/100000000000 : ℚ), (2456244819/2500000000 : ℚ), (-363664713751/1000000000000 : ℚ), 3⟩,
    ⟨(87236934753/250000000000 : ℚ), (892969591/1250000000 : ℚ), (-271069183779/1000000000000 : ℚ), 3⟩,
    ⟨(177999168397/500000000000 : ℚ), (1007525727/2000000000 : ℚ), (-196865102269/1000000000000 : ℚ), 3⟩,
    ⟨(90788112067/250000000000 : ℚ), (26233909/78125000 : ℚ), (-13649054931/100000000000 : ℚ), 3⟩,
    ⟨(370341175427/1000000000000 : ℚ), (1000360019/5000000000 : ℚ), (-5420734871/62500000000 : ℚ), 3⟩,
    ⟨(3774952869/10000000000 : ℚ), (445848013/5000000000 : ℚ), (-22637847953/500000000000 : ℚ), 3⟩,
    ⟨(384545884683/1000000000000 : ℚ), (-23153717/10000000000 : ℚ), (-10427099779/1000000000000 : ℚ), 3⟩,
    ⟨(78285013533/200000000000 : ℚ), (-783733109/10000000000 : ℚ), (19075673473/1000000000000 : ℚ), 3⟩,
    ⟨(24879161597/62500000000 : ℚ), (-1419905823/10000000000 : ℚ), (8836711699/200000000000 : ℚ), 3⟩,
    ⟨(202203238449/500000000000 : ℚ), (-30535427/156250000 : ℚ), (65620695327/1000000000000 : ℚ), 3⟩,
    ⟨(205191842541/500000000000 : ℚ), (-2404066251/10000000000 : ℚ), (83942900327/1000000000000 : ℚ), 3⟩,
    ⟨(207970323161/500000000000 : ℚ), (-2782559337/10000000000 : ℚ), (49789585559/500000000000 : ℚ), 3⟩,
    ⟨(84204768809/200000000000 : ℚ), (-387497711/1250000000 : ℚ), (7053853047/62500000000 : ℚ), 3⟩,
    ⟨(425584324277/1000000000000 : ℚ), (-1682125371/5000000000 : ℚ), (6202378693/50000000000 : ℚ), 3⟩,
    ⟨(4295781671/10000000000 : ℚ), (-3581482601/10000000000 : ℚ), (133335582931/1000000000000 : ℚ), 2⟩,
    ⟨(3463735277/8000000000 : ℚ), (-187818679/500000000 : ℚ), (14087791723/100000000000 : ℚ), 2⟩,
    ⟨(54464739551/125000000000 : ℚ), (-3892482923/10000000000 : ℚ), (29357921441/200000000000 : ℚ), 2⟩,
    ⟨(54725586719/125000000000 : ℚ), (-3992441287/10000000000 : ℚ), (30231070773/200000000000 : ℚ), 2⟩,
    ⟨(27450446553/62500000000 : ℚ), (-2029050891/5000000000 : ℚ), (154034591467/1000000000000 : ℚ), 2⟩,
    ⟨(439911763327/1000000000000 : ℚ), (-163625797/400000000 : ℚ), (15546505439/100000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2047349757/5000000000 : ℚ), (31128687681/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (172806973371/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control553.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control553.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate553

namespace DiagonalRamsey.JointInheritedCertificate554
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(508913294933/1000000000000 : ℚ), (36480461555139/5000000000 : ℚ), (-3714609754965553/1000000000000 : ℚ), 14⟩,
    ⟨(509143432571/1000000000000 : ℚ), (8075098427797/10000000000 : ℚ), (-412209100831879/1000000000000 : ℚ), 11⟩,
    ⟨(31850197089/62500000000 : ℚ), (2887720299171/10000000000 : ℚ), (-148017144141719/1000000000000 : ℚ), 9⟩,
    ⟨(510291349987/1000000000000 : ℚ), (1460154965099/10000000000 : ℚ), (-18807422246207/250000000000 : ℚ), 8⟩,
    ⟨(127801591083/250000000000 : ℚ), (174720906581/2000000000 : ℚ), (-5659518116753/125000000000 : ℚ), 8⟩,
    ⟨(512345992109/1000000000000 : ℚ), (144323220067/2500000000 : ℚ), (-15056931074673/500000000000 : ℚ), 7⟩,
    ⟨(32106717991/62500000000 : ℚ), (203644278313/5000000000 : ℚ), (-10696732849993/500000000000 : ℚ), 7⟩,
    ⟨(515287571611/1000000000000 : ℚ), (75233709093/2500000000 : ℚ), (-796119445517/50000000000 : ℚ), 6⟩,
    ⟨(129270609203/250000000000 : ℚ), (230092854089/10000000000 : ℚ), (-613307913963/50000000000 : ℚ), 6⟩,
    ⟨(519087759473/1000000000000 : ℚ), (90302823267/5000000000 : ℚ), (-4851332169769/500000000000 : ℚ), 6⟩,
    ⟨(130324677149/250000000000 : ℚ), (144721332611/10000000000 : ℚ), (-1959062107083/250000000000 : ℚ), 5⟩,
    ⟨(52370995781/100000000000 : ℚ), (29476734783/2500000000 : ℚ), (-12870756621/2000000000 : ℚ), 5⟩,
    ⟨(105263139641/200000000000 : ℚ), (48684373699/5000000000 : ℚ), (-2678621702589/500000000000 : ℚ), 5⟩,
    ⟨(132277413081/250000000000 : ℚ), (81309266841/10000000000 : ℚ), (-1127469333447/250000000000 : ℚ), 5⟩,
    ⟨(532085089287/1000000000000 : ℚ), (34264862977/5000000000 : ℚ), (-3831886959693/1000000000000 : ℚ), 5⟩,
    ⟨(267617420503/500000000000 : ℚ), (11641193761/2000000000 : ℚ), (-102531872753/31250000000 : ℚ), 4⟩,
    ⟨(134637829863/250000000000 : ℚ), (49756411473/10000000000 : ℚ), (-1413712913781/500000000000 : ℚ), 4⟩,
    ⟨(542026534939/1000000000000 : ℚ), (855225027/200000000 : ℚ), (-1224765619567/500000000000 : ℚ), 4⟩,
    ⟨(545652115369/1000000000000 : ℚ), (36911397219/10000000000 : ℚ), (-2131431030423/1000000000000 : ℚ), 4⟩,
    ⟨(343387079/625000000 : ℚ), (31975253863/10000000000 : ℚ), (-1861190838299/1000000000000 : ℚ), 4⟩,
    ⟨(553319092491/1000000000000 : ℚ), (27776569861/10000000000 : ℚ), (-814857178251/500000000000 : ℚ), 4⟩,
    ⟨(111468403753/200000000000 : ℚ), (12089665289/5000000000 : ℚ), (-1429970439587/1000000000000 : ℚ), 4⟩,
    ⟨(280739206819/500000000000 : ℚ), (21077248201/10000000000 : ℚ), (-125645508587/100000000000 : ℚ), 4⟩,
    ⟨(282859156087/500000000000 : ℚ), (9193158777/5000000000 : ℚ), (-44192405151/40000000000 : ℚ), 3⟩,
    ⟨(285025750043/500000000000 : ℚ), (16039457137/10000000000 : ℚ), (-971548563673/1000000000000 : ℚ), 3⟩,
    ⟨(114893507669/200000000000 : ℚ), (1398259393/1000000000 : ℚ), (-853853741171/1000000000000 : ℚ), 3⟩,
    ⟨(578955788327/1000000000000 : ℚ), (1521470527/1250000000 : ℚ), (-74943056837/100000000000 : ℚ), 3⟩,
    ⟨(116701087489/200000000000 : ℚ), (5285470043/5000000000 : ℚ), (-164098468799/250000000000 : ℚ), 3⟩,
    ⟨(588105525197/1000000000000 : ℚ), (915038137/1000000000 : ℚ), (-573183703809/1000000000000 : ℚ), 3⟩,
    ⟨(592744969567/1000000000000 : ℚ), (7885372819/10000000000 : ℚ), (-498500350061/1000000000000 : ℚ), 3⟩,
    ⟨(9334571777/15625000000 : ℚ), (3377623517/5000000000 : ℚ), (-21562703131/50000000000 : ℚ), 3⟩,
    ⟨(150524288241/250000000000 : ℚ), (1148524333/2000000000 : ℚ), (-18526287043/50000000000 : ℚ), 3⟩,
    ⟨(606787361763/1000000000000 : ℚ), (4832798873/10000000000 : ℚ), (-157767983197/500000000000 : ℚ), 3⟩,
    ⟨(611471920999/1000000000000 : ℚ), (2006644419/5000000000 : ℚ), (-132810204829/500000000000 : ℚ), 3⟩,
    ⟨(15403488629/25000000000 : ℚ), (654685783/2000000000 : ℚ), (-11010507743/50000000000 : ℚ), 3⟩,
    ⟨(62077898953/100000000000 : ℚ), (2604077169/10000000000 : ℚ), (-89407926559/500000000000 : ℚ), 3⟩,
    ⟨(312689538641/500000000000 : ℚ), (1997364167/10000000000 : ℚ), (-141014875097/1000000000000 : ℚ), 3⟩,
    ⟨(196852727/312500000 : ℚ), (1446490747/10000000000 : ℚ), (-53220416399/500000000000 : ℚ), 3⟩,
    ⟨(317208488191/500000000000 : ℚ), (37822493/400000000 : ℚ), (-74774986389/1000000000000 : ℚ), 3⟩,
    ⟨(638833014641/1000000000000 : ℚ), (489452397/10000000000 : ℚ), (-22869578261/500000000000 : ℚ), 3⟩,
    ⟨(643166202553/1000000000000 : ℚ), (73689553/10000000000 : ℚ), (-19089852221/1000000000000 : ℚ), 3⟩,
    ⟨(647406101089/1000000000000 : ℚ), (-305636513/10000000000 : ℚ), (336663787/62500000000 : ℚ), 3⟩,
    ⟨(651542495963/1000000000000 : ℚ), (-651953523/10000000000 : ℚ), (27878249983/1000000000000 : ℚ), 3⟩,
    ⟨(163891355559/250000000000 : ℚ), (-484136243/5000000000 : ℚ), (24275376893/500000000000 : ℚ), 2⟩,
    ⟨(659465188327/1000000000000 : ℚ), (-157155399/1250000000 : ℚ), (13510095781/200000000000 : ℚ), 2⟩,
    ⟨(331616199679/500000000000 : ℚ), (-1521201119/10000000000 : ℚ), (85006854737/1000000000000 : ℚ), 2⟩,
    ⟨(166714494947/250000000000 : ℚ), (-1762207241/10000000000 : ℚ), (101034479557/1000000000000 : ℚ), 2⟩,
    ⟨(26813327811/40000000000 : ℚ), (-19820819/100000000 : ℚ), (57867448939/500000000000 : ℚ), 2⟩,
    ⟨(673649673721/1000000000000 : ℚ), (-272804217/1250000000 : ℚ), (64599061181/500000000000 : ℚ), 2⟩,
    ⟨(4229996409/6250000000 : ℚ), (-2364684453/10000000000 : ℚ), (28300787877/200000000000 : ℚ), 2⟩,
    ⟨(679774862403/1000000000000 : ℚ), (-2530090069/10000000000 : ℚ), (152723031629/1000000000000 : ℚ), 2⟩,
    ⟨(341284408261/500000000000 : ℚ), (-2679759201/10000000000 : ℚ), (162917947547/1000000000000 : ℚ), 2⟩,
    ⟨(685174556917/1000000000000 : ℚ), (-351833601/1250000000 : ℚ), (172143938083/1000000000000 : ℚ), 2⟩,
    ⟨(687585806131/1000000000000 : ℚ), (-2935677767/10000000000 : ℚ), (36089936183/200000000000 : ℚ), 2⟩,
    ⟨(344898377627/500000000000 : ℚ), (-608707717/2000000000 : ℚ), (187877908003/1000000000000 : ℚ), 2⟩,
    ⟨(138360415583/200000000000 : ℚ), (-784726871/2500000000 : ℚ), (97232973821/500000000000 : ℚ), 2⟩,
    ⟨(173399235779/250000000000 : ℚ), (-805588269/2500000000 : ℚ), (200246193113/1000000000000 : ℚ), 2⟩,
    ⟨(695177026871/1000000000000 : ℚ), (-205897737/625000000 : ℚ), (102623252947/500000000000 : ℚ), 2⟩,
    ⟨(348269261309/500000000000 : ℚ), (-3355354199/10000000000 : ℚ), (13093159989/62500000000 : ℚ), 2⟩,
    ⟨(174419537599/250000000000 : ℚ), (-1702835161/5000000000 : ℚ), (212998132417/1000000000000 : ℚ), 2⟩,
    ⟨(34929658237/50000000000 : ℚ), (-3445594061/10000000000 : ℚ), (107892673901/500000000000 : ℚ), 2⟩,
    ⟨(699281361303/1000000000000 : ℚ), (-868836693/2500000000 : ℚ), (108932437133/500000000000 : ℚ), 2⟩,
    ⟨(699741082157/1000000000000 : ℚ), (-3495092073/10000000000 : ℚ), (5481151997/25000000000 : ℚ), 2⟩,
    ⟨(349985609897/500000000000 : ℚ), (-1752468953/5000000000 : ℚ), (43987029299/200000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-3506167381/10000000000 : ℚ), (110010603973/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (36229625267/200000000000 : ℚ)
  μ := (7/10 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control554.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control554.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate554

namespace DiagonalRamsey.JointInheritedCertificate555
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(249583220563/1000000000000 : ℚ), (13068736913697/10000000000 : ℚ), (-81692001998489/250000000000 : ℚ), 12⟩,
    ⟨(250210834553/1000000000000 : ℚ), (57127926599/400000000 : ℚ), (-36105237616881/1000000000000 : ℚ), 9⟩,
    ⟨(125730009133/500000000000 : ℚ), (250204478313/5000000000 : ℚ), (-1285205579189/100000000000 : ℚ), 7⟩,
    ⟨(12665937069/50000000000 : ℚ), (61590248979/2500000000 : ℚ), (-805670393911/125000000000 : ℚ), 7⟩,
    ⟨(15985568961/62500000000 : ℚ), (5707680889/400000000 : ℚ), (-952158833293/250000000000 : ℚ), 6⟩,
    ⟨(258787505929/1000000000000 : ℚ), (90764299031/10000000000 : ℚ), (-98947368227/40000000000 : ℚ), 5⟩,
    ⟨(65586220043/250000000000 : ℚ), (61266100137/10000000000 : ℚ), (-852818684217/500000000000 : ℚ), 5⟩,
    ⟨(53281393329/200000000000 : ℚ), (336064553/78125000 : ℚ), (-152937877091/125000000000 : ℚ), 4⟩,
    ⟨(270934645237/1000000000000 : ℚ), (15502749917/5000000000 : ℚ), (-56314397587/62500000000 : ℚ), 4⟩,
    ⟨(137942155963/500000000000 : ℚ), (22720928419/10000000000 : ℚ), (-168667358327/250000000000 : ℚ), 4⟩,
    ⟨(140604149359/500000000000 : ℚ), (16791385271/10000000000 : ℚ), (-509604932861/1000000000000 : ℚ), 4⟩,
    ⟨(71713833177/250000000000 : ℚ), (6209209433/5000000000 : ℚ), (-77093870117/200000000000 : ℚ), 4⟩,
    ⟨(18298189367/62500000000 : ℚ), (9112381369/10000000000 : ℚ), (-289706330587/1000000000000 : ℚ), 3⟩,
    ⟨(298898418813/1000000000000 : ℚ), (6560089577/10000000000 : ℚ), (-107118494137/500000000000 : ℚ), 3⟩,
    ⟨(305178489427/1000000000000 : ℚ), (284633331/625000000 : ℚ), (-153675840421/1000000000000 : ℚ), 3⟩,
    ⟨(311550761199/1000000000000 : ℚ), (46141997/156250000 : ℚ), (-104324631389/1000000000000 : ℚ), 3⟩,
    ⟨(317953865669/1000000000000 : ℚ), (829056727/5000000000 : ℚ), (-31789620623/500000000000 : ℚ), 3⟩,
    ⟨(324326137441/1000000000000 : ℚ), (299333521/5000000000 : ℚ), (-29566628783/1000000000000 : ℚ), 3⟩,
    ⟨(165303104027/500000000000 : ℚ), (-69127473/2500000000 : ℚ), (-91519879/100000000000 : ℚ), 3⟩,
    ⟨(67346719399/200000000000 : ℚ), (-1005237219/10000000000 : ℚ), (23394664303/1000000000000 : ℚ), 3⟩,
    ⟨(4283116177/12500000000 : ℚ), (-323156747/2000000000 : ℚ), (5516297901/125000000000 : ℚ), 3⟩,
    ⟨(6965926563/20000000000 : ℚ), (-106475471/500000000 : ℚ), (61875340649/1000000000000 : ℚ), 3⟩,
    ⟨(353620314941/1000000000000 : ℚ), (-40042133/156250000 : ℚ), (9634549053/125000000000 : ℚ), 3⟩,
    ⟨(35856998163/100000000000 : ℚ), (-365980063/1250000000 : ℚ), (45038808203/500000000000 : ℚ), 3⟩,
    ⟨(181548830111/500000000000 : ℚ), (-101080447/312500000 : ℚ), (25286173671/250000000000 : ℚ), 3⟩,
    ⟨(73431949339/200000000000 : ℚ), (-872584629/2500000000 : ℚ), (55241398261/500000000000 : ℚ), 3⟩,
    ⟨(185358560469/500000000000 : ℚ), (-3700872773/10000000000 : ℚ), (59124930963/500000000000 : ℚ), 3⟩,
    ⟨(373735523491/1000000000000 : ℚ), (-1935289277/5000000000 : ℚ), (15570820111/125000000000 : ℚ), 3⟩,
    ⟨(376185885487/1000000000000 : ℚ), (-62543559/156250000 : ℚ), (25904757851/200000000000 : ℚ), 2⟩,
    ⟨(189022304301/500000000000 : ℚ), (-2049980323/5000000000 : ℚ), (66594142969/500000000000 : ℚ), 2⟩,
    ⟨(75858758463/200000000000 : ℚ), (-2081914421/5000000000 : ℚ), (67803383013/500000000000 : ℚ), 2⟩,
    ⟨(11872543947/31250000000 : ℚ), (-2097747447/5000000000 : ℚ), (136808831979/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4199440731/10000000000 : ℚ), (27391751649/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (15239131333/40000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control555.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control555.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate555

namespace DiagonalRamsey.JointInheritedCertificate556
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264113239397/1000000000000 : ℚ), (13273383138023/10000000000 : ℚ), (-43899665131133/125000000000 : ℚ), 12⟩,
    ⟨(33095897121/125000000000 : ℚ), (58032983549/400000000 : ℚ), (-2425350668731/62500000000 : ℚ), 9⟩,
    ⟨(266068754333/1000000000000 : ℚ), (101694957949/2000000000 : ℚ), (-3453530679963/250000000000 : ℚ), 7⟩,
    ⟨(268005436591/1000000000000 : ℚ), (62604122151/2500000000 : ℚ), (-6928520572063/1000000000000 : ℚ), 7⟩,
    ⟨(270558572433/1000000000000 : ℚ), (18137318699/1250000000 : ℚ), (-2047361836039/500000000000 : ℚ), 6⟩,
    ⟨(54740714753/200000000000 : ℚ), (46168781853/5000000000 : ℚ), (-2660030441809/1000000000000 : ℚ), 5⟩,
    ⟨(138705076253/500000000000 : ℚ), (62361572713/10000000000 : ℚ), (-1834631711749/1000000000000 : ℚ), 5⟩,
    ⟨(11265704491/40000000000 : ℚ), (43813408441/10000000000 : ℚ), (-164566173867/125000000000 : ℚ), 4⟩,
    ⟨(71590048043/250000000000 : ℚ), (31604677119/10000000000 : ℚ), (-485017112709/500000000000 : ℚ), 4⟩,
    ⟨(145758729661/500000000000 : ℚ), (11591325557/5000000000 : ℚ), (-726844983027/1000000000000 : ℚ), 4⟩,
    ⟨(11882589857/40000000000 : ℚ), (17154314753/10000000000 : ℚ), (-17173221939/31250000000 : ℚ), 4⟩,
    ⟨(302948630073/1000000000000 : ℚ), (6354205249/5000000000 : ℚ), (-208118883311/500000000000 : ℚ), 4⟩,
    ⟨(1236449781/4000000000 : ℚ), (1168421951/1250000000 : ℚ), (-156716567379/500000000000 : ℚ), 3⟩,
    ⟨(157748415523/500000000000 : ℚ), (3376458023/5000000000 : ℚ), (-58111359859/250000000000 : ℚ), 3⟩,
    ⟨(1257969931/3906250000 : ℚ), (589274767/1250000000 : ℚ), (-20935693827/125000000000 : ℚ), 3⟩,
    ⟨(164339920957/500000000000 : ℚ), (1543715659/5000000000 : ℚ), (-28644396891/250000000000 : ℚ), 3⟩,
    ⟨(167675753693/500000000000 : ℚ), (221512081/1250000000 : ℚ), (-7092149907/100000000000 : ℚ), 3⟩,
    ⟨(85497761741/250000000000 : ℚ), (696431101/10000000000 : ℚ), (-34502877569/1000000000000 : ℚ), 3⟩,
    ⟨(174267259127/500000000000 : ℚ), (-38345553/2000000000 : ℚ), (-1923087409/500000000000 : ℚ), 3⟩,
    ⟨(7098378081/20000000000 : ℚ), (-93088133/1000000000 : ℚ), (22145917791/1000000000000 : ℚ), 3⟩,
    ⟨(361082719227/1000000000000 : ℚ), (-1549819747/10000000000 : ℚ), (44299694961/1000000000000 : ℚ), 3⟩,
    ⟨(183483301437/500000000000 : ℚ), (-2070306687/10000000000 : ℚ), (15810915123/250000000000 : ℚ), 3⟩,
    ⟨(372513889977/1000000000000 : ℚ), (-2508939987/10000000000 : ℚ), (79459566911/1000000000000 : ℚ), 3⟩,
    ⟨(47208894641/125000000000 : ℚ), (-2878463601/10000000000 : ℚ), (23329665281/250000000000 : ℚ), 3⟩,
    ⟨(15295549481/40000000000 : ℚ), (-3188706867/10000000000 : ℚ), (52553931993/500000000000 : ℚ), 3⟩,
    ⟨(193310598397/500000000000 : ℚ), (-430908229/1250000000 : ℚ), (115048965349/1000000000000 : ℚ), 3⟩,
    ⟨(195163887767/500000000000 : ℚ), (-3660002789/10000000000 : ℚ), (24662575877/200000000000 : ℚ), 3⟩,
    ⟨(393472776867/1000000000000 : ℚ), (-3831415231/10000000000 : ℚ), (8126895553/62500000000 : ℚ), 2⟩,
    ⟨(396025912709/1000000000000 : ℚ), (-1982454537/5000000000 : ℚ), (8456242853/62500000000 : ℚ), 2⟩,
    ⟨(397962594967/1000000000000 : ℚ), (-2031499997/5000000000 : ℚ), (139193995941/1000000000000 : ℚ), 2⟩,
    ⟨(99816043083/250000000000 : ℚ), (-2063729589/5000000000 : ℚ), (8860213301/62500000000 : ℚ), 2⟩,
    ⟨(399918109903/1000000000000 : ℚ), (-4159414523/10000000000 : ℚ), (3576007963/25000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-832679247/2000000000 : ℚ), (28639914141/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (92316179179/250000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control556.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control556.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate556

namespace DiagonalRamsey.JointInheritedCertificate557
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69689646143/250000000000 : ℚ), (2695759587219/2000000000 : ℚ), (-5881225861597/15625000000 : ℚ), 12⟩,
    ⟨(279438290731/1000000000000 : ℚ), (1473533636601/10000000000 : ℚ), (-2079561315641/50000000000 : ℚ), 9⟩,
    ⟨(280791157107/1000000000000 : ℚ), (258284189389/5000000000 : ℚ), (-3701627074499/250000000000 : ℚ), 7⟩,
    ⟨(282804154857/1000000000000 : ℚ), (203587697/8000000 : ℚ), (-7426867350117/1000000000000 : ℚ), 7⟩,
    ⟨(285457897713/1000000000000 : ℚ), (147511497451/10000000000 : ℚ), (-2194889225059/500000000000 : ℚ), 6⟩,
    ⟨(7218170717/25000000000 : ℚ), (93914102577/10000000000 : ℚ), (-2852196425097/1000000000000 : ℚ), 5⟩,
    ⟨(58515893233/200000000000 : ℚ), (12691702587/2000000000 : ℚ), (-983819729103/500000000000 : ℚ), 5⟩,
    ⟨(59395741433/200000000000 : ℚ), (11152723111/2500000000 : ℚ), (-282487879847/200000000000 : ℚ), 4⟩,
    ⟨(301882184583/1000000000000 : ℚ), (32203443357/10000000000 : ℚ), (-260292565781/250000000000 : ℚ), 4⟩,
    ⟨(1228970701/4000000000 : ℚ), (23643443817/10000000000 : ℚ), (-195157346011/250000000000 : ℚ), 4⟩,
    ⟨(313008554713/1000000000000 : ℚ), (3503188797/2000000000 : ℚ), (-590712629449/1000000000000 : ℚ), 4⟩,
    ⟨(319124294399/1000000000000 : ℚ), (1624604067/1250000000 : ℚ), (-447957684167/1000000000000 : ℚ), 4⟩,
    ⟨(40691374549/125000000000 : ℚ), (383224093/400000000 : ℚ), (-337899463759/1000000000000 : ℚ), 3⟩,
    ⟨(6643339213/20000000000 : ℚ), (6943829409/10000000000 : ℚ), (-251230126029/1000000000000 : ℚ), 3⟩,
    ⟨(338968279209/1000000000000 : ℚ), (974448749/2000000000 : ℚ), (-181744049003/1000000000000 : ℚ), 3⟩,
    ⟨(345869451653/1000000000000 : ℚ), (1609839941/5000000000 : ℚ), (-62589427243/500000000000 : ℚ), 3⟩,
    ⟨(4410050199/12500000000 : ℚ), (1883932963/10000000000 : ℚ), (-39266129211/500000000000 : ℚ), 3⟩,
    ⟨(71941037673/200000000000 : ℚ), (99001887/1250000000 : ℚ), (-19821950431/500000000000 : ℚ), 3⟩,
    ⟨(91626626731/250000000000 : ℚ), (-109144097/10000000000 : ℚ), (-277234779/40000000000 : ℚ), 3⟩,
    ⟨(186571235591/500000000000 : ℚ), (-214682683/2500000000 : ℚ), (10392212689/500000000000 : ℚ), 3⟩,
    ⟨(15181966927/40000000000 : ℚ), (-1486059007/10000000000 : ℚ), (44389147253/1000000000000 : ℚ), 3⟩,
    ⟨(385664912861/1000000000000 : ℚ), (-503324643/2500000000 : ℚ), (12911697033/200000000000 : ℚ), 3⟩,
    ⟨(391430792323/1000000000000 : ℚ), (-2457364831/10000000000 : ℚ), (16362065703/200000000000 : ℚ), 3⟩,
    ⟨(396791282991/1000000000000 : ℚ), (-566250379/2000000000 : ℚ), (96544085289/1000000000000 : ℚ), 3⟩,
    ⟨(401694760409/1000000000000 : ℚ), (-3144986987/10000000000 : ℚ), (109068713153/1000000000000 : ℚ), 3⟩,
    ⟨(1586304693/3906250000 : ℚ), (-85158071/250000000 : ℚ), (934556767/7812500000 : ℚ), 3⟩,
    ⟨(204973319447/500000000000 : ℚ), (-3621245441/10000000000 : ℚ), (6419607469/50000000000 : ℚ), 3⟩,
    ⟨(413215569861/1000000000000 : ℚ), (-1897174571/5000000000 : ℚ), (67758274803/500000000000 : ℚ), 2⟩,
    ⟨(103967328179/250000000000 : ℚ), (-785822907/2000000000 : ℚ), (551183739/3906250000 : ℚ), 2⟩,
    ⟨(208941155233/500000000000 : ℚ), (-4028113277/10000000000 : ℚ), (14523000993/100000000000 : ℚ), 2⟩,
    ⟨(209617588421/500000000000 : ℚ), (-4093156431/10000000000 : ℚ), (147952434767/1000000000000 : ℚ), 2⟩,
    ⟨(419914883001/1000000000000 : ℚ), (-825079501/2000000000 : ℚ), (74652594053/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2064707321/5000000000 : ℚ), (2335529543/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (89371743141/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control557.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control557.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate557

namespace DiagonalRamsey.JointInheritedCertificate578
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127932130767/250000000000 : ℚ), (4503074370523/2500000000 : ℚ), (-461475243788127/500000000000 : ℚ), 12⟩,
    ⟨(256317277677/500000000000 : ℚ), (1975321193459/10000000000 : ℚ), (-102025209396149/1000000000000 : ℚ), 9⟩,
    ⟨(257218947169/500000000000 : ℚ), (347865899623/5000000000 : ℚ), (-3635157985809/100000000000 : ℚ), 8⟩,
    ⟨(258560586441/500000000000 : ℚ), (86184084097/2500000000 : ℚ), (-18258324602771/1000000000000 : ℚ), 7⟩,
    ⟨(104131709909/200000000000 : ℚ), (100585938609/5000000000 : ℚ), (-10813103910233/1000000000000 : ℚ), 6⟩,
    ⟨(525015957457/1000000000000 : ℚ), (32265256833/2500000000 : ℚ), (-3522475237899/500000000000 : ℚ), 5⟩,
    ⟨(265075716199/500000000000 : ℚ), (87972474641/10000000000 : ℚ), (-4878339277231/1000000000000 : ℚ), 5⟩,
    ⟨(67001939617/125000000000 : ℚ), (62472003593/10000000000 : ℚ), (-703929650419/200000000000 : ℚ), 5⟩,
    ⟨(135637934183/250000000000 : ℚ), (45638507091/10000000000 : ℚ), (-1306145419283/500000000000 : ℚ), 4⟩,
    ⟨(17178035763/31250000000 : ℚ), (33996043801/10000000000 : ℚ), (-988382110123/500000000000 : ℚ), 4⟩,
    ⟨(278691462903/500000000000 : ℚ), (25645237631/10000000000 : ℚ), (-757358757783/500000000000 : ℚ), 4⟩,
    ⟨(282767531313/500000000000 : ℚ), (9739044049/5000000000 : ℚ), (-233720132203/200000000000 : ℚ), 4⟩,
    ⟨(287037522671/500000000000 : ℚ), (14813632703/10000000000 : ℚ), (-225730034007/250000000000 : ℚ), 3⟩,
    ⟨(145730157313/250000000000 : ℚ), (11215157661/10000000000 : ℚ), (-694823390769/1000000000000 : ℚ), 3⟩,
    ⟨(295993313273/500000000000 : ℚ), (8392506131/10000000000 : ℚ), (-33066249023/62500000000 : ℚ), 3⟩,
    ⟨(601185726717/1000000000000 : ℚ), (3073531593/5000000000 : ℚ), (-197569934517/500000000000 : ℚ), 3⟩,
    ⟨(610429337399/1000000000000 : ℚ), (867876017/2000000000 : ℚ), (-285658484617/1000000000000 : ℚ), 3⟩,
    ⟨(619628437569/1000000000000 : ℚ), (717348141/2500000000 : ℚ), (-195271692137/1000000000000 : ℚ), 3⟩,
    ⟨(39293402179/62500000000 : ℚ), (831968147/5000000000 : ℚ), (-60023850237/500000000000 : ℚ), 3⟩,
    ⟨(637540018773/1000000000000 : ℚ), (133728493/2000000000 : ℚ), (-57045581381/1000000000000 : ℚ), 3⟩,
    ⟨(646080001489/1000000000000 : ℚ), (-157454837/10000000000 : ℚ), (-806852719/200000000000 : ℚ), 3⟩,
    ⟨(654232138309/1000000000000 : ℚ), (-211396469/2500000000 : ℚ), (20349482499/500000000000 : ℚ), 3⟩,
    ⟨(661917919699/1000000000000 : ℚ), (-141978779/1000000000 : ℚ), (19620381101/250000000000 : ℚ), 3⟩,
    ⟨(83632915923/125000000000 : ℚ), (-949348931/5000000000 : ℚ), (27587408489/250000000000 : ℚ), 2⟩,
    ⟨(33779977359/50000000000 : ℚ), (-2296837777/10000000000 : ℚ), (34278974281/250000000000 : ℚ), 2⟩,
    ⟨(340731815859/500000000000 : ℚ), (-656386431/2500000000 : ℚ), (159418533057/1000000000000 : ℚ), 2⟩,
    ⟨(343299553329/500000000000 : ℚ), (-2893660583/10000000000 : ℚ), (177757682909/1000000000000 : ℚ), 2⟩,
    ⟨(69095651457/100000000000 : ℚ), (-1554014171/5000000000 : ℚ), (192522440527/1000000000000 : ℚ), 2⟩,
    ⟨(347246945617/500000000000 : ℚ), (-818469603/2500000000 : ℚ), (102005542449/500000000000 : ℚ), 2⟩,
    ⟨(697177169777/1000000000000 : ℚ), (-848775561/2500000000 : ℚ), (212446184049/1000000000000 : ℚ), 2⟩,
    ⟨(349490254381/500000000000 : ℚ), (-1737228107/5000000000 : ℚ), (217985691753/1000000000000 : ℚ), 2⟩,
    ⟨(699886541047/1000000000000 : ℚ), (-878425841/2500000000 : ℚ), (110365382937/500000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-87964733/250000000 : ℚ), (27634094383/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (187583611769/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control578.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control578.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate578

namespace DiagonalRamsey.JointInheritedCertificate580
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12568743529/50000000000 : ℚ), (1617757970089/1250000000 : ℚ), (-65182342761589/200000000000 : ℚ), 12⟩,
    ⟨(62998465621/250000000000 : ℚ), (141461707373/1000000000 : ℚ), (-36009350315517/1000000000000 : ℚ), 9⟩,
    ⟨(253225885061/1000000000000 : ℚ), (495770966267/10000000000 : ℚ), (-320425122259/25000000000 : ℚ), 8⟩,
    ⟨(127529536631/500000000000 : ℚ), (48827985433/2000000000 : ℚ), (-1285415680987/200000000000 : ℚ), 7⟩,
    ⟨(804611789/3125000000 : ℚ), (141439535661/10000000000 : ℚ), (-1898628093497/500000000000 : ℚ), 6⟩,
    ⟨(130226354291/500000000000 : ℚ), (5624127407/625000000 : ℚ), (-4816029831/1953125000 : ℚ), 5⟩,
    ⟨(52792242409/200000000000 : ℚ), (12150004533/2000000000 : ℚ), (-1699781897127/1000000000000 : ℚ), 5⟩,
    ⟨(16747968379/62500000000 : ℚ), (8531489899/2000000000 : ℚ), (-1218923459213/1000000000000 : ℚ), 5⟩,
    ⟨(17027060747/62500000000 : ℚ), (15373355457/5000000000 : ℚ), (-89731151327/100000000000 : ℚ), 4⟩,
    ⟨(69328660179/250000000000 : ℚ), (180229193/80000000 : ℚ), (-16789058527/25000000000 : ℚ), 4⟩,
    ⟨(141282743609/500000000000 : ℚ), (1664491849/1000000000 : ℚ), (-101390330463/200000000000 : ℚ), 4⟩,
    ⟨(144067471467/500000000000 : ℚ), (12304441419/10000000000 : ℚ), (-23947817297/62500000000 : ℚ), 4⟩,
    ⟨(293969370963/1000000000000 : ℚ), (9022026263/10000000000 : ℚ), (-7191972259/25000000000 : ℚ), 3⟩,
    ⟨(300012582573/1000000000000 : ℚ), (648729053/1000000000 : ℚ), (-106217529901/500000000000 : ℚ), 3⟩,
    ⟨(76551594583/250000000000 : ℚ), (35114383/78125000 : ℚ), (-9503865587/62500000000 : ℚ), 3⟩,
    ⟨(156245554301/500000000000 : ℚ), (145193143/500000000 : ℚ), (-6429393183/62500000000 : ℚ), 3⟩,
    ⟨(318806247993/1000000000000 : ℚ), (1616939527/10000000000 : ℚ), (-31131329057/500000000000 : ℚ), 3⟩,
    ⟨(325090978263/1000000000000 : ℚ), (563898201/10000000000 : ℚ), (-1773148359/62500000000 : ℚ), 3⟩,
    ⟨(165642387011/500000000000 : ℚ), (-306118069/10000000000 : ℚ), (175007223/1000000000000 : ℚ), 3⟩,
    ⟨(337327985631/1000000000000 : ℚ), (-206128499/2000000000 : ℚ), (3048857401/125000000000 : ℚ), 3⟩,
    ⟨(17158120683/50000000000 : ℚ), (-65509461/400000000 : ℚ), (45042999011/1000000000000 : ℚ), 3⟩,
    ⟨(348731869377/1000000000000 : ℚ), (-537152071/2500000000 : ℚ), (31356825317/500000000000 : ℚ), 3⟩,
    ⟨(353982715879/1000000000000 : ℚ), (-1289713713/5000000000 : ℚ), (311395303/4000000000 : ℚ), 3⟩,
    ⟨(358864384643/1000000000000 : ℚ), (-735651243/2500000000 : ℚ), (45395989861/500000000000 : ℚ), 3⟩,
    ⟨(363329862531/1000000000000 : ℚ), (-324770973/1000000000 : ℚ), (25452082079/250000000000 : ℚ), 3⟩,
    ⟨(7346722891/20000000000 : ℚ), (-140085327/400000000 : ℚ), (27775671089/250000000000 : ℚ), 3⟩,
    ⟨(370844648013/1000000000000 : ℚ), (-1855788513/5000000000 : ℚ), (14854088781/125000000000 : ℚ), 3⟩,
    ⟨(74764316823/200000000000 : ℚ), (-1940206727/5000000000 : ℚ), (3909964269/31250000000 : ℚ), 3⟩,
    ⟨(376238283333/1000000000000 : ℚ), (-2005975939/5000000000 : ℚ), (5202073811/40000000000 : ℚ), 3⟩,
    ⟨(378071471533/1000000000000 : ℚ), (-821727121/2000000000 : ℚ), (16712284951/125000000000 : ℚ), 3⟩,
    ⟨(379303494111/1000000000000 : ℚ), (-834436841/2000000000 : ℚ), (136104774001/1000000000000 : ℚ), 3⟩,
    ⟨(75984497203/200000000000 : ℚ), (-4203692381/10000000000 : ℚ), (17162607983/125000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-2103809287/5000000000 : ℚ), (27490008797/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (97717226509/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control580.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control580.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate580

namespace DiagonalRamsey.JointInheritedCertificate581
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2077539253/7812500000 : ℚ), (6567570325409/5000000000 : ℚ), (-10934728937309/31250000000 : ℚ), 12⟩,
    ⟨(66642560743/250000000000 : ℚ), (1435962208483/10000000000 : ℚ), (-154647874253/4000000000 : ℚ), 9⟩,
    ⟨(267854466341/1000000000000 : ℚ), (6292231333/125000000 : ℚ), (-13761872561269/1000000000000 : ℚ), 8⟩,
    ⟨(134882663359/500000000000 : ℚ), (123981904867/5000000000 : ℚ), (-3450727380717/500000000000 : ℚ), 7⟩,
    ⟨(8508888171/31250000000 : ℚ), (143707670517/10000000000 : ℚ), (-4078027529619/1000000000000 : ℚ), 6⟩,
    ⟨(34423436293/125000000000 : ℚ), (45734013901/5000000000 : ℚ), (-2648589804739/1000000000000 : ℚ), 5⟩,
    ⟨(69761162271/250000000000 : ℚ), (61781249921/10000000000 : ℚ), (-57069397571/31250000000 : ℚ), 5⟩,
    ⟨(56644135451/200000000000 : ℚ), (21703620623/5000000000 : ℚ), (-1310026645151/1000000000000 : ℚ), 5⟩,
    ⟨(287875357423/1000000000000 : ℚ), (15654879259/5000000000 : ℚ), (-482407285977/500000000000 : ℚ), 4⟩,
    ⟨(36620482809/125000000000 : ℚ), (1435128213/625000000 : ℚ), (-18063325981/25000000000 : ℚ), 4⟩,
    ⟨(149218593659/500000000000 : ℚ), (16985157007/10000000000 : ℚ), (-545900252559/1000000000000 : ℚ), 4⟩,
    ⟨(304242620851/1000000000000 : ℚ), (12575915383/10000000000 : ℚ), (-413105307909/1000000000000 : ℚ), 4⟩,
    ⟨(310324253571/1000000000000 : ℚ), (4620833517/5000000000 : ℚ), (-310701502703/1000000000000 : ℚ), 3⟩,
    ⟨(316623516031/1000000000000 : ℚ), (3333603517/5000000000 : ℚ), (-230036545233/1000000000000 : ℚ), 3⟩,
    ⟨(32307974289/100000000000 : ℚ), (4643711569/10000000000 : ℚ), (-41335534337/250000000000 : ℚ), 3⟩,
    ⟨(65926151431/200000000000 : ℚ), (1514366433/5000000000 : ℚ), (-56328277147/500000000000 : ℚ), 3⟩,
    ⟨(21013341811/62500000000 : ℚ), (861334579/5000000000 : ℚ), (-69189570209/1000000000000 : ℚ), 3⟩,
    ⟨(342764483241/1000000000000 : ℚ), (130879153/2000000000 : ℚ), (-16466857261/500000000000 : ℚ), 3⟩,
    ⟨(349220710101/1000000000000 : ℚ), (-113899081/5000000000 : ℚ), (-604601543/250000000000 : ℚ), 3⟩,
    ⟨(355519972561/1000000000000 : ℚ), (-481044927/5000000000 : ℚ), (23450064901/1000000000000 : ℚ), 3⟩,
    ⟨(361601605281/1000000000000 : ℚ), (-394258413/2500000000 : ℚ), (45495357559/1000000000000 : ℚ), 3⟩,
    ⟨(367407038813/1000000000000 : ℚ), (-1047109753/5000000000 : ℚ), (64344025099/1000000000000 : ℚ), 3⟩,
    ⟨(372880363659/1000000000000 : ℚ), (-2530115699/10000000000 : ℚ), (40238179803/500000000000 : ℚ), 3⟩,
    ⟨(377968868709/1000000000000 : ℚ), (-72434211/250000000 : ℚ), (9426250107/100000000000 : ℚ), 3⟩,
    ⟨(95655887219/250000000000 : ℚ), (-3205732511/10000000000 : ℚ), (26497129791/250000000000 : ℚ), 3⟩,
    ⟨(386799577047/1000000000000 : ℚ), (-3462746581/10000000000 : ℚ), (57937770489/500000000000 : ℚ), 3⟩,
    ⟨(97614183947/250000000000 : ℚ), (-3674228511/10000000000 : ℚ), (124093957933/1000000000000 : ℚ), 3⟩,
    ⟨(19677990233/50000000000 : ℚ), (-961160341/2500000000 : ℚ), (130774078069/1000000000000 : ℚ), 3⟩,
    ⟨(198039449707/500000000000 : ℚ), (-994341149/2500000000 : ℚ), (136014146369/1000000000000 : ℚ), 3⟩,
    ⟨(39798975979/100000000000 : ℚ), (-4074893987/10000000000 : ℚ), (69943178013/500000000000 : ℚ), 3⟩,
    ⟨(399273983159/1000000000000 : ℚ), (-1034746617/2500000000 : ℚ), (142441274321/1000000000000 : ℚ), 3⟩,
    ⟨(99979800437/250000000000 : ℚ), (-2085380363/5000000000 : ℚ), (71855480671/500000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-4174719907/10000000000 : ℚ), (143869312583/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (379017652147/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control581.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control581.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate581

namespace DiagonalRamsey.JointInheritedCertificate582
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140327926949/500000000000 : ℚ), (13339046953273/10000000000 : ℚ), (-375018069508953/1000000000000 : ℚ), 12⟩,
    ⟨(281326429693/1000000000000 : ℚ), (1458505642587/10000000000 : ℚ), (-10359274314759/250000000000 : ℚ), 9⟩,
    ⟨(282661123269/1000000000000 : ℚ), (5114138909/100000000 : ℚ), (-3687620910451/250000000000 : ℚ), 8⟩,
    ⟨(355808851/1250000000 : ℚ), (252003299217/10000000000 : ℚ), (-1849469109743/250000000000 : ℚ), 7⟩,
    ⟨(71816294107/250000000000 : ℚ), (146104107989/10000000000 : ℚ), (-4371918373541/1000000000000 : ℚ), 6⟩,
    ⟨(14524509823/50000000000 : ℚ), (23258541203/2500000000 : ℚ), (-709994319121/250000000000 : ℚ), 5⟩,
    ⟨(294291082193/1000000000000 : ℚ), (62871269139/10000000000 : ℚ), (-979335888419/500000000000 : ℚ), 5⟩,
    ⟨(37328903627/125000000000 : ℚ), (22099978631/5000000000 : ℚ), (-702759651509/500000000000 : ℚ), 5⟩,
    ⟨(151734419473/500000000000 : ℚ), (15952583403/5000000000 : ℚ), (-1035626575003/1000000000000 : ℚ), 4⟩,
    ⟨(19297332697/62500000000 : ℚ), (936817937/400000000 : ℚ), (-388029523721/500000000000 : ℚ), 4⟩,
    ⟨(157222875321/500000000000 : ℚ), (8672533713/5000000000 : ℚ), (-586859409643/1000000000000 : ℚ), 4⟩,
    ⟨(320479338749/1000000000000 : ℚ), (2572621119/2000000000 : ℚ), (-17786045521/40000000000 : ℚ), 4⟩,
    ⟨(326799980721/1000000000000 : ℚ), (9474018307/10000000000 : ℚ), (-67004381967/200000000000 : ℚ), 3⟩,
    ⟨(333346805321/1000000000000 : ℚ), (3428754573/5000000000 : ℚ), (-24869768379/100000000000 : ℚ), 3⟩,
    ⟨(340056763049/1000000000000 : ℚ), (4801343731/10000000000 : ℚ), (-35899043047/200000000000 : ℚ), 3⟩,
    ⟨(5419769271/15625000000 : ℚ), (158035861/500000000 : ℚ), (-123167337199/1000000000000 : ℚ), 3⟩,
    ⟨(88426661729/250000000000 : ℚ), (91717727/500000000 : ℚ), (-76722328907/1000000000000 : ℚ), 3⟩,
    ⟨(360515117211/1000000000000 : ℚ), (749915221/10000000000 : ℚ), (-38007292821/1000000000000 : ℚ), 3⟩,
    ⟨(367225074939/1000000000000 : ℚ), (-145212891/10000000000 : ℚ), (-136116603/25000000000 : ℚ), 3⟩,
    ⟨(373771899539/1000000000000 : ℚ), (-55617929/625000000 : ℚ), (4427853831/200000000000 : ℚ), 3⟩,
    ⟨(380092541511/1000000000000 : ℚ), (-378295359/2500000000 : ℚ), (45628827389/1000000000000 : ℚ), 3⟩,
    ⟨(193063064809/500000000000 : ℚ), (-1018544897/5000000000 : ℚ), (65697092653/1000000000000 : ℚ), 3⟩,
    ⟨(97953639277/250000000000 : ℚ), (-2478395723/10000000000 : ℚ), (82860374899/1000000000000 : ℚ), 3⟩,
    ⟨(198551520657/500000000000 : ℚ), (-113999761/400000000 : ℚ), (12189610423/125000000000 : ℚ), 3⟩,
    ⟨(100485162811/250000000000 : ℚ), (-3161836181/10000000000 : ℚ), (109974653027/1000000000000 : ℚ), 3⟩,
    ⟨(101570199517/250000000000 : ℚ), (-3421616633/10000000000 : ℚ), (120472017839/1000000000000 : ℚ), 3⟩,
    ⟨(2050408419/5000000000 : ℚ), (-908819061/2500000000 : ℚ), (64596407387/500000000000 : ℚ), 3⟩,
    ⟨(413306703833/1000000000000 : ℚ), (-951843603/2500000000 : ℚ), (136277779949/1000000000000 : ℚ), 3⟩,
    ⟨(20796239973/50000000000 : ℚ), (-788272973/2000000000 : ℚ), (70916563757/500000000000 : ℚ), 3⟩,
    ⟨(417910756991/1000000000000 : ℚ), (-126243721/312500000 : ℚ), (9121061263/62500000000 : ℚ), 3⟩,
    ⟨(52405681321/125000000000 : ℚ), (-128264801/312500000 : ℚ), (74322051373/500000000000 : ℚ), 3⟩,
    ⟨(209958013181/500000000000 : ℚ), (-4136532703/10000000000 : ℚ), (149989237991/1000000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-4140527197/10000000000 : ℚ), (6006279599/40000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (183530979453/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control582.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control582.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate582

namespace DiagonalRamsey.JointInheritedCertificate600
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6328444543/25000000000 : ℚ), (3200388945959/2500000000 : ℚ), (-324622505825679/1000000000000 : ℚ), 12⟩,
    ⟨(253748289841/1000000000000 : ℚ), (1399502573073/10000000000 : ℚ), (-7173069150107/200000000000 : ℚ), 9⟩,
    ⟨(50992685311/200000000000 : ℚ), (245291826023/5000000000 : ℚ), (-12764620749231/1000000000000 : ℚ), 8⟩,
    ⟨(256771489433/1000000000000 : ℚ), (48328123389/2000000000 : ℚ), (-6399941882033/1000000000000 : ℚ), 7⟩,
    ⟨(259155065839/1000000000000 : ℚ), (140020315747/10000000000 : ℚ), (-945128925863/250000000000 : ℚ), 6⟩,
    ⟨(262091200631/1000000000000 : ℚ), (8909743899/1000000000 : ℚ), (-98173437969/40000000000 : ℚ), 5⟩,
    ⟨(33193952153/125000000000 : ℚ), (60155989287/10000000000 : ℚ), (-211418540871/125000000000 : ℚ), 5⟩,
    ⟨(269502989917/1000000000000 : ℚ), (42240945647/10000000000 : ℚ), (-606201704447/500000000000 : ℚ), 5⟩,
    ⟨(68476816207/250000000000 : ℚ), (3044372377/1000000000 : ℚ), (-446039101369/500000000000 : ℚ), 4⟩,
    ⟨(55744405277/200000000000 : ℚ), (22301582239/10000000000 : ℚ), (-83404918709/125000000000 : ℚ), 4⟩,
    ⟨(1419504529/5000000000 : ℚ), (3294093683/2000000000 : ℚ), (-12582491073/25000000000 : ℚ), 4⟩,
    ⟨(57878805527/200000000000 : ℚ), (12167542651/10000000000 : ℚ), (-380024805089/1000000000000 : ℚ), 4⟩,
    ⟨(147574245061/500000000000 : ℚ), (8912602991/10000000000 : ℚ), (-8904386403/31250000000 : ℚ), 4⟩,
    ⟨(150554437321/500000000000 : ℚ), (6398411679/10000000000 : ℚ), (-8400793639/40000000000 : ℚ), 3⟩,
    ⟨(61443555887/200000000000 : ℚ), (442142253/1000000000 : ℚ), (-37478096821/250000000000 : ℚ), 3⟩,
    ⟨(313416372407/1000000000000 : ℚ), (2842789061/10000000000 : ℚ), (-10094323907/100000000000 : ℚ), 3⟩,
    ⟨(7991123943/25000000000 : ℚ), (313086019/2000000000 : ℚ), (-60524537001/1000000000000 : ℚ), 3⟩,
    ⟨(81460887673/250000000000 : ℚ), (260012179/5000000000 : ℚ), (-13397339951/500000000000 : ℚ), 3⟩,
    ⟨(66390491097/200000000000 : ℚ), (-343823717/10000000000 : ℚ), (1609774529/1000000000000 : ℚ), 3⟩,
    ⟨(67582568001/200000000000 : ℚ), (-1063315769/10000000000 : ℚ), (803205239/31250000000 : ℚ), 3⟩,
    ⟨(85916825623/250000000000 : ℚ), (-208283967/1250000000 : ℚ), (9249369873/200000000000 : ℚ), 3⟩,
    ⟨(174580212163/500000000000 : ℚ), (-434744313/2000000000 : ℚ), (63822863833/1000000000000 : ℚ), 3⟩,
    ⟨(177169651871/500000000000 : ℚ), (-650425461/2500000000 : ℚ), (78875136427/1000000000000 : ℚ), 3⟩,
    ⟨(179577032649/500000000000 : ℚ), (-2962523051/10000000000 : ℚ), (91745992861/1000000000000 : ℚ), 3⟩,
    ⟨(36355834021/100000000000 : ℚ), (-3265677199/10000000000 : ℚ), (2053995571/20000000000 : ℚ), 3⟩,
    ⟨(367509712903/1000000000000 : ℚ), (-175924829/500000000 : ℚ), (11194062719/100000000000 : ℚ), 3⟩,
    ⟨(46371266187/125000000000 : ℚ), (-1863318519/5000000000 : ℚ), (934575513/7812500000 : ℚ), 3⟩,
    ⟨(11684570759/31250000000 : ℚ), (-778887033/2000000000 : ℚ), (15734364997/125000000000 : ℚ), 3⟩,
    ⟨(188144920347/500000000000 : ℚ), (-2012586507/5000000000 : ℚ), (130778777259/1000000000000 : ℚ), 3⟩,
    ⟨(378097903571/1000000000000 : ℚ), (-4121273313/10000000000 : ℚ), (8400223931/62500000000 : ℚ), 3⟩,
    ⟨(189656520143/500000000000 : ℚ), (-4184440881/10000000000 : ℚ), (136795761999/1000000000000 : ℚ), 3⟩,
    ⟨(189961774203/500000000000 : ℚ), (-2107880441/5000000000 : ℚ), (137984725117/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-2109831831/5000000000 : ℚ), (138133015833/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (400853259013/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control600.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control600.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate600

namespace DiagonalRamsey.JointInheritedCertificate601
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267768609229/1000000000000 : ℚ), (12992078627693/10000000000 : ℚ), (-174243641104763/500000000000 : ℚ), 12⟩,
    ⟨(134202477901/500000000000 : ℚ), (710283037223/5000000000 : ℚ), (-4812872191941/125000000000 : ℚ), 9⟩,
    ⟨(269671520583/1000000000000 : ℚ), (498091321831/10000000000 : ℚ), (-13704089858189/1000000000000 : ℚ), 8⟩,
    ⟨(271556105861/1000000000000 : ℚ), (245414674363/10000000000 : ℚ), (-10736814581/1562500000 : ℚ), 7⟩,
    ⟨(274040562049/1000000000000 : ℚ), (71129592797/5000000000 : ℚ), (-507452169441/125000000000 : ℚ), 6⟩,
    ⟨(69275240619/250000000000 : ℚ), (90560535379/10000000000 : ℚ), (-329499909151/125000000000 : ℚ), 5⟩,
    ⟨(70176958453/250000000000 : ℚ), (61174254299/10000000000 : ℚ), (-908492355167/500000000000 : ℚ), 5⟩,
    ⟨(71206609979/250000000000 : ℚ), (4298146271/1000000000 : ℚ), (-1302903069269/1000000000000 : ℚ), 5⟩,
    ⟨(289417116359/1000000000000 : ℚ), (30999929797/10000000000 : ℚ), (-59944429117/62500000000 : ℚ), 4⟩,
    ⟨(294435652417/1000000000000 : ℚ), (2272982009/1000000000 : ℚ), (-358916602247/500000000000 : ℚ), 4⟩,
    ⟨(59966743369/200000000000 : ℚ), (16806737441/10000000000 : ℚ), (-541939731431/1000000000000 : ℚ), 4⟩,
    ⟨(305559323331/1000000000000 : ℚ), (6217960291/5000000000 : ℚ), (-204854016647/500000000000 : ℚ), 4⟩,
    ⟨(62311466231/200000000000 : ℚ), (4564899603/5000000000 : ℚ), (-15387291689/50000000000 : ℚ), 4⟩,
    ⟨(317769976223/1000000000000 : ℚ), (1644094367/2500000000 : ℚ), (-227435717919/1000000000000 : ℚ), 3⟩,
    ⟨(162068713683/500000000000 : ℚ), (2284460843/5000000000 : ℚ), (-3260649783/20000000000 : ℚ), 3⟩,
    ⟨(330598362549/1000000000000 : ℚ), (1483191123/5000000000 : ℚ), (-110590140189/1000000000000 : ℚ), 3⟩,
    ⟨(67418111887/200000000000 : ℚ), (334022753/2000000000 : ℚ), (-6732937409/100000000000 : ℚ), 3⟩,
    ⟨(343551494619/1000000000000 : ℚ), (76207287/1250000000 : ℚ), (-6250091143/200000000000 : ℚ), 3⟩,
    ⟨(174959472881/500000000000 : ℚ), (-66555619/2500000000 : ℚ), (-888360321/1000000000000 : ℚ), 3⟩,
    ⟨(35613159083/100000000000 : ℚ), (-995365921/10000000000 : ℚ), (6211645047/250000000000 : ℚ), 3⟩,
    ⟨(181064799327/500000000000 : ℚ), (-1606078631/10000000000 : ℚ), (1871002043/40000000000 : ℚ), 3⟩,
    ⟨(18392760257/50000000000 : ℚ), (-52994191/250000000 : ℚ), (13104278583/200000000000 : ℚ), 3⟩,
    ⟨(5832082337/15625000000 : ℚ), (-319095567/1250000000 : ℚ), (4078211617/50000000000 : ℚ), 3⟩,
    ⟨(189135902813/500000000000 : ℚ), (-2917612187/10000000000 : ℚ), (47636220107/500000000000 : ℚ), 3⟩,
    ⟨(382862482069/1000000000000 : ℚ), (-1611993207/5000000000 : ℚ), (53465553127/500000000000 : ℚ), 3⟩,
    ⟨(96745272043/250000000000 : ℚ), (-3479365019/10000000000 : ℚ), (116760591411/1000000000000 : ℚ), 3⟩,
    ⟨(390587959509/1000000000000 : ℚ), (-230594917/625000000 : ℚ), (62465340821/500000000000 : ℚ), 3⟩,
    ⟨(768844453/1953125000 : ℚ), (-3858873847/10000000000 : ℚ), (16446400671/125000000000 : ℚ), 3⟩,
    ⟨(99033204031/250000000000 : ℚ), (-3990781851/10000000000 : ℚ), (136780028691/1000000000000 : ℚ), 3⟩,
    ⟨(199008700701/500000000000 : ℚ), (-4087717303/10000000000 : ℚ), (140629053137/1000000000000 : ℚ), 3⟩,
    ⟨(399283966183/1000000000000 : ℚ), (-2075710983/5000000000 : ℚ), (71584315951/500000000000 : ℚ), 3⟩,
    ⟨(99980078189/250000000000 : ℚ), (-2091502361/5000000000 : ℚ), (144430684111/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-4186940077/10000000000 : ℚ), (144588082613/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (388836283251/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control601.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control601.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate601

namespace DiagonalRamsey.JointInheritedCertificate602
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141291642081/500000000000 : ℚ), (41231241731/31250000 : ℚ), (-373474477646579/1000000000000 : ℚ), 12⟩,
    ⟨(56648916889/200000000000 : ℚ), (721445388539/5000000000 : ℚ), (-12895257781/312500000 : ℚ), 9⟩,
    ⟨(284560816329/1000000000000 : ℚ), (126512361367/2500000000 : ℚ), (-2937584134287/200000000000 : ℚ), 8⟩,
    ⟨(286519303781/1000000000000 : ℚ), (249415849629/10000000000 : ℚ), (-7365544972543/1000000000000 : ℚ), 7⟩,
    ⟨(36137648187/125000000000 : ℚ), (144633302857/10000000000 : ℚ), (-2176017076167/500000000000 : ℚ), 6⟩,
    ⟨(146140798271/500000000000 : ℚ), (92112414313/10000000000 : ℚ), (-2826400797419/1000000000000 : ℚ), 5⟩,
    ⟨(148014953911/500000000000 : ℚ), (6225461897/1000000000 : ℚ), (-1948730698241/1000000000000 : ℚ), 5⟩,
    ⟨(300310021049/1000000000000 : ℚ), (21883690251/5000000000 : ℚ), (-698933529137/500000000000 : ℚ), 5⟩,
    ⟨(38135089549/125000000000 : ℚ), (631808377/200000000 : ℚ), (-1029512278531/1000000000000 : ℚ), 4⟩,
    ⟨(310296049449/1000000000000 : ℚ), (23184587827/10000000000 : ℚ), (-771031619723/1000000000000 : ℚ), 4⟩,
    ⟨(31590579371/100000000000 : ℚ), (17163932903/10000000000 : ℚ), (-582631942967/1000000000000 : ℚ), 4⟩,
    ⟨(321855924273/1000000000000 : ℚ), (12721059901/10000000000 : ℚ), (-220516330671/500000000000 : ℚ), 4⟩,
    ⟨(524942621/1600000000 : ℚ), (1872118219/2000000000 : ℚ), (-165940232761/500000000000 : ℚ), 4⟩,
    ⟨(83636351503/250000000000 : ℚ), (6765489449/10000000000 : ℚ), (-245939138571/1000000000000 : ℚ), 3⟩,
    ⟨(21322659409/62500000000 : ℚ), (4725644447/10000000000 : ℚ), (-22131312143/125000000000 : ℚ), 3⟩,
    ⟨(347876845001/1000000000000 : ℚ), (3097672709/10000000000 : ℚ), (-24196886591/200000000000 : ℚ), 3⟩,
    ⟨(354623627059/1000000000000 : ℚ), (1781272029/10000000000 : ℚ), (-4672568357/62500000000 : ℚ), 3⟩,
    ⟨(90334480379/250000000000 : ℚ), (704780559/10000000000 : ℚ), (-18117994411/500000000000 : ℚ), 3⟩,
    ⟨(5749297907/15625000000 : ℚ), (-183932609/10000000000 : ℚ), (-767519597/200000000000 : ℚ), 3⟩,
    ⟨(74882266787/200000000000 : ℚ), (-115422277/1250000000 : ℚ), (2360338853/100000000000 : ℚ), 3⟩,
    ⟨(95161136947/250000000000 : ℚ), (-1542378399/10000000000 : ℚ), (46968047733/1000000000000 : ℚ), 3⟩,
    ⟨(7731893567/20000000000 : ℚ), (-515684941/2500000000 : ℚ), (33463522439/500000000000 : ℚ), 3⟩,
    ⟨(392204422611/1000000000000 : ℚ), (-2501106609/10000000000 : ℚ), (41997433883/500000000000 : ℚ), 3⟩,
    ⟨(99354938917/250000000000 : ℚ), (-574053651/2000000000 : ℚ), (49284167339/500000000000 : ℚ), 3⟩,
    ⟨(402190451011/1000000000000 : ℚ), (-1590047787/5000000000 : ℚ), (110954404727/1000000000000 : ℚ), 3⟩,
    ⟨(203235282119/500000000000 : ℚ), (-343822087/1000000000 : ℚ), (7586910611/62500000000 : ℚ), 3⟩,
    ⟨(205109437759/500000000000 : ℚ), (-912634209/2500000000 : ℚ), (65030000427/500000000000 : ℚ), 3⟩,
    ⟨(103349821641/250000000000 : ℚ), (-3821565519/10000000000 : ℚ), (137102905497/1000000000000 : ℚ), 3⟩,
    ⟨(415981168279/1000000000000 : ℚ), (-158189277/400000000 : ℚ), (2852501617/20000000000 : ℚ), 3⟩,
    ⟨(417939655731/1000000000000 : ℚ), (-4052565929/10000000000 : ℚ), (146704328063/1000000000000 : ℚ), 3⟩,
    ⟨(83851177523/200000000000 : ℚ), (-4116848657/10000000000 : ℚ), (29879035211/200000000000 : ℚ), 3⟩,
    ⟨(209958593949/500000000000 : ℚ), (-4148714269/10000000000 : ℚ), (30146442539/200000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-2076342347/5000000000 : ℚ), (943118463/6250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (2354422741/6250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control602.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control602.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate602

namespace DiagonalRamsey.JointInheritedCertificate619
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(213933557791/500000000000 : ℚ), (3088023347969/2000000000 : ℚ), (-661572832546141/1000000000000 : ℚ), 12⟩,
    ⟨(85739096593/200000000000 : ℚ), (1691701418549/10000000000 : ℚ), (-18278430942503/250000000000 : ℚ), 9⟩,
    ⟨(430344240101/1000000000000 : ℚ), (594980567539/10000000000 : ℚ), (-6509276216769/250000000000 : ℚ), 8⟩,
    ⟨(108199377139/250000000000 : ℚ), (147131711557/5000000000 : ℚ), (-13067156213371/1000000000000 : ℚ), 7⟩,
    ⟨(87206332403/200000000000 : ℚ), (6853065361/400000000 : ℚ), (-7729887762459/1000000000000 : ℚ), 6⟩,
    ⟨(110003888453/250000000000 : ℚ), (109613854409/10000000000 : ℚ), (-1257085897141/250000000000 : ℚ), 5⟩,
    ⟨(44471081689/100000000000 : ℚ), (3723643747/500000000 : ℚ), (-868684787669/250000000000 : ℚ), 5⟩,
    ⟨(450072233301/1000000000000 : ℚ), (6584719661/1250000000 : ℚ), (-625047320029/250000000000 : ℚ), 5⟩,
    ⟨(57006021209/125000000000 : ℚ), (9574714467/2500000000 : ℚ), (-1849086876743/1000000000000 : ℚ), 4⟩,
    ⟨(46258107447/100000000000 : ℚ), (28358929053/10000000000 : ℚ), (-1392763277159/1000000000000 : ℚ), 4⟩,
    ⟨(469608032251/1000000000000 : ℚ), (1061580613/500000000 : ℚ), (-265180520819/250000000000 : ℚ), 4⟩,
    ⟨(477061369569/1000000000000 : ℚ), (15968543527/10000000000 : ℚ), (-811714577297/1000000000000 : ℚ), 4⟩,
    ⟨(60608663339/125000000000 : ℚ), (2397430817/2000000000 : ℚ), (-77537930917/125000000000 : ℚ), 4⟩,
    ⟨(492956648977/1000000000000 : ℚ), (1782811313/2000000000 : ℚ), (-470113556351/1000000000000 : ℚ), 3⟩,
    ⟨(250622755419/500000000000 : ℚ), (6501353029/10000000000 : ℚ), (-17511002043/50000000000 : ℚ), 3⟩,
    ⟨(254828033011/500000000000 : ℚ), (4579510281/10000000000 : ℚ), (-31638921231/125000000000 : ℚ), 3⟩,
    ⟨(259053658143/500000000000 : ℚ), (605926311/2000000000 : ℚ), (-173488785999/1000000000000 : ℚ), 3⟩,
    ⟨(52651787147/100000000000 : ℚ), (1766516983/10000000000 : ℚ), (-107531544377/1000000000000 : ℚ), 3⟩,
    ⟨(53480673333/100000000000 : ℚ), (145594863/2000000000 : ℚ), (-52432351749/1000000000000 : ℚ), 3⟩,
    ⟨(108578815119/200000000000 : ℚ), (-26423861/2000000000 : ℚ), (-15237969/2500000000 : ℚ), 3⟩,
    ⟨(550702012739/1000000000000 : ℚ), (-42421691/500000000 : ℚ), (16533114851/500000000000 : ℚ), 3⟩,
    ⟨(558155350057/1000000000000 : ℚ), (-144732599/1000000000 : ℚ), (33132937041/500000000000 : ℚ), 3⟩,
    ⟨(282591153919/500000000000 : ℚ), (-1949016811/10000000000 : ℚ), (94441017457/1000000000000 : ℚ), 3⟩,
    ⟨(142928803159/250000000000 : ℚ), (-1184564051/5000000000 : ℚ), (29579988091/250000000000 : ℚ), 3⟩,
    ⟨(577691149007/1000000000000 : ℚ), (-2719783831/10000000000 : ℚ), (138470759501/1000000000000 : ℚ), 3⟩,
    ⟨(583052565417/1000000000000 : ℚ), (-3010410291/10000000000 : ℚ), (155336950553/1000000000000 : ℚ), 3⟩,
    ⟨(36734239281/62500000000 : ℚ), (-101510129/312500000 : ℚ), (21157982119/125000000000 : ℚ), 3⟩,
    ⟨(591731720293/1000000000000 : ℚ), (-3439168061/10000000000 : ℚ), (11282397623/62500000000 : ℚ), 3⟩,
    ⟨(74370734219/125000000000 : ℚ), (-3587234901/10000000000 : ℚ), (94651865281/500000000000 : ℚ), 3⟩,
    ⟨(597419142207/1000000000000 : ℚ), (-3695707527/10000000000 : ℚ), (12235670091/62500000000 : ℚ), 3⟩,
    ⟨(299533949671/500000000000 : ℚ), (-150673343/400000000 : ℚ), (20002577199/100000000000 : ℚ), 3⟩,
    ⟨(23995850669/40000000000 : ℚ), (-1901023699/5000000000 : ℚ), (202136775251/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-1903216469/5000000000 : ℚ), (101199942451/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (270257224277/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control619.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control619.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate619

namespace DiagonalRamsey.JointInheritedCertificate621
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127499186867/500000000000 : ℚ), (12665991168419/10000000000 : ℚ), (-323533528485869/1000000000000 : ℚ), 12⟩,
    ⟨(51119985599/200000000000 : ℚ), (1384937142619/10000000000 : ℚ), (-893589699941/25000000000 : ℚ), 9⟩,
    ⟨(12839862161/50000000000 : ℚ), (97118773469/2000000000 : ℚ), (-6360122518863/500000000000 : ℚ), 8⟩,
    ⟨(258578788609/1000000000000 : ℚ), (2392419961/100000000 : ℚ), (-6376891618293/1000000000000 : ℚ), 7⟩,
    ⟨(260927406907/1000000000000 : ℚ), (1109295577/80000000 : ℚ), (-3766248121617/1000000000000 : ℚ), 6⟩,
    ⟨(131910239817/500000000000 : ℚ), (44124769521/5000000000 : ℚ), (-1222260788001/500000000000 : ℚ), 6⟩,
    ⟨(6680753623/25000000000 : ℚ), (29795539641/5000000000 : ℚ), (-1684103138399/1000000000000 : ℚ), 5⟩,
    ⟨(1059076429/3906250000 : ℚ), (10461578951/2500000000 : ℚ), (-1206778461447/1000000000000 : ℚ), 5⟩,
    ⟨(275463246573/1000000000000 : ℚ), (1884861177/625000000 : ℚ), (-110943083687/125000000000 : ℚ), 4⟩,
    ⟨(280207393671/1000000000000 : ℚ), (22088182091/10000000000 : ℚ), (-331739910957/500000000000 : ℚ), 4⟩,
    ⟨(285310318387/1000000000000 : ℚ), (1019202447/625000000 : ℚ), (-25005622503/50000000000 : ℚ), 4⟩,
    ⟨(145361438383/500000000000 : ℚ), (6020020009/5000000000 : ℚ), (-188637936813/500000000000 : ℚ), 4⟩,
    ⟨(296392942913/1000000000000 : ℚ), (2202795559/2500000000 : ℚ), (-282537162273/1000000000000 : ℚ), 4⟩,
    ⟨(302265910991/1000000000000 : ℚ), (6316450311/10000000000 : ℚ), (-41579283681/200000000000 : ℚ), 3⟩,
    ⟨(154142610553/500000000000 : ℚ), (4354263311/10000000000 : ℚ), (-29604073609/200000000000 : ℚ), 3⟩,
    ⟨(314392904013/1000000000000 : ℚ), (1393543439/5000000000 : ℚ), (-3101442683/31250000000 : ℚ), 3⟩,
    ⟨(64106027877/200000000000 : ℚ), (1518735413/10000000000 : ℚ), (-11798841273/200000000000 : ℚ), 3⟩,
    ⟨(81659455573/250000000000 : ℚ), (240255217/5000000000 : ℚ), (-5081739573/200000000000 : ℚ), 3⟩,
    ⟨(332657132407/1000000000000 : ℚ), (-75508689/2000000000 : ℚ), (358707273/125000000000 : ℚ), 3⟩,
    ⟨(67706020097/200000000000 : ℚ), (-546156113/5000000000 : ℚ), (26851615189/1000000000000 : ℚ), 3⟩,
    ⟨(43025020829/125000000000 : ℚ), (-211423311/1250000000 : ℚ), (47298147253/1000000000000 : ℚ), 3⟩,
    ⟨(349612725011/1000000000000 : ℚ), (-2195627403/10000000000 : ℚ), (32393949229/500000000000 : ℚ), 3⟩,
    ⟨(354715649727/1000000000000 : ℚ), (-655236463/2500000000 : ℚ), (79764205059/1000000000000 : ℚ), 3⟩,
    ⟨(14378391873/40000000000 : ℚ), (-1489778789/5000000000 : ℚ), (92568497693/1000000000000 : ℚ), 3⟩,
    ⟨(181899738787/500000000000 : ℚ), (-3280882419/10000000000 : ℚ), (6466527407/62500000000 : ℚ), 3⟩,
    ⟨(183846449239/500000000000 : ℚ), (-353219717/1000000000 : ℚ), (22531126379/200000000000 : ℚ), 3⟩,
    ⟨(92775640941/250000000000 : ℚ), (-747822947/2000000000 : ℚ), (60149394503/500000000000 : ℚ), 3⟩,
    ⟨(373995636491/1000000000000 : ℚ), (-976484613/2500000000 : ℚ), (126513606781/1000000000000 : ℚ), 3⟩,
    ⟨(376344254789/1000000000000 : ℚ), (-2017962413/5000000000 : ℚ), (13139021299/100000000000 : ℚ), 3⟩,
    ⟨(189062900089/500000000000 : ℚ), (-4131477377/10000000000 : ℚ), (13499475199/100000000000 : ℚ), 3⟩,
    ⟨(379323115403/1000000000000 : ℚ), (-838857433/2000000000 : ℚ), (137373501241/1000000000000 : ℚ), 3⟩,
    ⟨(11872645927/31250000000 : ℚ), (-4225430461/10000000000 : ℚ), (138555773791/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-845862251/2000000000 : ℚ), (138703229361/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (16434641181/40000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control621.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control621.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate621

namespace DiagonalRamsey.JointInheritedCertificate622
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134855848339/500000000000 : ℚ), (12853663212061/10000000000 : ℚ), (-347263698128191/1000000000000 : ℚ), 12⟩,
    ⟨(33792336549/125000000000 : ℚ), (702843065737/5000000000 : ℚ), (-19183129446253/500000000000 : ℚ), 9⟩,
    ⟨(27158664551/100000000000 : ℚ), (98597980601/2000000000 : ℚ), (-1365432505787/100000000000 : ℚ), 8⟩,
    ⟨(6836088439/25000000000 : ℚ), (242960281667/10000000000 : ℚ), (-3422879615531/500000000000 : ℚ), 7⟩,
    ⟨(275891485657/1000000000000 : ℚ), (140867998019/10000000000 : ℚ), (-4043683369623/1000000000000 : ℚ), 6⟩,
    ⟨(278906914723/1000000000000 : ℚ), (44845699289/5000000000 : ℚ), (-1312534050867/500000000000 : ℚ), 6⟩,
    ⟨(282460784527/1000000000000 : ℚ), (30297366411/5000000000 : ℚ), (-1808939009493/1000000000000 : ℚ), 5⟩,
    ⟨(286518869359/1000000000000 : ℚ), (1703053743/400000000 : ℚ), (-324169061751/250000000000 : ℚ), 5⟩,
    ⟨(145521043823/500000000000 : ℚ), (15353108937/5000000000 : ℚ), (-190821684111/200000000000 : ℚ), 4⟩,
    ⟨(295986878323/1000000000000 : ℚ), (22510531599/10000000000 : ℚ), (-178424553741/250000000000 : ℚ), 4⟩,
    ⟨(301305620351/1000000000000 : ℚ), (8319480117/5000000000 : ℚ), (-107689069333/200000000000 : ℚ), 4⟩,
    ⟨(306947091337/1000000000000 : ℚ), (61524257/50000000 : ℚ), (-101675845267/250000000000 : ℚ), 4⟩,
    ⟨(312856960833/1000000000000 : ℚ), (4512772623/5000000000 : ℚ), (-305126746739/1000000000000 : ℚ), 4⟩,
    ⟨(79744578391/250000000000 : ℚ), (6492139919/10000000000 : ℚ), (-56281982773/250000000000 : ℚ), 3⟩,
    ⟨(325252197557/1000000000000 : ℚ), (899983009/2000000000 : ℚ), (-20122689597/125000000000 : ℚ), 3⟩,
    ⟨(8290454797/25000000000 : ℚ), (581833263/2000000000 : ℚ), (-3398591489/31250000000 : ℚ), 3⟩,
    ⟨(338014988527/1000000000000 : ℚ), (162216739/1000000000 : ℚ), (-513110783/7812500000 : ℚ), 3⟩,
    ⟨(344380982849/1000000000000 : ℚ), (284550037/5000000000 : ℚ), (-1859881757/62500000000 : ℚ), 3⟩,
    ⟨(175327433421/500000000000 : ℚ), (-75205329/2500000000 : ℚ), (465617031/1000000000000 : ℚ), 3⟩,
    ⟨(356776219573/1000000000000 : ℚ), (-512554617/5000000000 : ℚ), (26079266453/1000000000000 : ℚ), 3⟩,
    ⟨(362686089069/1000000000000 : ℚ), (-1631833913/10000000000 : ℚ), (47901042493/1000000000000 : ℚ), 3⟩,
    ⟨(46040945007/125000000000 : ℚ), (-2142228283/10000000000 : ℚ), (66553452303/1000000000000 : ℚ), 3⟩,
    ⟨(93411575521/250000000000 : ℚ), (-643123533/2500000000 : ℚ), (82513753659/1000000000000 : ℚ), 3⟩,
    ⟨(9464777319/25000000000 : ℚ), (-733769107/2500000000 : ℚ), (96149782233/1000000000000 : ℚ), 3⟩,
    ⟨(383114311047/1000000000000 : ℚ), (-3239576361/10000000000 : ℚ), (107745834371/1000000000000 : ℚ), 3⟩,
    ⟨(9679309897/25000000000 : ℚ), (-1746707157/5000000000 : ℚ), (117521653633/1000000000000 : ℚ), 3⟩,
    ⟨(390726265683/1000000000000 : ℚ), (-1851158263/5000000000 : ℚ), (25129308101/200000000000 : ℚ), 3⟩,
    ⟨(393741694749/1000000000000 : ℚ), (-1935337527/5000000000 : ℚ), (66124969101/500000000000 : ℚ), 3⟩,
    ⟨(198094821423/500000000000 : ℚ), (-1000453691/2500000000 : ℚ), (27485881823/200000000000 : ℚ), 3⟩,
    ⟨(24877908431/62500000000 : ℚ), (-2049095201/5000000000 : ℚ), (70628309921/500000000000 : ℚ), 3⟩,
    ⟨(199647244007/500000000000 : ℚ), (-4161529497/10000000000 : ℚ), (143781751101/1000000000000 : ℚ), 3⟩,
    ⟨(24995092733/62500000000 : ℚ), (-4192931727/10000000000 : ℚ), (145036607811/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-2098422311/5000000000 : ℚ), (36298277063/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (398686385673/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control622.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control622.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate622

namespace DiagonalRamsey.JointInheritedCertificate652
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(523131241491/1000000000000 : ℚ), (17152843110273/10000000000 : ℚ), (-449201194279687/500000000000 : ℚ), 12⟩,
    ⟨(26199119983/50000000000 : ℚ), (376405749951/2000000000 : ℚ), (-9929911617129/100000000000 : ℚ), 9⟩,
    ⟨(262838259439/500000000000 : ℚ), (663313132953/10000000000 : ℚ), (-17685627896633/500000000000 : ℚ), 8⟩,
    ⟨(528197283853/1000000000000 : ℚ), (65779675957/2000000000 : ℚ), (-2219873688307/125000000000 : ℚ), 7⟩,
    ⟨(265760209119/500000000000 : ℚ), (192050202679/10000000000 : ℚ), (-2627930248099/250000000000 : ℚ), 6⟩,
    ⟨(267806959217/500000000000 : ℚ), (123271846441/10000000000 : ℚ), (-10693417771/1562500000 : ℚ), 6⟩,
    ⟨(135109590449/250000000000 : ℚ), (84054711493/10000000000 : ℚ), (-1183709108711/250000000000 : ℚ), 5⟩,
    ⟨(545947286297/1000000000000 : ℚ), (14924137101/2500000000 : ℚ), (-682468598383/200000000000 : ℚ), 5⟩,
    ⟨(276043818991/500000000000 : ℚ), (21801693873/5000000000 : ℚ), (-2529199754859/1000000000000 : ℚ), 4⟩,
    ⟨(558800281909/1000000000000 : ℚ), (32462923039/10000000000 : ℚ), (-477668891681/250000000000 : ℚ), 4⟩,
    ⟨(283010285823/500000000000 : ℚ), (24464761627/10000000000 : ℚ), (-1461033598249/1000000000000 : ℚ), 4⟩,
    ⟨(35854935741/62500000000 : ℚ), (9276255201/5000000000 : ℚ), (-1124252806191/1000000000000 : ℚ), 4⟩,
    ⟨(581701727959/1000000000000 : ℚ), (1407670387/1000000000 : ℚ), (-865781908071/1000000000000 : ℚ), 4⟩,
    ⟨(147502894107/250000000000 : ℚ), (10620660763/10000000000 : ℚ), (-165843528213/250000000000 : ℚ), 3⟩,
    ⟨(7481606111/12500000000 : ℚ), (7907403959/10000000000 : ℚ), (-502182249551/1000000000000 : ℚ), 3⟩,
    ⟨(75896305349/125000000000 : ℚ), (89800583/156250000 : ℚ), (-371992663337/1000000000000 : ℚ), 3⟩,
    ⟨(615854211423/1000000000000 : ℚ), (4006892149/10000000000 : ℚ), (-132797464069/500000000000 : ℚ), 3⟩,
    ⟨(312248082667/500000000000 : ℚ), (2590673791/10000000000 : ℚ), (-35556827801/200000000000 : ℚ), 3⟩,
    ⟨(316506538893/500000000000 : ℚ), (357140413/2500000000 : ℚ), (-1636409163/15625000000 : ℚ), 3⟩,
    ⟨(128264585251/200000000000 : ℚ), (468483509/10000000000 : ℚ), (-348540771/8000000000 : ℚ), 3⟩,
    ⟨(324672841179/500000000000 : ℚ), (-65765163/2000000000 : ℚ), (1969472713/250000000000 : ℚ), 3⟩,
    ⟨(657004082569/1000000000000 : ℚ), (-993321423/10000000000 : ℚ), (12818906817/250000000000 : ℚ), 3⟩,
    ⟨(332112186153/500000000000 : ℚ), (-38701837/250000000 : ℚ), (87919509867/1000000000000 : ℚ), 3⟩,
    ⟨(83867127029/125000000000 : ℚ), (-1005489201/5000000000 : ℚ), (118819521307/1000000000000 : ℚ), 3⟩,
    ⟨(677077367917/1000000000000 : ℚ), (-2395985121/10000000000 : ℚ), (144767501867/1000000000000 : ℚ), 3⟩,
    ⟨(341293146209/500000000000 : ℚ), (-1356992981/5000000000 : ℚ), (41596273349/250000000000 : ℚ), 3⟩,
    ⟨(34370536789/50000000000 : ℚ), (-2973471439/10000000000 : ℚ), (184159134291/1000000000000 : ℚ), 3⟩,
    ⟨(86438029497/125000000000 : ℚ), (-3181015789/10000000000 : ℚ), (4961701431/25000000000 : ℚ), 3⟩,
    ⟨(694827370361/1000000000000 : ℚ), (-1670819269/5000000000 : ℚ), (104800844491/500000000000 : ℚ), 3⟩,
    ⟨(87168516917/125000000000 : ℚ), (-864768219/2500000000 : ℚ), (108888035959/500000000000 : ℚ), 3⟩,
    ⟨(349521127277/500000000000 : ℚ), (-883990391/2500000000 : ℚ), (44628876113/200000000000 : ℚ), 3⟩,
    ⟨(699893412723/1000000000000 : ℚ), (-714798827/2000000000 : ℚ), (225804633809/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-3578729109/10000000000 : ℚ), (7066751773/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (53618876433/250000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control652.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control652.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate652

namespace DiagonalRamsey.JointInheritedCertificate676
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(218025763351/500000000000 : ℚ), (7435256921569/5000000000 : ℚ), (-129858999653873/200000000000 : ℚ), 13⟩,
    ⟨(218420253829/500000000000 : ℚ), (1630009105271/10000000000 : ℚ), (-17937119261829/250000000000 : ℚ), 9⟩,
    ⟨(438410871253/1000000000000 : ℚ), (286803606423/5000000000 : ℚ), (-5108975910203/200000000000 : ℚ), 8⟩,
    ⟨(440747494027/1000000000000 : ℚ), (56771199939/2000000000 : ℚ), (-3203869045697/250000000000 : ℚ), 7⟩,
    ⟨(17753114921/40000000000 : ℚ), (82676164803/5000000000 : ℚ), (-7577219375653/1000000000000 : ℚ), 6⟩,
    ⟨(447622342513/1000000000000 : ℚ), (105833829689/10000000000 : ℚ), (-1231454655567/250000000000 : ℚ), 6⟩,
    ⟨(113023589919/250000000000 : ℚ), (35960817777/5000000000 : ℚ), (-3401079545243/1000000000000 : ℚ), 5⟩,
    ⟨(14287526767/31250000000 : ℚ), (50874263493/10000000000 : ℚ), (-19098958277/7812500000 : ℚ), 5⟩,
    ⟨(462892654761/1000000000000 : ℚ), (36978416891/10000000000 : ℚ), (-902856423203/500000000000 : ℚ), 5⟩,
    ⟨(469114939199/1000000000000 : ℚ), (6841239559/2500000000 : ℚ), (-84870951251/62500000000 : ℚ), 4⟩,
    ⟨(3717248327/7812500000 : ℚ), (818649839/400000000 : ℚ), (-258036036213/250000000000 : ℚ), 4⟩,
    ⟨(482906738961/1000000000000 : ℚ), (3841979601/2500000000 : ℚ), (-787855023469/1000000000000 : ℚ), 4⟩,
    ⟨(98068686343/200000000000 : ℚ), (2301624191/2000000000 : ℚ), (-600101191489/1000000000000 : ℚ), 4⟩,
    ⟨(498046244701/1000000000000 : ℚ), (1705322429/2000000000 : ℚ), (-113202466727/250000000000 : ℚ), 4⟩,
    ⟨(505940995619/1000000000000 : ℚ), (3092060587/5000000000 : ℚ), (-335257265641/1000000000000 : ℚ), 3⟩,
    ⟨(513951653703/1000000000000 : ℚ), (1079234069/2500000000 : ℚ), (-60017370797/250000000000 : ℚ), 3⟩,
    ⟨(8156266749/15625000000 : ℚ), (1405090943/5000000000 : ℚ), (-162044260363/1000000000000 : ℚ), 3⟩,
    ⟨(530011730019/1000000000000 : ℚ), (316298347/2000000000 : ℚ), (-24357478113/250000000000 : ℚ), 3⟩,
    ⟨(268953240469/500000000000 : ℚ), (285352521/5000000000 : ℚ), (-5433681503/125000000000 : ℚ), 3⟩,
    ⟨(136402323481/250000000000 : ℚ), (-53364473/2000000000 : ℚ), (118495023/62500000000 : ℚ), 3⟩,
    ⟨(276522993339/500000000000 : ℚ), (-19293387/200000000 : ℚ), (10056138373/250000000000 : ℚ), 3⟩,
    ⟨(560144939783/1000000000000 : ℚ), (-1548377517/10000000000 : ℚ), (36354589227/500000000000 : ℚ), 3⟩,
    ⟨(14170944661/25000000000 : ℚ), (-254693979/1250000000 : ℚ), (25067676591/250000000000 : ℚ), 3⟩,
    ⟨(573060070877/1000000000000 : ℚ), (-152958979/625000000 : ℚ), (15453084447/125000000000 : ℚ), 3⟩,
    ⟨(289375934547/500000000000 : ℚ), (-2789514409/10000000000 : ℚ), (143329115001/1000000000000 : ℚ), 3⟩,
    ⟨(291929182981/500000000000 : ℚ), (-1536604461/5000000000 : ℚ), (79909771189/500000000000 : ℚ), 3⟩,
    ⟨(941328613/1600000000 : ℚ), (-66110491/200000000 : ℚ), (173434899233/1000000000000 : ℚ), 3⟩,
    ⟨(296062426307/500000000000 : ℚ), (-698386673/2000000000 : ℚ), (23054620691/125000000000 : ℚ), 3⟩,
    ⟨(148801307903/250000000000 : ℚ), (-3636596679/10000000000 : ℚ), (48256243297/250000000000 : ℚ), 3⟩,
    ⟨(119508370877/200000000000 : ℚ), (-1871299203/5000000000 : ℚ), (12459160931/62500000000 : ℚ), 3⟩,
    ⟨(29955610899/50000000000 : ℚ), (-15248461/40000000 : ℚ), (203505937863/1000000000000 : ℚ), 3⟩,
    ⟨(599901198937/1000000000000 : ℚ), (-153861429/400000000 : ℚ), (51392366567/250000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-192541131/500000000 : ℚ), (10291332939/50000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (18415510279/62500000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control676.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control676.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate676

namespace DiagonalRamsey.JointInheritedCertificate677
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(526145678449/1000000000000 : ℚ), (16924533546197/10000000000 : ℚ), (-222882051264163/250000000000 : ℚ), 12⟩,
    ⟨(526982330027/1000000000000 : ℚ), (1857216714233/10000000000 : ℚ), (-98535786333071/1000000000000 : ℚ), 9⟩,
    ⟨(528647575771/1000000000000 : ℚ), (163669022013/2500000000 : ℚ), (-4387099690509/125000000000 : ℚ), 8⟩,
    ⟨(265562689227/500000000000 : ℚ), (324670037069/10000000000 : ℚ), (-550600784443/31250000000 : ℚ), 7⟩,
    ⟨(267195937741/500000000000 : ℚ), (189609359989/10000000000 : ℚ), (-5213695819513/500000000000 : ℚ), 6⟩,
    ⟨(538415608703/1000000000000 : ℚ), (15214874273/1250000000 : ℚ), (-212110161959/31250000000 : ℚ), 6⟩,
    ⟨(271578913683/500000000000 : ℚ), (41500623747/5000000000 : ℚ), (-938944693181/200000000000 : ℚ), 5⟩,
    ⟨(274286430657/500000000000 : ℚ), (58948420207/10000000000 : ℚ), (-3382368913417/1000000000000 : ℚ), 5⟩,
    ⟨(69326070101/125000000000 : ℚ), (21526760091/5000000000 : ℚ), (-626502139051/250000000000 : ℚ), 5⟩,
    ⟨(140301699691/250000000000 : ℚ), (64095527/20000000 : ℚ), (-473061822993/250000000000 : ℚ), 4⟩,
    ⟨(568304030543/1000000000000 : ℚ), (24144435523/10000000000 : ℚ), (-723040085861/500000000000 : ℚ), 4⟩,
    ⟨(143957976481/250000000000 : ℚ), (9150441603/5000000000 : ℚ), (-17373659681/15625000000 : ℚ), 4⟩,
    ⟨(11674358547/20000000000 : ℚ), (13876032593/10000000000 : ℚ), (-855461936959/1000000000000 : ℚ), 4⟩,
    ⟨(295943074063/500000000000 : ℚ), (10458544011/10000000000 : ℚ), (-130929225507/200000000000 : ℚ), 4⟩,
    ⟨(600257903819/1000000000000 : ℚ), (7774958279/10000000000 : ℚ), (-98946509673/200000000000 : ℚ), 3⟩,
    ⟨(304376284923/500000000000 : ℚ), (5637962843/10000000000 : ℚ), (-365584977361/1000000000000 : ℚ), 3⟩,
    ⟨(61728833793/100000000000 : ℚ), (489492897/1250000000 : ℚ), (-260047416513/1000000000000 : ℚ), 3⟩,
    ⟨(625783003957/1000000000000 : ℚ), (314297031/1250000000 : ℚ), (-43238510473/250000000000 : ℚ), 3⟩,
    ⟨(12683095193/20000000000 : ℚ), (682043089/5000000000 : ℚ), (-50251664871/500000000000 : ℚ), 3⟩,
    ⟨(321161490213/500000000000 : ℚ), (413619277/10000000000 : ℚ), (-7970212359/200000000000 : ℚ), 3⟩,
    ⟨(650209001853/1000000000000 : ℚ), (-46978797/1250000000 : ℚ), (5580488689/500000000000 : ℚ), 3⟩,
    ⟨(657736877233/1000000000000 : ℚ), (-51693629/500000000 : ℚ), (27094929971/500000000000 : ℚ), 3⟩,
    ⟨(166208527253/250000000000 : ℚ), (-197914361/1250000000 : ℚ), (45259980477/500000000000 : ℚ), 3⟩,
    ⟨(83929043371/125000000000 : ℚ), (-25523149/125000000 : ℚ), (15144223587/125000000000 : ℚ), 3⟩,
    ⟨(677468046463/1000000000000 : ℚ), (-1211638089/5000000000 : ℚ), (4589914201/31250000000 : ℚ), 3⟩,
    ⟨(68288308041/100000000000 : ℚ), (-1369178953/5000000000 : ℚ), (84153628313/500000000000 : ℚ), 3⟩,
    ⟨(687625299073/1000000000000 : ℚ), (-1497746021/5000000000 : ℚ), (7437072961/40000000000 : ℚ), 3⟩,
    ⟨(345824516147/500000000000 : ℚ), (-640235629/2000000000 : ℚ), (4002226699/20000000000 : ℚ), 3⟩,
    ⟨(347457764661/500000000000 : ℚ), (-1680189003/5000000000 : ℚ), (52787049133/250000000000 : ℚ), 3⟩,
    ⟨(139478666401/200000000000 : ℚ), (-3476781249/10000000000 : ℚ), (109625792259/500000000000 : ℚ), 3⟩,
    ⟨(699058577749/1000000000000 : ℚ), (-444124919/1250000000 : ℚ), (4491466167/20000000000 : ℚ), 3⟩,
    ⟨(699895229327/1000000000000 : ℚ), (-3590701603/10000000000 : ℚ), (113605245493/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-3595395519/10000000000 : ℚ), (56884760131/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (110741162279/500000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control677.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control677.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate677

namespace DiagonalRamsey.JointInheritedCertificate678
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(101317047727/500000000000 : ℚ), (360095903601/1250000000 : ℚ), (-3667123553509/62500000000 : ℚ), 11⟩,
    ⟨(204500438789/1000000000000 : ℚ), (303648960351/10000000000 : ℚ), (-6364154342161/1000000000000 : ℚ), 7⟩,
    ⟨(208161402933/1000000000000 : ℚ), (50104799897/5000000000 : ℚ), (-2178776705121/1000000000000 : ℚ), 6⟩,
    ⟨(42695259817/200000000000 : ℚ), (45326648513/10000000000 : ℚ), (-1024927214963/1000000000000 : ℚ), 5⟩,
    ⟨(220240878767/1000000000000 : ℚ), (23338507119/10000000000 : ℚ), (-274650405237/500000000000 : ℚ), 5⟩,
    ⟨(1782774867/7812500000 : ℚ), (3135341683/2500000000 : ℚ), (-307754322669/1000000000000 : ℚ), 4⟩,
    ⟨(118516766131/500000000000 : ℚ), (1305253171/2000000000 : ℚ), (-168105896359/1000000000000 : ℚ), 4⟩,
    ⟨(246416273819/1000000000000 : ℚ), (2870675087/10000000000 : ℚ), (-39941889481/500000000000 : ℚ), 4⟩,
    ⟨(255982834149/1000000000000 : ℚ), (100677489/2000000000 : ℚ), (-20494352707/1000000000000 : ℚ), 3⟩,
    ⟨(132682787853/500000000000 : ℚ), (-220611837/2000000000 : ℚ), (10670134717/500000000000 : ℚ), 3⟩,
    ⟨(535554541/1953125000 : ℚ), (-2229013531/10000000000 : ℚ), (25847541017/500000000000 : ℚ), 3⟩,
    ⟨(282158229201/1000000000000 : ℚ), (-378972437/1250000000 : ℚ), (74015663647/1000000000000 : ℚ), 3⟩,
    ⟨(288922808883/1000000000000 : ℚ), (-56294587/156250000 : ℚ), (45158602703/500000000000 : ℚ), 3⟩,
    ⟨(58847541007/200000000000 : ℚ), (-799282877/2000000000 : ℚ), (50895379799/500000000000 : ℚ), 3⟩,
    ⟨(148949334589/500000000000 : ℚ), (-4244333499/10000000000 : ℚ), (109130327479/1000000000000 : ℚ), 3⟩,
    ⟨(149882506257/500000000000 : ℚ), (-2182167917/5000000000 : ℚ), (112716315809/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-437915937/1000000000 : ℚ), (22632169521/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (122674052241/250000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control678.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control678.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate678

namespace DiagonalRamsey.JointInheritedCertificate709
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48510825627/200000000000 : ℚ), (1460313624887/1250000000 : ℚ), (-283802657539613/1000000000000 : ℚ), 13⟩,
    ⟨(15191949849/62500000000 : ℚ), (319576995621/2500000000 : ℚ), (-15672724824617/500000000000 : ℚ), 10⟩,
    ⟨(244100356821/1000000000000 : ℚ), (17943607723/400000000 : ℚ), (-222974830049/20000000000 : ℚ), 8⟩,
    ⟨(245631694479/1000000000000 : ℚ), (13824003619/625000000 : ℚ), (-279208780651/50000000000 : ℚ), 7⟩,
    ⟨(12382523147/50000000000 : ℚ), (32067100483/2500000000 : ℚ), (-658808896529/200000000000 : ℚ), 6⟩,
    ⟨(250137220359/1000000000000 : ℚ), (81653224827/10000000000 : ℚ), (-1067293198803/500000000000 : ℚ), 6⟩,
    ⟨(50613603581/200000000000 : ℚ), (55123730917/10000000000 : ℚ), (-1467523282393/1000000000000 : ℚ), 5⟩,
    ⟨(256414630393/1000000000000 : ℚ), (7735275201/2000000000 : ℚ), (-1048798147447/1000000000000 : ℚ), 5⟩,
    ⟨(260144828117/1000000000000 : ℚ), (69568507/25000000 : ℚ), (-768755202611/1000000000000 : ℚ), 5⟩,
    ⟨(64507492/244140625 : ℚ), (2540787713/1250000000 : ℚ), (-143049408539/250000000000 : ℚ), 5⟩,
    ⟨(16788058483/62500000000 : ℚ), (11675193/7812500 : ℚ), (-107221507173/250000000000 : ℚ), 4⟩,
    ⟨(17078833227/62500000000 : ℚ), (10965096857/10000000000 : ℚ), (-321129394437/1000000000000 : ℚ), 4⟩,
    ⟨(27813506983/100000000000 : ℚ), (3974631149/5000000000 : ℚ), (-238020881377/1000000000000 : ℚ), 4⟩,
    ⟨(283183213557/1000000000000 : ℚ), (1403817107/2500000000 : ℚ), (-172542328717/1000000000000 : ℚ), 4⟩,
    ⟨(288357146431/1000000000000 : ℚ), (3776470693/10000000000 : ℚ), (-30003689481/250000000000 : ℚ), 4⟩,
    ⟨(293607040649/1000000000000 : ℚ), (2305426629/10000000000 : ℚ), (-19306131507/250000000000 : ℚ), 4⟩,
    ⟨(14944116843/50000000000 : ℚ), (1112934911/10000000000 : ℚ), (-41908271219/1000000000000 : ℚ), 4⟩,
    ⟨(152066115539/500000000000 : ℚ), (67615793/5000000000 : ℚ), (-12437658921/1000000000000 : ℚ), 3⟩,
    ⟨(19331635247/62500000000 : ℚ), (-337044423/5000000000 : ℚ), (6189995713/500000000000 : ℚ), 3⟩,
    ⟨(314354307679/1000000000000 : ℚ), (-168664671/1250000000 : ℚ), (2089466121/62500000000 : ℚ), 3⟩,
    ⟨(79807011469/250000000000 : ℚ), (-958060049/5000000000 : ℚ), (12846058391/250000000000 : ℚ), 3⟩,
    ⟨(323880441781/1000000000000 : ℚ), (-2393912401/10000000000 : ℚ), (66745683249/1000000000000 : ℚ), 3⟩,
    ⟨(82066672569/250000000000 : ℚ), (-1398753117/5000000000 : ℚ), (3995214697/50000000000 : ℚ), 3⟩,
    ⟨(20771534337/62500000000 : ℚ), (-125530941/400000000 : ℚ), (91158989557/1000000000000 : ℚ), 3⟩,
    ⟨(84018686779/250000000000 : ℚ), (-3424980753/10000000000 : ℚ), (100740330939/1000000000000 : ℚ), 3⟩,
    ⟨(84855339901/250000000000 : ℚ), (-916098963/2500000000 : ℚ), (54413044249/500000000000 : ℚ), 3⟩,
    ⟨(342352157149/1000000000000 : ℚ), (-772346903/2000000000 : ℚ), (115552836067/1000000000000 : ℚ), 3⟩,
    ⟨(344838914569/1000000000000 : ℚ), (-3926749/9765625 : ℚ), (12102466833/100000000000 : ℚ), 3⟩,
    ⟨(34685768303/100000000000 : ℚ), (-4145183893/10000000000 : ℚ), (62659892671/500000000000 : ℚ), 3⟩,
    ⟨(21774313793/62500000000 : ℚ), (-4236538237/10000000000 : ℚ), (128495445171/1000000000000 : ℚ), 3⟩,
    ⟨(87354544981/250000000000 : ℚ), (-171864699/400000000 : ℚ), (65295811277/500000000000 : ℚ), 3⟩,
    ⟨(349935249373/1000000000000 : ℚ), (-2163207823/5000000000 : ℚ), (131633594099/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1082532309/2500000000 : ℚ), (26352711547/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (240503191959/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control709.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control709.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate709

namespace DiagonalRamsey.JointInheritedCertificate725
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63711897549/100000000000 : ℚ), (9725750466779/5000000000 : ℚ), (-310109097915707/250000000000 : ℚ), 13⟩,
    ⟨(637902819487/1000000000000 : ℚ), (66817443593/312500000 : ℚ), (-68560317238389/500000000000 : ℚ), 10⟩,
    ⟨(639462958633/1000000000000 : ℚ), (755628572769/10000000000 : ℚ), (-24428131435251/500000000000 : ℚ), 8⟩,
    ⟨(641784367937/1000000000000 : ℚ), (93975044963/2500000000 : ℚ), (-4907932174831/200000000000 : ℚ), 7⟩,
    ⟨(322422345479/500000000000 : ℚ), (220307896619/10000000000 : ℚ), (-1453410756151/100000000000 : ℚ), 6⟩,
    ⟨(81076806889/125000000000 : ℚ), (17748151581/1250000000 : ℚ), (-4735343904729/500000000000 : ℚ), 6⟩,
    ⟨(653057355509/1000000000000 : ℚ), (97244969461/10000000000 : ℚ), (-3279957388371/500000000000 : ℚ), 5⟩,
    ⟨(65813060459/100000000000 : ℚ), (34700731277/5000000000 : ℚ), (-59189578323/12500000000 : ℚ), 5⟩,
    ⟨(331892672097/500000000000 : ℚ), (2038707267/400000000 : ℚ), (-1758595164843/500000000000 : ℚ), 5⟩,
    ⟨(334983558043/500000000000 : ℚ), (2386289249/625000000 : ℚ), (-2664732163601/1000000000000 : ℚ), 4⟩,
    ⟨(676616386423/1000000000000 : ℚ), (14491099223/5000000000 : ℚ), (-204560231503/100000000000 : ℚ), 4⟩,
    ⟨(683669119099/1000000000000 : ℚ), (11085245621/5000000000 : ℚ), (-1582444882181/1000000000000 : ℚ), 4⟩,
    ⟨(17276434811/25000000000 : ℚ), (8502934317/5000000000 : ℚ), (-1227545166331/1000000000000 : ℚ), 4⟩,
    ⟨(349355026669/500000000000 : ℚ), (3253311321/2500000000 : ℚ), (-950175078699/1000000000000 : ℚ), 4⟩,
    ⟨(353276701241/500000000000 : ℚ), (4938189939/5000000000 : ℚ), (-29192835091/40000000000 : ℚ), 4⟩,
    ⟨(142902380827/200000000000 : ℚ), (7378320983/10000000000 : ℚ), (-138090979667/250000000000 : ℚ), 3⟩,
    ⟨(361254456787/500000000000 : ℚ), (2683172557/5000000000 : ℚ), (-407829668141/1000000000000 : ℚ), 3⟩,
    ⟨(365233707613/500000000000 : ℚ), (3730524481/10000000000 : ℚ), (-57802033841/200000000000 : ℚ), 3⟩,
    ⟨(738310764371/1000000000000 : ℚ), (1195097541/5000000000 : ℚ), (-7623731021/40000000000 : ℚ), 3⟩,
    ⟨(186490856317/250000000000 : ℚ), (321292263/2500000000 : ℚ), (-21719301637/200000000000 : ℚ), 3⟩,
    ⟨(75335169861/100000000000 : ℚ), (46235713/1250000000 : ℚ), (-19994908087/500000000000 : ℚ), 3⟩,
    ⟨(380202215643/500000000000 : ℚ), (-390566697/10000000000 : ℚ), (4390317071/250000000000 : ℚ), 3⟩,
    ⟨(767053701623/1000000000000 : ℚ), (-1023209003/10000000000 : ℚ), (65873851851/1000000000000 : ℚ), 3⟩,
    ⟨(154647094703/200000000000 : ℚ), (-774558037/5000000000 : ℚ), (106373446257/1000000000000 : ℚ), 3⟩,
    ⟨(389445106559/500000000000 : ℚ), (-1984809139/10000000000 : ℚ), (70092031073/500000000000 : ℚ), 3⟩,
    ⟨(3919817311/5000000000 : ℚ), (-2343266121/10000000000 : ℚ), (8409681681/50000000000 : ℚ), 3⟩,
    ⟨(788406362597/1000000000000 : ℚ), (-2634663359/10000000000 : ℚ), (191102106817/1000000000000 : ℚ), 3⟩,
    ⟨(792176126751/1000000000000 : ℚ), (-2866925201/10000000000 : ℚ), (209457143721/1000000000000 : ℚ), 3⟩,
    ⟨(198809112443/250000000000 : ℚ), (-15230667/50000000 : ℚ), (4473616109/20000000000 : ℚ), 3⟩,
    ⟨(199389464769/250000000000 : ℚ), (-635366287/2000000000 : ℚ), (234089474813/1000000000000 : ℚ), 3⟩,
    ⟨(399558999111/500000000000 : ℚ), (-203890457/625000000 : ℚ), (240908523469/1000000000000 : ℚ), 3⟩,
    ⟨(799901842219/1000000000000 : ℚ), (-826112539/2500000000 : ℚ), (61070669913/250000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-3309702071/10000000000 : ℚ), (30587850887/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (20027873379/125000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control725.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control725.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate725

namespace DiagonalRamsey.JointInheritedCertificate750
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(81666068773/200000000000 : ℚ), (13132053027299/10000000000 : ℚ), (-33554970427039/62500000000 : ℚ), 13⟩,
    ⟨(409012110877/1000000000000 : ℚ), (1439899402947/10000000000 : ℚ), (-59306681211177/1000000000000 : ℚ), 10⟩,
    ⟨(51296134889/125000000000 : ℚ), (506839933521/10000000000 : ℚ), (-5275229376981/250000000000 : ℚ), 8⟩,
    ⟨(16495527209/40000000000 : ℚ), (50166071621/2000000000 : ℚ), (-105749221253/10000000000 : ℚ), 7⟩,
    ⟨(25940623073/62500000000 : ℚ), (1141217813/78125000 : ℚ), (-312166550229/50000000000 : ℚ), 7⟩,
    ⟨(209164405729/500000000000 : ℚ), (9343048947/1000000000 : ℚ), (-2025394980879/500000000000 : ℚ), 6⟩,
    ⟨(422193130051/1000000000000 : ℚ), (7926505977/1250000000 : ℚ), (-1394932786239/500000000000 : ℚ), 6⟩,
    ⟨(53325713681/125000000000 : ℚ), (11191262763/2500000000 : ℚ), (-1998870910567/1000000000000 : ℚ), 5⟩,
    ⟨(26970253381/62500000000 : ℚ), (8110427609/2500000000 : ℚ), (-1470364414673/1000000000000 : ℚ), 5⟩,
    ⟨(436900797647/1000000000000 : ℚ), (1494163501/625000000 : ℚ), (-21998462457/20000000000 : ℚ), 5⟩,
    ⟨(442684159123/1000000000000 : ℚ), (8887080361/5000000000 : ℚ), (-830334443113/1000000000000 : ℚ), 5⟩,
    ⟨(448818441591/1000000000000 : ℚ), (13235951199/10000000000 : ℚ), (-314060996913/500000000000 : ℚ), 4⟩,
    ⟨(113811142139/250000000000 : ℚ), (9795103577/10000000000 : ℚ), (-59080156021/125000000000 : ℚ), 4⟩,
    ⟨(57737581613/125000000000 : ℚ), (7132930811/10000000000 : ℚ), (-350602175653/1000000000000 : ℚ), 4⟩,
    ⟨(58590324113/125000000000 : ℚ), (5037689579/10000000000 : ℚ), (-253138056471/1000000000000 : ℚ), 4⟩,
    ⟨(59455586193/125000000000 : ℚ), (3364451989/10000000000 : ℚ), (-10884530851/62500000000 : ℚ), 4⟩,
    ⟨(482600279249/1000000000000 : ℚ), (402297851/2000000000 : ℚ), (-54672605361/500000000000 : ℚ), 4⟩,
    ⟨(489522375889/1000000000000 : ℚ), (452920519/5000000000 : ℚ), (-55615869923/1000000000000 : ℚ), 4⟩,
    ⟨(496344315889/1000000000000 : ℚ), (-2896509/5000000000 : ℚ), (-10687163331/1000000000000 : ℚ), 4⟩,
    ⟨(503000400237/1000000000000 : ℚ), (-152593487/2000000000 : ℚ), (3392542471/125000000000 : ℚ), 3⟩,
    ⟨(509426527203/1000000000000 : ℚ), (-697713903/5000000000 : ℚ), (59151697517/1000000000000 : ℚ), 3⟩,
    ⟨(51556080967/100000000000 : ℚ), (-1925790143/10000000000 : ℚ), (17265823901/200000000000 : ℚ), 3⟩,
    ⟨(260672085573/500000000000 : ℚ), (-94856033/400000000 : ℚ), (109429592297/1000000000000 : ℚ), 3⟩,
    ⟨(526720914697/1000000000000 : ℚ), (-686412749/2500000000 : ℚ), (32259981527/250000000000 : ℚ), 3⟩,
    ⟨(106327851869/200000000000 : ℚ), (-1529460219/5000000000 : ℚ), (18202057751/125000000000 : ℚ), 3⟩,
    ⟨(268025919371/500000000000 : ℚ), (-829816281/2500000000 : ℚ), (79757085639/500000000000 : ℚ), 3⟩,
    ⟨(107983231467/200000000000 : ℚ), (-1766462041/5000000000 : ℚ), (171008273253/1000000000000 : ℚ), 3⟩,
    ⟨(4345559997/8000000000 : ℚ), (-115771763/312500000 : ℚ), (45077617989/250000000000 : ℚ), 3⟩,
    ⟨(68232098571/125000000000 : ℚ), (-3838222861/10000000000 : ℚ), (93790609713/500000000000 : ℚ), 3⟩,
    ⟨(547875889681/1000000000000 : ℚ), (-1968097607/5000000000 : ℚ), (1929389509/10000000000 : ℚ), 3⟩,
    ⟨(137308214479/250000000000 : ℚ), (-1000127363/2500000000 : ℚ), (19646692299/100000000000 : ℚ), 3⟩,
    ⟨(17184832029/31250000000 : ℚ), (-252023313/625000000 : ℚ), (49554514671/250000000000 : ℚ), 3⟩,
    ⟨(11/20 : ℚ), (-4036342351/10000000000 : ℚ), (39687271111/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (93655711977/250000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control750.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control750.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate750

namespace DiagonalRamsey.JointInheritedCertificate751
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(451352225839/1000000000000 : ℚ), (6917752549041/5000000000 : ℚ), (-312599256798423/500000000000 : ℚ), 13⟩,
    ⟨(452067574147/1000000000000 : ℚ), (1517714073379/10000000000 : ℚ), (-69070069991381/1000000000000 : ℚ), 10⟩,
    ⟨(7085802837/15625000000 : ℚ), (534605933709/10000000000 : ℚ), (-24579950264713/1000000000000 : ℚ), 8⟩,
    ⟨(455609936059/1000000000000 : ℚ), (26481037637/1000000000 : ℚ), (-3080666938159/250000000000 : ℚ), 7⟩,
    ⟨(229201417391/500000000000 : ℚ), (38596481497/2500000000 : ℚ), (-7278744660349/1000000000000 : ℚ), 7⟩,
    ⟨(230921590297/500000000000 : ℚ), (19774771949/2000000000 : ℚ), (-4725763709393/1000000000000 : ℚ), 6⟩,
    ⟨(93179568217/200000000000 : ℚ), (67210200957/10000000000 : ℚ), (-3257680786387/1000000000000 : ℚ), 6⟩,
    ⟨(470527767659/1000000000000 : ℚ), (23767277333/5000000000 : ℚ), (-1168432698209/500000000000 : ℚ), 5⟩,
    ⟨(475688371591/1000000000000 : ℚ), (1726365203/500000000 : ℚ), (-1721752793837/1000000000000 : ℚ), 5⟩,
    ⟨(120332488361/250000000000 : ℚ), (25516161949/10000000000 : ℚ), (-645370992847/500000000000 : ℚ), 5⟩,
    ⟨(487398181701/1000000000000 : ℚ), (9520242371/5000000000 : ℚ), (-195441520619/200000000000 : ℚ), 5⟩,
    ⟨(493834616007/1000000000000 : ℚ), (2849586393/2000000000 : ℚ), (-742164451799/1000000000000 : ℚ), 4⟩,
    ⟨(500577269981/1000000000000 : ℚ), (10614477589/10000000000 : ℚ), (-140392367191/250000000000 : ℚ), 4⟩,
    ⟨(507561208179/1000000000000 : ℚ), (3901961229/5000000000 : ℚ), (-83988673011/200000000000 : ℚ), 4⟩,
    ⟨(257359585729/500000000000 : ℚ), (2796400907/5000000000 : ℚ), (-306957266593/1000000000000 : ℚ), 4⟩,
    ⟨(6524777809/12500000000 : ℚ), (3828092133/10000000000 : ℚ), (-13469238427/62500000000 : ℚ), 4⟩,
    ⟨(52928042079/100000000000 : ℚ), (300289899/1250000000 : ℚ), (-35145679721/250000000000 : ℚ), 4⟩,
    ⟨(134135868513/250000000000 : ℚ), (1238347117/10000000000 : ℚ), (-39283263537/500000000000 : ℚ), 4⟩,
    ⟨(543701437331/1000000000000 : ℚ), (17486061/625000000 : ℚ), (-134008787/5000000000 : ℚ), 3⟩,
    ⟨(550685375529/1000000000000 : ℚ), (-64410943/1250000000 : ℚ), (1043532499/62500000000 : ℚ), 3⟩,
    ⟨(557428029503/1000000000000 : ℚ), (-589195059/5000000000 : ℚ), (26715500923/500000000000 : ℚ), 3⟩,
    ⟨(563864463809/1000000000000 : ℚ), (-1733545959/10000000000 : ℚ), (422759593/5000000000 : ℚ), 3⟩,
    ⟨(284966346033/500000000000 : ℚ), (-2199202079/10000000000 : ℚ), (110947309649/1000000000000 : ℚ), 3⟩,
    ⟨(575574273919/1000000000000 : ℚ), (-1294811171/5000000000 : ℚ), (66653495631/500000000000 : ℚ), 3⟩,
    ⟨(580734877851/1000000000000 : ℚ), (-728970481/2500000000 : ℚ), (152168657953/1000000000000 : ℚ), 3⟩,
    ⟨(73170600553/125000000000 : ℚ), (-637318319/2000000000 : ℚ), (167951627587/1000000000000 : ℚ), 3⟩,
    ⟨(147354866229/250000000000 : ℚ), (-1704215839/5000000000 : ℚ), (180981884567/1000000000000 : ℚ), 3⟩,
    ⟨(74107476341/125000000000 : ℚ), (-35865493/100000000 : ℚ), (191510869161/1000000000000 : ℚ), 3⟩,
    ⟨(595652709451/1000000000000 : ℚ), (-372485519/1000000000 : ℚ), (6241551781/31250000000 : ℚ), 3⟩,
    ⟨(597771263941/1000000000000 : ℚ), (-3826244629/10000000000 : ℚ), (205779634277/1000000000000 : ℚ), 3⟩,
    ⟨(599195071363/1000000000000 : ℚ), (-121648723/312500000 : ℚ), (209760400361/1000000000000 : ℚ), 3⟩,
    ⟨(599910419671/1000000000000 : ℚ), (-1962849941/5000000000 : ℚ), (211735369997/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-491225351/1250000000 : ℚ), (211981527151/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (337241264671/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control751.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control751.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate751

namespace DiagonalRamsey.JointInheritedCertificate752
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12111039397/40000000000 : ℚ), (11765552071799/10000000000 : ℚ), (-356716836187339/1000000000000 : ℚ), 13⟩,
    ⟨(9479378451/31250000000 : ℚ), (322191310173/2500000000 : ℚ), (-3939610189207/100000000000 : ℚ), 10⟩,
    ⟨(9514466519/31250000000 : ℚ), (452929936371/10000000000 : ℚ), (-14010363902919/1000000000000 : ℚ), 8⟩,
    ⟨(3061336261/10000000000 : ℚ), (111850032647/5000000000 : ℚ), (-7016233756887/1000000000000 : ℚ), 7⟩,
    ⟨(308336113179/1000000000000 : ℚ), (32489691731/2500000000 : ℚ), (-1034469847933/250000000000 : ℚ), 7⟩,
    ⟨(31104917869/100000000000 : ℚ), (82880566611/10000000000 : ℚ), (-134037193291/50000000000 : ℚ), 6⟩,
    ⟨(314246694329/1000000000000 : ℚ), (7007030607/1250000000 : ℚ), (-1842555949891/1000000000000 : ℚ), 6⟩,
    ⟨(317897866273/1000000000000 : ℚ), (39405396699/10000000000 : ℚ), (-1316551979007/1000000000000 : ℚ), 5⟩,
    ⟨(321967531739/1000000000000 : ℚ), (28408325523/10000000000 : ℚ), (-964900664567/1000000000000 : ℚ), 5⟩,
    ⟨(40802062203/125000000000 : ℚ), (10397779603/5000000000 : ℚ), (-718221352177/1000000000000 : ℚ), 5⟩,
    ⟨(82800479489/250000000000 : ℚ), (7663648709/5000000000 : ℚ), (-107700520717/200000000000 : ℚ), 5⟩,
    ⟨(336277706519/1000000000000 : ℚ), (2820139793/2500000000 : ℚ), (-16140198807/40000000000 : ℚ), 4⟩,
    ⟨(341594980697/1000000000000 : ℚ), (8211226707/10000000000 : ℚ), (-74878924051/250000000000 : ℚ), 4⟩,
    ⟨(347102532231/1000000000000 : ℚ), (2917335007/5000000000 : ℚ), (-217709350679/1000000000000 : ℚ), 4⟩,
    ⟨(352747320389/1000000000000 : ℚ), (3961951293/10000000000 : ℚ), (-15220023351/100000000000 : ℚ), 4⟩,
    ⟨(44809372847/125000000000 : ℚ), (2463901449/10000000000 : ℚ), (-98944055593/1000000000000 : ℚ), 4⟩,
    ⟨(364230358873/1000000000000 : ℚ), (62499057/500000000 : ℚ), (-55090611883/1000000000000 : ℚ), 4⟩,
    ⟨(18497901063/50000000000 : ℚ), (63841361/2500000000 : ℚ), (-580862603/31250000000 : ℚ), 4⟩,
    ⟨(187801404709/500000000000 : ℚ), (-567207391/10000000000 : ℚ), (12069873371/1000000000000 : ℚ), 4⟩,
    ⟨(47638795119/125000000000 : ℚ), (-1252728281/10000000000 : ℚ), (19001158667/500000000000 : ℚ), 4⟩,
    ⟨(38642763513/100000000000 : ℚ), (-114215019/625000000 : ℚ), (60054592077/1000000000000 : ℚ), 3⟩,
    ⟨(391503423693/1000000000000 : ℚ), (-577809121/2500000000 : ℚ), (4929385993/62500000000 : ℚ), 3⟩,
    ⟨(15851553761/40000000000 : ℚ), (-543864897/2000000000 : ℚ), (47471453761/500000000000 : ℚ), 3⟩,
    ⟨(40073780991/100000000000 : ℚ), (-3063403139/10000000000 : ℚ), (108653737717/1000000000000 : ℚ), 3⟩,
    ⟨(25300467211/62500000000 : ℚ), (-1676253677/5000000000 : ℚ), (120297291861/1000000000000 : ℚ), 3⟩,
    ⟨(408458647319/1000000000000 : ℚ), (-898405861/2500000000 : ℚ), (32525344049/250000000000 : ℚ), 3⟩,
    ⟨(205828081479/500000000000 : ℚ), (-3792142509/10000000000 : ℚ), (432004687/3125000000 : ℚ), 3⟩,
    ⟨(414369228469/1000000000000 : ℚ), (-1976098649/5000000000 : ℚ), (144851799669/1000000000000 : ℚ), 3⟩,
    ⟨(416571715549/1000000000000 : ℚ), (-4076913357/10000000000 : ℚ), (4688540659/31250000000 : ℚ), 3⟩,
    ⟨(418242413041/1000000000000 : ℚ), (-416859543/1000000000 : ℚ), (153860141509/1000000000000 : ℚ), 3⟩,
    ⟨(419365231217/1000000000000 : ℚ), (-2114431691/5000000000 : ℚ), (78192088231/500000000000 : ℚ), 3⟩,
    ⟨(104982339181/250000000000 : ℚ), (-2129373591/5000000000 : ℚ), (157638240797/1000000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-4262471071/10000000000 : ℚ), (39448657743/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (466284340221/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control752.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control752.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate752

namespace DiagonalRamsey.JointInheritedCertificate776
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(647523579291/1000000000000 : ℚ), (1847991124397/1000000000 : ℚ), (-1197635910012007/1000000000000 : ℚ), 13⟩,
    ⟨(162064338117/250000000000 : ℚ), (2032015353677/10000000000 : ℚ), (-132373674758189/1000000000000 : ℚ), 10⟩,
    ⟨(649717832187/1000000000000 : ℚ), (71840631429/1000000000 : ℚ), (-11788397114121/250000000000 : ℚ), 8⟩,
    ⟨(651890953229/1000000000000 : ℚ), (89380573451/2500000000 : ℚ), (-11837861801121/500000000000 : ℚ), 7⟩,
    ⟨(2619023149/4000000000 : ℚ), (209603516433/10000000000 : ℚ), (-3503833854507/250000000000 : ℚ), 7⟩,
    ⟨(658284744333/1000000000000 : ℚ), (67556768083/5000000000 : ℚ), (-9126643379591/1000000000000 : ℚ), 6⟩,
    ⟨(662443838691/1000000000000 : ℚ), (11567816309/1250000000 : ℚ), (-6316369785603/1000000000000 : ℚ), 6⟩,
    ⟨(333596507987/500000000000 : ℚ), (66034940237/10000000000 : ℚ), (-4554679539463/1000000000000 : ℚ), 5⟩,
    ⟨(336243269503/500000000000 : ℚ), (48475455953/10000000000 : ℚ), (-168942453189/50000000000 : ℚ), 5⟩,
    ⟨(169568357067/250000000000 : ℚ), (9071855189/2500000000 : ℚ), (-319492884681/125000000000 : ℚ), 5⟩,
    ⟨(171124488213/250000000000 : ℚ), (27514338341/10000000000 : ℚ), (-489582416547/250000000000 : ℚ), 5⟩,
    ⟨(138220033437/200000000000 : ℚ), (525335733/250000000 : ℚ), (-302263787217/200000000000 : ℚ), 4⟩,
    ⟨(698016488333/1000000000000 : ℚ), (8040641589/5000000000 : ℚ), (-58441978493/50000000000 : ℚ), 4⟩,
    ⟨(352590154171/500000000000 : ℚ), (1533245747/1250000000 : ℚ), (-901220727237/1000000000000 : ℚ), 4⟩,
    ⟨(71252263571/100000000000 : ℚ), (1853311049/2000000000 : ℚ), (-344326707/500000000 : ℚ), 4⟩,
    ⟨(71997275981/100000000000 : ℚ), (6876535981/10000000000 : ℚ), (-129375758879/250000000000 : ℚ), 4⟩,
    ⟨(181864732969/250000000000 : ℚ), (4950473403/10000000000 : ℚ), (-47267017151/125000000000 : ℚ), 4⟩,
    ⟨(91863631997/125000000000 : ℚ), (1691819929/5000000000 : ℚ), (-263590494059/1000000000000 : ℚ), 4⟩,
    ⟨(46390711459/62500000000 : ℚ), (2099150957/10000000000 : ℚ), (-16873449049/100000000000 : ℚ), 3⟩,
    ⟨(749415203353/1000000000000 : ℚ), (519805691/5000000000 : ℚ), (-5607538983/62500000000 : ℚ), 3⟩,
    ⟨(756331524501/1000000000000 : ℚ), (80777073/5000000000 : ℚ), (-2952673259/125000000000 : ℚ), 3⟩,
    ⟨(381466869417/500000000000 : ℚ), (-568341869/10000000000 : ℚ), (15909312793/500000000000 : ℚ), 3⟩,
    ⟨(384579131709/500000000000 : ℚ), (-18373041/156250000 : ℚ), (19588679109/250000000000 : ℚ), 3⟩,
    ⟨(19373628817/25000000000 : ℚ), (-840584431/5000000000 : ℚ), (11736348993/100000000000 : ℚ), 3⟩,
    ⟨(3047807327/3906250000 : ℚ), (-105000057/500000000 : ℚ), (74964922653/500000000000 : ℚ), 3⟩,
    ⟨(156997570599/200000000000 : ℚ), (-2444762081/10000000000 : ℚ), (88455101587/500000000000 : ℚ), 3⟩,
    ⟨(789146947353/1000000000000 : ℚ), (-2725163683/10000000000 : ℚ), (99489519483/500000000000 : ℚ), 3⟩,
    ⟨(198168976109/250000000000 : ℚ), (-1474382169/5000000000 : ℚ), (216663500903/1000000000000 : ℚ), 3⟩,
    ⟨(795540738457/1000000000000 : ℚ), (-3121360763/10000000000 : ℚ), (230369342701/1000000000000 : ℚ), 3⟩,
    ⟨(797713859499/1000000000000 : ℚ), (-3247280099/10000000000 : ℚ), (240400344833/1000000000000 : ℚ), 3⟩,
    ⟨(399587169609/500000000000 : ℚ), (-3329594311/10000000000 : ℚ), (246972652417/1000000000000 : ℚ), 3⟩,
    ⟨(159981622479/200000000000 : ℚ), (-210641953/625000000 : ℚ), (3127811731/12500000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-675066717/2000000000 : ℚ), (5012598043/20000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (44639555379/250000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control776.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control776.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate776

namespace DiagonalRamsey.JointInheritedCertificate806
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4324644781/7812500000 : ℚ), (7439738203023/5000000000 : ℚ), (-164887971551791/200000000000 : ℚ), 13⟩,
    ⟨(554259281961/1000000000000 : ℚ), (51079209687/312500000 : ℚ), (-91088265628547/1000000000000 : ℚ), 10⟩,
    ⟨(555661994819/1000000000000 : ℚ), (576945250659/10000000000 : ℚ), (-2026286381641/62500000000 : ℚ), 9⟩,
    ⟨(139437290413/250000000000 : ℚ), (143246409763/5000000000 : ℚ), (-2032200348461/125000000000 : ℚ), 8⟩,
    ⟨(560500681901/1000000000000 : ℚ), (167494512869/10000000000 : ℚ), (-2401702429181/250000000000 : ℚ), 7⟩,
    ⟨(281945028461/500000000000 : ℚ), (26899883401/2500000000 : ℚ), (-3120437823671/500000000000 : ℚ), 6⟩,
    ⟨(567884645181/1000000000000 : ℚ), (73388932371/10000000000 : ℚ), (-861137076151/200000000000 : ℚ), 6⟩,
    ⟨(572445976609/1000000000000 : ℚ), (52099336881/10000000000 : ℚ), (-3092276818357/1000000000000 : ℚ), 6⟩,
    ⟨(144382530773/250000000000 : ℚ), (19002007537/5000000000 : ℚ), (-1141050505913/500000000000 : ℚ), 5⟩,
    ⟨(291544060759/500000000000 : ℚ), (28224875093/10000000000 : ℚ), (-107175065857/62500000000 : ℚ), 5⟩,
    ⟨(294533222663/500000000000 : ℚ), (10593962323/5000000000 : ℚ), (-325628463799/250000000000 : ℚ), 5⟩,
    ⟨(595407519989/1000000000000 : ℚ), (1597407127/1000000000 : ℚ), (-993823517789/1000000000000 : ℚ), 5⟩,
    ⟨(602050277491/1000000000000 : ℚ), (1502224221/1250000000 : ℚ), (-30280666887/40000000000 : ℚ), 4⟩,
    ⟨(304465372223/500000000000 : ℚ), (1791183079/2000000000 : ℚ), (-114334288151/200000000000 : ℚ), 4⟩,
    ⟨(615982658197/1000000000000 : ℚ), (6546753029/10000000000 : ℚ), (-42415628821/100000000000 : ℚ), 4⟩,
    ⟨(311569052479/500000000000 : ℚ), (144517819/312500000 : ℚ), (-305091698689/1000000000000 : ℚ), 4⟩,
    ⟨(630328173867/1000000000000 : ℚ), (3072763839/10000000000 : ℚ), (-51963560299/250000000000 : ℚ), 4⟩,
    ⟨(159370905157/250000000000 : ℚ), (1807475433/10000000000 : ℚ), (-3191529669/25000000000 : ℚ), 4⟩,
    ⟨(644535534379/1000000000000 : ℚ), (767244197/10000000000 : ℚ), (-15247979139/250000000000 : ℚ), 4⟩,
    ⟨(325708000667/500000000000 : ℚ), (-93712347/10000000000 : ℚ), (-8338783/1600000000 : ℚ), 4⟩,
    ⟨(164514689709/250000000000 : ℚ), (-161994309/2000000000 : ℚ), (8335765993/200000000000 : ℚ), 4⟩,
    ⟨(664399833499/1000000000000 : ℚ), (-1407949621/10000000000 : ℚ), (8121488703/100000000000 : ℚ), 4⟩,
    ⟨(670378157307/1000000000000 : ℚ), (-1908014257/10000000000 : ℚ), (895201839/7812500000 : ℚ), 3⟩,
    ⟨(337968077867/500000000000 : ℚ), (-581494247/2500000000 : ℚ), (17839920377/125000000000 : ℚ), 3⟩,
    ⟨(85127537777/125000000000 : ℚ), (-1337082297/5000000000 : ℚ), (166341847569/1000000000000 : ℚ), 3⟩,
    ⟨(171395408411/250000000000 : ℚ), (-118487981/400000000 : ℚ), (186022480433/1000000000000 : ℚ), 3⟩,
    ⟨(689576221903/1000000000000 : ℚ), (-799393909/2500000000 : ℚ), (202205949331/1000000000000 : ℚ), 3⟩,
    ⟨(173241399231/250000000000 : ℚ), (-3386087141/10000000000 : ℚ), (215236923901/1000000000000 : ℚ), 3⟩,
    ⟨(695717117173/1000000000000 : ℚ), (-353214991/1000000000 : ℚ), (225378528121/1000000000000 : ℚ), 3⟩,
    ⟨(348902142003/500000000000 : ℚ), (-90976037/250000000 : ℚ), (23282625577/100000000000 : ℚ), 3⟩,
    ⟨(139841399373/200000000000 : ℚ), (-3709077427/10000000000 : ℚ), (118859144819/500000000000 : ℚ), 3⟩,
    ⟨(349955873429/500000000000 : ℚ), (-3743735619/10000000000 : ℚ), (240142833907/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-749610243/2000000000 : ℚ), (4808898131/20000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (70489385881/250000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control806.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control806.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate806

namespace DiagonalRamsey.JointInheritedCertificate824
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(91769664997/500000000000 : ℚ), (120519564307/500000000 : ℚ), (-44411674808393/1000000000000 : ℚ), 12⟩,
    ⟨(2887707361/15625000000 : ℚ), (127544518219/5000000000 : ℚ), (-960556838383/200000000000 : ℚ), 8⟩,
    ⟨(93656098241/500000000000 : ℚ), (42194941423/5000000000 : ℚ), (-816843151301/500000000000 : ℚ), 7⟩,
    ⟨(190940073827/1000000000000 : ℚ), (19050995471/5000000000 : ℚ), (-760088003877/1000000000000 : ℚ), 6⟩,
    ⟨(195557485847/1000000000000 : ℚ), (19436181219/10000000000 : ℚ), (-100016770687/250000000000 : ℚ), 6⟩,
    ⟨(50246746997/250000000000 : ℚ), (5101491473/5000000000 : ℚ), (-217313361821/1000000000000 : ℚ), 5⟩,
    ⟨(207019927527/1000000000000 : ℚ), (313732171/625000000 : ℚ), (-11173061101/100000000000 : ℚ), 5⟩,
    ⟨(213424461981/1000000000000 : ℚ), (922904829/5000000000 : ℚ), (-22545682931/500000000000 : ℚ), 4⟩,
    ⟨(219954468683/1000000000000 : ℚ), (-28051827/1250000000 : ℚ), (-69202887/250000000000 : ℚ), 4⟩,
    ⟨(226359003137/1000000000000 : ℚ), (-327766383/2000000000 : ℚ), (15631267461/500000000000 : ℚ), 4⟩,
    ⟨(232391942677/1000000000000 : ℚ), (-2636502853/10000000000 : ℚ), (54133828777/1000000000000 : ℚ), 4⟩,
    ⟨(237821444817/1000000000000 : ℚ), (-1340803/4000000 : ℚ), (70949403521/1000000000000 : ℚ), 4⟩,
    ⟨(121219428419/500000000000 : ℚ), (-482965747/1250000000 : ℚ), (83234385387/1000000000000 : ℚ), 4⟩,
    ⟨(246066734183/1000000000000 : ℚ), (-1054499503/2500000000 : ℚ), (91886454039/1000000000000 : ℚ), 4⟩,
    ⟨(248565659561/1000000000000 : ℚ), (-2220980657/5000000000 : ℚ), (48712558567/500000000000 : ℚ), 4⟩,
    ⟨(249839600671/1000000000000 : ℚ), (-2275306741/5000000000 : ℚ), (25033180067/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-1141011679/2500000000 : ℚ), (100468443311/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (316940024943/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control824.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control824.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate824

namespace DiagonalRamsey.JointInheritedCertificate832
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10425664279/15625000000 : ℚ), (16666172127351/10000000000 : ℚ), (-1112837513416829/1000000000000 : ℚ), 14⟩,
    ⟨(166970348049/250000000000 : ℚ), (229199910137/1250000000 : ℚ), (-1921417617733/15625000000 : ℚ), 10⟩,
    ⟨(669152996127/1000000000000 : ℚ), (162172623781/2500000000 : ℚ), (-21891140737519/500000000000 : ℚ), 9⟩,
    ⟨(67104507941/100000000000 : ℚ), (32302433847/1000000000 : ℚ), (-21966198494563/1000000000000 : ℚ), 8⟩,
    ⟨(673539420247/1000000000000 : ℚ), (94731183303/5000000000 : ℚ), (-3247418391167/250000000000 : ℚ), 7⟩,
    ⟨(676611996773/1000000000000 : ℚ), (122153206323/10000000000 : ℚ), (-4223576166677/500000000000 : ℚ), 7⟩,
    ⟨(170058304599/250000000000 : ℚ), (41826548237/5000000000 : ℚ), (-5835975557641/1000000000000 : ℚ), 6⟩,
    ⟨(171092052693/250000000000 : ℚ), (2982860723/500000000 : ℚ), (-4199193650507/1000000000000 : ℚ), 6⟩,
    ⟨(137795430333/200000000000 : ℚ), (21872430483/5000000000 : ℚ), (-388353742867/125000000000 : ℚ), 6⟩,
    ⟨(347007827227/500000000000 : ℚ), (8171940141/2500000000 : ℚ), (-2342431988791/1000000000000 : ℚ), 5⟩,
    ⟨(699435195603/1000000000000 : ℚ), (6179870461/2500000000 : ℚ), (-55856163919/31250000000 : ℚ), 5⟩,
    ⟨(44073973873/62500000000 : ℚ), (18807911523/10000000000 : ℚ), (-171539714871/125000000000 : ℚ), 5⟩,
    ⟨(355602726723/500000000000 : ℚ), (3579375781/2500000000 : ℚ), (-1054378114569/1000000000000 : ℚ), 5⟩,
    ⟨(717442816123/1000000000000 : ℚ), (10839733593/10000000000 : ℚ), (-806002587809/1000000000000 : ℚ), 4⟩,
    ⟨(361917800393/500000000000 : ℚ), (8102438309/10000000000 : ℚ), (-304389510599/500000000000 : ℚ), 4⟩,
    ⟨(29212889657/40000000000 : ℚ), (1183744487/2000000000 : ℚ), (-450032713629/1000000000000 : ℚ), 4⟩,
    ⟨(46052516759/62500000000 : ℚ), (4156877491/10000000000 : ℚ), (-8020177833/25000000000 : ℚ), 4⟩,
    ⟨(743326908783/1000000000000 : ℚ), (680497301/2500000000 : ℚ), (-13414263889/62500000000 : ℚ), 4⟩,
    ⟨(374859846723/500000000000 : ℚ), (6032513/39062500 : ℚ), (-31680917399/250000000000 : ℚ), 4⟩,
    ⟨(755957056123/1000000000000 : ℚ), (571782309/10000000000 : ℚ), (-53515080893/1000000000000 : ℚ), 4⟩,
    ⟨(761978927601/1000000000000 : ℚ), (-58779069/2500000000 : ℚ), (7720103301/1000000000000 : ℚ), 4⟩,
    ⟨(383863656983/500000000000 : ℚ), (-28333001/312500000 : ℚ), (59078846799/1000000000000 : ℚ), 4⟩,
    ⟨(154629371023/200000000000 : ℚ), (-29325827/200000000 : ℚ), (102192280031/1000000000000 : ℚ), 4⟩,
    ⟨(48636584869/62500000000 : ℚ), (-1932319823/10000000000 : ℚ), (17292312749/125000000000 : ℚ), 4⟩,
    ⟨(782794298797/1000000000000 : ℚ), (-11595407/50000000 : ℚ), (84261748961/500000000000 : ℚ), 4⟩,
    ⟨(786929291173/1000000000000 : ℚ), (-164864419/625000000 : ℚ), (9677002409/50000000000 : ℚ), 4⟩,
    ⟨(197637628199/250000000000 : ℚ), (-1448689921/5000000000 : ℚ), (214011201197/1000000000000 : ℚ), 4⟩,
    ⟨(396811544661/500000000000 : ℚ), (-776144291/2500000000 : ℚ), (115211367523/500000000000 : ℚ), 4⟩,
    ⟨(796117430159/1000000000000 : ℚ), (-816166539/2500000000 : ℚ), (60786896833/250000000000 : ℚ), 4⟩,
    ⟨(798009513441/1000000000000 : ℚ), (-3381554153/10000000000 : ℚ), (252464242579/1000000000000 : ℚ), 4⟩,
    ⟨(799281117373/1000000000000 : ℚ), (-691602101/2000000000 : ℚ), (1616064849/6250000000 : ℚ), 4⟩,
    ⟨(799919995713/1000000000000 : ℚ), (-436975849/1250000000 : ℚ), (52318513369/200000000000 : ℚ), 4⟩,
    ⟨(4/5 : ℚ), (-54695489/156250000 : ℚ), (130984454163/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (26549028769/125000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control832.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control832.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate832

namespace DiagonalRamsey.JointInheritedCertificate856
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(75446692471/500000000000 : ℚ), (27619292747/125000000 : ℚ), (-33456595923019/1000000000000 : ℚ), 12⟩,
    ⟨(6073387101/40000000000 : ℚ), (116999697393/5000000000 : ℚ), (-903164104397/250000000000 : ℚ), 9⟩,
    ⟨(2401267021/15625000000 : ℚ), (77375448591/10000000000 : ℚ), (-48993182183/40000000000 : ℚ), 7⟩,
    ⟨(156361663829/1000000000000 : ℚ), (3483314063/1000000000 : ℚ), (-566571588351/1000000000000 : ℚ), 7⟩,
    ⟨(31954677601/200000000000 : ℚ), (17639433547/10000000000 : ℚ), (-147632898139/500000000000 : ℚ), 6⟩,
    ⟨(81892575613/500000000000 : ℚ), (2277852483/2500000000 : ℚ), (-7875709573/50000000000 : ℚ), 6⟩,
    ⟨(168242783681/1000000000000 : ℚ), (4309191677/10000000000 : ℚ), (-9737256649/125000000000 : ℚ), 5⟩,
    ⟨(34594996211/200000000000 : ℚ), (679298303/5000000000 : ℚ), (-345188517/12500000000 : ℚ), 5⟩,
    ⟨(22224985957/125000000000 : ℚ), (-286492771/5000000000 : ℚ), (6231689477/1000000000000 : ℚ), 5⟩,
    ⟨(18253208503/100000000000 : ℚ), (-948841789/5000000000 : ℚ), (3760200641/125000000000 : ℚ), 5⟩,
    ⟨(37397943497/200000000000 : ℚ), (-1417818821/5000000000 : ℚ), (47402547103/1000000000000 : ℚ), 4⟩,
    ⟨(191001480707/1000000000000 : ℚ), (-14043183/40000000 : ℚ), (2406333727/40000000000 : ℚ), 4⟩,
    ⟨(194413204883/1000000000000 : ℚ), (-799057713/2000000000 : ℚ), (6949287487/100000000000 : ℚ), 4⟩,
    ⟨(24636722421/125000000000 : ℚ), (-4331674559/10000000000 : ℚ), (38038489063/500000000000 : ℚ), 4⟩,
    ⟨(198940191187/1000000000000 : ℚ), (-4544796553/10000000000 : ℚ), (80296942061/1000000000000 : ℚ), 4⟩,
    ⟨(199881483769/1000000000000 : ℚ), (-4648331171/10000000000 : ℚ), (41180754449/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-4661138431/10000000000 : ℚ), (1032719727/12500000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (175342899707/250000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control856.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control856.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate856

namespace DiagonalRamsey.JointInheritedCertificate863
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38192153283/250000000000 : ℚ), (540028005027/2500000000 : ℚ), (-33108911293493/1000000000000 : ℚ), 12⟩,
    ⟨(38418490173/250000000000 : ℚ), (2861004099/125000000 : ℚ), (-3573512144229/1000000000000 : ℚ), 9⟩,
    ⟨(155449863813/1000000000000 : ℚ), (75700860133/10000000000 : ℚ), (-75649169623/62500000000 : ℚ), 8⟩,
    ⟨(79014037767/500000000000 : ℚ), (17032526227/5000000000 : ℚ), (-139739184843/250000000000 : ℚ), 7⟩,
    ⟨(1290476133/8000000000 : ℚ), (3444599681/2000000000 : ℚ), (-290484913493/1000000000000 : ℚ), 6⟩,
    ⟨(165168083143/1000000000000 : ℚ), (1107666743/1250000000 : ℚ), (-77095896267/500000000000 : ℚ), 6⟩,
    ⟨(2647742071/15625000000 : ℚ), (1037052659/2500000000 : ℚ), (-15087380237/200000000000 : ℚ), 5⟩,
    ⟨(87003491043/500000000000 : ℚ), (1249700131/10000000000 : ℚ), (-25713994429/1000000000000 : ℚ), 5⟩,
    ⟨(8932382029/50000000000 : ℚ), (-64935039/1000000000 : ℚ), (967803567/125000000000 : ℚ), 5⟩,
    ⟨(91599565061/500000000000 : ℚ), (-976340557/5000000000 : ℚ), (15653509323/500000000000 : ℚ), 5⟩,
    ⟨(187486539523/1000000000000 : ℚ), (-575218789/2000000000 : ℚ), (48413517941/1000000000000 : ℚ), 5⟩,
    ⟨(191345106041/1000000000000 : ℚ), (-3541163551/10000000000 : ℚ), (61006836043/1000000000000 : ℚ), 5⟩,
    ⟨(48656636783/250000000000 : ℚ), (-4018661227/10000000000 : ℚ), (17554993571/250000000000 : ℚ), 4⟩,
    ⟨(197204758853/1000000000000 : ℚ), (-217516917/500000000 : ℚ), (76717320709/1000000000000 : ℚ), 4⟩,
    ⟨(99490330987/500000000000 : ℚ), (-2280275747/5000000000 : ℚ), (80881288393/1000000000000 : ℚ), 4⟩,
    ⟨(99943004767/500000000000 : ℚ), (-466269657/1000000000 : ℚ), (41459188759/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-2337666543/5000000000 : ℚ), (41585517881/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (713263917213/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control863.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control863.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate863

namespace DiagonalRamsey.JointInheritedCertificate911
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10778164407/125000000000 : ℚ), (392312307609/10000000000 : ℚ), (-3399413771263/1000000000000 : ℚ), 12⟩,
    ⟨(87263679321/1000000000000 : ℚ), (36483475883/10000000000 : ℚ), (-324388785061/1000000000000 : ℚ), 9⟩,
    ⟨(17836465187/200000000000 : ℚ), (8457490227/10000000000 : ℚ), (-19495902663/250000000000 : ℚ), 8⟩,
    ⟨(91689158543/1000000000000 : ℚ), (176251797/2000000000 : ℚ), (-1930802593/200000000000 : ℚ), 7⟩,
    ⟨(18880506921/200000000000 : ℚ), (-218165381/1000000000 : ℚ), (9395907449/500000000000 : ℚ), 7⟩,
    ⟨(96909367213/1000000000000 : ℚ), (-1844819559/5000000000 : ℚ), (16600666309/500000000000 : ℚ), 7⟩,
    ⟨(98828013827/1000000000000 : ℚ), (-4480274449/10000000000 : ℚ), (12792409/312500000 : ℚ), 6⟩,
    ⟨(24966594473/250000000000 : ℚ), (-4832157231/10000000000 : ℚ), (44431198089/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-19498089/40000000 : ℚ), (44854564563/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (937499/1000000 : ℚ)
  x := (875373294253/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control911.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control911.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate911
