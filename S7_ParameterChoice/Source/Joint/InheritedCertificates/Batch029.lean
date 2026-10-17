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

-- Control258
namespace DiagonalRamsey.JointInheritedCertificate258
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13552101597/50000000000 : ℚ), (2816651881137/2500000000 : ℚ), (-153073881807043/500000000000 : ℚ), 11⟩,
    ⟨(271999491591/1000000000000 : ℚ), (19170587051/156250000 : ℚ), (-8463275215241/250000000000 : ℚ), 8⟩,
    ⟨(17119074377/62500000000 : ℚ), (213961789167/5000000000 : ℚ), (-12069433442331/1000000000000 : ℚ), 7⟩,
    ⟨(138370387173/500000000000 : ℚ), (209685881443/10000000000 : ℚ), (-1213537542131/200000000000 : ℚ), 6⟩,
    ⟨(140239468153/500000000000 : ℚ), (30233151689/2500000000 : ℚ), (-1798845388311/500000000000 : ℚ), 5⟩,
    ⟨(35635459421/125000000000 : ℚ), (38332202759/5000000000 : ℚ), (-2347224536469/1000000000000 : ℚ), 5⟩,
    ⟨(290510645379/1000000000000 : ℚ), (25821223119/5000000000 : ℚ), (-406962903157/250000000000 : ℚ), 4⟩,
    ⟨(296707581651/1000000000000 : ℚ), (36248837439/10000000000 : ℚ), (-588166457351/500000000000 : ℚ), 4⟩,
    ⟨(151807402149/500000000000 : ℚ), (5235998133/2000000000 : ℚ), (-87439212157/100000000000 : ℚ), 4⟩,
    ⟨(311165792993/1000000000000 : ℚ), (482007457/250000000 : ℚ), (-662492074131/1000000000000 : ℚ), 3⟩,
    ⟨(63857565517/200000000000 : ℚ), (2875138781/2000000000 : ℚ), (-50801520303/100000000000 : ℚ), 3⟩,
    ⟨(163951344221/500000000000 : ℚ), (336999593/312500000 : ℚ), (-391879523831/1000000000000 : ℚ), 3⟩,
    ⟨(336927409743/1000000000000 : ℚ), (2021973373/2500000000 : ℚ), (-151160672811/500000000000 : ℚ), 3⟩,
    ⟨(346275078491/1000000000000 : ℚ), (6021296799/10000000000 : ℚ), (-231772141161/1000000000000 : ℚ), 3⟩,
    ⟨(88963917881/250000000000 : ℚ), (2204268377/5000000000 : ℚ), (-175187059287/1000000000000 : ℚ), 3⟩,
    ⟨(182788461247/500000000000 : ℚ), (195641787/625000000 : ℚ), (-25820429891/200000000000 : ℚ), 2⟩,
    ⟨(375345210441/1000000000000 : ℚ), (525850807/2500000000 : ℚ), (-91078558691/1000000000000 : ℚ), 2⟩,
    ⟨(96266615353/250000000000 : ℚ), (634436569/5000000000 : ℚ), (-59362237191/1000000000000 : ℚ), 2⟩,
    ⟨(78929410889/200000000000 : ℚ), (36495477/625000000 : ℚ), (-1633432937/50000000000 : ℚ), 2⟩,
    ⟨(50499340399/125000000000 : ℚ), (4285917/2500000000 : ℚ), (-10042675127/1000000000000 : ℚ), 2⟩,
    ⟨(206509722247/500000000000 : ℚ), (-227442199/5000000000 : ℚ), (9235051817/1000000000000 : ℚ), 2⟩,
    ⟨(421634305351/1000000000000 : ℚ), (-169957699/2000000000 : ℚ), (25711939301/1000000000000 : ℚ), 2⟩,
    ⟨(429756339943/1000000000000 : ℚ), (-1180976499/10000000000 : ℚ), (995199889/25000000000 : ℚ), 2⟩,
    ⟨(437307328637/1000000000000 : ℚ), (-1458720421/10000000000 : ℚ), (51847395479/1000000000000 : ℚ), 2⟩,
    ⟨(88842910257/200000000000 : ℚ), (-1690931707/10000000000 : ℚ), (62081244963/1000000000000 : ℚ), 2⟩,
    ⟨(112602871889/250000000000 : ℚ), (-1883720493/10000000000 : ℚ), (70704226323/1000000000000 : ℚ), 2⟩,
    ⟨(455838457567/1000000000000 : ℚ), (-2041803051/10000000000 : ℚ), (608335251/7812500000 : ℚ), 2⟩,
    ⟨(46044319663/100000000000 : ℚ), (-2168800677/10000000000 : ℚ), (4184247597/50000000000 : ℚ), 2⟩,
    ⟨(46418135859/100000000000 : ℚ), (-28343243/125000000 : ℚ), (88245948437/1000000000000 : ℚ), 2⟩,
    ⟨(58377117863/125000000000 : ℚ), (-2339810939/10000000000 : ℚ), (91614578851/1000000000000 : ℚ), 2⟩,
    ⟨(93784528269/200000000000 : ℚ), (-477457583/2000000000 : ℚ), (46918171803/500000000000 : ℚ), 2⟩,
    ⟨(93976020199/200000000000 : ℚ), (-1205402017/5000000000 : ℚ), (47470095839/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2413733241/10000000000 : ℚ), (9507784681/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (317830864923/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control258.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control258.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate258

-- Control259
namespace DiagonalRamsey.JointInheritedCertificate259
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(277870711107/1000000000000 : ℚ), (5684788902893/5000000000 : ℚ), (-158361359369807/500000000000 : ℚ), 11⟩,
    ⟨(278843432331/1000000000000 : ℚ), (619146527651/5000000000 : ℚ), (-35022662766169/1000000000000 : ℚ), 8⟩,
    ⟨(280779506943/1000000000000 : ℚ), (431972108591/10000000000 : ℚ), (-3121642684829/250000000000 : ℚ), 7⟩,
    ⟨(56732057897/200000000000 : ℚ), (6616142301/312500000 : ℚ), (-1255506632473/200000000000 : ℚ), 6⟩,
    ⟨(287458036447/1000000000000 : ℚ), (122133751723/10000000000 : ℚ), (-3722240756329/1000000000000 : ℚ), 5⟩,
    ⟨(292136173449/1000000000000 : ℚ), (19361635043/2500000000 : ℚ), (-2428608472891/1000000000000 : ℚ), 5⟩,
    ⟨(11905985899/40000000000 : ℚ), (26092240557/5000000000 : ℚ), (-421104846407/250000000000 : ℚ), 4⟩,
    ⟨(75986340189/250000000000 : ℚ), (36641103/10000000 : ℚ), (-608670847797/500000000000 : ℚ), 4⟩,
    ⟨(310962682131/1000000000000 : ℚ), (13236499167/5000000000 : ℚ), (-90501351657/100000000000 : ℚ), 4⟩,
    ⟨(3982925387/12500000000 : ℚ), (2438062299/1250000000 : ℚ), (-342920494589/500000000000 : ℚ), 3⟩,
    ⟨(326885527959/1000000000000 : ℚ), (227352047/156250000 : ℚ), (-526079615259/1000000000000 : ℚ), 3⟩,
    ⟨(167818853351/500000000000 : ℚ), (546122687/500000000 : ℚ), (-20299397527/50000000000 : ℚ), 3⟩,
    ⟨(86201569731/250000000000 : ℚ), (8198993789/10000000000 : ℚ), (-313395560123/1000000000000 : ℚ), 3⟩,
    ⟨(354302946261/1000000000000 : ℚ), (6111458593/10000000000 : ℚ), (-240472013567/1000000000000 : ℚ), 3⟩,
    ⟨(45504531327/125000000000 : ℚ), (560307867/1250000000 : ℚ), (-4549941629/25000000000 : ℚ), 3⟩,
    ⟨(373912454947/1000000000000 : ℚ), (638294151/2000000000 : ℚ), (-67194159141/500000000000 : ℚ), 2⟩,
    ⟨(383836446007/1000000000000 : ℚ), (1077274229/5000000000 : ℚ), (-23780057611/250000000000 : ℚ), 2⟩,
    ⟨(196856325169/500000000000 : ℚ), (1312016241/10000000000 : ℚ), (-62378071193/1000000000000 : ℚ), 2⟩,
    ⟨(403445954693/1000000000000 : ℚ), (77583853/1250000000 : ℚ), (-34832214631/1000000000000 : ℚ), 2⟩,
    ⟨(41294262203/100000000000 : ℚ), (48748997/10000000000 : ℚ), (-1149376253/100000000000 : ℚ), 2⟩,
    ⟨(422111194251/1000000000000 : ℚ), (-213707107/5000000000 : ℚ), (8382244453/1000000000000 : ℚ), 2⟩,
    ⟨(86172674599/200000000000 : ℚ), (-33026033/400000000 : ℚ), (25362911943/1000000000000 : ℚ), 2⟩,
    ⟨(219557434997/500000000000 : ℚ), (-1159524589/10000000000 : ℚ), (7976705653/200000000000 : ℚ), 2⟩,
    ⟨(446786218823/1000000000000 : ℚ), (-719714923/5000000000 : ℚ), (52280217737/1000000000000 : ℚ), 2⟩,
    ⟨(226901770099/500000000000 : ℚ), (-52292953/312500000 : ℚ), (12562695613/200000000000 : ℚ), 2⟩,
    ⟨(460099253479/1000000000000 : ℚ), (-1867544859/10000000000 : ℚ), (17921347107/250000000000 : ℚ), 2⟩,
    ⟨(93122545501/200000000000 : ℚ), (-2026717251/10000000000 : ℚ), (9881542071/125000000000 : ℚ), 2⟩,
    ⟨(470290864507/1000000000000 : ℚ), (-1077279973/5000000000 : ℚ), (85034512011/1000000000000 : ℚ), 2⟩,
    ⟨(474088611469/1000000000000 : ℚ), (-281731903/1250000000 : ℚ), (22430752651/250000000000 : ℚ), 2⟩,
    ⟨(476969394011/1000000000000 : ℚ), (-2326661847/10000000000 : ℚ), (93185126121/1000000000000 : ℚ), 2⟩,
    ⟨(239452734311/500000000000 : ℚ), (-474886383/2000000000 : ℚ), (23867055437/250000000000 : ℚ), 2⟩,
    ⟨(479878189847/1000000000000 : ℚ), (-2398091539/10000000000 : ℚ), (19320488601/200000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2401038543/10000000000 : ℚ), (3869755249/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (313208977747/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control259.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control259.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate259

-- Control260
namespace DiagonalRamsey.JointInheritedCertificate260
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(145901868067/500000000000 : ℚ), (5796237075281/5000000000 : ℚ), (-21194339216133/62500000000 : ℚ), 11⟩,
    ⟨(36600706737/125000000000 : ℚ), (1262920584733/10000000000 : ℚ), (-37498768246143/1000000000000 : ℚ), 8⟩,
    ⟨(294799840403/1000000000000 : ℚ), (440739457269/10000000000 : ℚ), (-835615244929/62500000000 : ℚ), 7⟩,
    ⟨(297767090551/1000000000000 : ℚ), (108057956327/5000000000 : ℚ), (-26887939607/4000000000 : ℚ), 6⟩,
    ⟨(301678828097/1000000000000 : ℚ), (124737393191/10000000000 : ℚ), (-39861299977/10000000000 : ℚ), 5⟩,
    ⟨(306497380871/1000000000000 : ℚ), (39571530477/5000000000 : ℚ), (-1300560541263/500000000000 : ℚ), 5⟩,
    ⟨(39022042947/125000000000 : ℚ), (10672227903/2000000000 : ℚ), (-112775093327/62500000000 : ℚ), 4⟩,
    ⟨(63732204939/200000000000 : ℚ), (18746708839/5000000000 : ℚ), (-326097691727/250000000000 : ℚ), 4⟩,
    ⟨(162944486603/500000000000 : ℚ), (27110297813/10000000000 : ℚ), (-194015628237/200000000000 : ℚ), 4⟩,
    ⟨(333790580013/1000000000000 : ℚ), (9996344779/5000000000 : ℚ), (-367757922727/500000000000 : ℚ), 3⟩,
    ⟨(171144874161/500000000000 : ℚ), (7465850131/5000000000 : ℚ), (-564573726279/1000000000000 : ℚ), 3⟩,
    ⟨(175652313249/500000000000 : ℚ), (11224724237/10000000000 : ℚ), (-109028568829/250000000000 : ℚ), 3⟩,
    ⟨(180374198167/500000000000 : ℚ), (8441856779/10000000000 : ℚ), (-13484238657/40000000000 : ℚ), 3⟩,
    ⟨(185265054583/500000000000 : ℚ), (6308831471/10000000000 : ℚ), (-51832777219/200000000000 : ℚ), 3⟩,
    ⟨(1522222247/4000000000 : ℚ), (290283167/625000000 : ℚ), (-98349149681/500000000000 : ℚ), 3⟩,
    ⟨(390728203499/1000000000000 : ℚ), (166292051/500000000 : ℚ), (-72935193401/500000000000 : ℚ), 2⟩,
    ⟨(400950066311/1000000000000 : ℚ), (2267002019/10000000000 : ℚ), (-103976621509/1000000000000 : ℚ), 2⟩,
    ⟨(20556135403/50000000000 : ℚ), (351752351/2500000000 : ℚ), (-34535929639/500000000000 : ℚ), 2⟩,
    ⟨(84229632129/200000000000 : ℚ), (87710111/1250000000 : ℚ), (-9932726889/250000000000 : ℚ), 2⟩,
    ⟨(107732468369/250000000000 : ℚ), (59258707/5000000000 : ℚ), (-1861665231/125000000000 : ℚ), 2⟩,
    ⟨(440373643313/1000000000000 : ℚ), (-366707041/10000000000 : ℚ), (1248040353/200000000000 : ℚ), 2⟩,
    ⟨(28086782593/62500000000 : ℚ), (-4826609/62500000 : ℚ), (6069639261/250000000000 : ℚ), 2⟩,
    ⟨(228943844899/500000000000 : ℚ), (-222406983/2000000000 : ℚ), (1984474533/50000000000 : ℚ), 2⟩,
    ⟨(116447324151/250000000000 : ℚ), (-1396698677/10000000000 : ℚ), (52834535171/1000000000000 : ℚ), 2⟩,
    ⟨(94603449023/200000000000 : ℚ), (-1634465581/10000000000 : ℚ), (6399418111/100000000000 : ℚ), 2⟩,
    ⟨(95900385247/200000000000 : ℚ), (-1831687079/10000000000 : ℚ), (9173284053/125000000000 : ℚ), 2⟩,
    ⟨(485180888939/1000000000000 : ℚ), (-996634861/5000000000 : ℚ), (8117960677/100000000000 : ℚ), 2⟩,
    ⟨(489999441713/1000000000000 : ℚ), (-1061491879/5000000000 : ℚ), (43752037829/500000000000 : ℚ), 2⟩,
    ⟨(24695558963/50000000000 : ℚ), (-222369013/1000000000 : ℚ), (92458249861/1000000000000 : ℚ), 2⟩,
    ⟨(496878429407/1000000000000 : ℚ), (-28718833/125000000 : ℚ), (48057514047/500000000000 : ℚ), 2⟩,
    ⟨(99774523183/200000000000 : ℚ), (-938371/4000000 : ℚ), (4926288433/50000000000 : ℚ), 2⟩,
    ⟨(124968633419/250000000000 : ℚ), (-2369905897/10000000000 : ℚ), (49861592269/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-59322311/250000000 : ℚ), (99872492923/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (303791838897/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control260.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control260.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate260

-- Control261
namespace DiagonalRamsey.JointInheritedCertificate261
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(152983346013/500000000000 : ℚ), (11824381568661/10000000000 : ℚ), (-362665396034249/1000000000000 : ℚ), 11⟩,
    ⟨(76749174953/250000000000 : ℚ), (1288543961269/10000000000 : ℚ), (-20052089733091/500000000000 : ℚ), 8⟩,
    ⟨(309046795847/1000000000000 : ℚ), (11246536211/250000000 : ℚ), (-1787403600747/125000000000 : ℚ), 7⟩,
    ⟨(39012154573/125000000000 : ℚ), (220693276829/10000000000 : ℚ), (-7189630566191/1000000000000 : ℚ), 6⟩,
    ⟨(79029661153/250000000000 : ℚ), (5097854923/400000000 : ℚ), (-1065946338183/250000000000 : ℚ), 5⟩,
    ⟨(160536145787/500000000000 : ℚ), (5056760147/625000000 : ℚ), (-34782888411/12500000000 : ℚ), 5⟩,
    ⟨(16345523557/50000000000 : ℚ), (54585265251/10000000000 : ℚ), (-1930642012191/1000000000000 : ℚ), 4⟩,
    ⟨(333576958451/1000000000000 : ℚ), (19189991251/5000000000 : ℚ), (-13959836487/10000000000 : ℚ), 4⟩,
    ⟨(341007551589/1000000000000 : ℚ), (27773044887/10000000000 : ℚ), (-1038544582903/1000000000000 : ℚ), 4⟩,
    ⟨(8728267247/25000000000 : ℚ), (20500187767/10000000000 : ℚ), (-787795695853/1000000000000 : ℚ), 3⟩,
    ⟨(357868143063/1000000000000 : ℚ), (239495899/156250000 : ℚ), (-605096538009/1000000000000 : ℚ), 3⟩,
    ⟨(183567882343/500000000000 : ℚ), (5769281493/5000000000 : ℚ), (-233920287801/500000000000 : ℚ), 3⟩,
    ⟨(376844302487/1000000000000 : ℚ), (8693780407/10000000000 : ℚ), (-362090162611/1000000000000 : ℚ), 3⟩,
    ⟨(386900257941/1000000000000 : ℚ), (3256662849/5000000000 : ℚ), (-278876879343/1000000000000 : ℚ), 3⟩,
    ⟨(397206786697/1000000000000 : ℚ), (96243981/200000000 : ℚ), (-212221500131/1000000000000 : ℚ), 3⟩,
    ⟨(101916157813/250000000000 : ℚ), (1732303213/5000000000 : ℚ), (-158017203251/1000000000000 : ℚ), 2⟩,
    ⟨(104543269211/250000000000 : ℚ), (95315483/400000000 : ℚ), (-5668559863/50000000000 : ℚ), 2⟩,
    ⟨(428630921399/1000000000000 : ℚ), (300931791/2000000000 : ℚ), (-19050411249/250000000000 : ℚ), 2⟩,
    ⟨(109734362539/250000000000 : ℚ), (392360593/5000000000 : ℚ), (-44982688871/1000000000000 : ℚ), 2⟩,
    ⟨(448993405609/1000000000000 : ℚ), (37961779/2000000000 : ℚ), (-18578486091/1000000000000 : ℚ), 2⟩,
    ⟨(45870194341/100000000000 : ℚ), (-15244403/500000000 : ℚ), (3867571519/1000000000000 : ℚ), 2⟩,
    ⟨(467969565033/1000000000000 : ℚ), (-359042811/5000000000 : ℚ), (2300847501/100000000000 : ℚ), 2⟩,
    ⟨(59588377277/125000000000 : ℚ), (-1064036573/10000000000 : ℚ), (9836563511/250000000000 : ℚ), 2⟩,
    ⟨(484830156507/1000000000000 : ℚ), (-338419101/2500000000 : ℚ), (10653861287/200000000000 : ℚ), 2⟩,
    ⟨(98452149929/200000000000 : ℚ), (-1595440107/10000000000 : ℚ), (813491093/12500000000 : ℚ), 2⟩,
    ⟨(124731809239/250000000000 : ℚ), (-11224073/62500000 : ℚ), (37505375943/500000000000 : ℚ), 2⟩,
    ⟨(504765416523/1000000000000 : ℚ), (-489988471/2500000000 : ℚ), (83245670239/1000000000000 : ℚ), 2⟩,
    ⟨(127429765871/250000000000 : ℚ), (-2091623717/10000000000 : ℚ), (44962123261/500000000000 : ℚ), 2⟩,
    ⟨(64217558939/125000000000 : ℚ), (-2193804541/10000000000 : ℚ), (47576503649/500000000000 : ℚ), 2⟩,
    ⟨(516790912249/1000000000000 : ℚ), (-453735213/2000000000 : ℚ), (4950541197/50000000000 : ℚ), 2⟩,
    ⟨(129710252071/250000000000 : ℚ), (-2317776683/10000000000 : ℚ), (101553315917/1000000000000 : ℚ), 2⟩,
    ⟨(51987101607/100000000000 : ℚ), (-468417601/2000000000 : ℚ), (102815936997/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1172557921/5000000000 : ℚ), (102973365031/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (73554519077/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control261.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control261.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate261

-- Control262
namespace DiagonalRamsey.JointInheritedCertificate262
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(327744016733/1000000000000 : ℚ), (2439715144023/2000000000 : ℚ), (-100186141614067/250000000000 : ℚ), 11⟩,
    ⟨(20550849693/62500000000 : ℚ), (1329891123997/10000000000 : ℚ), (-553950327329/12500000000 : ℚ), 8⟩,
    ⟨(82735612793/250000000000 : ℚ), (464582923613/10000000000 : ℚ), (-15801722155269/1000000000000 : ℚ), 7⟩,
    ⟨(334110082939/1000000000000 : ℚ), (228081689849/10000000000 : ℚ), (-397285524393/50000000000 : ℚ), 6⟩,
    ⟨(169142992181/500000000000 : ℚ), (65909950701/5000000000 : ℚ), (-4712745199809/1000000000000 : ℚ), 5⟩,
    ⟨(343429939229/1000000000000 : ℚ), (83758496407/10000000000 : ℚ), (-3076176071329/1000000000000 : ℚ), 5⟩,
    ⟨(349492408441/1000000000000 : ℚ), (56562475851/10000000000 : ℚ), (-2134851019273/1000000000000 : ℚ), 4⟩,
    ⟨(356415007107/1000000000000 : ℚ), (19906132769/5000000000 : ℚ), (-193024262167/125000000000 : ℚ), 4⟩,
    ⟨(5689547919/15625000000 : ℚ), (7210978573/2500000000 : ℚ), (-1149382374189/1000000000000 : ℚ), 4⟩,
    ⟨(372566277697/1000000000000 : ℚ), (10660136667/5000000000 : ℚ), (-872480775001/1000000000000 : ℚ), 3⟩,
    ⟨(47704925507/125000000000 : ℚ), (3991922463/2500000000 : ℚ), (-13415816167/20000000000 : ℚ), 3⟩,
    ⟨(391263066727/1000000000000 : ℚ), (3011400081/2500000000 : ℚ), (-103866226097/200000000000 : ℚ), 3⟩,
    ⟨(401344584579/1000000000000 : ℚ), (455031877/500000000 : ℚ), (-201349611949/500000000000 : ℚ), 3⟩,
    ⟨(205893433541/500000000000 : ℚ), (6843386343/10000000000 : ℚ), (-38872911867/125000000000 : ℚ), 3⟩,
    ⟨(105622337337/250000000000 : ℚ), (2541292943/5000000000 : ℚ), (-237574357043/1000000000000 : ℚ), 3⟩,
    ⟨(216674480311/500000000000 : ℚ), (73762381/200000000 : ℚ), (-177932198477/1000000000000 : ℚ), 2⟩,
    ⟨(444261116911/1000000000000 : ℚ), (160578787/625000000 : ℚ), (-128857900939/1000000000000 : ℚ), 2⟩,
    ⟨(91024145637/200000000000 : ℚ), (41535161/250000000 : ℚ), (-11006058283/125000000000 : ℚ), 2⟩,
    ⟨(465823210451/1000000000000 : ℚ), (183542541/2000000000 : ℚ), (-26907548437/500000000000 : ℚ), 2⟩,
    ⟨(238132746477/500000000000 : ℚ), (151839463/5000000000 : ℚ), (-6224959749/250000000000 : ℚ), 2⟩,
    ⟨(243173505403/500000000000 : ℚ), (-25805981/1250000000 : ℚ), (-88302041/250000000000 : ℚ), 2⟩,
    ⟨(495970673477/1000000000000 : ℚ), (-632111869/10000000000 : ℚ), (20549324873/1000000000000 : ℚ), 2⟩,
    ⟨(126260949959/250000000000 : ℚ), (-98813423/1000000000 : ℚ), (19182735933/500000000000 : ℚ), 2⟩,
    ⟨(513479010717/1000000000000 : ℚ), (-1285897311/10000000000 : ℚ), (13381831051/250000000000 : ℚ), 2⟩,
    ⟨(260597535213/500000000000 : ℚ), (-153418931/1000000000 : ℚ), (66371013641/1000000000000 : ℚ), 2⟩,
    ⟨(132029417273/250000000000 : ℚ), (-434953483/2500000000 : ℚ), (77158363421/1000000000000 : ℚ), 2⟩,
    ⟨(8346564661/15625000000 : ℚ), (-381607003/2000000000 : ℚ), (17218575717/200000000000 : ℚ), 2⟩,
    ⟨(539324093171/1000000000000 : ℚ), (-510725757/2500000000 : ℚ), (23332913063/250000000000 : ℚ), 2⟩,
    ⟨(271749997297/500000000000 : ℚ), (-536873857/2500000000 : ℚ), (49497131899/500000000000 : ℚ), 2⟩,
    ⟨(546667626361/1000000000000 : ℚ), (-1112046377/5000000000 : ℚ), (20633879887/200000000000 : ℚ), 2⟩,
    ⟨(109759296489/200000000000 : ℚ), (-284288179/1250000000 : ℚ), (13239961391/125000000000 : ℚ), 2⟩,
    ⟨(549866060799/1000000000000 : ℚ), (-459832287/2000000000 : ℚ), (107285106887/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2302256829/10000000000 : ℚ), (107455332819/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (279509834173/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control262.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control262.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate262

-- Control263
namespace DiagonalRamsey.JointInheritedCertificate263
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(224774491111/1000000000000 : ℚ), (10606662711929/10000000000 : ℚ), (-239050473376121/1000000000000 : ℚ), 11⟩,
    ⟨(28202217669/125000000000 : ℚ), (1154015778213/10000000000 : ℚ), (-13216214981483/500000000000 : ℚ), 8⟩,
    ⟨(227296120873/1000000000000 : ℚ), (200990464091/5000000000 : ℚ), (-9422857534907/1000000000000 : ℚ), 7⟩,
    ⟨(114896732981/500000000000 : ℚ), (98337795689/5000000000 : ℚ), (-23681900943/5000000000 : ℚ), 6⟩,
    ⟨(11654286291/50000000000 : ℚ), (1415480173/125000000 : ℚ), (-2807597680147/1000000000000 : ℚ), 5⟩,
    ⟨(118570597093/500000000000 : ℚ), (7165517101/1000000000 : ℚ), (-1831042432263/1000000000000 : ℚ), 5⟩,
    ⟨(241920814681/1000000000000 : ℚ), (9634288599/2000000000 : ℚ), (-1269156708303/1000000000000 : ℚ), 4⟩,
    ⟨(247378556949/1000000000000 : ℚ), (33737076697/10000000000 : ℚ), (-916393979501/1000000000000 : ℚ), 4⟩,
    ⟨(126730929973/500000000000 : ℚ), (2430370623/1000000000 : ℚ), (-42525027699/62500000000 : ℚ), 4⟩,
    ⟨(260112138141/1000000000000 : ℚ), (8922157227/5000000000 : ℚ), (-257344197383/500000000000 : ℚ), 3⟩,
    ⟨(267265345717/1000000000000 : ℚ), (13255387397/10000000000 : ℚ), (-196895161071/500000000000 : ℚ), 3⟩,
    ⟨(137426296689/500000000000 : ℚ), (9896098459/10000000000 : ℚ), (-151404088929/500000000000 : ℚ), 3⟩,
    ⟨(141400405889/500000000000 : ℚ), (1843684833/2500000000 : ℚ), (-7267458771/31250000000 : ℚ), 3⟩,
    ⟨(291033455231/1000000000000 : ℚ), (2720855769/5000000000 : ℚ), (-17713464579/100000000000 : ℚ), 3⟩,
    ⟨(1871695243/6250000000 : ℚ), (983104479/2500000000 : ℚ), (-132599804267/1000000000000 : ℚ), 3⟩,
    ⟨(61606580451/200000000000 : ℚ), (27351537/100000000 : ℚ), (-48126310141/500000000000 : ℚ), 2⟩,
    ⟨(158317995929/500000000000 : ℚ), (1772245453/10000000000 : ℚ), (-66192266189/1000000000000 : ℚ), 2⟩,
    ⟨(162598827617/500000000000 : ℚ), (494275679/5000000000 : ℚ), (-20526433231/500000000000 : ℚ), 2⟩,
    ⟨(166817719441/500000000000 : ℚ), (34422161/1000000000 : ℚ), (-3967070681/200000000000 : ℚ), 2⟩,
    ⟨(68373616467/200000000000 : ℚ), (-37997523/2000000000 : ℚ), (-898991437/500000000000 : ℚ), 2⟩,
    ⟨(5465879699/15625000000 : ℚ), (-127164347/2000000000 : ℚ), (13616784891/1000000000000 : ℚ), 2⟩,
    ⟨(89350887099/250000000000 : ℚ), (-1009632917/10000000000 : ℚ), (5366447181/200000000000 : ℚ), 2⟩,
    ⟨(364556755973/1000000000000 : ℚ), (-330958289/2500000000 : ℚ), (2385764093/62500000000 : ℚ), 2⟩,
    ⟨(371207034167/1000000000000 : ℚ), (-793956973/5000000000 : ℚ), (47885901919/1000000000000 : ℚ), 2⟩,
    ⟨(75458067433/200000000000 : ℚ), (-1809172213/10000000000 : ℚ), (56165549339/1000000000000 : ℚ), 2⟩,
    ⟨(47843509929/125000000000 : ℚ), (-398646701/2000000000 : ℚ), (63159649187/1000000000000 : ℚ), 2⟩,
    ⟨(48440962491/125000000000 : ℚ), (-268054101/1250000000 : ℚ), (34491277767/500000000000 : ℚ), 2⟩,
    ⟨(391583168293/1000000000000 : ℚ), (-1133046789/5000000000 : ℚ), (18430430139/250000000000 : ℚ), 2⟩,
    ⟨(394875428151/1000000000000 : ℚ), (-590183161/2500000000 : ℚ), (19360777069/250000000000 : ℚ), 2⟩,
    ⟨(9934319331/25000000000 : ℚ), (-607552477/2500000000 : ℚ), (16039045969/200000000000 : ℚ), 2⟩,
    ⟨(399051152761/1000000000000 : ℚ), (-618958963/2500000000 : ℚ), (82012097783/1000000000000 : ℚ), 2⟩,
    ⟨(199947201501/500000000000 : ℚ), (-62461141/250000000 : ℚ), (41457647899/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-2501262447/10000000000 : ℚ), (41513976599/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (87282481267/250000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control263.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control263.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate263

-- Control264
namespace DiagonalRamsey.JointInheritedCertificate264
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(237692125563/1000000000000 : ℚ), (5390547373399/5000000000 : ℚ), (-128467783139531/500000000000 : ℚ), 11⟩,
    ⟨(119284729389/500000000000 : ℚ), (2933206731/25000000 : ℚ), (-2841035196379/100000000000 : ℚ), 8⟩,
    ⟨(240315676009/1000000000000 : ℚ), (51104476803/1250000000 : ℚ), (-10128213129601/1000000000000 : ℚ), 7⟩,
    ⟨(24291396023/100000000000 : ℚ), (200112316489/10000000000 : ℚ), (-5091140001827/1000000000000 : ℚ), 6⟩,
    ⟨(246339288543/1000000000000 : ℚ), (5763505197/500000000 : ℚ), (-3018089612387/1000000000000 : ℚ), 5⟩,
    ⟨(50111734633/200000000000 : ℚ), (36488649069/5000000000 : ℚ), (-1968516900249/1000000000000 : ℚ), 5⟩,
    ⟨(51106295823/200000000000 : ℚ), (49087121169/10000000000 : ℚ), (-1364646232223/1000000000000 : ℚ), 4⟩,
    ⟨(261209815553/1000000000000 : ℚ), (6879870739/2000000000 : ℚ), (-492776390879/500000000000 : ℚ), 4⟩,
    ⟨(53507799399/200000000000 : ℚ), (3099770839/1250000000 : ℚ), (-731972958677/1000000000000 : ℚ), 4⟩,
    ⟨(68614517491/250000000000 : ℚ), (9111275551/5000000000 : ℚ), (-553940676607/1000000000000 : ℚ), 3⟩,
    ⟨(56380080001/200000000000 : ℚ), (1355034163/1000000000 : ℚ), (-6626290227/15625000000 : ℚ), 3⟩,
    ⟨(289794313411/1000000000000 : ℚ), (10129775787/10000000000 : ℚ), (-326385406283/1000000000000 : ℚ), 3⟩,
    ⟨(149031893741/500000000000 : ℚ), (3781191429/5000000000 : ℚ), (-250978134927/1000000000000 : ℚ), 3⟩,
    ⟨(15331459133/50000000000 : ℚ), (1398549107/2500000000 : ℚ), (-95755408087/500000000000 : ℚ), 3⟩,
    ⟨(78852002377/250000000000 : ℚ), (4057693687/10000000000 : ℚ), (-71875887617/500000000000 : ℚ), 3⟩,
    ⟨(518905157/1600000000 : ℚ), (2839149347/10000000000 : ℚ), (-104796355841/1000000000000 : ℚ), 2⟩,
    ⟨(333266537359/1000000000000 : ℚ), (116216107/625000000 : ℚ), (-4537527073/62500000000 : ℚ), 2⟩,
    ⟨(10692945343/31250000000 : ℚ), (53121941/500000000 : ℚ), (-11423697161/250000000000 : ℚ), 2⟩,
    ⟨(14038123113/40000000000 : ℚ), (8149517/200000000 : ℚ), (-4600879949/200000000000 : ℚ), 2⟩,
    ⟨(359518473003/1000000000000 : ℚ), (-135251069/10000000000 : ℚ), (-1865390869/500000000000 : ℚ), 2⟩,
    ⟨(367787947073/1000000000000 : ℚ), (-14698151/250000000 : ℚ), (12726584017/1000000000000 : ℚ), 2⟩,
    ⟨(587002907/1562500000 : ℚ), (-241809803/2500000000 : ℚ), (1072956759/40000000000 : ℚ), 2⟩,
    ⟨(383124190521/1000000000000 : ℚ), (-20091647/156250000 : ℚ), (121595483/3125000000 : ℚ), 2⟩,
    ⟨(39004326349/100000000000 : ℚ), (-1553501947/10000000000 : ℚ), (12313871413/250000000000 : ℚ), 2⟩,
    ⟨(99093111233/250000000000 : ℚ), (-1777607653/10000000000 : ℚ), (58066527977/1000000000000 : ℚ), 2⟩,
    ⟨(40205078137/100000000000 : ℚ), (-245491951/1250000000 : ℚ), (65504337891/1000000000000 : ℚ), 2⟩,
    ⟨(407023587319/1000000000000 : ℚ), (-529230259/2500000000 : ℚ), (71692794123/1000000000000 : ℚ), 2⟩,
    ⟨(411242971941/1000000000000 : ℚ), (-2239965607/10000000000 : ℚ), (38363374327/500000000000 : ℚ), 2⟩,
    ⟨(82933660051/200000000000 : ℚ), (-2335646283/10000000000 : ℚ), (40338916253/500000000000 : ℚ), 2⟩,
    ⟨(104316646119/250000000000 : ℚ), (-2405867963/10000000000 : ℚ), (20899695751/250000000000 : ℚ), 2⟩,
    ⟨(419012801707/1000000000000 : ℚ), (-2451973143/10000000000 : ℚ), (85526611141/1000000000000 : ℚ), 2⟩,
    ⟨(209945067461/500000000000 : ℚ), (-247481753/1000000000 : ℚ), (86484820739/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2477663429/10000000000 : ℚ), (86604332859/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (13615603933/40000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control264.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control264.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate264

-- Control265
namespace DiagonalRamsey.JointInheritedCertificate265
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63949584969/250000000000 : ℚ), (12146691005383/10000000000 : ℚ), (-38930438422907/125000000000 : ℚ), 11⟩,
    ⟨(4009947859/15625000000 : ℚ), (1323917024489/10000000000 : ℚ), (-34431797601647/1000000000000 : ℚ), 8⟩,
    ⟨(258305235667/1000000000000 : ℚ), (462277168763/10000000000 : ℚ), (-766920745887/62500000000 : ℚ), 7⟩,
    ⟨(260787988681/1000000000000 : ℚ), (226780950321/10000000000 : ℚ), (-616496610021/100000000000 : ℚ), 6⟩,
    ⟨(1056244047/4000000000 : ℚ), (32731627389/2500000000 : ℚ), (-3652115140603/1000000000000 : ℚ), 5⟩,
    ⟨(268092783873/1000000000000 : ℚ), (83064788529/10000000000 : ℚ), (-37186044639/15625000000 : ℚ), 5⟩,
    ⟨(272844476879/1000000000000 : ℚ), (218660243/39062500 : ℚ), (-1647979052041/1000000000000 : ℚ), 4⟩,
    ⟨(278270329367/1000000000000 : ℚ), (39288194619/10000000000 : ℚ), (-1188533661571/1000000000000 : ℚ), 4⟩,
    ⟨(284318087413/1000000000000 : ℚ), (2835448423/1000000000 : ℚ), (-220311647089/250000000000 : ℚ), 4⟩,
    ⟨(1454647539/5000000000 : ℚ), (10424488793/5000000000 : ℚ), (-665550387113/1000000000000 : ℚ), 3⟩,
    ⟨(59608183787/200000000000 : ℚ), (60561423/39062500 : ℚ), (-508263460221/1000000000000 : ℚ), 3⟩,
    ⟨(152791917021/500000000000 : ℚ), (2316316777/2000000000 : ℚ), (-77994841343/200000000000 : ℚ), 3⟩,
    ⟨(156742805363/500000000000 : ℚ), (8631378707/10000000000 : ℚ), (-298716050209/1000000000000 : ℚ), 3⟩,
    ⟨(80417537639/250000000000 : ℚ), (3182587159/5000000000 : ℚ), (-14174390037/62500000000 : ℚ), 3⟩,
    ⟨(16502931597/50000000000 : ℚ), (287047641/625000000 : ℚ), (-169065449537/1000000000000 : ℚ), 3⟩,
    ⟨(338570269217/1000000000000 : ℚ), (3184807449/10000000000 : ℚ), (-3050467543/25000000000 : ℚ), 3⟩,
    ⟨(86780772667/250000000000 : ℚ), (3281903/16000000 : ℚ), (-83169977631/1000000000000 : ℚ), 2⟩,
    ⟨(71126945589/200000000000 : ℚ), (1127788161/10000000000 : ℚ), (-5073605053/100000000000 : ℚ), 2⟩,
    ⟨(364023209329/1000000000000 : ℚ), (46019917/1250000000 : ℚ), (-23411493669/1000000000000 : ℚ), 2⟩,
    ⟨(372207749159/1000000000000 : ℚ), (-130929963/5000000000 : ℚ), (-226112023/1000000000000 : ℚ), 2⟩,
    ⟨(190054762921/500000000000 : ℚ), (-157546341/2000000000 : ℚ), (19550253693/1000000000000 : ℚ), 2⟩,
    ⟨(7753048819/20000000000 : ℚ), (-1228646263/10000000000 : ℚ), (9118185459/250000000000 : ℚ), 2⟩,
    ⟨(78952770417/200000000000 : ℚ), (-99950069/625000000 : ℚ), (50966782167/1000000000000 : ℚ), 2⟩,
    ⟨(50171909059/125000000000 : ℚ), (-1910581209/10000000000 : ℚ), (63360257279/1000000000000 : ℚ), 2⟩,
    ⟨(203711515259/500000000000 : ℚ), (-271425107/1250000000 : ℚ), (18476676679/250000000000 : ℚ), 2⟩,
    ⟨(206424441503/500000000000 : ℚ), (-298538951/1250000000 : ℚ), (10350288879/125000000000 : ℚ), 2⟩,
    ⟨(104400144003/250000000000 : ℚ), (-641611459/2500000000 : ℚ), (22549617713/250000000000 : ℚ), 2⟩,
    ⟨(84326469627/200000000000 : ℚ), (-2709742501/10000000000 : ℚ), (24052800923/250000000000 : ℚ), 2⟩,
    ⟨(106226342801/250000000000 : ℚ), (-1410593491/5000000000 : ℚ), (20185637323/200000000000 : ℚ), 2⟩,
    ⟨(213694062109/500000000000 : ℚ), (-145149337/500000000 : ℚ), (104414009287/1000000000000 : ℚ), 2⟩,
    ⟨(429056696909/1000000000000 : ℚ), (-2956697767/10000000000 : ℚ), (21342804399/200000000000 : ℚ), 2⟩,
    ⟨(429895020009/1000000000000 : ℚ), (-149165597/500000000 : ℚ), (107857034773/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1493313763/5000000000 : ℚ), (53999793777/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (9946991337/31250000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control265.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control265.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate265
