import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control398
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
theorem certOK : JointInheritedControls.control398.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control398.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate398

-- Control399
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
theorem certOK : JointInheritedControls.control399.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control399.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate399

-- Control400
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
theorem certOK : JointInheritedControls.control400.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control400.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate400

-- Control401
namespace DiagonalRamsey.JointInheritedCertificate401
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10938004787/40000000000 : ℚ), (1671433385493/1250000000 : ℚ), (-183186230133521/500000000000 : ℚ), 12⟩,
    ⟨(137101747927/500000000000 : ℚ), (292035222633/2000000000 : ℚ), (-40492924105847/1000000000000 : ℚ), 9⟩,
    ⟨(275702992787/1000000000000 : ℚ), (51114532897/1000000000 : ℚ), (-7211210392711/500000000000 : ℚ), 7⟩,
    ⟨(277934169499/1000000000000 : ℚ), (15714689653/625000000 : ℚ), (-7239551506953/1000000000000 : ℚ), 6⟩,
    ⟨(280875538539/1000000000000 : ℚ), (18192775163/1250000000 : ℚ), (-4283435110011/1000000000000 : ℚ), 5⟩,
    ⟨(142249386457/500000000000 : ℚ), (46277662093/5000000000 : ℚ), (-2786835540171/1000000000000 : ℚ), 5⟩,
    ⟨(144384489449/500000000000 : ℚ), (62492553859/10000000000 : ℚ), (-192584136711/100000000000 : ℚ), 5⟩,
    ⟨(36705629009/125000000000 : ℚ), (21959878291/5000000000 : ℚ), (-8658837641/6250000000 : ℚ), 4⟩,
    ⟨(299079973379/1000000000000 : ℚ), (3964470421/1250000000 : ℚ), (-51200223617/50000000000 : ℚ), 4⟩,
    ⟨(152510730681/500000000000 : ℚ), (2914055539/1250000000 : ℚ), (-770361474497/1000000000000 : ℚ), 4⟩,
    ⟨(62282455249/200000000000 : ℚ), (3461812309/2000000000 : ℚ), (-292725061419/500000000000 : ℚ), 3⟩,
    ⟨(318190870987/1000000000000 : ℚ), (6445166789/5000000000 : ℚ), (-446433976849/1000000000000 : ℚ), 3⟩,
    ⟨(162645982007/500000000000 : ℚ), (119457131/125000000 : ℚ), (-67846862791/200000000000 : ℚ), 3⟩,
    ⟨(4158089599/12500000000 : ℚ), (349418447/500000000 : ℚ), (-254792499371/1000000000000 : ℚ), 3⟩,
    ⟨(340185648069/1000000000000 : ℚ), (4974348619/10000000000 : ℚ), (-1870697049/10000000000 : ℚ), 3⟩,
    ⟨(173917402389/500000000000 : ℚ), (337048739/1000000000 : ℚ), (-65959381561/500000000000 : ℚ), 3⟩,
    ⟨(88880243121/250000000000 : ℚ), (519052523/2500000000 : ℚ), (-10802394059/125000000000 : ℚ), 3⟩,
    ⟨(45396266149/125000000000 : ℚ), (1019791697/10000000000 : ℚ), (-48469892203/1000000000000 : ℚ), 3⟩,
    ⟨(185354304671/500000000000 : ℚ), (149154039/10000000000 : ℚ), (-3306407361/200000000000 : ℚ), 3⟩,
    ⟨(378063813247/1000000000000 : ℚ), (-114820433/2000000000 : ℚ), (2634733439/250000000000 : ℚ), 2⟩,
    ⟨(15406596251/40000000000 : ℚ), (-1178663829/10000000000 : ℚ), (33605010023/1000000000000 : ℚ), 2⟩,
    ⟨(391943501017/1000000000000 : ℚ), (-1686199613/10000000000 : ℚ), (13330515151/250000000000 : ℚ), 2⟩,
    ⟨(3983343159/10000000000 : ℚ), (-528306337/2500000000 : ℚ), (280772327/4000000000 : ℚ), 2⟩,
    ⟨(404275803883/1000000000000 : ℚ), (-494483563/2000000000 : ℚ), (1321968679/15625000000 : ℚ), 2⟩,
    ⟨(40971074519/100000000000 : ℚ), (-346694247/1250000000 : ℚ), (96860930747/1000000000000 : ℚ), 2⟩,
    ⟨(103646699591/250000000000 : ℚ), (-3024191101/10000000000 : ℚ), (107190204657/1000000000000 : ℚ), 2⟩,
    ⟨(104714251087/250000000000 : ℚ), (-1615082213/5000000000 : ℚ), (57886569451/500000000000 : ℚ), 2⟩,
    ⟨(422480238723/1000000000000 : ℚ), (-848988473/2500000000 : ℚ), (1534339299/12500000000 : ℚ), 2⟩,
    ⟨(425421607763/1000000000000 : ℚ), (-3524955087/10000000000 : ℚ), (128216043323/1000000000000 : ℚ), 2⟩,
    ⟨(17106111379/40000000000 : ℚ), (-3619678401/10000000000 : ℚ), (26451259251/200000000000 : ℚ), 2⟩,
    ⟨(6705504397/15625000000 : ℚ), (-460236609/1250000000 : ℚ), (33730391433/250000000000 : ℚ), 2⟩,
    ⟨(429905657587/1000000000000 : ℚ), (-185636293/500000000 : ℚ), (27249186027/200000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1858283637/5000000000 : ℚ), (136411092803/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (324988310537/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control401.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control401.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate401

-- Control402
namespace DiagonalRamsey.JointInheritedCertificate402
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(154990307779/500000000000 : ℚ), (13958507829777/10000000000 : ℚ), (-216758226281227/500000000000 : ℚ), 12⟩,
    ⟨(155399405997/500000000000 : ℚ), (381266877781/2500000000 : ℚ), (-4791668604881/100000000000 : ℚ), 9⟩,
    ⟨(312427325187/1000000000000 : ℚ), (267133848933/5000000000 : ℚ), (-8534302519977/500000000000 : ℚ), 7⟩,
    ⟨(157425235833/500000000000 : ℚ), (131526636907/5000000000 : ℚ), (-8569516098001/1000000000000 : ℚ), 6⟩,
    ⟨(318044915203/1000000000000 : ℚ), (152430269069/10000000000 : ℚ), (-5071803521069/1000000000000 : ℚ), 5⟩,
    ⟨(321979891563/1000000000000 : ℚ), (9705319331/1000000000 : ℚ), (-3301110688073/1000000000000 : ℚ), 5⟩,
    ⟨(81654376193/250000000000 : ℚ), (8202493723/1250000000 : ℚ), (-57063414763/25000000000 : ℚ), 5⟩,
    ⟨(331913092079/1000000000000 : ℚ), (5773937591/1250000000 : ℚ), (-328661645171/200000000000 : ℚ), 4⟩,
    ⟨(337815654083/1000000000000 : ℚ), (33419741213/10000000000 : ℚ), (-607967656069/500000000000 : ℚ), 4⟩,
    ⟨(344268345887/1000000000000 : ℚ), (12311117197/5000000000 : ℚ), (-916107723291/1000000000000 : ℚ), 4⟩,
    ⟨(17560451227/50000000000 : ℚ), (733422011/400000000 : ℚ), (-697635245069/1000000000000 : ℚ), 3⟩,
    ⟨(358570847513/1000000000000 : ℚ), (13707667603/10000000000 : ℚ), (-533494270559/1000000000000 : ℚ), 3⟩,
    ⟨(183141458213/500000000000 : ℚ), (5108094577/5000000000 : ℚ), (-407023459321/1000000000000 : ℚ), 3⟩,
    ⟨(2339193499/6250000000 : ℚ), (3763524943/5000000000 : ℚ), (-2460009219/8000000000 : ℚ), 3⟩,
    ⟨(38245804853/100000000000 : ℚ), (5419049663/10000000000 : ℚ), (-227778529909/1000000000000 : ℚ), 3⟩,
    ⟨(97691334089/250000000000 : ℚ), (374138189/1000000000 : ℚ), (-81472370167/500000000000 : ℚ), 3⟩,
    ⟨(99778204899/250000000000 : ℚ), (1194328713/5000000000 : ℚ), (-109540043517/1000000000000 : ℚ), 3⟩,
    ⟨(203710053711/500000000000 : ℚ), (257131187/2000000000 : ℚ), (-32537069/500000000 : ℚ), 3⟩,
    ⟨(25975449757/62500000000 : ℚ), (37771037/1000000000 : ℚ), (-13860756913/500000000000 : ℚ), 3⟩,
    ⟨(211797619763/500000000000 : ℚ), (-375529277/10000000000 : ℚ), (969203741/250000000000 : ℚ), 2⟩,
    ⟨(431307308439/1000000000000 : ℚ), (-25106037/250000000 : ℚ), (1229825729/40000000000 : ℚ), 2⟩,
    ⟨(109667282853/250000000000 : ℚ), (-1531249423/10000000000 : ℚ), (13416477453/250000000000 : ℚ), 2⟩,
    ⟨(89121962013/200000000000 : ℚ), (-986985691/5000000000 : ℚ), (73237622509/1000000000000 : ℚ), 2⟩,
    ⟨(452062501869/1000000000000 : ℚ), (-2345794697/10000000000 : ℚ), (11240562349/125000000000 : ℚ), 2⟩,
    ⟨(457965063873/1000000000000 : ℚ), (-2657058319/10000000000 : ℚ), (26021540317/250000000000 : ℚ), 2⟩,
    ⟨(23163032559/50000000000 : ℚ), (-2915764587/10000000000 : ℚ), (29000424943/250000000000 : ℚ), 2⟩,
    ⟨(467898264389/1000000000000 : ℚ), (-625620057/2000000000 : ℚ), (125887127719/1000000000000 : ℚ), 2⟩,
    ⟨(471833240749/1000000000000 : ℚ), (-3298820879/10000000000 : ℚ), (33477108079/250000000000 : ℚ), 2⟩,
    ⟨(475027684287/1000000000000 : ℚ), (-1715767297/5000000000 : ℚ), (17523921109/125000000000 : ℚ), 2⟩,
    ⟨(95490166153/200000000000 : ℚ), (-3528911417/10000000000 : ℚ), (72414389877/500000000000 : ℚ), 2⟩,
    ⟨(239539671979/500000000000 : ℚ), (-17964171/50000000 : ℚ), (73942983521/500000000000 : ℚ), 2⟩,
    ⟨(239948770197/500000000000 : ℚ), (-113265733/312500000 : ℚ), (149404469237/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1814224287/5000000000 : ℚ), (14959381473/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (18601374237/62500000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control402.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control402.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate402

-- Control403
namespace DiagonalRamsey.JointInheritedCertificate403
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(491432801993/1000000000000 : ℚ), (1805007979389/1000000000 : ℚ), (-444189802722033/500000000000 : ℚ), 12⟩,
    ⟨(123109126207/250000000000 : ℚ), (123593183677/625000000 : ℚ), (-98222938340519/1000000000000 : ℚ), 9⟩,
    ⟨(49443424429/100000000000 : ℚ), (347787546201/5000000000 : ℚ), (-350107711779/10000000000 : ℚ), 7⟩,
    ⟨(497406781057/1000000000000 : ℚ), (17208758397/500000000 : ℚ), (-879781916443/50000000000 : ℚ), 6⟩,
    ⟨(250662743987/500000000000 : ℚ), (200576073721/10000000000 : ℚ), (-651839827683/62500000000 : ℚ), 5⟩,
    ⟨(63269078219/125000000000 : ℚ), (128529656527/10000000000 : ℚ), (-3401236455131/500000000000 : ℚ), 5⟩,
    ⟨(102368341283/200000000000 : ℚ), (21883134459/2500000000 : ℚ), (-4717009297033/1000000000000 : ℚ), 5⟩,
    ⟨(259168970503/500000000000 : ℚ), (12425399903/2000000000 : ℚ), (-426145901823/125000000000 : ℚ), 4⟩,
    ⟨(131394691809/250000000000 : ℚ), (907671627/200000000 : ℚ), (-507144616429/200000000000 : ℚ), 4⟩,
    ⟨(133373612997/250000000000 : ℚ), (33823467203/10000000000 : ℚ), (-1923900477371/1000000000000 : ℚ), 4⟩,
    ⟨(542008762893/1000000000000 : ℚ), (25546573161/10000000000 : ℚ), (-739517025517/500000000000 : ℚ), 3⟩,
    ⟨(551039702481/1000000000000 : ℚ), (19445086201/10000000000 : ℚ), (-1145730891651/1000000000000 : ℚ), 3⟩,
    ⟨(560500297867/1000000000000 : ℚ), (1483859721/1000000000 : ℚ), (-889828836847/1000000000000 : ℚ), 3⟩,
    ⟨(570299438347/1000000000000 : ℚ), (2258215741/2000000000 : ℚ), (-689333782811/1000000000000 : ℚ), 3⟩,
    ⟨(14508568821/25000000000 : ℚ), (8513086759/10000000000 : ℚ), (-132392402153/250000000000 : ℚ), 3⟩,
    ⟨(295266759369/500000000000 : ℚ), (3153348333/5000000000 : ℚ), (-400442847003/1000000000000 : ℚ), 3⟩,
    ⟨(300386796697/500000000000 : ℚ), (2266552283/5000000000 : ℚ), (-294830396213/1000000000000 : ℚ), 3⟩,
    ⟨(152741089823/250000000000 : ℚ), (48325561/156250000 : ℚ), (-10379634353/50000000000 : ℚ), 2⟩,
    ⟨(124201534757/200000000000 : ℚ), (956628681/5000000000 : ℚ), (-134949698119/1000000000000 : ℚ), 2⟩,
    ⟨(126161362853/200000000000 : ℚ), (188094423/2000000000 : ℚ), (-1851876639/25000000000 : ℚ), 2⟩,
    ⟨(640267409651/1000000000000 : ℚ), (133928563/10000000000 : ℚ), (-22825417341/1000000000000 : ℚ), 2⟩,
    ⟨(649298349239/1000000000000 : ℚ), (-107448919/2000000000 : ℚ), (817764661/40000000000 : ℚ), 2⟩,
    ⟨(41113291259/62500000000 : ℚ), (-1096777921/10000000000 : ℚ), (57008118177/1000000000000 : ℚ), 2⟩,
    ⟨(10402005389/15625000000 : ℚ), (-31261021/200000000 : ℚ), (43930768923/500000000000 : ℚ), 2⟩,
    ⟨(336484585563/500000000000 : ℚ), (-487593259/2500000000 : ℚ), (113784783407/1000000000000 : ℚ), 2⟩,
    ⟨(679465405717/1000000000000 : ℚ), (-2269910179/10000000000 : ℚ), (135391093259/1000000000000 : ℚ), 2⟩,
    ⟨(34257724319/50000000000 : ℚ), (-2530365617/10000000000 : ℚ), (76580707123/500000000000 : ℚ), 2⟩,
    ⟨(344990812079/500000000000 : ℚ), (-2738480969/10000000000 : ℚ), (41867576679/250000000000 : ℚ), 2⟩,
    ⟨(27756013243/40000000000 : ℚ), (-2899407867/10000000000 : ℚ), (22325659017/125000000000 : ℚ), 2⟩,
    ⟨(348436433921/500000000000 : ℚ), (-603396403/2000000000 : ℚ), (1167382047/6250000000 : ℚ), 2⟩,
    ⟨(87358825913/125000000000 : ℚ), (-309392199/1000000000 : ℚ), (192150523703/1000000000000 : ℚ), 2⟩,
    ⟨(349937155069/500000000000 : ℚ), (-1565983817/5000000000 : ℚ), (194811327903/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-3136703653/10000000000 : ℚ), (97571409731/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (6739854519/40000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control403.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control403.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate403

-- Control404
namespace DiagonalRamsey.JointInheritedCertificate404
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(119111457541/500000000000 : ℚ), (12861305015303/10000000000 : ℚ), (-307019383680709/1000000000000 : ℚ), 12⟩,
    ⟨(238905199081/1000000000000 : ℚ), (280758036053/2000000000 : ℚ), (-16965634166577/500000000000 : ℚ), 9⟩,
    ⟨(30032899539/125000000000 : ℚ), (491058747021/10000000000 : ℚ), (-6042026959083/500000000000 : ℚ), 7⟩,
    ⟨(242283828519/1000000000000 : ℚ), (241345864799/10000000000 : ℚ), (-6064712615979/1000000000000 : ℚ), 6⟩,
    ⟨(244947635909/1000000000000 : ℚ), (34890854651/2500000000 : ℚ), (-448422425909/125000000000 : ℚ), 6⟩,
    ⟨(248228964561/1000000000000 : ℚ), (44326643463/5000000000 : ℚ), (-2333101970241/1000000000000 : ℚ), 5⟩,
    ⟨(126048106743/500000000000 : ℚ), (14945249769/2500000000 : ℚ), (-1611440370943/1000000000000 : ℚ), 5⟩,
    ⟨(256512138963/1000000000000 : ℚ), (4195122287/1000000000 : ℚ), (-579195966941/500000000000 : ℚ), 4⟩,
    ⟨(52286842643/200000000000 : ℚ), (6048004393/2000000000 : ℚ), (-855338973377/1000000000000 : ℚ), 4⟩,
    ⟨(266815033977/1000000000000 : ℚ), (4435723659/2000000000 : ℚ), (-642573808327/1000000000000 : ℚ), 4⟩,
    ⟨(68150695251/250000000000 : ℚ), (4105192319/2500000000 : ℚ), (-487386399947/1000000000000 : ℚ), 3⟩,
    ⟨(278741715127/1000000000000 : ℚ), (12183133861/10000000000 : ℚ), (-74128267667/200000000000 : ℚ), 3⟩,
    ⟨(17823294691/62500000000 : ℚ), (8985766503/10000000000 : ℚ), (-140271239157/500000000000 : ℚ), 3⟩,
    ⟨(58366769349/200000000000 : ℚ), (6522014997/10000000000 : ℚ), (-209500792293/1000000000000 : ℚ), 3⟩,
    ⟨(149330479927/500000000000 : ℚ), (4589040859/10000000000 : ℚ), (-152458120343/1000000000000 : ℚ), 3⟩,
    ⟨(152794152777/500000000000 : ℚ), (1524362283/5000000000 : ℚ), (-26485441311/250000000000 : ℚ), 3⟩,
    ⟨(78137292429/250000000000 : ℚ), (1804679729/10000000000 : ℚ), (-13501437139/200000000000 : ℚ), 3⟩,
    ⟨(63895303083/200000000000 : ℚ), (788222763/10000000000 : ℚ), (-35396810991/1000000000000 : ℚ), 3⟩,
    ⟨(13052145141/40000000000 : ℚ), (-50472039/10000000000 : ℚ), (-8324214183/1000000000000 : ℚ), 3⟩,
    ⟨(166482380107/500000000000 : ℚ), (-748107253/10000000000 : ℚ), (14666389201/1000000000000 : ℚ), 2⟩,
    ⟨(339395760143/1000000000000 : ℚ), (-333018287/2500000000 : ℚ), (3429395909/100000000000 : ℚ), 2⟩,
    ⟨(172767347133/500000000000 : ℚ), (-227879443/1250000000 : ℚ), (51104714873/1000000000000 : ℚ), 2⟩,
    ⟨(351322441293/1000000000000 : ℚ), (-223672723/1000000000 : ℚ), (6551681487/100000000000 : ℚ), 2⟩,
    ⟨(71340652411/200000000000 : ℚ), (-1292604641/5000000000 : ℚ), (77852089597/1000000000000 : ℚ), 2⟩,
    ⟨(361625336307/1000000000000 : ℚ), (-179860779/625000000 : ℚ), (44179479733/500000000000 : ℚ), 2⟩,
    ⟨(45755157723/125000000000 : ℚ), (-780397423/2500000000 : ℚ), (97229232649/1000000000000 : ℚ), 2⟩,
    ⟨(369908510709/1000000000000 : ℚ), (-3322193179/10000000000 : ℚ), (104610569161/1000000000000 : ℚ), 2⟩,
    ⟨(373189839361/1000000000000 : ℚ), (-348382583/1000000000 : ℚ), (55307905673/500000000000 : ℚ), 2⟩,
    ⟨(375853646751/1000000000000 : ℚ), (-721940127/2000000000 : ℚ), (57664997103/500000000000 : ℚ), 2⟩,
    ⟨(188937139479/500000000000 : ℚ), (-92554779/250000000 : ℚ), (118815586613/1000000000000 : ℚ), 2⟩,
    ⟨(379232276189/1000000000000 : ℚ), (-940742251/2500000000 : ℚ), (12111633949/100000000000 : ℚ), 2⟩,
    ⟨(94978640047/250000000000 : ℚ), (-3793098967/10000000000 : ℚ), (24451998259/200000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3796853213/10000000000 : ℚ), (1912541197/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (351688102677/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control404.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control404.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate404

-- Control405
namespace DiagonalRamsey.JointInheritedCertificate405
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(126085482133/500000000000 : ℚ), (13057529816067/10000000000 : ℚ), (-329944508712913/1000000000000 : ℚ), 12⟩,
    ⟨(252882372501/1000000000000 : ℚ), (285095458347/2000000000 : ℚ), (-1823281713479/50000000000 : ℚ), 9⟩,
    ⟨(254298337721/1000000000000 : ℚ), (249391961747/5000000000 : ℚ), (-3246791837257/250000000000 : ℚ), 7⟩,
    ⟨(128202611703/500000000000 : ℚ), (245225732743/10000000000 : ℚ), (-1303681914179/200000000000 : ℚ), 6⟩,
    ⟨(32397842387/125000000000 : ℚ), (141862336981/10000000000 : ℚ), (-1928071369823/500000000000 : ℚ), 5⟩,
    ⟨(262604135797/1000000000000 : ℚ), (450767359/50000000 : ℚ), (-2508264348989/1000000000000 : ℚ), 5⟩,
    ⟨(266636463587/1000000000000 : ℚ), (3041167229/500000000 : ℚ), (-346556186489/200000000000 : ℚ), 5⟩,
    ⟨(135620444473/500000000000 : ℚ), (8541568747/2000000000 : ℚ), (-124597714819/100000000000 : ℚ), 4⟩,
    ⟨(13818653437/50000000000 : ℚ), (7701792267/2500000000 : ℚ), (-460189034119/500000000000 : ℚ), 4⟩,
    ⟨(281983577273/1000000000000 : ℚ), (22614326941/10000000000 : ℚ), (-691817324177/1000000000000 : ℚ), 4⟩,
    ⟨(288018382281/1000000000000 : ℚ), (16762112609/10000000000 : ℚ), (-525141924393/1000000000000 : ℚ), 3⟩,
    ⟨(73604841323/250000000000 : ℚ), (498195933/400000000 : ℚ), (-399786974693/1000000000000 : ℚ), 3⟩,
    ⟨(15056244067/50000000000 : ℚ), (2301285747/2500000000 : ℚ), (-151537366551/500000000000 : ℚ), 3⟩,
    ⟨(308070352641/1000000000000 : ℚ), (3350644423/5000000000 : ℚ), (-226848594877/1000000000000 : ℚ), 3⟩,
    ⟨(31518889051/100000000000 : ℚ), (4737211047/10000000000 : ℚ), (-165671684529/1000000000000 : ℚ), 3⟩,
    ⟨(161205969767/500000000000 : ℚ), (634503803/2000000000 : ℚ), (-115810867359/1000000000000 : ℚ), 3⟩,
    ⟨(82417484451/250000000000 : ℚ), (954607333/5000000000 : ℚ), (-9329729943/125000000000 : ℚ), 3⟩,
    ⟨(84223246707/250000000000 : ℚ), (877444179/10000000000 : ℚ), (-1610499231/40000000000 : ℚ), 3⟩,
    ⟨(344011524697/1000000000000 : ℚ), (6628807/2500000000 : ℚ), (-1130092821/100000000000 : ℚ), 3⟩,
    ⟨(175478497999/500000000000 : ℚ), (-170231873/2500000000 : ℚ), (13275397051/1000000000000 : ℚ), 2⟩,
    ⟨(178831256023/500000000000 : ℚ), (-1272772981/10000000000 : ℚ), (34240591427/1000000000000 : ℚ), 2⟩,
    ⟨(364063495057/1000000000000 : ℚ), (-885036343/5000000000 : ℚ), (13045778757/250000000000 : ℚ), 2⟩,
    ⟨(74019660013/200000000000 : ℚ), (-1094430201/5000000000 : ℚ), (33776891579/500000000000 : ℚ), 2⟩,
    ⟨(187854404299/500000000000 : ℚ), (-317679223/1250000000 : ℚ), (10087480487/125000000000 : ℚ), 2⟩,
    ⟨(47605123549/125000000000 : ℚ), (-1418635163/5000000000 : ℚ), (45944791969/500000000000 : ℚ), 2⟩,
    ⟨(385445413751/1000000000000 : ℚ), (-38546131/125000000 : ℚ), (20266071549/200000000000 : ℚ), 2⟩,
    ⟨(389477741541/1000000000000 : ℚ), (-3286342711/10000000000 : ℚ), (27295490619/250000000000 : ℚ), 2⟩,
    ⟨(196449569121/500000000000 : ℚ), (-344956081/1000000000 : ℚ), (23113329523/200000000000 : ℚ), 2⟩,
    ⟨(98919163483/250000000000 : ℚ), (-3576627743/10000000000 : ℚ), (120576634477/1000000000000 : ℚ), 2⟩,
    ⟨(397783539617/1000000000000 : ℚ), (-3669969483/10000000000 : ℚ), (24855947489/200000000000 : ℚ), 2⟩,
    ⟨(399199504837/1000000000000 : ℚ), (-186564747/500000000 : ℚ), (126723491869/1000000000000 : ℚ), 2⟩,
    ⟨(24994432067/62500000000 : ℚ), (-1880846429/5000000000 : ℚ), (127938054909/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1882740163/5000000000 : ℚ), (128089536729/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (34108342643/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control405.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control405.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate405
