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

-- Control347
namespace DiagonalRamsey.JointInheritedCertificate347
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(294367917569/1000000000000 : ℚ), (3116097315129/2500000000 : ℚ), (-183858496040811/500000000000 : ℚ), 12⟩,
    ⟨(295261248107/1000000000000 : ℚ), (27197300611/200000000 : ℚ), (-10163220017033/250000000000 : ℚ), 8⟩,
    ⟨(297039305923/1000000000000 : ℚ), (14858740169/312500000 : ℚ), (-14487653475491/1000000000000 : ℚ), 7⟩,
    ⟨(299684967347/1000000000000 : ℚ), (233626694137/10000000000 : ℚ), (-1819685209997/250000000000 : ℚ), 6⟩,
    ⟨(151586376607/500000000000 : ℚ), (67554218597/5000000000 : ℚ), (-862393258797/200000000000 : ℚ), 5⟩,
    ⟨(307469074239/1000000000000 : ℚ), (42935267137/5000000000 : ℚ), (-175627082123/62500000000 : ℚ), 5⟩,
    ⟨(312532554501/1000000000000 : ℚ), (57974523233/10000000000 : ℚ), (-1946034021609/1000000000000 : ℚ), 4⟩,
    ⟨(318314429919/1000000000000 : ℚ), (40768457437/10000000000 : ℚ), (-350945786277/250000000000 : ℚ), 4⟩,
    ⟨(20297438617/62500000000 : ℚ), (7370773471/2500000000 : ℚ), (-1041215615093/1000000000000 : ℚ), 4⟩,
    ⟨(331804253453/1000000000000 : ℚ), (21727752507/10000000000 : ℚ), (-157363951491/200000000000 : ℚ), 3⟩,
    ⟨(339382287193/1000000000000 : ℚ), (4049778079/2500000000 : ℚ), (-300708714611/500000000000 : ℚ), 3⟩,
    ⟨(173710069243/500000000000 : ℚ), (758688949/625000000 : ℚ), (-462087919723/1000000000000 : ℚ), 3⟩,
    ⟨(88960099607/250000000000 : ℚ), (72664929/80000000 : ℚ), (-354700129831/1000000000000 : ℚ), 3⟩,
    ⟨(182280987657/500000000000 : ℚ), (6734784963/10000000000 : ℚ), (-67540328777/250000000000 : ℚ), 3⟩,
    ⟨(37350087559/100000000000 : ℚ), (2448948211/5000000000 : ℚ), (-101204741601/500000000000 : ℚ), 3⟩,
    ⟨(382571012761/1000000000000 : ℚ), (3438933139/10000000000 : ℚ), (-36820273511/250000000000 : ℚ), 3⟩,
    ⟨(195842518223/500000000000 : ℚ), (1132369771/5000000000 : ℚ), (-101843577597/1000000000000 : ℚ), 3⟩,
    ⟨(400755173617/1000000000000 : ℚ), (327235281/2500000000 : ℚ), (-63986706891/1000000000000 : ℚ), 2⟩,
    ⟨(409694073893/1000000000000 : ℚ), (130846333/2500000000 : ℚ), (-32164127909/1000000000000 : ℚ), 2⟩,
    ⟨(418415650779/1000000000000 : ℚ), (-15925737/1250000000 : ℚ), (-65314071/12500000000 : ℚ), 2⟩,
    ⟨(426835910721/1000000000000 : ℚ), (-334960397/5000000000 : ℚ), (8848836761/500000000000 : ℚ), 2⟩,
    ⟨(434873762013/1000000000000 : ℚ), (-1124158511/10000000000 : ℚ), (18632483843/500000000000 : ℚ), 2⟩,
    ⟨(221225897877/500000000000 : ℚ), (-1505358959/10000000000 : ℚ), (26992091367/500000000000 : ℚ), 2⟩,
    ⟨(89899406267/200000000000 : ℚ), (-73008789/400000000 : ℚ), (545978841/8000000000 : ℚ), 2⟩,
    ⟨(455941619287/1000000000000 : ℚ), (-16742119/80000000 : ℚ), (40179223159/500000000000 : ℚ), 2⟩,
    ⟨(92344698941/200000000000 : ℚ), (-2314973129/10000000000 : ℚ), (11319165299/125000000000 : ℚ), 2⟩,
    ⟨(58348371871/125000000000 : ℚ), (-249723673/1000000000 : ℚ), (24753636367/250000000000 : ℚ), 2⟩,
    ⟨(471083295993/1000000000000 : ℚ), (-2643699011/10000000000 : ℚ), (105882419533/1000000000000 : ℚ), 2⟩,
    ⟨(23728554093/50000000000 : ℚ), (-344687917/1250000000 : ℚ), (4450530787/40000000000 : ℚ), 2⟩,
    ⟨(119304185821/250000000000 : ℚ), (-355121973/1250000000 : ℚ), (115235619977/1000000000000 : ℚ), 2⟩,
    ⟨(4789948011/10000000000 : ℚ), (-2895756893/10000000000 : ℚ), (117854721061/1000000000000 : ℚ), 2⟩,
    ⟨(239944065819/500000000000 : ℚ), (-1461446419/5000000000 : ℚ), (29788932219/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-292627303/1000000000 : ℚ), (14914744899/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (312882473587/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control347.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control347.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate347

-- Control348
namespace DiagonalRamsey.JointInheritedCertificate348
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38607662933/125000000000 : ℚ), (508079954999/400000000 : ℚ), (-393161885434711/1000000000000 : ℚ), 12⟩,
    ⟨(2478249071/8000000000 : ℚ), (346531505263/2500000000 : ℚ), (-21733410871963/500000000000 : ℚ), 8⟩,
    ⟨(77902984057/250000000000 : ℚ), (242417014377/5000000000 : ℚ), (-15491137058269/1000000000000 : ℚ), 7⟩,
    ⟨(157168039447/500000000000 : ℚ), (2979057989/125000000 : ℚ), (-972930949187/125000000000 : ℚ), 6⟩,
    ⟨(79481831723/250000000000 : ℚ), (68945939369/5000000000 : ℚ), (-4611440688841/1000000000000 : ℚ), 5⟩,
    ⟨(16117554727/50000000000 : ℚ), (10960829111/1250000000 : ℚ), (-3005646690157/1000000000000 : ℚ), 5⟩,
    ⟨(40945597317/125000000000 : ℚ), (59236041299/10000000000 : ℚ), (-2081940243643/1000000000000 : ℚ), 4⟩,
    ⟨(166759084127/500000000000 : ℚ), (8336756579/2000000000 : ℚ), (-751128794671/500000000000 : ℚ), 4⟩,
    ⟨(340153929297/1000000000000 : ℚ), (241350021/80000000 : ℚ), (-1114703178501/1000000000000 : ℚ), 4⟩,
    ⟨(173704077829/500000000000 : ℚ), (11126998691/5000000000 : ℚ), (-210704155229/250000000000 : ℚ), 3⟩,
    ⟨(88802746293/250000000000 : ℚ), (166108159/100000000 : ℚ), (-322354106377/500000000000 : ℚ), 3⟩,
    ⟨(90871818081/250000000000 : ℚ), (12466183427/10000000000 : ℚ), (-495870456419/1000000000000 : ℚ), 3⟩,
    ⟨(372157311947/1000000000000 : ℚ), (4673268657/5000000000 : ℚ), (-381193505477/1000000000000 : ℚ), 3⟩,
    ⟨(381137606817/1000000000000 : ℚ), (6949335401/10000000000 : ℚ), (-290954343401/1000000000000 : ℚ), 3⟩,
    ⟨(97585417947/250000000000 : ℚ), (5074469303/10000000000 : ℚ), (-109335134737/500000000000 : ℚ), 3⟩,
    ⟨(399680866681/1000000000000 : ℚ), (3585676057/10000000000 : ℚ), (-39972064661/250000000000 : ℚ), 3⟩,
    ⟨(51133156243/125000000000 : ℚ), (477570563/2000000000 : ℚ), (-111471303567/1000000000000 : ℚ), 3⟩,
    ⟨(418404444837/1000000000000 : ℚ), (1413212107/10000000000 : ℚ), (-71161527713/1000000000000 : ℚ), 2⟩,
    ⟨(427608509807/1000000000000 : ℚ), (153138919/2500000000 : ℚ), (-3730384817/100000000000 : ℚ), 2⟩,
    ⟨(218294402339/500000000000 : ℚ), (-50381739/10000000000 : ℚ), (-8666123249/1000000000000 : ℚ), 2⟩,
    ⟨(4452588443/10000000000 : ℚ), (-301344843/5000000000 : ℚ), (15680891437/1000000000000 : ℚ), 2⟩,
    ⟨(453535131453/1000000000000 : ℚ), (-1064832289/10000000000 : ℚ), (18222741893/500000000000 : ℚ), 2⟩,
    ⟨(230668980483/500000000000 : ℚ), (-290482519/2000000000 : ℚ), (13543013451/250000000000 : ℚ), 2⟩,
    ⟨(468592187327/1000000000000 : ℚ), (-1777413913/10000000000 : ℚ), (8660198093/125000000000 : ℚ), 2⟩,
    ⟨(47522794837/100000000000 : ℚ), (-204908619/1000000000 : ℚ), (82100814507/1000000000000 : ℚ), 2⟩,
    ⟨(60147667261/125000000000 : ℚ), (-2274587001/10000000000 : ℚ), (18576713049/200000000000 : ℚ), 2⟩,
    ⟨(97279004417/200000000000 : ℚ), (-2459449883/10000000000 : ℚ), (50913264193/500000000000 : ℚ), 2⟩,
    ⟨(122704697433/250000000000 : ℚ), (-52158579/200000000 : ℚ), (5454052377/50000000000 : ℚ), 2⟩,
    ⟨(49441003773/100000000000 : ℚ), (-340406639/1250000000 : ℚ), (28690486859/250000000000 : ℚ), 2⟩,
    ⟨(497134180397/1000000000000 : ℚ), (-1403906349/5000000000 : ℚ), (118954120351/1000000000000 : ℚ), 2⟩,
    ⟨(1995859931/4000000000 : ℚ), (-1431647049/5000000000 : ℚ), (47545841/390625000 : ℚ), 2⟩,
    ⟨(499884813161/1000000000000 : ℚ), (-180673311/625000000 : ℚ), (123089714559/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2894195699/10000000000 : ℚ), (123260830979/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (151275597937/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control348.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control348.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate348

-- Control349
namespace DiagonalRamsey.JointInheritedCertificate349
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(238850069249/1000000000000 : ℚ), (5823859676941/5000000000 : ℚ), (-34856977496249/125000000000 : ℚ), 12⟩,
    ⟨(239625582579/1000000000000 : ℚ), (1269620041999/10000000000 : ℚ), (-30826750581543/1000000000000 : ℚ), 8⟩,
    ⟨(120584570311/500000000000 : ℚ), (88668812531/2000000000 : ℚ), (-10984280243183/1000000000000 : ℚ), 7⟩,
    ⟨(24346587807/100000000000 : ℚ), (54373749121/2500000000 : ℚ), (-2758645792511/500000000000 : ℚ), 6⟩,
    ⟨(123246838043/500000000000 : ℚ), (125556352033/10000000000 : ℚ), (-816822817099/250000000000 : ℚ), 5⟩,
    ⟨(6255584383/25000000000 : ℚ), (79642440873/10000000000 : ℚ), (-2128117159391/1000000000000 : ℚ), 5⟩,
    ⟨(25461905673/100000000000 : ℚ), (53651600237/10000000000 : ℚ), (-1472684339663/1000000000000 : ℚ), 4⟩,
    ⟨(20771071/80000000 : ℚ), (37634361823/10000000000 : ℚ), (-1061214593169/1000000000000 : ℚ), 4⟩,
    ⟨(265233028731/1000000000000 : ℚ), (2713724567/1000000000 : ℚ), (-157194813061/200000000000 : ℚ), 4⟩,
    ⟨(27134910097/100000000000 : ℚ), (19928640539/10000000000 : ℚ), (-592733430877/1000000000000 : ℚ), 3⟩,
    ⟨(138963851549/500000000000 : ℚ), (7396241283/5000000000 : ℚ), (-18071355861/40000000000 : ℚ), 3⟩,
    ⟨(14245273979/50000000000 : ℚ), (1102176793/1000000000 : ℚ), (-172872956013/500000000000 : ℚ), 3⟩,
    ⟨(58443046123/200000000000 : ℚ), (2045936407/2500000000 : ℚ), (-263905957137/1000000000000 : ℚ), 3⟩,
    ⟨(299786559303/1000000000000 : ℚ), (375139251/625000000 : ℚ), (-199371771957/1000000000000 : ℚ), 3⟩,
    ⟨(307546549611/1000000000000 : ℚ), (2147379003/5000000000 : ℚ), (-36887469153/250000000000 : ℚ), 3⟩,
    ⟨(31542046859/100000000000 : ℚ), (1468632969/5000000000 : ℚ), (-10528686727/100000000000 : ℚ), 3⟩,
    ⟨(64666497219/200000000000 : ℚ), (368659511/2000000000 : ℚ), (-70363195587/1000000000000 : ℚ), 3⟩,
    ⟨(165603202537/500000000000 : ℚ), (951340883/10000000000 : ℚ), (-2573952581/62500000000 : ℚ), 2⟩,
    ⟨(169483197691/500000000000 : ℚ), (216841467/10000000000 : ℚ), (-8289622907/500000000000 : ℚ), 2⟩,
    ⟨(346537724071/1000000000000 : ℚ), (-7859421/200000000 : ℚ), (4316332319/1000000000000 : ℚ), 2⟩,
    ⟨(70769495021/200000000000 : ℚ), (-90251781/1000000000 : ℚ), (22156053283/1000000000000 : ℚ), 2⟩,
    ⟨(360825251587/1000000000000 : ℚ), (-665100447/5000000000 : ℚ), (37435715661/1000000000000 : ℚ), 2⟩,
    ⟨(73480770743/200000000000 : ℚ), (-52812949/312500000 : ℚ), (2021397689/40000000000 : ℚ), 2⟩,
    ⟨(186759962977/500000000000 : ℚ), (-249084621/1250000000 : ℚ), (61745997611/1000000000000 : ℚ), 2⟩,
    ⟨(189557283593/500000000000 : ℚ), (-1123220111/5000000000 : ℚ), (35647295039/500000000000 : ℚ), 2⟩,
    ⟨(96033474489/250000000000 : ℚ), (-2457672303/10000000000 : ℚ), (79355108167/1000000000000 : ℚ), 2⟩,
    ⟨(77705915873/200000000000 : ℚ), (-526256821/2000000000 : ℚ), (43030957411/500000000000 : ℚ), 2⟩,
    ⟨(392259278599/1000000000000 : ℚ), (-2771042343/10000000000 : ℚ), (714982757/7812500000 : ℚ), 2⟩,
    ⟨(79057415323/200000000000 : ℚ), (-287980013/1000000000 : ℚ), (23950070137/250000000000 : ℚ), 2⟩,
    ⟨(397583814063/1000000000000 : ℚ), (-2959665937/10000000000 : ℚ), (49483201017/500000000000 : ℚ), 2⟩,
    ⟨(199563686053/500000000000 : ℚ), (-3012125251/10000000000 : ℚ), (25264033959/250000000000 : ℚ), 2⟩,
    ⟨(99975721359/250000000000 : ℚ), (-1519062323/5000000000 : ℚ), (10209484949/100000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-30413639/100000000 : ℚ), (102224403937/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (1102070427/3125000000 : ℚ)
  μ := (2/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control349.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control349.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate349

-- Control350
namespace DiagonalRamsey.JointInheritedCertificate350
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31548528017/125000000000 : ℚ), (11833991136037/10000000000 : ℚ), (-29936366040721/100000000000 : ℚ), 12⟩,
    ⟨(126597417133/500000000000 : ℚ), (1290201562319/10000000000 : ℚ), (-8273583200279/250000000000 : ℚ), 8⟩,
    ⟨(63700071607/250000000000 : ℚ), (450671476501/10000000000 : ℚ), (-1474081290441/125000000000 : ℚ), 7⟩,
    ⟨(257189119241/1000000000000 : ℚ), (6911629947/312500000 : ℚ), (-59236444769/10000000000 : ℚ), 6⟩,
    ⟨(130169163469/500000000000 : ℚ), (127732876817/10000000000 : ℚ), (-877054213/250000000 : ℚ), 5⟩,
    ⟨(264217580929/1000000000000 : ℚ), (5066307739/625000000 : ℚ), (-91412650743/40000000000 : ℚ), 5⟩,
    ⟨(268789521877/1000000000000 : ℚ), (27317838841/5000000000 : ℚ), (-316348258493/200000000000 : ℚ), 4⟩,
    ⟨(274010119491/1000000000000 : ℚ), (19173719103/5000000000 : ℚ), (-1140079978131/1000000000000 : ℚ), 4⟩,
    ⟨(279829096563/1000000000000 : ℚ), (27670699373/10000000000 : ℚ), (-844675306803/1000000000000 : ℚ), 4⟩,
    ⟨(286190413161/1000000000000 : ℚ), (406751287/200000000 : ℚ), (-637309457143/1000000000000 : ℚ), 3⟩,
    ⟨(29303280633/100000000000 : ℚ), (3022412683/2000000000 : ℚ), (-121522072979/250000000000 : ℚ), 3⟩,
    ⟨(75072595021/250000000000 : ℚ), (11275523701/10000000000 : ℚ), (-46544188327/125000000000 : ℚ), 3⟩,
    ⟨(153946620009/500000000000 : ℚ), (838797973/1000000000 : ℚ), (-142301468659/500000000000 : ℚ), 3⟩,
    ⟨(315768166437/1000000000000 : ℚ), (24674337/40000000 : ℚ), (-215436585889/1000000000000 : ℚ), 3⟩,
    ⟨(161919659747/500000000000 : ℚ), (4431758821/10000000000 : ℚ), (-159922179687/1000000000000 : ℚ), 3⟩,
    ⟨(332028969573/1000000000000 : ℚ), (3051277297/10000000000 : ℚ), (-22934665063/200000000000 : ℚ), 3⟩,
    ⟨(170129122933/500000000000 : ℚ), (1939155723/10000000000 : ℚ), (-77306069707/1000000000000 : ℚ), 3⟩,
    ⟨(69689579189/200000000000 : ℚ), (516386091/5000000000 : ℚ), (-9221238761/200000000000 : ℚ), 2⟩,
    ⟨(178259524501/500000000000 : ℚ), (17921937/625000000 : ℚ), (-3963748471/200000000000 : ℚ), 2⟩,
    ⟨(364393975421/1000000000000 : ℚ), (-16614803/500000000 : ℚ), (497797947/200000000000 : ℚ), 2⟩,
    ⟨(92999208839/250000000000 : ℚ), (-849261611/10000000000 : ℚ), (21518941361/1000000000000 : ℚ), 2⟩,
    ⟨(379254409109/1000000000000 : ℚ), (-641455911/5000000000 : ℚ), (37804764773/1000000000000 : ℚ), 2⟩,
    ⟨(193048401139/500000000000 : ℚ), (-823762281/5000000000 : ℚ), (51755373063/1000000000000 : ℚ), 2⟩,
    ⟨(392458118877/1000000000000 : ℚ), (-3816487/19531250 : ℚ), (15921463419/250000000000 : ℚ), 2⟩,
    ⟨(99569273987/250000000000 : ℚ), (-138180583/625000000 : ℚ), (73839777197/1000000000000 : ℚ), 2⟩,
    ⟨(201748846781/500000000000 : ℚ), (-606143831/2500000000 : ℚ), (5150345801/62500000000 : ℚ), 2⟩,
    ⟨(40806963451/100000000000 : ℚ), (-260011939/1000000000 : ℚ), (89528433959/1000000000000 : ℚ), 2⟩,
    ⟨(411948888501/1000000000000 : ℚ), (-2741373537/10000000000 : ℚ), (95319766837/1000000000000 : ℚ), 2⟩,
    ⟨(415098096199/1000000000000 : ℚ), (-1425628267/5000000000 : ℚ), (12482947311/125000000000 : ℚ), 2⟩,
    ⟨(104371732253/250000000000 : ℚ), (-146596301/500000000 : ℚ), (25805436013/250000000000 : ℚ), 2⟩,
    ⟨(209546190587/500000000000 : ℚ), (-2984902483/10000000000 : ℚ), (13179710207/125000000000 : ℚ), 2⟩,
    ⟨(419898991303/1000000000000 : ℚ), (-3011154963/10000000000 : ℚ), (53269480133/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3014425597/10000000000 : ℚ), (2666907759/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (42867029799/125000000000 : ℚ)
  μ := (21/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control350.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control350.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate350

-- Control351
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

-- Control352
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

-- Control353
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

-- Control354
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
