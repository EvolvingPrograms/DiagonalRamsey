import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate16
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(304728427053/1000000000000 : ℚ), (4794252195999/1250000000 : ℚ), (-1170332318929469/1000000000000 : ℚ), 12⟩,
    ⟨(305204477263/1000000000000 : ℚ), (4220468294663/10000000000 : ℚ), (-25977425014191/200000000000 : ℚ), 9⟩,
    ⟨(76538857709/250000000000 : ℚ), (1496114002747/10000000000 : ℚ), (-5831467150043/125000000000 : ℚ), 7⟩,
    ⟨(307578996843/1000000000000 : ℚ), (374219564111/5000000000 : ℚ), (-474396508347/20000000000 : ℚ), 6⟩,
    ⟨(77367936447/250000000000 : ℚ), (442418629997/10000000000 : ℚ), (-14283142054797/1000000000000 : ℚ), 5⟩,
    ⟨(19489319867/62500000000 : ℚ), (28858253553/1000000000 : ℚ), (-2376660172303/250000000000 : ℚ), 5⟩,
    ⟨(314645433981/1000000000000 : ℚ), (200845935083/10000000000 : ℚ), (-54078262731/8000000000 : ℚ), 4⟩,
    ⟨(317913909361/1000000000000 : ℚ), (36584947203/2500000000 : ℚ), (-5036718894033/1000000000000 : ℚ), 4⟩,
    ⟨(32162666997/100000000000 : ℚ), (110320706871/10000000000 : ℚ), (-485687307017/125000000000 : ℚ), 4⟩,
    ⟨(325774771441/1000000000000 : ℚ), (85381608691/10000000000 : ℚ), (-3078606042667/1000000000000 : ℚ), 3⟩,
    ⟨(82587055159/250000000000 : ℚ), (67473176749/10000000000 : ℚ), (-2491376531737/1000000000000 : ℚ), 3⟩,
    ⟨(167667999857/500000000000 : ℚ), (1084637467/200000000 : ℚ), (-1025426957247/500000000000 : ℚ), 3⟩,
    ⟨(170363046339/500000000000 : ℚ), (5525503001/1250000000 : ℚ), (-1712034680221/1000000000000 : ℚ), 3⟩,
    ⟨(86626378581/250000000000 : ℚ), (9114121391/2500000000 : ℚ), (-722967217507/500000000000 : ℚ), 3⟩,
    ⟨(352660341517/1000000000000 : ℚ), (3796067059/1250000000 : ℚ), (-1233201551421/1000000000000 : ℚ), 2⟩,
    ⟨(359175746739/1000000000000 : ℚ), (5102931773/2000000000 : ℚ), (-16570553489/15625000000 : ℚ), 2⟩,
    ⟨(36603603381/100000000000 : ℚ), (21595540759/10000000000 : ℚ), (-229615863147/250000000000 : ℚ), 2⟩,
    ⟨(373224675697/1000000000000 : ℚ), (4598975947/2500000000 : ℚ), (-160048306629/200000000000 : ℚ), 2⟩,
    ⟨(380724354331/1000000000000 : ℚ), (7878937049/5000000000 : ℚ), (-175208052811/250000000000 : ℚ), 2⟩,
    ⟨(38851700233/100000000000 : ℚ), (2712736543/2000000000 : ℚ), (-308234949267/500000000000 : ℚ), 2⟩,
    ⟨(198291923261/500000000000 : ℚ), (293103539/250000000 : ℚ), (-544284009887/1000000000000 : ℚ), 2⟩,
    ⟨(404905453173/1000000000000 : ℚ), (2542698511/2500000000 : ℚ), (-482055443967/1000000000000 : ℚ), 2⟩,
    ⟨(103365443701/250000000000 : ℚ), (885046111/1000000000 : ℚ), (-428047050377/1000000000000 : ℚ), 2⟩,
    ⟨(422232198487/1000000000000 : ℚ), (1544276651/2000000000 : ℚ), (-47610431939/125000000000 : ℚ), 2⟩,
    ⟨(215597797751/500000000000 : ℚ), (1350089409/2000000000 : ℚ), (-169732238181/500000000000 : ℚ), 2⟩,
    ⟨(220165186121/500000000000 : ℚ), (2955580897/5000000000 : ℚ), (-302901799631/1000000000000 : ℚ), 2⟩,
    ⟨(112403630557/250000000000 : ℚ), (259108183/500000000 : ℚ), (-33809005273/125000000000 : ℚ), 2⟩,
    ⟨(459025679131/1000000000000 : ℚ), (4546096101/10000000000 : ℚ), (-48316303823/200000000000 : ℚ), 1⟩,
    ⟨(58567646331/125000000000 : ℚ), (3988762573/10000000000 : ℚ), (-215739493029/1000000000000 : ℚ), 1⟩,
    ⟨(59767259141/125000000000 : ℚ), (3498478659/10000000000 : ℚ), (-192537647509/1000000000000 : ℚ), 1⟩,
    ⟨(60974158349/125000000000 : ℚ), (1532785993/5000000000 : ℚ), (-171634181159/1000000000000 : ℚ), 1⟩,
    ⟨(497483491433/1000000000000 : ℚ), (2681992833/10000000000 : ℚ), (-30548273733/200000000000 : ℚ), 1⟩,
    ⟨(507185402451/1000000000000 : ℚ), (585252121/2500000000 : ℚ), (-13561575103/100000000000 : ℚ), 1⟩,
    ⟨(516875627091/1000000000000 : ℚ), (1018480759/5000000000 : ℚ), (-60025168843/500000000000 : ℚ), 1⟩,
    ⟨(105306164151/200000000000 : ℚ), (1765077333/10000000000 : ℚ), (-105868361733/1000000000000 : ℚ), 1⟩,
    ⟨(134031930809/250000000000 : ℚ), (190163737/1250000000 : ℚ), (-11614780667/125000000000 : ℚ), 1⟩,
    ⟨(545643214753/1000000000000 : ℚ), (651108687/5000000000 : ℚ), (-81069513089/1000000000000 : ℚ), 1⟩,
    ⟨(69381796457/125000000000 : ℚ), (276215327/2500000000 : ℚ), (-70209456079/1000000000000 : ℚ), 1⟩,
    ⟨(282169260821/500000000000 : ℚ), (23168111/250000000 : ℚ), (-60240392431/1000000000000 : ℚ), 1⟩,
    ⟨(573473298381/1000000000000 : ℚ), (765643419/10000000000 : ℚ), (-51077406187/1000000000000 : ℚ), 1⟩,
    ⟨(582436695397/1000000000000 : ℚ), (309876721/5000000000 : ℚ), (-5330808983/125000000000 : ℚ), 1⟩,
    ⟨(591207119079/1000000000000 : ℚ), (243721257/5000000000 : ℚ), (-34882891077/1000000000000 : ℚ), 1⟩,
    ⟨(59976344071/100000000000 : ℚ), (367313507/10000000000 : ℚ), (-13864991973/500000000000 : ℚ), 1⟩,
    ⟨(304042523681/500000000000 : ℚ), (129076289/5000000000 : ℚ), (-5284497567/250000000000 : ℚ), 1⟩,
    ⟨(308075945777/500000000000 : ℚ), (158902773/10000000000 : ℚ), (-15063141359/1000000000000 : ℚ), 1⟩,
    ⟨(623944539553/1000000000000 : ℚ), (8580239/1250000000 : ℚ), (-2366718929/250000000000 : ℚ), 1⟩,
    ⟨(631444218187/1000000000000 : ℚ), (-6718003/5000000000 : ℚ), (-4315172621/1000000000000 : ℚ), 1⟩,
    ⟨(638632860073/1000000000000 : ℚ), (-88036477/10000000000 : ℚ), (105503771/250000000000 : ℚ), 1⟩,
    ⟨(80686643393/125000000000 : ℚ), (-77888867/5000000000 : ℚ), (74550699/15625000000 : ℚ), 1⟩,
    ⟨(652008552367/1000000000000 : ℚ), (-43440393/2000000000 : ℚ), (273624941/31250000000 : ℚ), 1⟩,
    ⟨(16454084489/25000000000 : ℚ), (-272784821/10000000000 : ℚ), (1239703509/100000000000 : ℚ), 1⟩,
    ⟨(132788560241/200000000000 : ℚ), (-322943501/10000000000 : ℚ), (7856348981/500000000000 : ℚ), 1⟩,
    ⟨(66933289417/100000000000 : ℚ), (-184021811/5000000000 : ℚ), (18719171877/1000000000000 : ℚ), 1⟩,
    ⟨(21072521039/31250000000 : ℚ), (-20420253/500000000 : ℚ), (21430707897/1000000000000 : ℚ), 1⟩,
    ⟨(678894122443/1000000000000 : ℚ), (-444306923/10000000000 : ℚ), (23859815059/1000000000000 : ℚ), 1⟩,
    ⟨(341521111957/500000000000 : ℚ), (-59498971/1250000000 : ℚ), (26017423827/1000000000000 : ℚ), 1⟩,
    ⟨(686754984523/1000000000000 : ℚ), (-503669179/10000000000 : ℚ), (2791302627/100000000000 : ℚ), 1⟩,
    ⟨(690023459903/1000000000000 : ℚ), (-527518779/10000000000 : ℚ), (14777397051/500000000000 : ℚ), 1⟩,
    ⟨(173209944003/250000000000 : ℚ), (-547692761/10000000000 : ℚ), (3868709869/125000000000 : ℚ), 1⟩,
    ⟨(10862455439/15625000000 : ℚ), (-564317989/10000000000 : ℚ), (6420699173/200000000000 : ℚ), 1⟩,
    ⟨(8713623713/12500000000 : ℚ), (-577497717/10000000000 : ℚ), (16510495861/500000000000 : ℚ), 1⟩,
    ⟨(698513463047/1000000000000 : ℚ), (-587312971/10000000000 : ℚ), (33705900843/1000000000000 : ℚ), 1⟩,
    ⟨(699464416621/1000000000000 : ℚ), (-148455903/2500000000 : ℚ), (6832197419/200000000000 : ℚ), 1⟩,
    ⟨(699940466831/1000000000000 : ℚ), (-298534563/5000000000 : ℚ), (17194038253/500000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-597474357/10000000000 : ℚ), (8604110373/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (124268085333/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 32
  tangents := tangents
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control16.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control16.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate16
