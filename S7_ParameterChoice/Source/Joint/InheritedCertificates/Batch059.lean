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

-- Control506
namespace DiagonalRamsey.JointInheritedCertificate506
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276314618033/1000000000000 : ℚ), (16185561410099/10000000000 : ℚ), (-223965746908363/500000000000 : ℚ), 12⟩,
    ⟨(276909838037/1000000000000 : ℚ), (1771091397993/10000000000 : ℚ), (-12370174989047/250000000000 : ℚ), 9⟩,
    ⟨(278094545751/1000000000000 : ℚ), (24864025061/400000000 : ℚ), (-17604465813561/1000000000000 : ℚ), 7⟩,
    ⟨(279857331793/1000000000000 : ℚ), (153285565367/5000000000 : ℚ), (-8822021265937/1000000000000 : ℚ), 7⟩,
    ⟨(282181219569/1000000000000 : ℚ), (35572996317/2000000000 : ℚ), (-2603801601327/500000000000 : ℚ), 6⟩,
    ⟨(285043828769/1000000000000 : ℚ), (14162729857/1250000000 : ℚ), (-675546291317/200000000000 : ℚ), 5⟩,
    ⟨(144208795451/500000000000 : ℚ), (76563733859/10000000000 : ℚ), (-581254069211/250000000000 : ℚ), 5⟩,
    ⟨(146135007397/500000000000 : ℚ), (5379201651/1000000000 : ℚ), (-832131639907/500000000000 : ℚ), 5⟩,
    ⟨(148281999749/500000000000 : ℚ), (38775135227/10000000000 : ℚ), (-611201141367/500000000000 : ℚ), 4⟩,
    ⟨(301258191593/1000000000000 : ℚ), (14197714953/5000000000 : ℚ), (-456157661059/500000000000 : ℚ), 4⟩,
    ⟨(306307383443/1000000000000 : ℚ), (20950637747/10000000000 : ℚ), (-686274642479/1000000000000 : ℚ), 4⟩,
    ⟨(311662948571/1000000000000 : ℚ), (15448735607/10000000000 : ℚ), (-258178869687/500000000000 : ℚ), 4⟩,
    ⟨(317273309957/1000000000000 : ℚ), (11280813533/10000000000 : ℚ), (-96337409471/250000000000 : ℚ), 3⟩,
    ⟨(323084436753/1000000000000 : ℚ), (2014248723/2500000000 : ℚ), (-7054324687/25000000000 : ℚ), 3⟩,
    ⟨(41130045579/125000000000 : ℚ), (1379691651/2500000000 : ℚ), (-779071991/3906250000 : ℚ), 3⟩,
    ⟨(335083734753/1000000000000 : ℚ), (3489621197/10000000000 : ℚ), (-66042669123/500000000000 : ℚ), 3⟩,
    ⟨(170578173079/500000000000 : ℚ), (923008989/5000000000 : ℚ), (-7652883269/100000000000 : ℚ), 3⟩,
    ⟨(347199716279/1000000000000 : ℚ), (3122779/62500000 : ℚ), (-3020213483/100000000000 : ℚ), 3⟩,
    ⟨(176577822079/500000000000 : ℚ), (-613775401/10000000000 : ℚ), (8778170671/1000000000000 : ℚ), 3⟩,
    ⟨(179483385477/500000000000 : ℚ), (-1541747939/10000000000 : ℚ), (41812979189/1000000000000 : ℚ), 3⟩,
    ⟨(18228856617/50000000000 : ℚ), (-463968431/2000000000 : ℚ), (17489352041/250000000000 : ℚ), 3⟩,
    ⟨(92483174367/250000000000 : ℚ), (-371872363/1250000000 : ℚ), (94014175903/1000000000000 : ℚ), 3⟩,
    ⟨(187490944659/500000000000 : ℚ), (-3527711657/10000000000 : ℚ), (28649672529/250000000000 : ℚ), 3⟩,
    ⟨(379676081413/1000000000000 : ℚ), (-99845913/250000000 : ℚ), (132185273477/1000000000000 : ℚ), 3⟩,
    ⟨(383970066117/1000000000000 : ℚ), (-4385546339/10000000000 : ℚ), (147140555277/1000000000000 : ℚ), 3⟩,
    ⟨(387822490009/1000000000000 : ℚ), (-4712269099/10000000000 : ℚ), (79873980403/500000000000 : ℚ), 3⟩,
    ⟨(391196252143/1000000000000 : ℚ), (-4981283637/10000000000 : ℚ), (85112951899/500000000000 : ℚ), 2⟩,
    ⟨(394058861343/1000000000000 : ℚ), (-1039635049/2000000000 : ℚ), (178741428337/1000000000000 : ℚ), 2⟩,
    ⟨(198191374559/500000000000 : ℚ), (-536717373/1000000000 : ℚ), (7416819273/40000000000 : ℚ), 2⟩,
    ⟨(9953638379/25000000000 : ℚ), (-2745701507/5000000000 : ℚ), (38071123409/200000000000 : ℚ), 2⟩,
    ⟨(199665121437/500000000000 : ℚ), (-5573062173/10000000000 : ℚ), (38722332581/200000000000 : ℚ), 2⟩,
    ⟨(399925462879/1000000000000 : ℚ), (-5613551353/10000000000 : ℚ), (97614860781/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-561859673/1000000000 : ℚ), (97715758921/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (38917921769/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control506.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control506.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate506

-- Control507
namespace DiagonalRamsey.JointInheritedCertificate507
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291493978967/1000000000000 : ℚ), (16434749349563/10000000000 : ℚ), (-59975400248441/125000000000 : ℚ), 12⟩,
    ⟨(292112397677/1000000000000 : ℚ), (1798646917537/10000000000 : ℚ), (-53003033417413/1000000000000 : ℚ), 9⟩,
    ⟨(293343279387/1000000000000 : ℚ), (315713338341/5000000000 : ℚ), (-18858864935797/1000000000000 : ℚ), 7⟩,
    ⟨(295174770033/1000000000000 : ℚ), (311513939377/10000000000 : ℚ), (-9451601018959/1000000000000 : ℚ), 7⟩,
    ⟨(232491587/781250000 : ℚ), (180799783701/10000000000 : ℚ), (-2790038862721/500000000000 : ℚ), 6⟩,
    ⟨(9392606587/31250000000 : ℚ), (115221823057/10000000000 : ℚ), (-3620083319837/1000000000000 : ℚ), 5⟩,
    ⟨(304068665331/1000000000000 : ℚ), (15580340951/2000000000 : ℚ), (-2492552917441/1000000000000 : ℚ), 5⟩,
    ⟨(154035618743/500000000000 : ℚ), (27383238573/5000000000 : ℚ), (-223110687421/125000000000 : ℚ), 5⟩,
    ⟨(312532580289/1000000000000 : ℚ), (19754136879/5000000000 : ℚ), (-1311696569811/1000000000000 : ℚ), 4⟩,
    ⟨(31740972857/100000000000 : ℚ), (3620115697/1250000000 : ℚ), (-979669146727/1000000000000 : ℚ), 4⟩,
    ⟨(161327856363/500000000000 : ℚ), (5348892067/2500000000 : ℚ), (-7376789003/10000000000 : ℚ), 4⟩,
    ⟨(328220011061/1000000000000 : ℚ), (15804591473/10000000000 : ℚ), (-277907868773/500000000000 : ℚ), 4⟩,
    ⟨(334049036341/1000000000000 : ℚ), (11569452583/10000000000 : ℚ), (-25977423859/62500000000 : ℚ), 3⟩,
    ⟨(68017330373/200000000000 : ℚ), (8294055599/10000000000 : ℚ), (-61056264453/200000000000 : ℚ), 3⟩,
    ⟨(10821084753/31250000000 : ℚ), (5715721589/10000000000 : ℚ), (-27103897483/125000000000 : ℚ), 3⟩,
    ⟨(352553622631/1000000000000 : ℚ), (3655064053/10000000000 : ℚ), (-144853320067/1000000000000 : ℚ), 3⟩,
    ⟨(358862914129/1000000000000 : ℚ), (496624583/2500000000 : ℚ), (-85519034931/1000000000000 : ℚ), 3⟩,
    ⟨(45642728083/125000000000 : ℚ), (155056699/2500000000 : ℚ), (-4509113387/125000000000 : ℚ), 3⟩,
    ⟨(11604058903/31250000000 : ℚ), (-12728213/250000000 : ℚ), (137607579/25000000000 : ℚ), 3⟩,
    ⟨(18868375021/50000000000 : ℚ), (-1449904443/10000000000 : ℚ), (20357525681/500000000000 : ℚ), 3⟩,
    ⟨(3831965257/10000000000 : ℚ), (-2238306563/10000000000 : ℚ), (14138290441/200000000000 : ℚ), 3⟩,
    ⟨(77752164807/200000000000 : ℚ), (-2901749137/10000000000 : ℚ), (24073818001/250000000000 : ℚ), 3⟩,
    ⟨(394006808191/1000000000000 : ℚ), (-432646489/1250000000 : ℚ), (23637523027/200000000000 : ℚ), 3⟩,
    ⟨(49860494559/125000000000 : ℚ), (-786535113/2000000000 : ℚ), (68439202957/500000000000 : ℚ), 3⟩,
    ⟨(16133811971/40000000000 : ℚ), (-4328694099/10000000000 : ℚ), (76381061247/500000000000 : ℚ), 3⟩,
    ⟨(407347871429/1000000000000 : ℚ), (-582355829/1250000000 : ℚ), (166143998157/1000000000000 : ℚ), 2⟩,
    ⟨(410853125977/1000000000000 : ℚ), (-2465281517/5000000000 : ℚ), (88629739997/500000000000 : ℚ), 2⟩,
    ⟨(413827305401/1000000000000 : ℚ), (-1287386743/2500000000 : ℚ), (186288817131/1000000000000 : ℚ), 2⟩,
    ⟨(416241766727/1000000000000 : ℚ), (-5320119587/10000000000 : ℚ), (193368044747/1000000000000 : ℚ), 2⟩,
    ⟨(418073257373/1000000000000 : ℚ), (-136136833/250000000 : ℚ), (198597218337/1000000000000 : ℚ), 2⟩,
    ⟨(419304139083/1000000000000 : ℚ), (-2763928041/5000000000 : ℚ), (202046476407/1000000000000 : ℚ), 2⟩,
    ⟨(209961278897/500000000000 : ℚ), (-1113739879/2000000000 : ℚ), (101880157241/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-5573788683/10000000000 : ℚ), (101987022447/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (298771561567/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control507.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control507.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate507

-- Control508
namespace DiagonalRamsey.JointInheritedCertificate508
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17522030373/100000000000 : ℚ), (168284271871/400000000 : ℚ), (-37026632170531/500000000000 : ℚ), 10⟩,
    ⟨(176653706813/1000000000000 : ℚ), (444154255861/10000000000 : ℚ), (-501205630083/62500000000 : ℚ), 7⟩,
    ⟨(89732714051/500000000000 : ℚ), (146653320433/10000000000 : ℚ), (-109427893557/40000000000 : ℚ), 6⟩,
    ⟨(91773707363/500000000000 : ℚ), (264783349/40000000 : ℚ), (-319730662373/250000000000 : ℚ), 5⟩,
    ⟨(188742798227/1000000000000 : ℚ), (6770739257/2000000000 : ℚ), (-678246098391/1000000000000 : ℚ), 4⟩,
    ⟨(194851922931/1000000000000 : ℚ), (17906798253/10000000000 : ℚ), (-373003320683/1000000000000 : ℚ), 4⟩,
    ⟨(100820009301/500000000000 : ℚ), (4490045991/5000000000 : ℚ), (-196341837533/1000000000000 : ℚ), 3⟩,
    ⟨(20884622253/100000000000 : ℚ), (141038149/400000000 : ℚ), (-1691220441/20000000000 : ℚ), 3⟩,
    ⟨(216193604339/1000000000000 : ℚ), (-13139391/5000000000 : ℚ), (-4578092253/500000000000 : ℚ), 3⟩,
    ⟨(111699904133/500000000000 : ℚ), (-2450952407/10000000000 : ℚ), (44090310299/1000000000000 : ℚ), 3⟩,
    ⟨(230187903937/1000000000000 : ℚ), (-2080033499/5000000000 : ℚ), (10353398357/125000000000 : ℚ), 3⟩,
    ⟨(236297028641/1000000000000 : ℚ), (-5384962481/10000000000 : ℚ), (2784613517/25000000000 : ℚ), 3⟩,
    ⟨(241492412143/1000000000000 : ℚ), (-6260243173/10000000000 : ℚ), (66144437787/500000000000 : ℚ), 3⟩,
    ⟨(122787199383/500000000000 : ℚ), (-214550353/312500000 : ℚ), (73514713857/500000000000 : ℚ), 3⟩,
    ⟨(31048265007/125000000000 : ℚ), (-3623970137/5000000000 : ℚ), (15647159133/100000000000 : ℚ), 3⟩,
    ⟨(249819523139/1000000000000 : ℚ), (-7433288693/10000000000 : ℚ), (40272149917/250000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-932024687/1250000000 : ℚ), (161661112853/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (380746990501/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control508.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control508.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate508

-- Control509
namespace DiagonalRamsey.JointInheritedCertificate509
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(150352066781/1000000000000 : ℚ), (2643981853893/5000000000 : ℚ), (-79785904809623/1000000000000 : ℚ), 11⟩,
    ⟨(151303735537/1000000000000 : ℚ), (559745672813/10000000000 : ℚ), (-1076650602559/125000000000 : ℚ), 7⟩,
    ⟨(153170500953/1000000000000 : ℚ), (184922411809/10000000000 : ℚ), (-182402624811/62500000000 : ℚ), 6⟩,
    ⟨(155880624281/1000000000000 : ℚ), (41558987401/5000000000 : ℚ), (-84268760809/62500000000 : ℚ), 5⟩,
    ⟨(159329957001/1000000000000 : ℚ), (5245912133/1250000000 : ℚ), (-87610348083/125000000000 : ℚ), 5⟩,
    ⟨(16338594319/100000000000 : ℚ), (21546562039/10000000000 : ℚ), (-185947957267/500000000000 : ℚ), 4⟩,
    ⟨(6715708543/40000000000 : ℚ), (5018171571/5000000000 : ℚ), (-36300228453/200000000000 : ℚ), 4⟩,
    ⟨(172677075497/1000000000000 : ℚ), (2953994883/10000000000 : ℚ), (-7629603721/125000000000 : ℚ), 3⟩,
    ⟨(17755516861/100000000000 : ℚ), (-1690706573/10000000000 : ℚ), (5056242797/250000000000 : ℚ), 3⟩,
    ⟨(45584882633/250000000000 : ℚ), (-195284049/400000000 : ℚ), (38806490387/500000000000 : ℚ), 3⟩,
    ⟨(186846300917/1000000000000 : ℚ), (-7145582543/10000000000 : ℚ), (29843485603/250000000000 : ℚ), 3⟩,
    ⟨(190902287107/1000000000000 : ℚ), (-8776906267/10000000000 : ℚ), (150174770651/1000000000000 : ℚ), 3⟩,
    ⟨(97175809913/500000000000 : ℚ), (-4974178399/5000000000 : ℚ), (86367594459/500000000000 : ℚ), 3⟩,
    ⟨(98530871577/500000000000 : ℚ), (-672616917/625000000 : ℚ), (94327158193/500000000000 : ℚ), 3⟩,
    ⟨(19892850857/100000000000 : ℚ), (-11277233963/10000000000 : ℚ), (198857734827/1000000000000 : ℚ), 3⟩,
    ⟨(99940088663/500000000000 : ℚ), (-11527552923/10000000000 : ℚ), (101924570309/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11558514577/10000000000 : ℚ), (2555852351/12500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (7571150213/20000000000 : ℚ)
  μ := (1/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control509.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control509.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate509

-- Control511
namespace DiagonalRamsey.JointInheritedCertificate511
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42463127647/500000000000 : ℚ), (4925594131327/5000000000 : ℚ), (-83819221694641/1000000000000 : ℚ), 11⟩,
    ⟨(85215194047/1000000000000 : ℚ), (521725797611/5000000000 : ℚ), (-8971456517443/1000000000000 : ℚ), 8⟩,
    ⟨(85781967797/1000000000000 : ℚ), (21389999491/625000000 : ℚ), (-745669381977/250000000000 : ℚ), 7⟩,
    ⟨(21651198937/250000000000 : ℚ), (18809764921/1250000000 : ℚ), (-1331521186101/1000000000000 : ℚ), 6⟩,
    ⟨(87652057083/1000000000000 : ℚ), (18067519807/2500000000 : ℚ), (-16268941447/25000000000 : ℚ), 5⟩,
    ⟨(11110438267/125000000000 : ℚ), (1032877819/312500000 : ℚ), (-304886833121/1000000000000 : ℚ), 5⟩,
    ⟨(90251819011/1000000000000 : ℚ), (534680283/500000000 : ℚ), (-104777361829/1000000000000 : ℚ), 4⟩,
    ⟨(91704412211/1000000000000 : ℚ), (-3226846699/10000000000 : ℚ), (10894138483/500000000000 : ℚ), 4⟩,
    ⟨(46592731697/500000000000 : ℚ), (-2492796817/2000000000 : ℚ), (21427463917/200000000000 : ℚ), 4⟩,
    ⟨(47319028297/500000000000 : ℚ), (-18883698141/10000000000 : ℚ), (83701118941/500000000000 : ℚ), 4⟩,
    ⟨(96006369469/1000000000000 : ℚ), (-23486491139/10000000000 : ℚ), (105632238271/500000000000 : ℚ), 4⟩,
    ⟨(48618909261/500000000000 : ℚ), (-1073493791/400000000 : ℚ), (48726958399/200000000000 : ℚ), 4⟩,
    ⟨(98285079857/1000000000000 : ℚ), (-29265388547/10000000000 : ℚ), (66842202093/250000000000 : ℚ), 3⟩,
    ⟨(3097122119/31250000000 : ℚ), (-30964461831/10000000000 : ℚ), (71034237841/250000000000 : ℚ), 3⟩,
    ⟨(49837340779/500000000000 : ℚ), (-640942887/200000000 : ℚ), (36862195479/125000000000 : ℚ), 3⟩,
    ⟨(99963620311/1000000000000 : ℚ), (-254491899/78125000 : ℚ), (300166168361/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-204002133/62500000 : ℚ), (37602478931/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (45056265689/125000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control511.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control511.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate511

-- Control512
namespace DiagonalRamsey.JointInheritedCertificate512
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(565177559251/1000000000000 : ℚ), (16944081803059/10000000000 : ℚ), (-959067411736921/1000000000000 : ℚ), 12⟩,
    ⟨(566307612067/1000000000000 : ℚ), (1857239915731/10000000000 : ℚ), (-53039578179971/500000000000 : ℚ), 9⟩,
    ⟨(35534802167/62500000000 : ℚ), (326936032129/5000000000 : ℚ), (-37840675774339/1000000000000 : ℚ), 7⟩,
    ⟨(139624894/244140625 : ℚ), (161986635529/5000000000 : ℚ), (-1190063476651/62500000000 : ℚ), 6⟩,
    ⟨(576315574671/1000000000000 : ℚ), (189145833117/10000000000 : ℚ), (-11305359864423/1000000000000 : ℚ), 6⟩,
    ⟨(581750371157/1000000000000 : ℚ), (121493155153/10000000000 : ℚ), (-7390472877043/1000000000000 : ℚ), 5⟩,
    ⟨(588155615221/1000000000000 : ℚ), (20748325019/2500000000 : ℚ), (-5139763578389/1000000000000 : ℚ), 5⟩,
    ⟨(29773481043/50000000000 : ℚ), (59134940287/10000000000 : ℚ), (-932152834831/250000000000 : ℚ), 4⟩,
    ⟨(603621950203/1000000000000 : ℚ), (4341250747/1000000000 : ℚ), (-2786500419661/1000000000000 : ℚ), 4⟩,
    ⟨(612534091861/1000000000000 : ℚ), (16279878883/5000000000 : ℚ), (-1063457627143/500000000000 : ℚ), 4⟩,
    ⟨(311060108519/500000000000 : ℚ), (1239627053/500000000 : ℚ), (-205957724947/125000000000 : ℚ), 3⟩,
    ⟨(158072001527/250000000000 : ℚ), (19070503513/10000000000 : ℚ), (-25778806851/20000000000 : ℚ), 3⟩,
    ⟨(80367442213/125000000000 : ℚ), (7377278091/5000000000 : ℚ), (-1013868991909/1000000000000 : ℚ), 3⟩,
    ⟨(130794446351/200000000000 : ℚ), (11435051363/10000000000 : ℚ), (-399350079669/500000000000 : ℚ), 3⟩,
    ⟨(332639918693/500000000000 : ℚ), (110499567/125000000 : ℚ), (-31379231851/50000000000 : ℚ), 3⟩,
    ⟨(169188364043/250000000000 : ℚ), (3391599759/5000000000 : ℚ), (-489618581029/1000000000000 : ℚ), 3⟩,
    ⟨(688282590893/1000000000000 : ℚ), (641770063/1250000000 : ℚ), (-377102846299/1000000000000 : ℚ), 3⟩,
    ⟨(8746952621/12500000000 : ℚ), (3799176493/10000000000 : ℚ), (-142238763827/500000000000 : ℚ), 3⟩,
    ⟨(71106381531/100000000000 : ℚ), (2709770553/10000000000 : ℚ), (-25956028967/125000000000 : ℚ), 2⟩,
    ⟨(722096509361/1000000000000 : ℚ), (907524969/5000000000 : ℚ), (-28709567851/200000000000 : ℚ), 2⟩,
    ⟨(366374020479/500000000000 : ℚ), (538321887/5000000000 : ℚ), (-89844317479/1000000000000 : ℚ), 2⟩,
    ⟨(185728957507/250000000000 : ℚ), (9305253/200000000 : ℚ), (-44741666867/1000000000000 : ℚ), 2⟩,
    ⟨(150500391041/200000000000 : ℚ), (-41683943/10000000000 : ℚ), (-1368348481/200000000000 : ℚ), 2⟩,
    ⟨(380707048431/500000000000 : ℚ), (-461764799/10000000000 : ℚ), (24953231389/1000000000000 : ℚ), 2⟩,
    ⟨(153913285241/200000000000 : ℚ), (-808724429/10000000000 : ℚ), (12877599217/250000000000 : ℚ), 2⟩,
    ⟨(194220107961/250000000000 : ℚ), (-1093348201/10000000000 : ℚ), (73516729241/1000000000000 : ℚ), 2⟩,
    ⟨(195821418977/250000000000 : ℚ), (-662046707/5000000000 : ℚ), (45757948693/500000000000 : ℚ), 2⟩,
    ⟨(394360236197/500000000000 : ℚ), (-1507552773/10000000000 : ℚ), (105935369459/1000000000000 : ℚ), 2⟩,
    ⟨(793132481241/1000000000000 : ℚ), (-103049731/625000000 : ℚ), (117106401943/1000000000000 : ℚ), 2⟩,
    ⟨(796479212393/1000000000000 : ℚ), (-1751618667/10000000000 : ℚ), (31319682717/250000000000 : ℚ), 2⟩,
    ⟨(399364217499/500000000000 : ℚ), (-1818725931/10000000000 : ℚ), (130631202449/1000000000000 : ℚ), 2⟩,
    ⟨(399929243907/500000000000 : ℚ), (-185185481/1000000000 : ℚ), (13327916847/100000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-927988097/5000000000 : ℚ), (133608850021/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (43246134293/250000000000 : ℚ)
  μ := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control512.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control512.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate512

-- Control515
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

-- Control516
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
