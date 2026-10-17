import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control72
namespace DiagonalRamsey.JointInheritedCertificate72
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1902888457/50000000000 : ℚ), (98455129751/78125000 : ℚ), (-3007609016141/62500000000 : ℚ), 9⟩,
    ⟨(1196458811/31250000000 : ℚ), (1332468957801/10000000000 : ℚ), (-1295969370717/250000000000 : ℚ), 6⟩,
    ⟨(4841963823/125000000000 : ℚ), (438763503899/10000000000 : ℚ), (-1748670115929/1000000000000 : ℚ), 4⟩,
    ⟨(39387599119/1000000000000 : ℚ), (195961356759/10000000000 : ℚ), (-801963907111/1000000000000 : ℚ), 3⟩,
    ⟨(8043459169/200000000000 : ℚ), (97825492513/10000000000 : ℚ), (-103003193881/250000000000 : ℚ), 3⟩,
    ⟨(41192915983/1000000000000 : ℚ), (49154152601/10000000000 : ℚ), (-107096410931/500000000000 : ℚ), 2⟩,
    ⟨(42276966997/1000000000000 : ℚ), (21748639421/10000000000 : ℚ), (-99965117661/1000000000000 : ℚ), 2⟩,
    ⟨(5428473677/125000000000 : ℚ), (4908785663/10000000000 : ℚ), (-6970287961/250000000000 : ℚ), 2⟩,
    ⟨(44601157779/1000000000000 : ℚ), (-6116991807/10000000000 : ℚ), (4121109771/200000000000 : ℚ), 2⟩,
    ⟨(45751980197/1000000000000 : ℚ), (-6838962571/5000000000 : ℚ), (54740132027/1000000000000 : ℚ), 1⟩,
    ⟨(11709007803/250000000000 : ℚ), (-1189201909/625000000 : ℚ), (79491967347/1000000000000 : ℚ), 1⟩,
    ⟨(47811651349/1000000000000 : ℚ), (-22870684547/10000000000 : ℚ), (48837254027/500000000000 : ℚ), 1⟩,
    ⟨(1945653923/40000000000 : ℚ), (-25620768167/10000000000 : ℚ), (110934373813/1000000000000 : ℚ), 1⟩,
    ⟨(4929323661/100000000000 : ℚ), (-27523449491/10000000000 : ℚ), (4810007697/40000000000 : ℚ), 1⟩,
    ⟨(49742265243/1000000000000 : ℚ), (-14362409973/5000000000 : ℚ), (126198802133/1000000000000 : ℚ), 1⟩,
    ⟨(24985589027/500000000000 : ℚ), (-2930700699/1000000000 : ℚ), (64550679423/500000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-1836184407/625000000 : ℚ), (32365243177/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (37499/1000000 : ℚ)
  x := (27005013341/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control72.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control72.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate72

-- Control74
namespace DiagonalRamsey.JointInheritedCertificate74
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2597914201/12500000000 : ℚ), (3361570985763/5000000000 : ℚ), (-70211074746853/500000000000 : ℚ), 10⟩,
    ⟨(13083462437/62500000000 : ℚ), (180576051621/2500000000 : ℚ), (-15539138385661/1000000000000 : ℚ), 7⟩,
    ⟨(212325457203/1000000000000 : ℚ), (24732577177/1000000000 : ℚ), (-138714928509/25000000000 : ℚ), 6⟩,
    ⟨(216774514817/1000000000000 : ℚ), (118742419473/10000000000 : ℚ), (-1398105827751/500000000000 : ℚ), 5⟩,
    ⟨(111319862489/500000000000 : ℚ), (16769316543/2500000000 : ℚ), (-1663642279403/1000000000000 : ℚ), 4⟩,
    ⟨(45972920501/200000000000 : ℚ), (8337285237/2000000000 : ℚ), (-545206501887/500000000000 : ℚ), 4⟩,
    ⟨(238379567879/1000000000000 : ℚ), (27577115877/10000000000 : ℚ), (-760765865007/1000000000000 : ℚ), 3⟩,
    ⟨(15506413583/62500000000 : ℚ), (19058115271/10000000000 : ℚ), (-553954175407/1000000000000 : ℚ), 3⟩,
    ⟨(258940112571/1000000000000 : ℚ), (1699434369/1250000000 : ℚ), (-12991208723/31250000000 : ℚ), 3⟩,
    ⟨(67696920651/250000000000 : ℚ), (992788983/1000000000 : ℚ), (-318743259597/1000000000000 : ℚ), 2⟩,
    ⟨(283531228851/1000000000000 : ℚ), (7373660621/10000000000 : ℚ), (-124030800051/500000000000 : ℚ), 2⟩,
    ⟨(74262005999/250000000000 : ℚ), (221613723/400000000 : ℚ), (-48729656167/250000000000 : ℚ), 2⟩,
    ⟨(38900986739/125000000000 : ℚ), (4190473641/10000000000 : ℚ), (-7695929751/50000000000 : ℚ), 2⟩,
    ⟨(20367154457/62500000000 : ℚ), (793616161/2500000000 : ℚ), (-60796089999/500000000000 : ℚ), 2⟩,
    ⟨(170453254519/500000000000 : ℚ), (2394905177/10000000000 : ℚ), (-23907318653/250000000000 : ℚ), 2⟩,
    ⟨(89039810087/250000000000 : ℚ), (446642359/2500000000 : ℚ), (-37223033117/500000000000 : ℚ), 2⟩,
    ⟨(185742886551/500000000000 : ℚ), (1304732119/10000000000 : ℚ), (-11385929393/200000000000 : ℚ), 2⟩,
    ⟨(96684626103/250000000000 : ℚ), (183617639/2000000000 : ℚ), (-21140772219/500000000000 : ℚ), 2⟩,
    ⟨(200885271069/500000000000 : ℚ), (302164313/5000000000 : ℚ), (-29918667703/1000000000000 : ℚ), 2⟩,
    ⟨(208218559769/500000000000 : ℚ), (347301517/10000000000 : ℚ), (-9704392733/500000000000 : ℚ), 2⟩,
    ⟨(215298494727/500000000000 : ℚ), (135148139/10000000000 : ℚ), (-10427431147/1000000000000 : ℚ), 2⟩,
    ⟨(444113784599/1000000000000 : ℚ), (-5118233/1250000000 : ℚ), (-2728475817/1000000000000 : ℚ), 2⟩,
    ⟨(228428665423/500000000000 : ℚ), (-37520421/2000000000 : ℚ), (155054551/40000000000 : ℚ), 2⟩,
    ⟨(468704900879/1000000000000 : ℚ), (-309839371/10000000000 : ℚ), (4766020949/500000000000 : ℚ), 1⟩,
    ⟨(239771198061/500000000000 : ℚ), (-411487919/10000000000 : ℚ), (14350626661/1000000000000 : ℚ), 1⟩,
    ⟨(489265445571/1000000000000 : ℚ), (-49548383/1000000000 : ℚ), (9209452527/500000000000 : ℚ), 1⟩,
    ⟨(99556082189/200000000000 : ℚ), (-282040089/5000000000 : ℚ), (5450995353/250000000000 : ℚ), 1⟩,
    ⟨(63125661059/125000000000 : ℚ), (-618999503/10000000000 : ℚ), (12278712017/500000000000 : ℚ), 1⟩,
    ⟨(510870498633/1000000000000 : ℚ), (-132308837/2000000000 : ℚ), (1669896483/62500000000 : ℚ), 1⟩,
    ⟨(515319556247/1000000000000 : ℚ), (-692675997/10000000000 : ℚ), (28315666153/1000000000000 : ℚ), 1⟩,
    ⟨(259154807229/500000000000 : ℚ), (-71307253/1000000000 : ℚ), (29369778423/1000000000000 : ℚ), 1⟩,
    ⟨(51981187737/100000000000 : ℚ), (-144633139/2000000000 : ℚ), (29893673737/1000000000000 : ℚ), 1⟩,
    ⟨(13/25 : ℚ), (-724422469/10000000000 : ℚ), (7489753539/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (284819456047/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control74.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control74.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate74

-- Control75
namespace DiagonalRamsey.JointInheritedCertificate75
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(224380643701/1000000000000 : ℚ), (6960027245843/10000000000 : ℚ), (-78460216586511/500000000000 : ℚ), 10⟩,
    ⟨(225947645003/1000000000000 : ℚ), (46775220901/625000000 : ℚ), (-17364678598549/1000000000000 : ℚ), 7⟩,
    ⟨(229066556529/1000000000000 : ℚ), (256565681941/10000000000 : ℚ), (-6200341132773/1000000000000 : ℚ), 6⟩,
    ⟨(116853670727/500000000000 : ℚ), (61670815353/5000000000 : ℚ), (-3124591688489/1000000000000 : ℚ), 5⟩,
    ⟨(47965061297/200000000000 : ℚ), (34885620709/5000000000 : ℚ), (-58093185871/31250000000 : ℚ), 4⟩,
    ⟨(15460095767/62500000000 : ℚ), (43420469549/10000000000 : ℚ), (-9747516741/8000000000 : ℚ), 4⟩,
    ⟨(128121720421/500000000000 : ℚ), (5752669151/2000000000 : ℚ), (-850108567277/1000000000000 : ℚ), 3⟩,
    ⟨(1664909341/6250000000 : ℚ), (19904612511/10000000000 : ℚ), (-77382006709/125000000000 : ℚ), 3⟩,
    ⟨(55538003981/200000000000 : ℚ), (14218511741/10000000000 : ℚ), (-46464803751/100000000000 : ℚ), 3⟩,
    ⟨(290048148117/1000000000000 : ℚ), (1299677941/1250000000 : ℚ), (-356358866001/1000000000000 : ℚ), 2⟩,
    ⟨(151670431833/500000000000 : ℚ), (1546840627/2000000000 : ℚ), (-138731667619/500000000000 : ℚ), 2⟩,
    ⟨(79360037609/250000000000 : ℚ), (2910736359/5000000000 : ℚ), (-109088475757/500000000000 : ℚ), 2⟩,
    ⟨(166105112293/500000000000 : ℚ), (551566717/1250000000 : ℚ), (-1077931321/6250000000 : ℚ), 2⟩,
    ⟨(34750884223/100000000000 : ℚ), (3351841609/10000000000 : ℚ), (-68230685593/500000000000 : ℚ), 2⟩,
    ⟨(72637733863/200000000000 : ℚ), (1269004183/5000000000 : ℚ), (-107571177467/1000000000000 : ℚ), 2⟩,
    ⟨(47387337567/125000000000 : ℚ), (118942269/625000000 : ℚ), (-3361084291/40000000000 : ℚ), 2⟩,
    ⟨(197542856797/500000000000 : ℚ), (28007967/200000000 : ℚ), (-32292002849/500000000000 : ℚ), 2⟩,
    ⟨(82199148963/200000000000 : ℚ), (498645047/5000000000 : ℚ), (-48348056697/1000000000000 : ℚ), 2⟩,
    ⟨(4266755719/10000000000 : ℚ), (41902201/625000000 : ℚ), (-17333054927/500000000000 : ℚ), 2⟩,
    ⟨(441974189543/1000000000000 : ℚ), (201467611/5000000000 : ℚ), (-1440849621/62500000000 : ℚ), 2⟩,
    ⟨(228372131847/500000000000 : ℚ), (36474159/2000000000 : ℚ), (-6573186753/500000000000 : ℚ), 2⟩,
    ⟨(470843550463/1000000000000 : ℚ), (-249047/5000000000 : ℚ), (-2333939303/500000000000 : ℚ), 2⟩,
    ⟨(484136266013/1000000000000 : ℚ), (-1192339/78125000 : ℚ), (2593779327/1000000000000 : ℚ), 2⟩,
    ⟨(19859775769/40000000000 : ℚ), (-69816009/2500000000 : ℚ), (8802014217/1000000000000 : ℚ), 1⟩,
    ⟨(507798919569/1000000000000 : ℚ), (-192229123/5000000000 : ℚ), (7041708691/500000000000 : ℚ), 1⟩,
    ⟨(517940973287/1000000000000 : ℚ), (-471290903/10000000000 : ℚ), (18536238929/1000000000000 : ℚ), 1⟩,
    ⟨(526822881857/1000000000000 : ℚ), (-542134199/10000000000 : ℚ), (22236625109/1000000000000 : ℚ), 1⟩,
    ⟨(106871821529/200000000000 : ℚ), (-299401531/5000000000 : ℚ), (6310808701/250000000000 : ℚ), 1⟩,
    ⟨(21619082907/40000000000 : ℚ), (-642670619/10000000000 : ℚ), (3450082849/125000000000 : ℚ), 1⟩,
    ⟨(545117857601/1000000000000 : ℚ), (-134950291/2000000000 : ℚ), (1173678549/40000000000 : ℚ), 1⟩,
    ⟨(548236769127/1000000000000 : ℚ), (-347880349/5000000000 : ℚ), (7622620033/250000000000 : ℚ), 1⟩,
    ⟨(549803770429/1000000000000 : ℚ), (-141230867/2000000000 : ℚ), (31061110453/1000000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-176862099/2500000000 : ℚ), (31132271157/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (276259438549/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control75.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control75.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate75

-- Control76
namespace DiagonalRamsey.JointInheritedCertificate76
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(253871249353/1000000000000 : ℚ), (741089411213/1000000000 : ℚ), (-37799277007287/200000000000 : ℚ), 10⟩,
    ⟨(6388423737/25000000000 : ℚ), (798093804169/10000000000 : ℚ), (-20913879049883/1000000000000 : ℚ), 7⟩,
    ⟨(258852308131/1000000000000 : ℚ), (274167843419/10000000000 : ℚ), (-1866862133937/250000000000 : ℚ), 6⟩,
    ⟨(263785396589/1000000000000 : ℚ), (66055291397/5000000000 : ℚ), (-235188608601/62500000000 : ℚ), 5⟩,
    ⟨(270288706517/1000000000000 : ℚ), (74913019097/10000000000 : ℚ), (-1119377615529/500000000000 : ℚ), 4⟩,
    ⟨(69574901871/250000000000 : ℚ), (11683514951/2500000000 : ℚ), (-733674415049/500000000000 : ℚ), 4⟩,
    ⟨(57548190027/200000000000 : ℚ), (31033010973/10000000000 : ℚ), (-1023816651259/1000000000000 : ℚ), 3⟩,
    ⟨(14926090459/50000000000 : ℚ), (21526335407/10000000000 : ℚ), (-372822718659/500000000000 : ℚ), 3⟩,
    ⟨(77634589763/250000000000 : ℚ), (15413587167/10000000000 : ℚ), (-111961506301/200000000000 : ℚ), 3⟩,
    ⟨(161837436903/500000000000 : ℚ), (11299035221/10000000000 : ℚ), (-429537374063/1000000000000 : ℚ), 2⟩,
    ⟨(2702438733/8000000000 : ℚ), (2106783383/2500000000 : ℚ), (-8367252897/25000000000 : ℚ), 2⟩,
    ⟨(70558436639/200000000000 : ℚ), (3181050203/5000000000 : ℚ), (-131739883449/500000000000 : ℚ), 2⟩,
    ⟨(368492562223/1000000000000 : ℚ), (37809933/78125000 : ℚ), (-26080118877/125000000000 : ℚ), 2⟩,
    ⟨(96188693869/250000000000 : ℚ), (3692968863/10000000000 : ℚ), (-165500479289/1000000000000 : ℚ), 2⟩,
    ⟨(401422208951/1000000000000 : ℚ), (1406517571/5000000000 : ℚ), (-130944946171/1000000000000 : ℚ), 2⟩,
    ⟨(418334346153/1000000000000 : ℚ), (1063354827/5000000000 : ℚ), (-102838165177/1000000000000 : ℚ), 2⟩,
    ⟨(217664156977/500000000000 : ℚ), (197960293/1250000000 : ℚ), (-79677540187/1000000000000 : ℚ), 2⟩,
    ⟨(90448090231/200000000000 : ℚ), (229727411/2000000000 : ℚ), (-60383546861/1000000000000 : ℚ), 2⟩,
    ⟨(468907884631/1000000000000 : ℚ), (796333481/10000000000 : ℚ), (-44166475587/1000000000000 : ℚ), 2⟩,
    ⟨(121292524471/250000000000 : ℚ), (25422263/500000000 : ℚ), (-30439640247/1000000000000 : ℚ), 2⟩,
    ⟨(31304404807/62500000000 : ℚ), (271479453/10000000000 : ℚ), (-3752284291/200000000000 : ℚ), 2⟩,
    ⟨(515857818481/1000000000000 : ℚ), (37689777/5000000000 : ℚ), (-549731533/62500000000 : ℚ), 2⟩,
    ⟨(5299877863/10000000000 : ℚ), (-87429367/10000000000 : ℚ), (-284345949/1000000000000 : ℚ), 1⟩,
    ⟨(108624860211/200000000000 : ℚ), (-44540717/2000000000 : ℚ), (697231637/100000000000 : ℚ), 1⟩,
    ⟨(555140850927/1000000000000 : ℚ), (-334847257/10000000000 : ℚ), (13129461951/1000000000000 : ℚ), 1⟩,
    ⟨(565921709971/1000000000000 : ℚ), (-21362229/500000000 : ℚ), (18307967499/1000000000000 : ℚ), 1⟩,
    ⟨(287681526311/500000000000 : ℚ), (-50249849/1000000000 : ℚ), (11300940717/500000000000 : ℚ), 1⟩,
    ⟨(58337395359/100000000000 : ℚ), (-562603287/10000000000 : ℚ), (5216789023/200000000000 : ℚ), 1⟩,
    ⟨(589877263517/1000000000000 : ℚ), (-304534881/5000000000 : ℚ), (14404839409/500000000000 : ℚ), 1⟩,
    ⟨(74351293997/125000000000 : ℚ), (-643015487/10000000000 : ℚ), (30820388073/1000000000000 : ℚ), 1⟩,
    ⟨(299062855313/500000000000 : ℚ), (-665228909/10000000000 : ℚ), (401816683/12500000000 : ℚ), 1⟩,
    ⟨(599791410753/1000000000000 : ℚ), (-676213119/10000000000 : ℚ), (6560648333/200000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-338790233/5000000000 : ℚ), (3288526823/100000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (65217691819/250000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control76.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control76.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate76

-- Control77
namespace DiagonalRamsey.JointInheritedCertificate77
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(161040338091/500000000000 : ℚ), (6926400999889/2000000000 : ℚ), (-558402214677347/500000000000 : ℚ), 12⟩,
    ⟨(322535827997/1000000000000 : ℚ), (381412762647/1000000000 : ℚ), (-123962109495247/1000000000000 : ℚ), 9⟩,
    ⟨(80861258781/250000000000 : ℚ), (270772955971/2000000000 : ℚ), (-22267401795137/500000000000 : ℚ), 8⟩,
    ⟨(162403053603/500000000000 : ℚ), (135682691847/2000000000 : ℚ), (-22651869652033/1000000000000 : ℚ), 7⟩,
    ⟨(3266157653/10000000000 : ℚ), (401806828901/10000000000 : ℚ), (-170583210979/12500000000 : ℚ), 6⟩,
    ⟨(328869649781/1000000000000 : ℚ), (131330502911/5000000000 : ℚ), (-4544173955933/500000000000 : ℚ), 5⟩,
    ⟨(66312466169/200000000000 : ℚ), (45808718119/2500000000 : ℚ), (-1616690592577/250000000000 : ℚ), 5⟩,
    ⟨(167343660793/500000000000 : ℚ), (66920602583/5000000000 : ℚ), (-4822075774143/1000000000000 : ℚ), 5⟩,
    ⟨(84559273407/250000000000 : ℚ), (101161705389/10000000000 : ℚ), (-3723021080207/1000000000000 : ℚ), 4⟩,
    ⟨(342203095259/1000000000000 : ℚ), (78504049379/10000000000 : ℚ), (-1476249020123/500000000000 : ℚ), 4⟩,
    ⟨(69315154407/200000000000 : ℚ), (31104461903/5000000000 : ℚ), (-2391551321323/1000000000000 : ℚ), 4⟩,
    ⟨(175672294897/500000000000 : ℚ), (25069976343/5000000000 : ℚ), (-1970568965613/1000000000000 : ℚ), 4⟩,
    ⟨(71299612007/200000000000 : ℚ), (10245712547/2500000000 : ℚ), (-329322515847/200000000000 : ℚ), 3⟩,
    ⟨(362023767599/1000000000000 : ℚ), (33893718431/10000000000 : ℚ), (-1392029825171/1000000000000 : ℚ), 3⟩,
    ⟨(36790840057/100000000000 : ℚ), (7077757467/2500000000 : ℚ), (-1188360170403/1000000000000 : ℚ), 3⟩,
    ⟨(187068891177/500000000000 : ℚ), (23849712927/10000000000 : ℚ), (-102289785251/100000000000 : ℚ), 3⟩,
    ⟨(11896778307/31250000000 : ℚ), (10119399821/5000000000 : ℚ), (-177333187777/200000000000 : ℚ), 3⟩,
    ⟨(387569969477/1000000000000 : ℚ), (1728331007/1000000000 : ℚ), (-386588111231/500000000000 : ℚ), 3⟩,
    ⟨(789480831/2000000000 : ℚ), (14840181577/10000000000 : ℚ), (-42352809683/62500000000 : ℚ), 3⟩,
    ⟨(20109548483/50000000000 : ℚ), (6401314663/5000000000 : ℚ), (-596482513077/1000000000000 : ℚ), 2⟩,
    ⟨(204951841461/500000000000 : ℚ), (11089726979/10000000000 : ℚ), (-131738215367/250000000000 : ℚ), 2⟩,
    ⟨(208929987341/500000000000 : ℚ), (2409827261/2500000000 : ℚ), (-233470592137/500000000000 : ℚ), 2⟩,
    ⟨(13313771173/31250000000 : ℚ), (262594963/312500000 : ℚ), (-414792124851/1000000000000 : ℚ), 2⟩,
    ⟨(3393953777/7812500000 : ℚ), (7342919341/10000000000 : ℚ), (-46149391737/125000000000 : ℚ), 2⟩,
    ⟨(13843624727/31250000000 : ℚ), (3214392503/5000000000 : ℚ), (-329101873089/1000000000000 : ℚ), 2⟩,
    ⟨(4517297553/10000000000 : ℚ), (5636471483/10000000000 : ℚ), (-73416455499/250000000000 : ℚ), 2⟩,
    ⟨(115151583791/250000000000 : ℚ), (4946462637/10000000000 : ℚ), (-131098760103/500000000000 : ℚ), 2⟩,
    ⟨(117401086599/250000000000 : ℚ), (4342877759/10000000000 : ℚ), (-234130979243/1000000000000 : ℚ), 2⟩,
    ⟨(478702111999/1000000000000 : ℚ), (3812705011/10000000000 : ℚ), (-2612477381/12500000000 : ℚ), 2⟩,
    ⟨(243938857329/500000000000 : ℚ), (1672607593/5000000000 : ℚ), (-186409568991/1000000000000 : ℚ), 2⟩,
    ⟨(62138631193/125000000000 : ℚ), (1465754549/5000000000 : ℚ), (-83019402621/500000000000 : ℚ), 2⟩,
    ⟨(506373877563/1000000000000 : ℚ), (2564165059/10000000000 : ℚ), (-147611024159/1000000000000 : ℚ), 2⟩,
    ⟨(515649878931/1000000000000 : ℚ), (1118481031/5000000000 : ℚ), (-130893450297/1000000000000 : ℚ), 2⟩,
    ⟨(524914706949/1000000000000 : ℚ), (972330381/5000000000 : ℚ), (-115687990137/1000000000000 : ℚ), 2⟩,
    ⟨(106829208367/200000000000 : ℚ), (1682828973/10000000000 : ℚ), (-101825294919/1000000000000 : ℚ), 2⟩,
    ⟨(108664328899/200000000000 : ℚ), (1447701719/10000000000 : ℚ), (-11144996917/125000000000 : ℚ), 2⟩,
    ⟨(276209705049/500000000000 : ℚ), (247213661/2000000000 : ℚ), (-7756671889/100000000000 : ℚ), 2⟩,
    ⟨(56141742133/100000000000 : ℚ), (261295171/2500000000 : ℚ), (-33468561029/500000000000 : ℚ), 2⟩,
    ⟨(570294001193/1000000000000 : ℚ), (872678693/10000000000 : ℚ), (-57177089143/1000000000000 : ℚ), 2⟩,
    ⟨(57902776523/100000000000 : ℚ), (716528761/10000000000 : ℚ), (-48204686633/1000000000000 : ℚ), 2⟩,
    ⟨(587597673037/1000000000000 : ℚ), (287486707/5000000000 : ℚ), (-39948362789/1000000000000 : ℚ), 2⟩,
    ⟨(595983078957/1000000000000 : ℚ), (111622377/2500000000 : ℚ), (-6469093059/200000000000 : ℚ), 2⟩,
    ⟨(151040945453/250000000000 : ℚ), (32975353/1000000000 : ℚ), (-25341000343/1000000000000 : ℚ), 2⟩,
    ⟨(153030018393/250000000000 : ℚ), (223612659/10000000000 : ℚ), (-30218543/1600000000 : ℚ), 1⟩,
    ⟨(619832786833/1000000000000 : ℚ), (63530281/5000000000 : ℚ), (-6469795457/500000000000 : ℚ), 1⟩,
    ⟨(313641670497/500000000000 : ℚ), (39217059/10000000000 : ℚ), (-3731177793/500000000000 : ℚ), 1⟩,
    ⟨(634453787017/1000000000000 : ℚ), (-8137799/2000000000 : ℚ), (-242159457/100000000000 : ℚ), 1⟩,
    ⟨(641326850669/1000000000000 : ℚ), (-56667079/5000000000 : ℚ), (2212157059/1000000000000 : ℚ), 1⟩,
    ⟨(647885974139/1000000000000 : ℚ), (-179312647/10000000000 : ℚ), (404062519/62500000000 : ℚ), 1⟩,
    ⟨(654115355923/1000000000000 : ℚ), (-239146713/10000000000 : ℚ), (2072012739/200000000000 : ℚ), 1⟩,
    ⟨(131999997779/200000000000 : ℚ), (-58659093/2000000000 : ℚ), (1739729923/125000000000 : ℚ), 1⟩,
    ⟨(332762848229/500000000000 : ℚ), (-342162377/10000000000 : ℚ), (4289117731/250000000000 : ℚ), 1⟩,
    ⟨(6706791667/10000000000 : ℚ), (-38610169/1000000000 : ℚ), (200920011/10000000000 : ℚ), 1⟩,
    ⟨(337723992229/500000000000 : ℚ), (-425423857/10000000000 : ℚ), (4547716619/200000000000 : ℚ), 1⟩,
    ⟨(339910330617/500000000000 : ℚ), (-46040019/1000000000 : ℚ), (12554331327/500000000000 : ℚ), 1⟩,
    ⟨(341893331433/500000000000 : ℚ), (-491266813/10000000000 : ℚ), (27213133891/1000000000000 : ℚ), 1⟩,
    ⟨(171834108727/250000000000 : ℚ), (-103645603/2000000000 : ℚ), (29061471947/1000000000000 : ℚ), 1⟩,
    ⟨(690461425649/1000000000000 : ℚ), (-108291817/2000000000 : ℚ), (1226473831/40000000000 : ℚ), 1⟩,
    ⟨(86644263339/125000000000 : ℚ), (-112221739/2000000000 : ℚ), (16010606761/500000000000 : ℚ), 1⟩,
    ⟨(695407991193/1000000000000 : ℚ), (-288650441/5000000000 : ℚ), (8286350521/250000000000 : ℚ), 1⟩,
    ⟨(697217649287/1000000000000 : ℚ), (-590136673/10000000000 : ℚ), (6807834493/200000000000 : ℚ), 1⟩,
    ⟨(698578721369/1000000000000 : ℚ), (-599695393/10000000000 : ℚ), (34706272887/1000000000000 : ℚ), 1⟩,
    ⟨(699487928497/1000000000000 : ℚ), (-151508919/2500000000 : ℚ), (878736989/25000000000 : ℚ), 1⟩,
    ⟨(699943080311/1000000000000 : ℚ), (-304598103/5000000000 : ℚ), (35370626701/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-609590823/10000000000 : ℚ), (17699124387/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (224591506939/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control77.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control77.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate77

-- Control78
namespace DiagonalRamsey.JointInheritedCertificate78
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(82029021279/200000000000 : ℚ), (42763264847773/10000000000 : ℚ), (-1755691450935503/1000000000000 : ℚ), 12⟩,
    ⟨(160396341/390625000 : ℚ), (4716102164549/10000000000 : ℚ), (-3044953689869/15625000000 : ℚ), 9⟩,
    ⟨(5144406937/12500000000 : ℚ), (1677500506593/10000000000 : ℚ), (-4375751271813/62500000000 : ℚ), 8⟩,
    ⟨(412956612859/1000000000000 : ℚ), (52669755311/625000000 : ℚ), (-35610609322109/1000000000000 : ℚ), 7⟩,
    ⟨(414823424157/1000000000000 : ℚ), (125136505823/2500000000 : ℚ), (-2145384499559/100000000000 : ℚ), 6⟩,
    ⟨(52143561443/125000000000 : ℚ), (328218195519/10000000000 : ℚ), (-14287920301581/1000000000000 : ℚ), 6⟩,
    ⟨(13122694179/31250000000 : ℚ), (229713791463/10000000000 : ℚ), (-5083332583333/500000000000 : ℚ), 5⟩,
    ⟨(423149898933/1000000000000 : ℚ), (168356655203/10000000000 : ℚ), (-236911645793/31250000000 : ℚ), 5⟩,
    ⟨(426811781019/1000000000000 : ℚ), (127688188261/10000000000 : ℚ), (-292673177429/50000000000 : ℚ), 4⟩,
    ⟨(430903038191/1000000000000 : ℚ), (19887038773/2000000000 : ℚ), (-580280387487/125000000000 : ℚ), 4⟩,
    ⟨(435413814253/1000000000000 : ℚ), (39536055551/5000000000 : ℚ), (-235031684041/62500000000 : ℚ), 4⟩,
    ⟨(440333242349/1000000000000 : ℚ), (15988899739/2500000000 : ℚ), (-1549410862179/500000000000 : ℚ), 4⟩,
    ⟨(111412367787/250000000000 : ℚ), (13114655519/2500000000 : ℚ), (-2589686598893/1000000000000 : ℚ), 3⟩,
    ⟨(451349693387/1000000000000 : ℚ), (21767916353/5000000000 : ℚ), (-437926258579/200000000000 : ℚ), 3⟩,
    ⟨(114355044183/250000000000 : ℚ), (3649117953/1000000000 : ℚ), (-1869635495067/1000000000000 : ℚ), 3⟩,
    ⟨(231923148429/500000000000 : ℚ), (15423484069/5000000000 : ℚ), (-201215698993/125000000000 : ℚ), 3⟩,
    ⟨(470612572677/1000000000000 : ℚ), (131333791/50000000 : ℚ), (-279157948419/200000000000 : ℚ), 3⟩,
    ⟨(477702703639/1000000000000 : ℚ), (5627054837/2500000000 : ℚ), (-1217628341273/1000000000000 : ℚ), 3⟩,
    ⟨(242549804499/500000000000 : ℚ), (19393351009/10000000000 : ℚ), (-8341571119/7812500000 : ℚ), 3⟩,
    ⟨(3079909181/6250000000 : ℚ), (16789127931/10000000000 : ℚ), (-470212392489/500000000000 : ℚ), 2⟩,
    ⟨(100148353523/200000000000 : ℚ), (7297301079/5000000000 : ℚ), (-831437848303/1000000000000 : ℚ), 2⟩,
    ⟨(508949337543/1000000000000 : ℚ), (2546422823/2000000000 : ℚ), (-147487034393/200000000000 : ℚ), 2⟩,
    ⟨(51738840599/100000000000 : ℚ), (11141183289/10000000000 : ℚ), (-655813768967/1000000000000 : ℚ), 2⟩,
    ⟨(210415457/400000000 : ℚ), (9774184781/10000000000 : ℚ), (-292256280263/500000000000 : ℚ), 2⟩,
    ⟨(66859900987/125000000000 : ℚ), (8593239757/10000000000 : ℚ), (-521882545173/1000000000000 : ℚ), 2⟩,
    ⟨(543888804481/1000000000000 : ℚ), (472996613/625000000 : ℚ), (-116647968463/250000000000 : ℚ), 2⟩,
    ⟨(138261431837/250000000000 : ℚ), (6673697979/10000000000 : ℚ), (-417555501977/1000000000000 : ℚ), 2⟩,
    ⟨(140581979167/250000000000 : ℚ), (2945215693/5000000000 : ℚ), (-373882403409/1000000000000 : ℚ), 2⟩,
    ⟨(285856505417/500000000000 : ℚ), (65020861/125000000 : ℚ), (-83708877/250000000 : ℚ), 2⟩,
    ⟨(145294600083/250000000000 : ℚ), (1148448049/2500000000 : ℚ), (-149900485371/500000000000 : ℚ), 2⟩,
    ⟨(590701282209/1000000000000 : ℚ), (2027739391/5000000000 : ℚ), (-67066092573/250000000000 : ℚ), 2⟩,
    ⟨(60025871501/100000000000 : ℚ), (3577262741/10000000000 : ℚ), (-59948025851/250000000000 : ℚ), 2⟩,
    ⟨(15245691851/25000000000 : ℚ), (787797427/2500000000 : ℚ), (-107008359223/500000000000 : ℚ), 2⟩,
    ⟨(15484627671/25000000000 : ℚ), (2770543481/10000000000 : ℚ), (-190625262789/1000000000000 : ℚ), 2⟩,
    ⟨(314453994359/500000000000 : ℚ), (2429627931/10000000000 : ℚ), (-33869991011/200000000000 : ℚ), 2⟩,
    ⟨(79796672277/125000000000 : ℚ), (424718371/2000000000 : ℚ), (-2999213339/20000000000 : ℚ), 2⟩,
    ⟨(647758472381/1000000000000 : ℚ), (1848287447/10000000000 : ℚ), (-132258825077/1000000000000 : ℚ), 2⟩,
    ⟨(328520330851/500000000000 : ℚ), (1600155259/10000000000 : ℚ), (-116072432833/1000000000000 : ℚ), 2⟩,
    ⟨(666197584569/1000000000000 : ℚ), (688065099/5000000000 : ℚ), (-50625992553/500000000000 : ℚ), 2⟩,
    ⟨(337603590577/500000000000 : ℚ), (586782157/5000000000 : ℚ), (-43833548273/500000000000 : ℚ), 2⟩,
    ⟨(13680954931/20000000000 : ℚ), (495081541/5000000000 : ℚ), (-75203705203/1000000000000 : ℚ), 2⟩,
    ⟨(34634899153/50000000000 : ℚ), (823932591/10000000000 : ℚ), (-63761743149/1000000000000 : ℚ), 2⟩,
    ⟨(350568525753/500000000000 : ℚ), (673135589/10000000000 : ℚ), (-6656648397/125000000000 : ℚ), 1⟩,
    ⟨(141868924287/200000000000 : ℚ), (536254757/10000000000 : ℚ), (-5450052593/125000000000 : ℚ), 1⟩,
    ⟨(71730092009/100000000000 : ℚ), (102990481/2500000000 : ℚ), (-34734853859/1000000000000 : ℚ), 1⟩,
    ⟨(181246695013/250000000000 : ℚ), (299092169/10000000000 : ℚ), (-13297877533/500000000000 : ℚ), 1⟩,
    ⟨(73238368541/100000000000 : ℚ), (196621977/10000000000 : ℚ), (-1912926107/100000000000 : ℚ), 1⟩,
    ⟨(184868454093/250000000000 : ℚ), (25912691/2500000000 : ℚ), (-1228753459/100000000000 : ℚ), 1⟩,
    ⟨(23320002881/31250000000 : ℚ), (151447/78125000 : ℚ), (-602804677/100000000000 : ℚ), 1⟩,
    ⟨(752666212317/1000000000000 : ℚ), (-28437003/5000000000 : ℚ), (-312965713/1000000000000 : ℚ), 1⟩,
    ⟨(758736695663/1000000000000 : ℚ), (-62871791/5000000000 : ℚ), (4891367071/1000000000000 : ℚ), 1⟩,
    ⟨(382218458951/500000000000 : ℚ), (-46941789/2500000000 : ℚ), (9614882293/1000000000000 : ℚ), 1⟩,
    ⟨(7697531467/10000000000 : ℚ), (-12171177/500000000 : ℚ), (13884164679/1000000000000 : ℚ), 1⟩,
    ⟨(774672574797/1000000000000 : ℚ), (-58626739/2000000000 : ℚ), (3544555571/200000000000 : ℚ), 1⟩,
    ⟨(779183350859/1000000000000 : ℚ), (-21079167/625000000 : ℚ), (5287885313/250000000000 : ℚ), 1⟩,
    ⟨(783274608031/1000000000000 : ℚ), (-376144661/10000000000 : ℚ), (24188765819/1000000000000 : ℚ), 1⟩,
    ⟨(786936490117/1000000000000 : ℚ), (-410047259/10000000000 : ℚ), (13425226149/500000000000 : ℚ), 1⟩,
    ⟨(395080087661/500000000000 : ℚ), (-439215069/10000000000 : ℚ), (29150458293/1000000000000 : ℚ), 1⟩,
    ⟨(396468948753/500000000000 : ℚ), (-231926359/5000000000 : ℚ), (3110063853/100000000000 : ℚ), 1⟩,
    ⟨(198815741223/250000000000 : ℚ), (-484131353/10000000000 : ℚ), (32710959793/1000000000000 : ℚ), 1⟩,
    ⟨(797129776191/1000000000000 : ℚ), (-500190683/10000000000 : ℚ), (16994797407/500000000000 : ℚ), 1⟩,
    ⟨(79853383409/100000000000 : ℚ), (-512140609/10000000000 : ℚ), (6988599313/200000000000 : ℚ), 1⟩,
    ⟨(79947175609/100000000000 : ℚ), (-260031247/5000000000 : ℚ), (35575957029/1000000000000 : ℚ), 1⟩,
    ⟨(159988256531/200000000000 : ℚ), (-131002519/2500000000 : ℚ), (35891647687/1000000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-524502899/10000000000 : ℚ), (17965536043/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (176968129623/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control78.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control78.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate78

-- Control80
namespace DiagonalRamsey.JointInheritedCertificate80
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(122031860277/1000000000000 : ℚ), (5495315710139/5000000000 : ℚ), (-33611766432411/250000000000 : ℚ), 10⟩,
    ⟨(122567963253/1000000000000 : ℚ), (582250369647/5000000000 : ℚ), (-2887958405213/200000000000 : ℚ), 7⟩,
    ⟨(30904891767/250000000000 : ℚ), (191668481203/5000000000 : ℚ), (-967511947239/200000000000 : ℚ), 6⟩,
    ⟨(62573129589/500000000000 : ℚ), (85099065389/5000000000 : ℚ), (-273749733643/125000000000 : ℚ), 5⟩,
    ⟨(6354468483/50000000000 : ℚ), (41763409863/5000000000 : ℚ), (-1098260777107/1000000000000 : ℚ), 4⟩,
    ⟨(129374225869/1000000000000 : ℚ), (40211274093/10000000000 : ℚ), (-543430581/1000000000 : ℚ), 4⟩,
    ⟨(131913022061/1000000000000 : ℚ), (3121142981/2000000000 : ℚ), (-11114165603/50000000000 : ℚ), 3⟩,
    ⟨(33652048431/250000000000 : ℚ), (171512299/5000000000 : ℚ), (-19055816171/1000000000000 : ℚ), 3⟩,
    ⟨(137356166921/1000000000000 : ℚ), (-2436615093/2500000000 : ℚ), (118053925739/1000000000000 : ℚ), 3⟩,
    ⟨(140051338583/1000000000000 : ℚ), (-1673109687/1000000000 : ℚ), (214884892333/1000000000000 : ℚ), 3⟩,
    ⟨(17823766847/125000000000 : ℚ), (-21718306881/10000000000 : ℚ), (71334682423/250000000000 : ℚ), 3⟩,
    ⟨(18109373873/125000000000 : ℚ), (-25333357647/10000000000 : ℚ), (168642900383/500000000000 : ℚ), 3⟩,
    ⟨(73409050733/500000000000 : ℚ), (-13970721103/5000000000 : ℚ), (187658934929/500000000000 : ℚ), 3⟩,
    ⟨(18543099197/125000000000 : ℚ), (-14879538511/5000000000 : ℚ), (80428097473/200000000000 : ℚ), 3⟩,
    ⟨(149396397391/1000000000000 : ℚ), (-30913416087/10000000000 : ℚ), (209662280489/500000000000 : ℚ), 3⟩,
    ⟨(149932500367/1000000000000 : ℚ), (-15737457099/5000000000 : ℚ), (427728114339/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15772201427/5000000000 : ℚ), (214385104751/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (179946267243/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control80.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control80.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate80

-- Control81
namespace DiagonalRamsey.JointInheritedCertificate81
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(312523459613/1000000000000 : ℚ), (220954056451/50000000 : ℚ), (-1382417152977103/1000000000000 : ℚ), 13⟩,
    ⟨(156434842771/500000000000 : ℚ), (4874304654031/10000000000 : ℚ), (-30686729806483/200000000000 : ℚ), 9⟩,
    ⟨(313561303311/1000000000000 : ℚ), (433538472957/2500000000 : ℚ), (-11023002020961/200000000000 : ℚ), 8⟩,
    ⟨(9831145211/31250000000 : ℚ), (108923702433/1250000000 : ℚ), (-7006818488001/250000000000 : ℚ), 7⟩,
    ⟨(315973221633/1000000000000 : ℚ), (517702935821/10000000000 : ℚ), (-16880114685561/1000000000000 : ℚ), 6⟩,
    ⟨(317687711663/1000000000000 : ℚ), (339542988549/10000000000 : ℚ), (-5618750229437/500000000000 : ℚ), 6⟩,
    ⟨(319735986487/1000000000000 : ℚ), (23768174253/1000000000 : ℚ), (-7992222066277/1000000000000 : ℚ), 5⟩,
    ⟨(322113111631/1000000000000 : ℚ), (1742159421/100000000 : ℚ), (-2978084296553/500000000000 : ℚ), 5⟩,
    ⟨(40601670049/125000000000 : ℚ), (66067824973/5000000000 : ℚ), (-919100139627/200000000000 : ℚ), 5⟩,
    ⟨(163915113817/500000000000 : ℚ), (51445072187/5000000000 : ℚ), (-3641484129577/1000000000000 : ℚ), 4⟩,
    ⟨(16557822273/50000000000 : ℚ), (40900909819/5000000000 : ℚ), (-1473436371003/500000000000 : ℚ), 4⟩,
    ⟨(4184800009/12500000000 : ℚ), (33069188467/5000000000 : ℚ), (-606374944861/250000000000 : ℚ), 4⟩,
    ⟨(84676038579/250000000000 : ℚ), (54217926433/10000000000 : ℚ), (-31628377439/15625000000 : ℚ), 4⟩,
    ⟨(342907462253/1000000000000 : ℚ), (1798392393/400000000 : ℚ), (-1708794469743/1000000000000 : ℚ), 3⟩,
    ⟨(86845949599/250000000000 : ℚ), (37644417249/10000000000 : ℚ), (-728192620587/500000000000 : ℚ), 3⟩,
    ⟨(176061189429/500000000000 : ℚ), (31777853137/10000000000 : ℚ), (-1251262382711/1000000000000 : ℚ), 3⟩,
    ⟨(357111787983/1000000000000 : ℚ), (27012242867/10000000000 : ℚ), (-1082315384721/1000000000000 : ℚ), 3⟩,
    ⟨(362340005849/1000000000000 : ℚ), (23097002897/10000000000 : ℚ), (-94151425037/100000000000 : ℚ), 3⟩,
    ⟨(367794437221/1000000000000 : ℚ), (1984805767/1000000000 : ℚ), (-822938691843/1000000000000 : ℚ), 3⟩,
    ⟨(74692388379/200000000000 : ℚ), (8563916249/5000000000 : ℚ), (-28885856709/40000000000 : ℚ), 3⟩,
    ⟨(94832216589/250000000000 : ℚ), (741596001/500000000 : ℚ), (-158937901431/250000000000 : ℚ), 3⟩,
    ⟨(38538107667/100000000000 : ℚ), (50312477/39062500 : ℚ), (-112227454891/200000000000 : ℚ), 2⟩,
    ⟨(97900998133/250000000000 : ℚ), (175148339/156250000 : ℚ), (-15507970637/31250000000 : ℚ), 2⟩,
    ⟨(49747827799/125000000000 : ℚ), (610697043/625000000 : ℚ), (-439483308439/1000000000000 : ℚ), 2⟩,
    ⟨(101125399893/250000000000 : ℚ), (8525784847/10000000000 : ℚ), (-38952484329/100000000000 : ℚ), 2⟩,
    ⟨(205572609643/500000000000 : ℚ), (7441936953/10000000000 : ℚ), (-345332226961/1000000000000 : ℚ), 2⟩,
    ⟨(417897476471/1000000000000 : ℚ), (6494152653/10000000000 : ℚ), (-306052367871/1000000000000 : ℚ), 2⟩,
    ⟨(106185526087/250000000000 : ℚ), (1132334439/2000000000 : ℚ), (-135492479331/500000000000 : ℚ), 2⟩,
    ⟨(43166261361/100000000000 : ℚ), (4927447571/10000000000 : ℚ), (-119775466473/500000000000 : ℚ), 2⟩,
    ⟨(27415145759/62500000000 : ℚ), (855477749/2000000000 : ℚ), (-52817067477/250000000000 : ℚ), 2⟩,
    ⟨(89132889039/200000000000 : ℚ), (3699781197/10000000000 : ℚ), (-46433313647/250000000000 : ℚ), 2⟩,
    ⟨(11317800897/25000000000 : ℚ), (159241591/500000000 : ℚ), (-1626058303/10000000000 : ℚ), 2⟩,
    ⟨(459768125933/1000000000000 : ℚ), (1362155977/5000000000 : ℚ), (-1769975651/12500000000 : ℚ), 2⟩,
    ⟨(233407858309/500000000000 : ℚ), (2311274629/10000000000 : ℚ), (-61232456731/500000000000 : ℚ), 2⟩,
    ⟨(473837829669/1000000000000 : ℚ), (969914489/5000000000 : ℚ), (-104997003579/1000000000000 : ℚ), 2⟩,
    ⟨(480817548203/1000000000000 : ℚ), (401239767/2500000000 : ℚ), (-17802917891/200000000000 : ℚ), 2⟩,
    ⟨(97547611493/200000000000 : ℚ), (260475499/2000000000 : ℚ), (-74362815411/1000000000000 : ℚ), 2⟩,
    ⟨(247291342671/500000000000 : ℚ), (1028406383/10000000000 : ℚ), (-60907784789/1000000000000 : ℚ), 2⟩,
    ⟨(501334942527/1000000000000 : ℚ), (155976027/2000000000 : ℚ), (-3033333987/62500000000 : ℚ), 2⟩,
    ⟨(507978562241/1000000000000 : ℚ), (554065559/10000000000 : ℚ), (-37138427737/1000000000000 : ℚ), 2⟩,
    ⟨(514497539421/1000000000000 : ℚ), (69719187/2000000000 : ℚ), (-1331742919/50000000000 : ℚ), 2⟩,
    ⟨(520876169281/1000000000000 : ℚ), (80708187/5000000000 : ℚ), (-16945509913/1000000000000 : ℚ), 2⟩,
    ⟨(527099085143/1000000000000 : ℚ), (-9261681/10000000000 : ℚ), (-320110883/40000000000 : ℚ), 2⟩,
    ⟨(533151295457/1000000000000 : ℚ), (-16499847/1000000000 : ℚ), (126370479/500000000000 : ℚ), 2⟩,
    ⟨(269509109959/500000000000 : ℚ), (-19197363/625000000 : ℚ), (1968320269/250000000000 : ℚ), 2⟩,
    ⟨(34042857787/62500000000 : ℚ), (-436933921/10000000000 : ℚ), (1863111193/125000000000 : ℚ), 2⟩,
    ⟨(137535038991/250000000000 : ℚ), (-555374101/10000000000 : ℚ), (21388181697/1000000000000 : ℚ), 2⟩,
    ⟨(55536837383/100000000000 : ℚ), (-82924737/1250000000 : ℚ), (27359017007/1000000000000 : ℚ), 2⟩,
    ⟨(112071556591/200000000000 : ℚ), (-761813389/10000000000 : ℚ), (32849070781/1000000000000 : ℚ), 2⟩,
    ⟨(565096363417/1000000000000 : ℚ), (-851331059/10000000000 : ℚ), (4735790677/125000000000 : ℚ), 2⟩,
    ⟨(14239317489/25000000000 : ℚ), (-93257559/1000000000 : ℚ), (8499098309/200000000000 : ℚ), 2⟩,
    ⟨(573776007497/1000000000000 : ℚ), (-503047981/5000000000 : ℚ), (4669837137/100000000000 : ℚ), 2⟩,
    ⟨(577696161093/1000000000000 : ℚ), (-107237407/1000000000 : ℚ), (2020566837/40000000000 : ℚ), 2⟩,
    ⟨(581323716353/1000000000000 : ℚ), (-565916049/5000000000 : ℚ), (5395976961/100000000000 : ℚ), 2⟩,
    ⟨(584649934179/1000000000000 : ℚ), (-1184838827/10000000000 : ℚ), (11409990569/200000000000 : ℚ), 2⟩,
    ⟨(587666801421/1000000000000 : ℚ), (-615857509/5000000000 : ℚ), (7474701481/125000000000 : ℚ), 2⟩,
    ⟨(295183525091/500000000000 : ℚ), (-1272738001/10000000000 : ℚ), (7776739437/125000000000 : ℚ), 2⟩,
    ⟨(296372087663/500000000000 : ℚ), (-1308145567/10000000000 : ℚ), (1286169141/20000000000 : ℚ), 1⟩,
    ⟨(11895849003/20000000000 : ℚ), (-1338139251/10000000000 : ℚ), (66089378933/1000000000000 : ℚ), 1⟩,
    ⟨(29825347009/50000000000 : ℚ), (-1362887073/10000000000 : ℚ), (8445434699/125000000000 : ℚ), 1⟩,
    ⟨(597883515061/1000000000000 : ℚ), (-1382525793/10000000000 : ℚ), (68736290221/1000000000000 : ℚ), 1⟩,
    ⟨(299459429251/500000000000 : ℚ), (-174645341/1250000000 : ℚ), (69612165137/1000000000000 : ℚ), 1⟩,
    ⟨(599610476271/1000000000000 : ℚ), (-281375433/2000000000 : ℚ), (14038863349/200000000000 : ℚ), 1⟩,
    ⟨(2999783511/5000000000 : ℚ), (-282344279/2000000000 : ℚ), (70484865691/1000000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-353081579/2500000000 : ℚ), (70521159611/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (212852443473/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control81.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control81.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate81
