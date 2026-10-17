import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control414
namespace DiagonalRamsey.JointInheritedCertificate414
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71989460039/250000000000 : ℚ), (194052562747/125000000 : ℚ), (-447803146807569/1000000000000 : ℚ), 12⟩,
    ⟨(144320699897/500000000000 : ℚ), (13580431959/80000000 : ℚ), (-6184992711179/125000000000 : ℚ), 9⟩,
    ⟨(145000968009/500000000000 : ℚ), (29764884347/500000000 : ℚ), (-17613935895021/1000000000000 : ℚ), 7⟩,
    ⟨(7300658653/25000000000 : ℚ), (293376296711/10000000000 : ℚ), (-4417167928881/500000000000 : ℚ), 6⟩,
    ⟨(73673783481/250000000000 : ℚ), (10632319583/625000000 : ℚ), (-5221117196199/1000000000000 : ℚ), 6⟩,
    ⟨(37247824693/125000000000 : ℚ), (27086003019/2500000000 : ℚ), (-3391882160521/1000000000000 : ℚ), 5⟩,
    ⟨(301857076909/1000000000000 : ℚ), (2288513121/312500000 : ℚ), (-584890639967/250000000000 : ℚ), 5⟩,
    ⟨(38285157333/125000000000 : ℚ), (51496366247/10000000000 : ℚ), (-839543177791/500000000000 : ℚ), 4⟩,
    ⟨(311212535521/1000000000000 : ℚ), (18591258837/5000000000 : ℚ), (-1237437855709/1000000000000 : ℚ), 4⟩,
    ⟨(79150854147/250000000000 : ℚ), (1092149879/400000000 : ℚ), (-231881544757/250000000000 : ℚ), 4⟩,
    ⟨(322401984733/1000000000000 : ℚ), (2528708493/1250000000 : ℚ), (-350819090259/500000000000 : ℚ), 4⟩,
    ⟨(13142095863/40000000000 : ℚ), (7505279957/5000000000 : ℚ), (-531859771183/1000000000000 : ℚ), 3⟩,
    ⟨(334995420287/1000000000000 : ℚ), (5531887259/5000000000 : ℚ), (-5012263703/12500000000 : ℚ), 3⟩,
    ⟨(170834503013/500000000000 : ℚ), (4008233249/5000000000 : ℚ), (-11917122511/40000000000 : ℚ), 3⟩,
    ⟨(69701776703/200000000000 : ℚ), (5621576039/10000000000 : ℚ), (-13457340443/62500000000 : ℚ), 3⟩,
    ⟨(71089836199/200000000000 : ℚ), (3710534999/10000000000 : ℚ), (-148078025919/1000000000000 : ℚ), 3⟩,
    ⟨(181211529803/500000000000 : ℚ), (2165447799/10000000000 : ℚ), (-92637797577/1000000000000 : ℚ), 3⟩,
    ⟨(73872671417/200000000000 : ℚ), (28190683/312500000 : ℚ), (-46426447089/1000000000000 : ℚ), 3⟩,
    ⟨(188101617287/500000000000 : ℚ), (-140749713/10000000000 : ℚ), (-236270743/31250000000 : ℚ), 3⟩,
    ⟨(191438410157/500000000000 : ℚ), (-100834213/1000000000 : ℚ), (25360668131/1000000000000 : ℚ), 3⟩,
    ⟨(15572793761/40000000000 : ℚ), (-433631073/2500000000 : ℚ), (53393187759/1000000000000 : ℚ), 3⟩,
    ⟨(395470255867/1000000000000 : ℚ), (-2344903257/10000000000 : ℚ), (77340410669/1000000000000 : ℚ), 2⟩,
    ⟨(100317206003/250000000000 : ℚ), (-357377987/1250000000 : ℚ), (97818785497/1000000000000 : ℚ), 2⟩,
    ⟨(406659705079/1000000000000 : ℚ), (-3291906029/10000000000 : ℚ), (115303877977/1000000000000 : ℚ), 2⟩,
    ⟨(25724436371/62500000000 : ℚ), (-1827572529/5000000000 : ℚ), (8135231971/62500000000 : ℚ), 2⟩,
    ⟨(416015163691/1000000000000 : ℚ), (-1978855221/5000000000 : ℚ), (71341598431/500000000000 : ℚ), 2⟩,
    ⟨(26243102691/62500000000 : ℚ), (-2103265579/5000000000 : ℚ), (2391910273/15625000000 : ℚ), 2⟩,
    ⟨(423177106677/1000000000000 : ℚ), (-1101732041/2500000000 : ℚ), (161529402559/1000000000000 : ℚ), 2⟩,
    ⟨(5323073681/12500000000 : ℚ), (-570366833/1250000000 : ℚ), (21018991219/125000000000 : ℚ), 2⟩,
    ⟨(213935152291/500000000000 : ℚ), (-146172879/312500000 : ℚ), (21630445307/125000000000 : ℚ), 2⟩,
    ⟨(214615420403/500000000000 : ℚ), (-4752821157/10000000000 : ℚ), (44067515669/250000000000 : ℚ), 2⟩,
    ⟨(85982880089/200000000000 : ℚ), (-2395070069/5000000000 : ℚ), (88936591017/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-191791597/400000000 : ℚ), (178073102943/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (9196097923/31250000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control414.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control414.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate414

-- Control415
namespace DiagonalRamsey.JointInheritedCertificate415
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(147719030867/500000000000 : ℚ), (3912538057159/2500000000 : ℚ), (-115789271741851/250000000000 : ℚ), 12⟩,
    ⟨(148066873741/500000000000 : ℚ), (1711479034849/10000000000 : ℚ), (-10235431668173/200000000000 : ℚ), 9⟩,
    ⟨(59503683829/200000000000 : ℚ), (120052309989/2000000000 : ℚ), (-18218623543833/1000000000000 : ℚ), 7⟩,
    ⟨(299578741577/1000000000000 : ℚ), (295872004321/10000000000 : ℚ), (-1827606321561/200000000000 : ℚ), 6⟩,
    ⟨(151147436373/500000000000 : ℚ), (42899484183/2500000000 : ℚ), (-5400960279831/1000000000000 : ℚ), 6⟩,
    ⟨(12225626193/40000000000 : ℚ), (109311957181/10000000000 : ℚ), (-3509044353907/1000000000000 : ℚ), 5⟩,
    ⟨(38697983263/125000000000 : ℚ), (9238281203/1250000000 : ℚ), (-2420687609023/1000000000000 : ℚ), 5⟩,
    ⟨(314086531303/1000000000000 : ℚ), (25993262361/5000000000 : ℚ), (-868807700727/500000000000 : ℚ), 4⟩,
    ⟨(319105287293/1000000000000 : ℚ), (586730709/156250000 : ℚ), (-640439922673/500000000000 : ℚ), 4⟩,
    ⟨(324591800711/1000000000000 : ℚ), (27587324053/10000000000 : ℚ), (-960403781211/1000000000000 : ℚ), 4⟩,
    ⟨(66098646687/200000000000 : ℚ), (4090473457/2000000000 : ℚ), (-181709451177/250000000000 : ℚ), 4⟩,
    ⟨(4209409393/12500000000 : ℚ), (15188294511/10000000000 : ℚ), (-27565515853/50000000000 : ℚ), 3⟩,
    ⟨(343310072147/1000000000000 : ℚ), (11207587477/10000000000 : ℚ), (-26001304997/62500000000 : ℚ), 3⟩,
    ⟨(87525511243/250000000000 : ℚ), (8134256597/10000000000 : ℚ), (-309515110109/1000000000000 : ℚ), 3⟩,
    ⟨(22316453719/62500000000 : ℚ), (5719136003/10000000000 : ℚ), (-224155963739/1000000000000 : ℚ), 3⟩,
    ⟨(182063337721/500000000000 : ℚ), (3792202229/10000000000 : ℚ), (-77348797817/500000000000 : ℚ), 3⟩,
    ⟨(37122426823/100000000000 : ℚ), (558631681/2500000000 : ℚ), (-97444719749/1000000000000 : ℚ), 3⟩,
    ⟨(47285960521/125000000000 : ℚ), (240286629/2500000000 : ℚ), (-49738023107/1000000000000 : ℚ), 3⟩,
    ⟨(385248898701/1000000000000 : ℚ), (-89741433/10000000000 : ℚ), (-9628705137/1000000000000 : ℚ), 3⟩,
    ⟨(196020435763/500000000000 : ℚ), (-963791751/10000000000 : ℚ), (24333342797/1000000000000 : ℚ), 3⟩,
    ⟨(398598192233/1000000000000 : ℚ), (-211896789/1250000000 : ℚ), (53240928501/1000000000000 : ℚ), 2⟩,
    ⟨(202428855119/500000000000 : ℚ), (-2309744859/10000000000 : ℚ), (77926097533/1000000000000 : ℚ), 2⟩,
    ⟨(410759142961/1000000000000 : ℚ), (-706810709/2500000000 : ℚ), (49513702013/500000000000 : ℚ), 2⟩,
    ⟨(20812282819/50000000000 : ℚ), (-3262841397/10000000000 : ℚ), (117037661191/1000000000000 : ℚ), 2⟩,
    ⟨(42126441237/100000000000 : ℚ), (-3628257303/10000000000 : ℚ), (132338407867/1000000000000 : ℚ), 2⟩,
    ⟨(6652610587/15625000000 : ℚ), (-1966278089/5000000000 : ℚ), (3630629007/25000000000 : ℚ), 2⟩,
    ⟨(429710288847/1000000000000 : ℚ), (-2091371491/5000000000 : ℚ), (155926144059/1000000000000 : ℚ), 2⟩,
    ⟨(216528035463/500000000000 : ℚ), (-1096049559/2500000000 : ℚ), (82308160141/500000000000 : ℚ), 2⟩,
    ⟨(27235762631/62500000000 : ℚ), (-4541001111/10000000000 : ℚ), (42856981793/250000000000 : ℚ), 2⟩,
    ⟨(27364532783/62500000000 : ℚ), (-186246703/400000000 : ℚ), (88229185633/500000000000 : ℚ), 2⟩,
    ⟨(43921719619/100000000000 : ℚ), (-4731822823/10000000000 : ℚ), (44944006531/250000000000 : ℚ), 2⟩,
    ⟨(219956440969/500000000000 : ℚ), (-596165131/1250000000 : ℚ), (181424315013/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2386996531/5000000000 : ℚ), (2270373291/12500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (144215601663/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control415.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control415.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate415

-- Control416
namespace DiagonalRamsey.JointInheritedCertificate416
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(151468871739/500000000000 : ℚ), (15774890071193/10000000000 : ℚ), (-29918345799283/62500000000 : ℚ), 12⟩,
    ⟨(303645461687/1000000000000 : ℚ), (862634510297/5000000000 : ℚ), (-6611810099291/125000000000 : ℚ), 9⟩,
    ⟨(30505408239/100000000000 : ℚ), (605176295279/10000000000 : ℚ), (-588450797369/31250000000 : ℚ), 7⟩,
    ⟨(153575019901/500000000000 : ℚ), (298342266779/10000000000 : ℚ), (-295164475933/31250000000 : ℚ), 6⟩,
    ⟨(154956574353/500000000000 : ℚ), (173063053557/10000000000 : ℚ), (-1116573516789/200000000000 : ℚ), 6⟩,
    ⟨(313316798853/1000000000000 : ℚ), (27567280569/2500000000 : ℚ), (-362752684571/100000000000 : ℚ), 5⟩,
    ⟨(9916506601/31250000000 : ℚ), (1864303249/250000000 : ℚ), (-2502706151409/1000000000000 : ℚ), 5⟩,
    ⟨(80477188437/250000000000 : ℚ), (419764057/80000000 : ℚ), (-1796771238921/1000000000000 : ℚ), 4⟩,
    ⟨(327014313273/1000000000000 : ℚ), (3791401993/1000000000 : ℚ), (-264954294099/200000000000 : ℚ), 4⟩,
    ⟨(332595720477/1000000000000 : ℚ), (44586777/16000000 : ℚ), (-993607881651/1000000000000 : ℚ), 4⟩,
    ⟨(338599223359/1000000000000 : ℚ), (12919689/6250000 : ℚ), (-752275333781/1000000000000 : ℚ), 4⟩,
    ⟨(43120875613/125000000000 : ℚ), (15362915297/10000000000 : ℚ), (-35683332031/62500000000 : ℚ), 3⟩,
    ⟨(175818869947/500000000000 : ℚ), (453945311/400000000 : ℚ), (-431183751031/1000000000000 : ℚ), 3⟩,
    ⟨(179273592753/500000000000 : ℚ), (2062387733/2500000000 : ℚ), (-160593714521/500000000000 : ℚ), 3⟩,
    ⟨(365628799999/1000000000000 : ℚ), (726802233/1250000000 : ℚ), (-116525218709/500000000000 : ℚ), 3⟩,
    ⟨(372814383557/1000000000000 : ℚ), (3871768519/10000000000 : ℚ), (-80675101577/500000000000 : ℚ), 3⟩,
    ⟨(380034735081/1000000000000 : ℚ), (460330203/2000000000 : ℚ), (-25566664297/250000000000 : ℚ), 3⟩,
    ⟨(193610159319/500000000000 : ℚ), (10183589/100000000 : ℚ), (-53050396289/1000000000000 : ℚ), 3⟩,
    ⟨(98575483283/250000000000 : ℚ), (-10115503/2500000000 : ℚ), (-5843157137/500000000000 : ℚ), 3⟩,
    ⟨(401211378743/1000000000000 : ℚ), (-230220517/2500000000 : ℚ), (23325310529/1000000000000 : ℚ), 3⟩,
    ⟨(407882113733/1000000000000 : ℚ), (-828694697/5000000000 : ℚ), (53114935813/1000000000000 : ℚ), 2⟩,
    ⟨(207124947639/500000000000 : ℚ), (-1138043193/5000000000 : ℚ), (39271757897/500000000000 : ℚ), 2⟩,
    ⟨(5253167477/12500000000 : ℚ), (-2796905533/10000000000 : ℚ), (20054402289/200000000000 : ℚ), 2⟩,
    ⟨(85166961073/200000000000 : ℚ), (-129406887/400000000 : ℚ), (3712835189/31250000000 : ℚ), 2⟩,
    ⟨(43094036489/100000000000 : ℚ), (-1801361783/5000000000 : ℚ), (134554910213/1000000000000 : ℚ), 2⟩,
    ⟨(217760453703/500000000000 : ℚ), (-3908720831/10000000000 : ℚ), (147810844179/1000000000000 : ℚ), 2⟩,
    ⟨(54941539973/125000000000 : ℚ), (-4160244411/10000000000 : ℚ), (39703795981/250000000000 : ℚ), 2⟩,
    ⟨(442935969931/1000000000000 : ℚ), (-2181367001/5000000000 : ℚ), (167749444447/1000000000000 : ℚ), 2⟩,
    ⟨(89139815767/200000000000 : ℚ), (-2260157223/5000000000 : ℚ), (87375442271/500000000000 : ℚ), 2⟩,
    ⟨(447795036247/1000000000000 : ℚ), (-4636035987/10000000000 : ℚ), (899603273/5000000000 : ℚ), 2⟩,
    ⟨(449203656951/1000000000000 : ℚ), (-4712048259/10000000000 : ℚ), (45832445949/250000000000 : ℚ), 2⟩,
    ⟨(449911375159/1000000000000 : ℚ), (-4749721157/10000000000 : ℚ), (46255848807/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2377207413/5000000000 : ℚ), (92617294751/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (141297301967/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control416.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control416.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate416

-- Control417
namespace DiagonalRamsey.JointInheritedCertificate417
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11487054757/50000000000 : ℚ), (914188678939/625000000 : ℚ), (-336655434546079/1000000000000 : ℚ), 12⟩,
    ⟨(899686819/3906250000 : ℚ), (1598367270327/10000000000 : ℚ), (-37194998490417/1000000000000 : ℚ), 9⟩,
    ⟨(11573585661/50000000000 : ℚ), (279973239339/5000000000 : ℚ), (-13237971258919/1000000000000 : ℚ), 7⟩,
    ⟨(233185664501/1000000000000 : ℚ), (137803417481/5000000000 : ℚ), (-6637320672891/1000000000000 : ℚ), 6⟩,
    ⟨(235445173219/1000000000000 : ℚ), (15957676899/1000000000 : ℚ), (-3920727633107/1000000000000 : ℚ), 6⟩,
    ⟨(238228479071/1000000000000 : ℚ), (101456595793/10000000000 : ℚ), (-509059528873/200000000000 : ℚ), 5⟩,
    ⟨(2415087773/10000000000 : ℚ), (13687892971/2000000000 : ℚ), (-1753915221207/1000000000000 : ℚ), 5⟩,
    ⟨(6131361921/25000000000 : ℚ), (6001380123/1250000000 : ℚ), (-1257083447413/1000000000000 : ℚ), 4⟩,
    ⟨(124714752279/500000000000 : ℚ), (17282404553/5000000000 : ℚ), (-184946047567/200000000000 : ℚ), 4⟩,
    ⟨(253993652653/1000000000000 : ℚ), (6322082901/2500000000 : ℚ), (-691382367759/1000000000000 : ℚ), 4⟩,
    ⟨(129451482943/500000000000 : ℚ), (18647031249/10000000000 : ℚ), (-130292823349/250000000000 : ℚ), 4⟩,
    ⟨(52822032977/200000000000 : ℚ), (13747335897/10000000000 : ℚ), (-393113871567/1000000000000 : ℚ), 3⟩,
    ⟨(134782550739/500000000000 : ℚ), (2510325607/2500000000 : ℚ), (-294274859723/1000000000000 : ℚ), 3⟩,
    ⟨(275215241643/1000000000000 : ℚ), (7178497181/10000000000 : ℚ), (-216332326719/1000000000000 : ℚ), 3⟩,
    ⟨(140503085721/500000000000 : ℚ), (98537481/200000000 : ℚ), (-153739564303/1000000000000 : ℚ), 3⟩,
    ⟨(8965066283/31250000000 : ℚ), (3128241291/10000000000 : ℚ), (-102688426883/1000000000000 : ℚ), 3⟩,
    ⟨(292786501877/1000000000000 : ℚ), (209008659/1250000000 : ℚ), (-30249122979/500000000000 : ℚ), 3⟩,
    ⟨(298662451491/1000000000000 : ℚ), (11987413/250000000 : ℚ), (-5048346781/200000000000 : ℚ), 3⟩,
    ⟨(304453381291/1000000000000 : ℚ), (-31672379/625000000 : ℚ), (4491654899/1000000000000 : ℚ), 3⟩,
    ⟨(19381470091/62500000000 : ℚ), (-1328939727/10000000000 : ℚ), (1189990887/40000000000 : ℚ), 3⟩,
    ⟨(315558458049/1000000000000 : ℚ), (-201861001/1000000000 : ℚ), (6415080257/125000000000 : ℚ), 3⟩,
    ⟨(40095707131/125000000000 : ℚ), (-2599604873/10000000000 : ℚ), (8725341603/125000000000 : ℚ), 2⟩,
    ⟨(8141874257/25000000000 : ℚ), (-618016927/2000000000 : ℚ), (21413489907/250000000000 : ℚ), 2⟩,
    ⟨(41279889797/125000000000 : ℚ), (-437997397/1250000000 : ℚ), (99226500813/1000000000000 : ℚ), 2⟩,
    ⟨(334414146093/1000000000000 : ℚ), (-963005573/2500000000 : ℚ), (110791955357/1000000000000 : ℚ), 2⟩,
    ⟨(338159845633/1000000000000 : ℚ), (-4142501667/10000000000 : ℚ), (12055979567/100000000000 : ℚ), 2⟩,
    ⟨(170720071931/500000000000 : ℚ), (-4381808357/10000000000 : ℚ), (128691072381/1000000000000 : ℚ), 2⟩,
    ⟨(172111724857/500000000000 : ℚ), (-914968457/2000000000 : ℚ), (135308685549/1000000000000 : ℚ), 2⟩,
    ⟨(346482958433/1000000000000 : ℚ), (-4725312179/10000000000 : ℚ), (17563138779/125000000000 : ℚ), 2⟩,
    ⟨(174098454857/500000000000 : ℚ), (-967191261/2000000000 : ℚ), (9021761299/62500000000 : ℚ), 2⟩,
    ⟨(34934879727/100000000000 : ℚ), (-2454351023/5000000000 : ℚ), (146885342551/1000000000000 : ℚ), 2⟩,
    ⟨(349927527793/1000000000000 : ℚ), (-2472388281/5000000000 : ℚ), (74073321887/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-2474636027/5000000000 : ℚ), (29660793943/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (340722283947/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control417.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control417.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate417

-- Control418
namespace DiagonalRamsey.JointInheritedCertificate418
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(265788476333/1000000000000 : ℚ), (3791049692573/2500000000 : ℚ), (-12617428880601/31250000000 : ℚ), 12⟩,
    ⟨(266434352041/1000000000000 : ℚ), (414437930073/2500000000 : ℚ), (-44611375522117/1000000000000 : ℚ), 9⟩,
    ⟨(267719883321/1000000000000 : ℚ), (581110007333/10000000000 : ℚ), (-3175899371157/200000000000 : ℚ), 7⟩,
    ⟨(53926537961/200000000000 : ℚ), (35780441409/1250000000 : ℚ), (-7963353589171/1000000000000 : ℚ), 6⟩,
    ⟨(6803858753/25000000000 : ℚ), (33177042157/2000000000 : ℚ), (-4705436422991/1000000000000 : ℚ), 6⟩,
    ⟨(137630289649/500000000000 : ℚ), (105578021039/10000000000 : ℚ), (-382002738209/125000000000 : ℚ), 5⟩,
    ⟨(55784292531/200000000000 : ℚ), (35653506789/5000000000 : ℚ), (-2107091928889/1000000000000 : ℚ), 5⟩,
    ⟨(283101743883/1000000000000 : ℚ), (50095839387/10000000000 : ℚ), (-1511448552463/1000000000000 : ℚ), 4⟩,
    ⟨(287761164589/1000000000000 : ℚ), (36130324941/10000000000 : ℚ), (-556546819213/500000000000 : ℚ), 4⟩,
    ⟨(292854852003/1000000000000 : ℚ), (2649343487/1000000000 : ℚ), (-13023483351/15625000000 : ℚ), 4⟩,
    ⟨(74583437783/250000000000 : ℚ), (3918644673/2000000000 : ℚ), (-125931425321/200000000000 : ℚ), 4⟩,
    ⟨(152072548591/500000000000 : ℚ), (14162594/9765625 : ℚ), (-476388820333/1000000000000 : ℚ), 3⟩,
    ⟨(310232923713/1000000000000 : ℚ), (2130505529/2000000000 : ℚ), (-358182240243/1000000000000 : ℚ), 3⟩,
    ⟨(316538601629/1000000000000 : ℚ), (3839731071/5000000000 : ℚ), (-265054088477/1000000000000 : ℚ), 3⟩,
    ⟨(323001403803/1000000000000 : ℚ), (5342261709/10000000000 : ℚ), (-11896819599/62500000000 : ℚ), 3⟩,
    ⟨(329559089919/1000000000000 : ℚ), (695303923/2000000000 : ℚ), (-12949685003/100000000000 : ℚ), 3⟩,
    ⟨(336148505873/1000000000000 : ℚ), (196729413/1000000000 : ℚ), (-79278764347/1000000000000 : ℚ), 3⟩,
    ⟨(85676547997/250000000000 : ℚ), (366259227/5000000000 : ℚ), (-37379634221/1000000000000 : ℚ), 3⟩,
    ⟨(349168994163/1000000000000 : ℚ), (-57492799/2000000000 : ℚ), (-1051895151/500000000000 : ℚ), 3⟩,
    ⟨(355474672079/1000000000000 : ℚ), (-1136689327/10000000000 : ℚ), (222476653/8000000000 : ℚ), 3⟩,
    ⟨(36156249861/100000000000 : ℚ), (-1848088923/10000000000 : ℚ), (53309748057/1000000000000 : ℚ), 3⟩,
    ⟨(18368692233/50000000000 : ℚ), (-489311837/2000000000 : ℚ), (18779659883/250000000000 : ℚ), 2⟩,
    ⟨(372852743789/1000000000000 : ℚ), (-2951089187/10000000000 : ℚ), (93789551237/1000000000000 : ℚ), 2⟩,
    ⟨(377946431203/1000000000000 : ℚ), (-844065243/2500000000 : ℚ), (109748828387/1000000000000 : ℚ), 2⟩,
    ⟨(95651462977/250000000000 : ℚ), (-1866661823/5000000000 : ℚ), (1926968289/15625000000 : ℚ), 2⟩,
    ⟨(24174133321/62500000000 : ℚ), (-2015486221/5000000000 : ℚ), (33693924643/250000000000 : ℚ), 2⟩,
    ⟨(390447016493/1000000000000 : ℚ), (-2137959899/5000000000 : ℚ), (72147167429/500000000000 : ℚ), 2⟩,
    ⟨(49194155709/125000000000 : ℚ), (-559164631/1250000000 : ℚ), (38008018197/250000000000 : ℚ), 2⟩,
    ⟨(396074905987/1000000000000 : ℚ), (-4627066569/10000000000 : ℚ), (3162044049/20000000000 : ℚ), 2⟩,
    ⟨(39798771247/100000000000 : ℚ), (-2370025851/5000000000 : ℚ), (81294008683/500000000000 : ℚ), 2⟩,
    ⟨(399273243751/1000000000000 : ℚ), (-962860623/2000000000 : ℚ), (41386972699/250000000000 : ℚ), 2⟩,
    ⟨(399919119459/1000000000000 : ℚ), (-4851114269/10000000000 : ℚ), (20877356087/125000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-151740659/312500000 : ℚ), (41800575723/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (311762597633/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control418.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control418.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate418

-- Control419
namespace DiagonalRamsey.JointInheritedCertificate419
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280499181493/1000000000000 : ℚ), (15036405384/9765625 : ℚ), (-86528682239989/200000000000 : ℚ), 12⟩,
    ⟨(281170511253/1000000000000 : ℚ), (841759763567/5000000000 : ℚ), (-119510341457/2500000000 : ℚ), 9⟩,
    ⟨(565013411/2000000000 : ℚ), (295146974903/5000000000 : ℚ), (-8508418717297/500000000000 : ℚ), 7⟩,
    ⟨(142247447977/500000000000 : ℚ), (145429937461/5000000000 : ℚ), (-2133605486731/250000000000 : ℚ), 6⟩,
    ⟨(287115935253/1000000000000 : ℚ), (84311728763/5000000000 : ℚ), (-5043490093007/1000000000000 : ℚ), 6⟩,
    ⟨(72586145339/250000000000 : ℚ), (1677612833/156250000 : ℚ), (-3276144321693/1000000000000 : ℚ), 5⟩,
    ⟨(73537435159/250000000000 : ℚ), (36276017337/5000000000 : ℚ), (-2259407609611/1000000000000 : ℚ), 5⟩,
    ⟨(298494767329/1000000000000 : ℚ), (2550054339/500000000 : ℚ), (-50663858439/31250000000 : ℚ), 4⟩,
    ⟨(303337816453/1000000000000 : ℚ), (36810105601/10000000000 : ℚ), (-59724666881/50000000000 : ℚ), 4⟩,
    ⟨(154316123399/500000000000 : ℚ), (3377084333/1250000000 : ℚ), (-895014812113/1000000000000 : ℚ), 4⟩,
    ⟨(62865414021/200000000000 : ℚ), (1250247463/625000000 : ℚ), (-338355144449/500000000000 : ℚ), 4⟩,
    ⟨(5005741283/15625000000 : ℚ), (926886263/625000000 : ℚ), (-512611055599/1000000000000 : ℚ), 3⟩,
    ⟨(163347595367/500000000000 : ℚ), (10917596329/10000000000 : ℚ), (-24130646729/62500000000 : ℚ), 3⟩,
    ⟨(66649875259/200000000000 : ℚ), (7896531147/10000000000 : ℚ), (-71612381783/250000000000 : ℚ), 3⟩,
    ⟨(339966878403/1000000000000 : ℚ), (5522047113/10000000000 : ℚ), (-206555952857/1000000000000 : ℚ), 3⟩,
    ⟨(173391501921/500000000000 : ℚ), (1813521263/5000000000 : ℚ), (-28302157073/200000000000 : ℚ), 3⟩,
    ⟨(353632109597/1000000000000 : ℚ), (2094662577/10000000000 : ℚ), (-43931858061/500000000000 : ℚ), 3⟩,
    ⟨(72089647007/200000000000 : ℚ), (841450641/10000000000 : ℚ), (-43132268391/1000000000000 : ℚ), 3⟩,
    ⟨(367165737143/1000000000000 : ℚ), (-48319993/2500000000 : ℚ), (-1374439401/250000000000 : ℚ), 3⟩,
    ⟨(23357495169/62500000000 : ℚ), (-105434213/1000000000 : ℚ), (5278519263/200000000000 : ℚ), 3⟩,
    ⟨(380047671327/1000000000000 : ℚ), (-887630789/5000000000 : ℚ), (26778886011/500000000000 : ℚ), 3⟩,
    ⟨(193044021667/500000000000 : ℚ), (-2381395077/10000000000 : ℚ), (76773154217/1000000000000 : ℚ), 2⟩,
    ⟨(4897285833/12500000000 : ℚ), (-2892091727/10000000000 : ℚ), (96633403497/1000000000000 : ℚ), 2⟩,
    ⟨(79415459397/200000000000 : ℚ), (-830554281/2500000000 : ℚ), (28399273299/250000000000 : ℚ), 2⟩,
    ⟨(401920346109/1000000000000 : ℚ), (-3683244639/10000000000 : ℚ), (1600236709/12500000000 : ℚ), 2⟩,
    ⟨(406265372803/1000000000000 : ℚ), (-3984047063/10000000000 : ℚ), (70086702707/500000000000 : ℚ), 2⟩,
    ⟨(410070532083/1000000000000 : ℚ), (-4231477007/10000000000 : ℚ), (75136127149/500000000000 : ℚ), 2⟩,
    ⟨(206649589093/500000000000 : ℚ), (-4430795577/10000000000 : ℚ), (79238823697/500000000000 : ℚ), 2⟩,
    ⟨(83184043497/200000000000 : ℚ), (-143312181/312500000 : ℚ), (164912025397/1000000000000 : ℚ), 2⟩,
    ⟨(208954203969/500000000000 : ℚ), (-235000323/500000000 : ℚ), (84832746027/500000000000 : ℚ), 2⟩,
    ⟨(209622301093/500000000000 : ℚ), (-4774921469/10000000000 : ℚ), (172801243327/1000000000000 : ℚ), 2⟩,
    ⟨(209957965973/500000000000 : ℚ), (-4812057323/10000000000 : ℚ), (21794923581/125000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-12041711/25000000 : ℚ), (87276853213/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (150062281179/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control419.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control419.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate419

-- Control420
namespace DiagonalRamsey.JointInheritedCertificate420
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236212277139/1000000000000 : ℚ), (79485149139/50000000 : ℚ), (-188069219241619/500000000000 : ℚ), 12⟩,
    ⟨(236759865931/1000000000000 : ℚ), (1738343139533/10000000000 : ℚ), (-4155018038003/100000000000 : ℚ), 9⟩,
    ⟨(14865610621/62500000000 : ℚ), (609521067557/10000000000 : ℚ), (-739145827643/50000000000 : ℚ), 7⟩,
    ⟨(239471492781/1000000000000 : ℚ), (37534605773/1250000000 : ℚ), (-7408003458861/1000000000000 : ℚ), 6⟩,
    ⟨(24160941639/100000000000 : ℚ), (17400004591/1000000000 : ℚ), (-218638440727/50000000000 : ℚ), 6⟩,
    ⟨(244242951389/1000000000000 : ℚ), (110695104373/10000000000 : ℚ), (-567205457761/200000000000 : ℚ), 5⟩,
    ⟨(247346735397/1000000000000 : ℚ), (14939609821/2000000000 : ℚ), (-1951851058491/1000000000000 : ℚ), 5⟩,
    ⟨(125445438639/500000000000 : ℚ), (52402004959/10000000000 : ℚ), (-698392096113/500000000000 : ℚ), 4⟩,
    ⟨(127420622503/500000000000 : ℚ), (9427377491/2500000000 : ℚ), (-512748300389/500000000000 : ℚ), 4⟩,
    ⟨(259159794383/1000000000000 : ℚ), (13780471473/5000000000 : ℚ), (-764834598951/1000000000000 : ℚ), 4⟩,
    ⟨(32975616927/125000000000 : ℚ), (20286256483/10000000000 : ℚ), (-17960055151/31250000000 : ℚ), 4⟩,
    ⟨(268731932857/1000000000000 : ℚ), (7456290049/5000000000 : ℚ), (-107928257167/250000000000 : ℚ), 3⟩,
    ⟨(273893337029/1000000000000 : ℚ), (338845151/312500000 : ℚ), (-321355116417/1000000000000 : ℚ), 3⟩,
    ⟨(69809860197/250000000000 : ℚ), (1923926233/2500000000 : ℚ), (-11717454321/50000000000 : ℚ), 3⟩,
    ⟨(284718758231/1000000000000 : ℚ), (2608740601/5000000000 : ℚ), (-20562081257/125000000000 : ℚ), 3⟩,
    ⟨(290278520537/1000000000000 : ℚ), (202232299/625000000 : ℚ), (-107541934931/1000000000000 : ℚ), 3⟩,
    ⟨(59173036831/200000000000 : ℚ), (203709923/1250000000 : ℚ), (-483909983/8000000000 : ℚ), 3⟩,
    ⟨(301424946461/1000000000000 : ℚ), (2446529/78125000 : ℚ), (-10591313837/500000000000 : ℚ), 3⟩,
    ⟨(61380852781/200000000000 : ℚ), (-776529497/10000000000 : ℚ), (5976760997/500000000000 : ℚ), 3⟩,
    ⟨(312250367663/1000000000000 : ℚ), (-1685639727/10000000000 : ℚ), (40091522843/1000000000000 : ℚ), 3⟩,
    ⟨(63482354367/200000000000 : ℚ), (-2448767517/10000000000 : ℚ), (64112829861/1000000000000 : ℚ), 3⟩,
    ⟨(322338769277/1000000000000 : ℚ), (-3092058317/10000000000 : ℚ), (42343512713/500000000000 : ℚ), 3⟩,
    ⟨(32698391031/100000000000 : ℚ), (-3635445903/10000000000 : ℚ), (6395409729/62500000000 : ℚ), 2⟩,
    ⟨(165651229843/500000000000 : ℚ), (-2047114723/5000000000 : ℚ), (23485124073/200000000000 : ℚ), 2⟩,
    ⟨(67050565483/200000000000 : ℚ), (-2240101613/5000000000 : ℚ), (26057655509/200000000000 : ℚ), 2⟩,
    ⟨(67759393859/200000000000 : ℚ), (-4802476573/10000000000 : ℚ), (28229812439/200000000000 : ℚ), 2⟩,
    ⟨(341900753303/1000000000000 : ℚ), (-1013615063/2000000000 : ℚ), (37547076187/250000000000 : ℚ), 2⟩,
    ⟨(344534288303/1000000000000 : ℚ), (-26411931/50000000 : ℚ), (78771808627/500000000000 : ℚ), 2⟩,
    ⟨(346672211911/1000000000000 : ℚ), (-2724743043/5000000000 : ℚ), (81659268929/500000000000 : ℚ), 2⟩,
    ⟨(348293934757/1000000000000 : ℚ), (-1114476911/2000000000 : ℚ), (83794504009/500000000000 : ℚ), 2⟩,
    ⟨(349383838761/1000000000000 : ℚ), (-5653199543/10000000000 : ℚ), (85204068163/500000000000 : ℚ), 2⟩,
    ⟨(349931427553/1000000000000 : ℚ), (-711659911/1250000000 : ℚ), (17180955361/100000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-5698274073/10000000000 : ℚ), (171984353983/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (10137624821/31250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control420.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control420.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate420

-- Control421
namespace DiagonalRamsey.JointInheritedCertificate421
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5164389327/20000000000 : ℚ), (649533614507/400000000 : ℚ), (-419996584875291/1000000000000 : ℚ), 12⟩,
    ⟨(258805519517/1000000000000 : ℚ), (284172859/1600000 : ℚ), (-46396883720293/1000000000000 : ℚ), 9⟩,
    ⟨(259971981837/1000000000000 : ℚ), (622974093639/10000000000 : ℚ), (-16508717591327/1000000000000 : ℚ), 7⟩,
    ⟨(130853809821/500000000000 : ℚ), (153520708783/5000000000 : ℚ), (-2068495193963/250000000000 : ℚ), 6⟩,
    ⟨(263995717791/1000000000000 : ℚ), (178014477761/10000000000 : ℚ), (-976985585027/200000000000 : ℚ), 6⟩,
    ⟨(266814240647/1000000000000 : ℚ), (113319835089/10000000000 : ℚ), (-99034503867/31250000000 : ℚ), 5⟩,
    ⟨(135068022147/500000000000 : ℚ), (76525942123/10000000000 : ℚ), (-2181949769943/1000000000000 : ℚ), 5⟩,
    ⟨(273929137949/1000000000000 : ℚ), (26866191387/5000000000 : ℚ), (-390573714209/250000000000 : ℚ), 4⟩,
    ⟨(69539248011/250000000000 : ℚ), (19354880993/5000000000 : ℚ), (-1147863728621/1000000000000 : ℚ), 4⟩,
    ⟨(56555778007/200000000000 : ℚ), (7083001533/2500000000 : ℚ), (-171394481057/200000000000 : ℚ), 4⟩,
    ⟨(71937580129/250000000000 : ℚ), (2089262251/1000000000 : ℚ), (-322435324499/500000000000 : ℚ), 4⟩,
    ⟨(58604681179/200000000000 : ℚ), (3849345601/2500000000 : ℚ), (-242689262893/500000000000 : ℚ), 3⟩,
    ⟨(298547363477/1000000000000 : ℚ), (11236215479/10000000000 : ℚ), (-362356108139/1000000000000 : ℚ), 3⟩,
    ⟨(304268994531/1000000000000 : ℚ), (400932539/500000000 : ℚ), (-66354645301/250000000000 : ℚ), 3⟩,
    ⟨(155066598311/500000000000 : ℚ), (685737211/1250000000 : ℚ), (-18764311953/100000000000 : ℚ), 3⟩,
    ⟨(158041747139/500000000000 : ℚ), (692270321/2000000000 : ℚ), (-62137808281/500000000000 : ℚ), 3⟩,
    ⟨(322062582879/1000000000000 : ℚ), (910738689/5000000000 : ℚ), (-8996045031/125000000000 : ℚ), 3⟩,
    ⟨(65602576107/200000000000 : ℚ), (95605017/2000000000 : ℚ), (-14156688491/500000000000 : ℚ), 3⟩,
    ⟨(166938541313/500000000000 : ℚ), (-633190317/10000000000 : ℚ), (4226365849/500000000000 : ℚ), 3⟩,
    ⟨(339598713679/1000000000000 : ℚ), (-1559570933/10000000000 : ℚ), (39640911657/1000000000000 : ℚ), 3⟩,
    ⟨(345122671261/1000000000000 : ℚ), (-584145153/2500000000 : ℚ), (33118962477/500000000000 : ℚ), 3⟩,
    ⟨(350395756641/1000000000000 : ℚ), (-1495519823/5000000000 : ℚ), (88993956913/1000000000000 : ℚ), 3⟩,
    ⟨(177683593561/500000000000 : ℚ), (-354340947/1000000000 : ℚ), (10848369179/100000000000 : ℚ), 2⟩,
    ⟨(359989085113/1000000000000 : ℚ), (-801880939/2000000000 : ℚ), (31287424011/250000000000 : ℚ), 2⟩,
    ⟨(45527117401/125000000000 : ℚ), (-275071751/625000000 : ℚ), (34833439629/250000000000 : ℚ), 2⟩,
    ⟨(184005016431/500000000000 : ℚ), (-2364004307/5000000000 : ℚ), (151299875519/1000000000000 : ℚ), 2⟩,
    ⟨(37133183651/100000000000 : ℚ), (-999443461/2000000000 : ℚ), (161251321337/1000000000000 : ℚ), 2⟩,
    ⟨(187075179683/500000000000 : ℚ), (-130358031/250000000 : ℚ), (84671722103/500000000000 : ℚ), 2⟩,
    ⟨(75287691503/200000000000 : ℚ), (-269176043/500000000 : ℚ), (87846647677/500000000000 : ℚ), 2⟩,
    ⟨(9454352383/25000000000 : ℚ), (-2753959173/5000000000 : ℚ), (721547371/4000000000 : ℚ), 2⟩,
    ⟨(9483513941/25000000000 : ℚ), (-5589697567/10000000000 : ℚ), (91742138351/500000000000 : ℚ), 2⟩,
    ⟨(379926610807/1000000000000 : ℚ), (-43986321/78125000 : ℚ), (185023746923/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1408825591/2500000000 : ℚ), (185215752867/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (306176527373/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control421.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control421.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate421
