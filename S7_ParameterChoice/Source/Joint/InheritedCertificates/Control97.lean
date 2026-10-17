import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate97
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32139636507/125000000000 : ℚ), (14611060051849/5000000000 : ℚ), (-752392635613513/1000000000000 : ℚ), 12⟩,
    ⟨(25753004733/100000000000 : ℚ), (3215272514107/10000000000 : ℚ), (-5219660761299/62500000000 : ℚ), 9⟩,
    ⟨(25835496303/100000000000 : ℚ), (569838961883/5000000000 : ℚ), (-15002180497561/500000000000 : ℚ), 8⟩,
    ⟨(51917970373/200000000000 : ℚ), (570105584163/10000000000 : ℚ), (-15261793326039/1000000000000 : ℚ), 7⟩,
    ⟨(130615869439/500000000000 : ℚ), (337010646947/10000000000 : ℚ), (-1838987659133/200000000000 : ℚ), 6⟩,
    ⟨(263276668619/1000000000000 : ℚ), (109925002751/5000000000 : ℚ), (-3061976307443/500000000000 : ℚ), 6⟩,
    ⟨(132859857337/500000000000 : ℚ), (76519541131/5000000000 : ℚ), (-4357727208479/1000000000000 : ℚ), 5⟩,
    ⟨(268554991531/1000000000000 : ℚ), (111537445847/10000000000 : ℚ), (-3249628062423/1000000000000 : ℚ), 5⟩,
    ⟨(271775668759/1000000000000 : ℚ), (21028472857/2500000000 : ℚ), (-2509110421267/1000000000000 : ℚ), 4⟩,
    ⟨(55074797493/200000000000 : ℚ), (16281573337/2500000000 : ℚ), (-397982752563/200000000000 : ℚ), 4⟩,
    ⟨(55868255797/200000000000 : ℚ), (51490507027/10000000000 : ℚ), (-100743615409/62500000000 : ℚ), 4⟩,
    ⟨(70916996441/250000000000 : ℚ), (41406579581/10000000000 : ℚ), (-1328165113919/1000000000000 : ℚ), 4⟩,
    ⟨(72085921097/250000000000 : ℚ), (16883818581/5000000000 : ℚ), (-1109788038019/1000000000000 : ℚ), 3⟩,
    ⟨(29335711069/100000000000 : ℚ), (27863289737/10000000000 : ℚ), (-938137362289/1000000000000 : ℚ), 3⟩,
    ⟨(59739237377/200000000000 : ℚ), (23221096157/10000000000 : ℚ), (-800776402929/1000000000000 : ℚ), 3⟩,
    ⟨(19021753167/62500000000 : ℚ), (9758635949/5000000000 : ℚ), (-86143189923/125000000000 : ℚ), 3⟩,
    ⟨(38787385777/125000000000 : ℚ), (16524130923/10000000000 : ℚ), (-298598618101/500000000000 : ℚ), 3⟩,
    ⟨(39566869619/125000000000 : ℚ), (2815592587/2000000000 : ℚ), (-520560782423/1000000000000 : ℚ), 3⟩,
    ⟨(323040640119/1000000000000 : ℚ), (12058751081/10000000000 : ℚ), (-91202745417/200000000000 : ℚ), 3⟩,
    ⟨(164900231479/500000000000 : ℚ), (10376996581/10000000000 : ℚ), (-401138163637/1000000000000 : ℚ), 2⟩,
    ⟨(21049883779/62500000000 : ℚ), (8964943017/10000000000 : ℚ), (-177045642533/500000000000 : ℚ), 2⟩,
    ⟨(344016814617/1000000000000 : ℚ), (1942649937/2500000000 : ℚ), (-313448832729/1000000000000 : ℚ), 2⟩,
    ⟨(351439095001/1000000000000 : ℚ), (6753589993/10000000000 : ℚ), (-278096113887/1000000000000 : ℚ), 2⟩,
    ⟨(89761775173/250000000000 : ℚ), (2941107289/5000000000 : ℚ), (-123575378203/500000000000 : ℚ), 2⟩,
    ⟨(45852812917/125000000000 : ℚ), (2565670833/5000000000 : ℚ), (-219907058849/1000000000000 : ℚ), 2⟩,
    ⟨(374746571309/1000000000000 : ℚ), (1120216949/2500000000 : ℚ), (-48948825263/250000000000 : ℚ), 2⟩,
    ⟨(382800214837/1000000000000 : ℚ), (391458051/1000000000 : ℚ), (-174351586353/1000000000000 : ℚ), 2⟩,
    ⟨(195482015993/500000000000 : ℚ), (1709653753/5000000000 : ℚ), (-155195211769/1000000000000 : ℚ), 2⟩,
    ⟨(399218355407/1000000000000 : ℚ), (298427299/1000000000 : ℚ), (-138011490463/1000000000000 : ℚ), 2⟩,
    ⟨(40754329971/100000000000 : ℚ), (650151443/2500000000 : ℚ), (-61269287893/500000000000 : ℚ), 2⟩,
    ⟨(415918809377/1000000000000 : ℚ), (452191951/2000000000 : ℚ), (-10855725417/100000000000 : ℚ), 2⟩,
    ⟨(424324707071/1000000000000 : ℚ), (979609291/5000000000 : ℚ), (-23970741601/250000000000 : ℚ), 2⟩,
    ⟨(54092592781/125000000000 : ℚ), (21128299/125000000 : ℚ), (-42179759071/500000000000 : ℚ), 2⟩,
    ⟨(441146639941/1000000000000 : ℚ), (724896149/5000000000 : ℚ), (-7385408197/100000000000 : ℚ), 2⟩,
    ⟨(56190268701/125000000000 : ℚ), (617084659/5000000000 : ℚ), (-16063299177/250000000000 : ℚ), 2⟩,
    ⟨(57230886739/125000000000 : ℚ), (1040312867/10000000000 : ℚ), (-55459543511/1000000000000 : ℚ), 2⟩,
    ⟨(466101417333/1000000000000 : ℚ), (432799491/5000000000 : ℚ), (-11847332447/250000000000 : ℚ), 2⟩,
    ⟨(237132617241/500000000000 : ℚ), (353892777/5000000000 : ℚ), (-39970154329/1000000000000 : ℚ), 2⟩,
    ⟨(48231887801/100000000000 : ℚ), (564950161/10000000000 : ℚ), (-8284813739/250000000000 : ℚ), 2⟩,
    ⟨(490242945983/1000000000000 : ℚ), (217719581/5000000000 : ℚ), (-671051559/25000000000 : ℚ), 2⟩,
    ⟨(498018348627/1000000000000 : ℚ), (317825817/10000000000 : ℚ), (-10515500231/500000000000 : ℚ), 2⟩,
    ⟨(252813177159/500000000000 : ℚ), (52718921/2500000000 : ℚ), (-15664486723/1000000000000 : ℚ), 2⟩,
    ⟨(513048634701/1000000000000 : ℚ), (14189739/1250000000 : ℚ), (-10706095409/1000000000000 : ℚ), 2⟩,
    ⟨(104053461771/200000000000 : ℚ), (3102667/1250000000 : ℚ), (-6123854579/1000000000000 : ℚ), 2⟩,
    ⟨(527264986361/1000000000000 : ℚ), (-7003189/1250000000 : ℚ), (-1889651841/1000000000000 : ℚ), 2⟩,
    ⟨(1335062023/2500000000 : ℚ), (-25946231/2000000000 : ℚ), (2021267681/1000000000000 : ℚ), 2⟩,
    ⟨(540530492367/1000000000000 : ℚ), (-49228817/2500000000 : ℚ), (2815364241/500000000000 : ℚ), 2⟩,
    ⟨(273383181551/500000000000 : ℚ), (-258120573/10000000000 : ℚ), (8957989019/1000000000000 : ℚ), 2⟩,
    ⟨(276358699323/500000000000 : ℚ), (-156911447/5000000000 : ℚ), (6010026211/500000000000 : ℚ), 2⟩,
    ⟨(279184631217/500000000000 : ℚ), (-91109921/2500000000 : ℚ), (1483193301/100000000000 : ℚ), 2⟩,
    ⟨(563708338629/1000000000000 : ℚ), (-410337271/10000000000 : ℚ), (1740688541/100000000000 : ℚ), 2⟩,
    ⟨(56872176493/100000000000 : ℚ), (-451837013/10000000000 : ℚ), (1234787527/62500000000 : ℚ), 2⟩,
    ⟨(114679492711/200000000000 : ℚ), (-61152569/1250000000 : ℚ), (21891374999/1000000000000 : ℚ), 2⟩,
    ⟨(288862085167/500000000000 : ℚ), (-130683571/2500000000 : ℚ), (2977532201/125000000000 : ℚ), 2⟩,
    ⟨(581691461853/1000000000000 : ℚ), (-552593167/10000000000 : ℚ), (2555117343/100000000000 : ℚ), 1⟩,
    ⟨(7316122257/12500000000 : ℚ), (-578983969/10000000000 : ℚ), (27091032661/1000000000000 : ℚ), 1⟩,
    ⟨(147127614447/250000000000 : ℚ), (-602068017/10000000000 : ℚ), (14222911163/500000000000 : ℚ), 1⟩,
    ⟨(118269146929/200000000000 : ℚ), (-62198353/1000000000 : ℚ), (29620685553/1000000000000 : ℚ), 1⟩,
    ⟨(5937887807/10000000000 : ℚ), (-25553903/400000000 : ℚ), (30619988169/1000000000000 : ℚ), 1⟩,
    ⟨(595833710441/1000000000000 : ℚ), (-10199339/156250000 : ℚ), (6289474923/200000000000 : ℚ), 1⟩,
    ⟨(298737798727/500000000000 : ℚ), (-331896629/5000000000 : ℚ), (32105814963/1000000000000 : ℚ), 1⟩,
    ⟨(37419405393/62500000000 : ℚ), (-168004129/2500000000 : ℚ), (32597641647/1000000000000 : ℚ), 1⟩,
    ⟨(599535401989/1000000000000 : ℚ), (-169368363/2500000000 : ℚ), (32924578969/1000000000000 : ℚ), 1⟩,
    ⟨(299974178631/500000000000 : ℚ), (-68019439/1000000000 : ℚ), (1323510601/40000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-136106831/2000000000 : ℚ), (827703751/25000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (281947559001/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control97.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control97.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate97
