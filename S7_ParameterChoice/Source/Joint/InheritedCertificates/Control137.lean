import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate137
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(317681669057/1000000000000 : ℚ), (51060085853563/10000000000 : ℚ), (-1623358214313163/1000000000000 : ℚ), 13⟩,
    ⟨(158980732257/500000000000 : ℚ), (225538274629/400000000 : ℚ), (-18016249858817/100000000000 : ℚ), 10⟩,
    ⟨(4976880959/15625000000 : ℚ), (401895148647/2000000000 : ℚ), (-16176712086221/250000000000 : ℚ), 8⟩,
    ⟨(319357073163/1000000000000 : ℚ), (10118412699/100000000 : ℚ), (-32897645419169/1000000000000 : ℚ), 7⟩,
    ⟨(320469524211/1000000000000 : ℚ), (602543393741/10000000000 : ℚ), (-19807445374469/1000000000000 : ℚ), 7⟩,
    ⟨(321855054529/1000000000000 : ℚ), (99040949517/2500000000 : ℚ), (-2636242825177/200000000000 : ℚ), 6⟩,
    ⟨(80877581563/250000000000 : ℚ), (27802473299/1000000000 : ℚ), (-2342539077219/250000000000 : ℚ), 6⟩,
    ⟨(162715675843/500000000000 : ℚ), (25539028507/1250000000 : ℚ), (-6979074371541/1000000000000 : ℚ), 5⟩,
    ⟨(327613502913/1000000000000 : ℚ), (155358865489/10000000000 : ℚ), (-1345270550697/250000000000 : ℚ), 5⟩,
    ⟨(330051522939/1000000000000 : ℚ), (7579697501/625000000 : ℚ), (-4260606779839/1000000000000 : ℚ), 5⟩,
    ⟨(8318488459/25000000000 : ℚ), (96649341659/10000000000 : ℚ), (-137789546691/40000000000 : ℚ), 4⟩,
    ⟨(335671073511/1000000000000 : ℚ), (39159536379/5000000000 : ℚ), (-2832294008133/1000000000000 : ℚ), 4⟩,
    ⟨(84709766517/250000000000 : ℚ), (64336919139/10000000000 : ℚ), (-295107700579/125000000000 : ℚ), 4⟩,
    ⟨(17111794203/50000000000 : ℚ), (53451004751/10000000000 : ℚ), (-1990249966067/1000000000000 : ℚ), 4⟩,
    ⟨(345853344253/1000000000000 : ℚ), (11206815059/2500000000 : ℚ), (-1693628640237/1000000000000 : ℚ), 4⟩,
    ⟨(34968273187/100000000000 : ℚ), (7578578181/2000000000 : ℚ), (-363133022689/250000000000 : ℚ), 3⟩,
    ⟨(17685741079/50000000000 : ℚ), (1612209109/500000000 : ℚ), (-313478687999/250000000000 : ℚ), 3⟩,
    ⟨(357939899727/1000000000000 : ℚ), (6897528379/2500000000 : ℚ), (-1088348385241/1000000000000 : ℚ), 3⟩,
    ⟨(181173893863/500000000000 : ℚ), (23716730751/10000000000 : ℚ), (-948882052849/1000000000000 : ℚ), 3⟩,
    ⟨(36692786659/100000000000 : ℚ), (20463984809/10000000000 : ℚ), (-103787536327/125000000000 : ℚ), 3⟩,
    ⟨(371669102507/1000000000000 : ℚ), (553446633/312500000 : ℚ), (-364314052569/500000000000 : ℚ), 3⟩,
    ⟨(15062402937/40000000000 : ℚ), (3072402283/2000000000 : ℚ), (-640793212173/1000000000000 : ℚ), 3⟩,
    ⟨(381588996567/1000000000000 : ℚ), (1668265589/1250000000 : ℚ), (-141097729471/250000000000 : ℚ), 3⟩,
    ⟨(77348751363/200000000000 : ℚ), (11605058409/10000000000 : ℚ), (-62189685103/125000000000 : ℚ), 3⟩,
    ⟨(196005967951/500000000000 : ℚ), (10092955497/10000000000 : ℚ), (-438650072323/1000000000000 : ℚ), 3⟩,
    ⟨(198690421161/500000000000 : ℚ), (4386477159/5000000000 : ℚ), (-96639753911/250000000000 : ℚ), 2⟩,
    ⟨(402837541909/1000000000000 : ℚ), (1523034927/2000000000 : ℚ), (-2658146497/7812500000 : ℚ), 2⟩,
    ⟨(408368888997/1000000000000 : ℚ), (6595208761/10000000000 : ℚ), (-298879043203/1000000000000 : ℚ), 2⟩,
    ⟨(82792311617/200000000000 : ℚ), (5692978229/10000000000 : ℚ), (-16361746589/62500000000 : ℚ), 2⟩,
    ⟨(52450259493/125000000000 : ℚ), (1222964587/2500000000 : ℚ), (-22840340553/100000000000 : ℚ), 2⟩,
    ⟨(425276854073/1000000000000 : ℚ), (4178001373/10000000000 : ℚ), (-7930050713/40000000000 : ℚ), 2⟩,
    ⟨(430972221433/1000000000000 : ℚ), (176990427/500000000 : ℚ), (-85466042421/500000000000 : ℚ), 2⟩,
    ⟨(218337228693/500000000000 : ℚ), (2967514769/10000000000 : ℚ), (-146107568817/1000000000000 : ℚ), 2⟩,
    ⟨(221184912373/500000000000 : ℚ), (2452859473/10000000000 : ℚ), (-964764293/7812500000 : ℚ), 2⟩,
    ⟨(3584356823/8000000000 : ℚ), (79552949/400000000 : ℚ), (-10283276133/100000000000 : ℚ), 2⟩,
    ⟨(226842560367/500000000000 : ℚ), (1569418987/10000000000 : ℚ), (-1049063781/12500000000 : ℚ), 2⟩,
    ⟨(229638894911/500000000000 : ℚ), (59475811/500000000 : ℚ), (-6658480559/100000000000 : ℚ), 2⟩,
    ⟨(46480913691/100000000000 : ℚ), (211176707/2500000000 : ℚ), (-25327221463/500000000000 : ℚ), 2⟩,
    ⟨(470265836497/1000000000000 : ℚ), (265594451/5000000000 : ℚ), (-35997436609/1000000000000 : ℚ), 2⟩,
    ⟨(475634742917/1000000000000 : ℚ), (245673647/10000000000 : ℚ), (-22494945807/1000000000000 : ℚ), 2⟩,
    ⟨(120225730501/250000000000 : ℚ), (-2938387/2000000000 : ℚ), (-10043286091/1000000000000 : ℚ), 2⟩,
    ⟨(121514420563/250000000000 : ℚ), (-50477849/2000000000 : ℚ), (14482227/10000000000 : ℚ), 2⟩,
    ⟨(245543302697/500000000000 : ℚ), (-469581603/10000000000 : ℚ), (6029528641/500000000000 : ℚ), 2⟩,
    ⟨(61997197039/125000000000 : ℚ), (-668159061/10000000000 : ℚ), (21859006793/1000000000000 : ℚ), 2⟩,
    ⟨(500718812229/1000000000000 : ℚ), (-849776049/10000000000 : ℚ), (7727362947/250000000000 : ℚ), 2⟩,
    ⟨(505298891093/1000000000000 : ℚ), (-1625413/16000000 : ℚ), (19632224503/500000000000 : ℚ), 2⟩,
    ⟨(127426694773/250000000000 : ℚ), (-116775383/1000000000 : ℚ), (11742913417/250000000000 : ℚ), 2⟩,
    ⟨(513931857239/1000000000000 : ℚ), (-653253739/5000000000 : ℚ), (54073107007/1000000000000 : ℚ), 2⟩,
    ⟨(517963946949/1000000000000 : ℚ), (-179141069/1250000000 : ℚ), (12121182231/200000000000 : ℚ), 2⟩,
    ⟨(260896667283/500000000000 : ℚ), (-309696647/2000000000 : ℚ), (13320561459/200000000000 : ℚ), 2⟩,
    ⟨(13135269869/25000000000 : ℚ), (-413333387/2500000000 : ℚ), (18023168571/250000000000 : ℚ), 2⟩,
    ⟨(528807612751/1000000000000 : ℚ), (-34966989/200000000 : ℚ), (19275239567/250000000000 : ℚ), 2⟩,
    ⟨(132993901327/250000000000 : ℚ), (-229264901/1250000000 : ℚ), (81650043599/1000000000000 : ℚ), 2⟩,
    ⟨(26745357023/50000000000 : ℚ), (-1911158293/10000000000 : ℚ), (42879786867/500000000000 : ℚ), 2⟩,
    ⟨(537595155881/1000000000000 : ℚ), (-989958501/5000000000 : ℚ), (8944672797/100000000000 : ℚ), 2⟩,
    ⟨(270016587953/500000000000 : ℚ), (-204078699/1000000000 : ℚ), (5795403801/62500000000 : ℚ), 2⟩,
    ⟨(542215327133/1000000000000 : ℚ), (-2094106851/10000000000 : ℚ), (23902927053/250000000000 : ℚ), 2⟩,
    ⟨(544136352567/1000000000000 : ℚ), (-2140166859/10000000000 : ℚ), (98113563579/1000000000000 : ℚ), 2⟩,
    ⟨(545791624291/1000000000000 : ℚ), (-272401623/1250000000 : ℚ), (50120714343/500000000000 : ℚ), 2⟩,
    ⟨(34198572163/62500000000 : ℚ), (-2211450247/10000000000 : ℚ), (102003140147/1000000000000 : ℚ), 2⟩,
    ⟨(548289605657/1000000000000 : ℚ), (-223704549/1000000000 : ℚ), (103405074733/1000000000000 : ℚ), 2⟩,
    ⟨(137281574361/250000000000 : ℚ), (-1128064803/5000000000 : ℚ), (5222611717/50000000000 : ℚ), 2⟩,
    ⟨(109937042861/200000000000 : ℚ), (-1134399643/5000000000 : ℚ), (105148313581/1000000000000 : ℚ), 2⟩,
    ⟨(274982504881/500000000000 : ℚ), (-2275118289/10000000000 : ℚ), (52747874081/500000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-71122107/312500000 : ℚ), (52769574599/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (117160660943/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control137.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control137.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate137
