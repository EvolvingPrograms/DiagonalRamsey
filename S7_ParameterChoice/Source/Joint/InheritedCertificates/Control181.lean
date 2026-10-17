import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate181
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80378280441/250000000000 : ℚ), (50208573777273/10000000000 : ℚ), (-807751971386583/500000000000 : ℚ), 13⟩,
    ⟨(321788302763/1000000000000 : ℚ), (2772569531751/5000000000 : ℚ), (-179289779147651/1000000000000 : ℚ), 10⟩,
    ⟨(161169000913/500000000000 : ℚ), (39532048413/200000000 : ℚ), (-16098161257241/250000000000 : ℚ), 9⟩,
    ⟨(8079022367/25000000000 : ℚ), (497761974971/5000000000 : ℚ), (-32737312368491/1000000000000 : ℚ), 8⟩,
    ⟨(40531874863/125000000000 : ℚ), (296491887983/5000000000 : ℚ), (-985521309703/50000000000 : ℚ), 7⟩,
    ⟨(65123535741/200000000000 : ℚ), (77997848093/2000000000 : ℚ), (-13116236810319/1000000000000 : ℚ), 6⟩,
    ⟨(327245651269/1000000000000 : ℚ), (68443094417/2500000000 : ℚ), (-932360023459/100000000000 : ℚ), 6⟩,
    ⟨(65826998933/200000000000 : ℚ), (201247884953/10000000000 : ℚ), (-6944068475339/1000000000000 : ℚ), 5⟩,
    ⟨(165640578651/500000000000 : ℚ), (38268726633/2500000000 : ℚ), (-1070757651451/200000000000 : ℚ), 5⟩,
    ⟨(83419742221/250000000000 : ℚ), (4781114321/400000000 : ℚ), (-529839178653/125000000000 : ℚ), 5⟩,
    ⟨(168161326437/500000000000 : ℚ), (93051239/9765625 : ℚ), (-21417320613/6250000000 : ℚ), 5⟩,
    ⟨(169602920203/500000000000 : ℚ), (4827160831/625000000 : ℚ), (-1408633891131/500000000000 : ℚ), 4⟩,
    ⟨(342321585629/1000000000000 : ℚ), (15865694837/2500000000 : ℚ), (-2348093897791/1000000000000 : ℚ), 4⟩,
    ⟨(172831191219/500000000000 : ℚ), (26368873041/5000000000 : ℚ), (-1979252876173/1000000000000 : ℚ), 4⟩,
    ⟨(349220182563/1000000000000 : ℚ), (2764939981/625000000 : ℚ), (-842022171931/500000000000 : ℚ), 4⟩,
    ⟨(7059728299/20000000000 : ℚ), (7480638907/2000000000 : ℚ), (-1444092366339/1000000000000 : ℚ), 4⟩,
    ⟨(22309500401/62500000000 : ℚ), (31833043761/10000000000 : ℚ), (-1246414743581/1000000000000 : ℚ), 3⟩,
    ⟨(72221480701/200000000000 : ℚ), (27242264831/10000000000 : ℚ), (-540814542167/500000000000 : ℚ), 3⟩,
    ⟨(730885191/2000000000 : ℚ), (731885611/312500000 : ℚ), (-117852286509/125000000000 : ℚ), 3⟩,
    ⟨(23121696159/62500000000 : ℚ), (4041954851/2000000000 : ℚ), (-824792323881/1000000000000 : ℚ), 3⟩,
    ⟨(374610180799/1000000000000 : ℚ), (17490914231/10000000000 : ℚ), (-45224723831/62500000000 : ℚ), 3⟩,
    ⟨(189710244293/500000000000 : ℚ), (15171592607/10000000000 : ℚ), (-636170781567/1000000000000 : ℚ), 3⟩,
    ⟨(76873294691/200000000000 : ℚ), (1317993261/1000000000 : ℚ), (-56012497587/100000000000 : ℚ), 3⟩,
    ⟨(389436220093/1000000000000 : ℚ), (229185041/200000000 : ℚ), (-123390929413/250000000000 : ℚ), 3⟩,
    ⟨(394617515037/1000000000000 : ℚ), (9964397077/10000000000 : ℚ), (-434971604187/1000000000000 : ℚ), 3⟩,
    ⟨(399897876093/1000000000000 : ℚ), (865906517/1000000000 : ℚ), (-383124941753/1000000000000 : ℚ), 3⟩,
    ⟨(40526458241/100000000000 : ℚ), (7513823967/10000000000 : ℚ), (-337027026243/1000000000000 : ℚ), 3⟩,
    ⟨(205352352561/500000000000 : ℚ), (6504626907/10000000000 : ℚ), (-147929793051/500000000000 : ℚ), 2⟩,
    ⟨(6503205289/15625000000 : ℚ), (5611688427/10000000000 : ℚ), (-129472966413/500000000000 : ℚ), 2⟩,
    ⟨(421752631507/1000000000000 : ℚ), (4818622673/10000000000 : ℚ), (-45144540009/200000000000 : ℚ), 2⟩,
    ⟨(427333819759/1000000000000 : ℚ), (2055888799/5000000000 : ℚ), (-12232372339/62500000000 : ℚ), 2⟩,
    ⟨(432935257679/1000000000000 : ℚ), (695943097/2000000000 : ℚ), (-168534106177/1000000000000 : ℚ), 2⟩,
    ⟨(219271725457/500000000000 : ℚ), (18205027/62500000 : ℚ), (-71917199353/500000000000 : ℚ), 2⟩,
    ⟨(222072444417/500000000000 : ℚ), (300361733/1250000000 : ℚ), (-12133223029/100000000000 : ℚ), 2⟩,
    ⟨(224863038543/500000000000 : ℚ), (971528503/5000000000 : ℚ), (-100782569729/1000000000000 : ℚ), 2⟩,
    ⟨(455273570097/1000000000000 : ℚ), (1527381847/10000000000 : ℚ), (-40987527111/500000000000 : ℚ), 2⟩,
    ⟨(460774003471/1000000000000 : ℚ), (1150803503/10000000000 : ℚ), (-4045524291/62500000000 : ℚ), 2⟩,
    ⟨(466214126183/1000000000000 : ℚ), (20224181/250000000 : ℚ), (-12221443897/250000000000 : ℚ), 2⟩,
    ⟨(188632333/400000000 : ℚ), (498116481/10000000000 : ℚ), (-3431116421/100000000000 : ℚ), 2⟩,
    ⟨(476861193557/1000000000000 : ℚ), (215000689/10000000000 : ℚ), (-20886154869/1000000000000 : ℚ), 2⟩,
    ⟨(482042488501/1000000000000 : ℚ), (-8640153/2000000000 : ℚ), (-8507432107/1000000000000 : ℚ), 2⟩,
    ⟨(487112235139/1000000000000 : ℚ), (-139470913/5000000000 : ℚ), (583075159/200000000000 : ℚ), 2⟩,
    ⟨(492058220007/1000000000000 : ℚ), (-494362467/10000000000 : ℚ), (2692297587/200000000000 : ℚ), 2⟩,
    ⟨(99373705559/200000000000 : ℚ), (-691332837/10000000000 : ℚ), (2900059797/125000000000 : ℚ), 2⟩,
    ⟨(501531570049/1000000000000 : ℚ), (-871490353/10000000000 : ℚ), (32193547907/1000000000000 : ℚ), 2⟩,
    ⟨(506036113093/1000000000000 : ℚ), (-207254199/2000000000 : ℚ), (2530912697/62500000000 : ℚ), 2⟩,
    ⟨(3987275821/7812500000 : ℚ), (-37091743/312500000 : ℚ), (1504724169/31250000000 : ℚ), 2⟩,
    ⟨(514526702177/1000000000000 : ℚ), (-52983729/400000000 : ℚ), (11041038997/200000000000 : ℚ), 2⟩,
    ⟨(518492293643/1000000000000 : ℚ), (-181277313/1250000000 : ℚ), (61693680919/1000000000000 : ℚ), 2⟩,
    ⟨(522258526031/1000000000000 : ℚ), (-782334867/5000000000 : ℚ), (33824648853/500000000000 : ℚ), 2⟩,
    ⟨(105163265231/200000000000 : ℚ), (-1668701943/10000000000 : ℚ), (73100860689/1000000000000 : ℚ), 2⟩,
    ⟨(105831424593/200000000000 : ℚ), (-352595803/2000000000 : ℚ), (78073761731/1000000000000 : ℚ), 2⟩,
    ⟨(532272868187/1000000000000 : ℚ), (-924041967/5000000000 : ℚ), (82590338497/1000000000000 : ℚ), 2⟩,
    ⟨(535156055719/1000000000000 : ℚ), (-962263789/5000000000 : ℚ), (3466807771/40000000000 : ℚ), 2⟩,
    ⟨(537799739709/1000000000000 : ℚ), (-498189063/2500000000 : ℚ), (22582618339/250000000000 : ℚ), 2⟩,
    ⟨(135049387823/250000000000 : ℚ), (-1026579077/5000000000 : ℚ), (46793050063/500000000000 : ℚ), 2⟩,
    ⟨(67792964241/125000000000 : ℚ), (-263258611/1250000000 : ℚ), (96449983597/1000000000000 : ℚ), 2⟩,
    ⟨(21769322293/40000000000 : ℚ), (-1075888087/5000000000 : ℚ), (98933194751/1000000000000 : ℚ), 2⟩,
    ⟨(133266853/244140625 : ℚ), (-68453869/312500000 : ℚ), (25261278793/250000000000 : ℚ), 2⟩,
    ⟨(547223709689/1000000000000 : ℚ), (-2222515001/10000000000 : ℚ), (102793564893/1000000000000 : ℚ), 2⟩,
    ⟨(548317813913/1000000000000 : ℚ), (-561978779/2500000000 : ℚ), (52092453309/500000000000 : ℚ), 2⟩,
    ⟨(549140706767/1000000000000 : ℚ), (-2266853887/10000000000 : ℚ), (105224131447/1000000000000 : ℚ), 2⟩,
    ⟨(549690405831/1000000000000 : ℚ), (-1139713571/5000000000 : ℚ), (26478731333/250000000000 : ℚ), 2⟩,
    ⟨(54996558683/100000000000 : ℚ), (-91427923/400000000 : ℚ), (21251943753/200000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-285810151/1250000000 : ℚ), (106302789739/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (252165119899/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control181.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control181.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate181
