import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control443.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control443.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate443
