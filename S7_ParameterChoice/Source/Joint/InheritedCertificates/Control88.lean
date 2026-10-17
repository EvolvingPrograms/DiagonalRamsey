import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate88
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(81010170771/250000000000 : ℚ), (34310215770213/10000000000 : ℚ), (-1113146402711257/1000000000000 : ℚ), 12⟩,
    ⟨(16224673717/50000000000 : ℚ), (236187955271/625000000 : ℚ), (-123556720972411/1000000000000 : ℚ), 9⟩,
    ⟨(325397966037/1000000000000 : ℚ), (1341572458657/10000000000 : ℚ), (-44389617961189/1000000000000 : ℚ), 8⟩,
    ⟨(326751979177/1000000000000 : ℚ), (168090493997/2500000000 : ℚ), (-22578362982389/1000000000000 : ℚ), 7⟩,
    ⟨(164276125911/500000000000 : ℚ), (199147940027/5000000000 : ℚ), (-1700329638031/125000000000 : ℚ), 6⟩,
    ⟨(330794446959/1000000000000 : ℚ), (260418258469/10000000000 : ℚ), (-362369729689/40000000000 : ℚ), 6⟩,
    ⟨(333473162943/1000000000000 : ℚ), (2271365061/125000000 : ℚ), (-1611556206621/250000000000 : ℚ), 5⟩,
    ⟨(21036371657/62500000000 : ℚ), (66378238653/5000000000 : ℚ), (-24034510591/5000000000 : ℚ), 5⟩,
    ⟨(170056654167/500000000000 : ℚ), (50182455919/5000000000 : ℚ), (-742284248767/200000000000 : ℚ), 4⟩,
    ⟨(344058741051/1000000000000 : ℚ), (77903926149/10000000000 : ℚ), (-2943393514891/1000000000000 : ℚ), 4⟩,
    ⟨(43551092471/125000000000 : ℚ), (61747884037/10000000000 : ℚ), (-9313490779/3906250000 : ℚ), 4⟩,
    ⟨(353152824957/1000000000000 : ℚ), (49780016329/10000000000 : ℚ), (-245577256461/125000000000 : ℚ), 4⟩,
    ⟨(358279567703/1000000000000 : ℚ), (40698061491/10000000000 : ℚ), (-1641689362719/1000000000000 : ℚ), 3⟩,
    ⟨(22736038577/62500000000 : ℚ), (16832907629/5000000000 : ℚ), (-138790615519/100000000000 : ℚ), 3⟩,
    ⟨(369630730671/1000000000000 : ℚ), (28126849099/10000000000 : ℚ), (-37027146529/31250000000 : ℚ), 3⟩,
    ⟨(375827804947/1000000000000 : ℚ), (23699572487/10000000000 : ℚ), (-509956562047/500000000000 : ℚ), 3⟩,
    ⟨(382352910767/1000000000000 : ℚ), (5028863649/2500000000 : ℚ), (-17681844289/20000000000 : ℚ), 3⟩,
    ⟨(194595164289/500000000000 : ℚ), (17181259091/10000000000 : ℚ), (-770939262481/1000000000000 : ℚ), 3⟩,
    ⟨(396323586443/1000000000000 : ℚ), (3688798581/2500000000 : ℚ), (-675686420501/1000000000000 : ℚ), 3⟩,
    ⟨(201867749859/500000000000 : ℚ), (101851337/80000000 : ℚ), (-297378014261/500000000000 : ℚ), 2⟩,
    ⟨(205704106227/500000000000 : ℚ), (11029708807/10000000000 : ℚ), (-52542119181/100000000000 : ℚ), 2⟩,
    ⟨(13103851263/31250000000 : ℚ), (383537693/400000000 : ℚ), (-465574174009/1000000000000 : ℚ), 2⟩,
    ⟨(427461515607/1000000000000 : ℚ), (8359695191/10000000000 : ℚ), (-16542606731/40000000000 : ℚ), 2⟩,
    ⟨(435803432209/1000000000000 : ℚ), (3652896093/5000000000 : ℚ), (-184044010781/500000000000 : ℚ), 2⟩,
    ⟨(88865778763/200000000000 : ℚ), (3198409871/5000000000 : ℚ), (-164048955301/500000000000 : ℚ), 2⟩,
    ⟨(453017361841/1000000000000 : ℚ), (5608812481/10000000000 : ℚ), (-292751148227/1000000000000 : ℚ), 2⟩,
    ⟨(230923952503/500000000000 : ℚ), (984482473/2000000000 : ℚ), (-261360573569/1000000000000 : ℚ), 2⟩,
    ⟨(470799249759/1000000000000 : ℚ), (108046627/250000000 : ℚ), (-116681038379/500000000000 : ℚ), 2⟩,
    ⟨(239924915763/500000000000 : ℚ), (3794260373/10000000000 : ℚ), (-52072297743/250000000000 : ℚ), 2⟩,
    ⟨(488977846663/1000000000000 : ℚ), (3328951077/10000000000 : ℚ), (-185753602559/1000000000000 : ℚ), 2⟩,
    ⟨(498161304981/1000000000000 : ℚ), (1458552277/5000000000 : ℚ), (-20678756847/125000000000 : ℚ), 2⟩,
    ⟨(253689041363/500000000000 : ℚ), (2551353301/10000000000 : ℚ), (-9190284139/62500000000 : ℚ), 2⟩,
    ⟨(8071968373/15625000000 : ℚ), (1112760293/5000000000 : ℚ), (-130365028291/1000000000000 : ℚ), 2⟩,
    ⟨(525822753617/1000000000000 : ℚ), (12090021/62500000 : ℚ), (-23038802709/200000000000 : ℚ), 2⟩,
    ⟨(107001242387/200000000000 : ℚ), (1673599279/10000000000 : ℚ), (-25340664821/250000000000 : ℚ), 2⟩,
    ⟨(4251048649/7812500000 : ℚ), (719683981/5000000000 : ℚ), (-88725998297/1000000000000 : ℚ), 2⟩,
    ⟨(553184808839/1000000000000 : ℚ), (614259521/5000000000 : ℚ), (-77159071167/1000000000000 : ℚ), 2⟩,
    ⟨(70267019199/125000000000 : ℚ), (129790163/1250000000 : ℚ), (-2079805273/31250000000 : ℚ), 2⟩,
    ⟨(570966696757/1000000000000 : ℚ), (433214277/5000000000 : ℚ), (-28408120417/500000000000 : ℚ), 2⟩,
    ⟨(579655164783/1000000000000 : ℚ), (355409417/5000000000 : ℚ), (-5983094767/125000000000 : ℚ), 2⟩,
    ⟨(588180626389/1000000000000 : ℚ), (284872171/5000000000 : ℚ), (-4953492299/125000000000 : ℚ), 2⟩,
    ⟨(37282658937/62500000000 : ℚ), (88338001/2000000000 : ℚ), (-16021634923/500000000000 : ℚ), 2⟩,
    ⟨(302330409091/500000000000 : ℚ), (6506781/200000000 : ℚ), (-25055874133/1000000000000 : ℚ), 2⟩,
    ⟨(2392874399/3906250000 : ℚ), (219544301/10000000000 : ℚ), (-18617468147/1000000000000 : ℚ), 2⟩,
    ⟨(620248558881/1000000000000 : ℚ), (30826037/2500000000 : ℚ), (-2537097487/200000000000 : ℚ), 2⟩,
    ⟨(125532094431/200000000000 : ℚ), (35742377/10000000000 : ℚ), (-902793191/125000000000 : ℚ), 2⟩,
    ⟨(31739686501/50000000000 : ℚ), (-5488603/1250000000 : ℚ), (-2194804421/1000000000000 : ℚ), 1⟩,
    ⟨(641631147831/1000000000000 : ℚ), (-23264643/2000000000 : ℚ), (2426560959/1000000000000 : ℚ), 1⟩,
    ⟨(648156253651/1000000000000 : ℚ), (-45523163/2500000000 : ℚ), (1333563903/200000000000 : ℚ), 1⟩,
    ⟨(81794165991/125000000000 : ℚ), (-241737399/10000000000 : ℚ), (2638018787/250000000000 : ℚ), 1⟩,
    ⟨(330103720683/500000000000 : ℚ), (-147857443/5000000000 : ℚ), (7049900377/500000000000 : ℚ), 1⟩,
    ⟨(41606530681/62500000000 : ℚ), (-344427173/10000000000 : ℚ), (693165033/40000000000 : ℚ), 1⟩,
    ⟨(670831233641/1000000000000 : ℚ), (-388227303/10000000000 : ℚ), (2025608231/100000000000 : ℚ), 1⟩,
    ⟨(675575318831/1000000000000 : ℚ), (-427424717/10000000000 : ℚ), (22894815559/1000000000000 : ℚ), 1⟩,
    ⟨(169981329387/250000000000 : ℚ), (-115572469/2500000000 : ℚ), (12628883151/500000000000 : ℚ), 1⟩,
    ⟨(85483843783/125000000000 : ℚ), (-61632273/1250000000 : ℚ), (27355824991/1000000000000 : ℚ), 1⟩,
    ⟨(687402112087/1000000000000 : ℚ), (-20797333/400000000 : ℚ), (5839692889/200000000000 : ℚ), 1⟩,
    ⟨(86313861957/125000000000 : ℚ), (-543090083/10000000000 : ℚ), (3079385237/100000000000 : ℚ), 1⟩,
    ⟨(693189611639/1000000000000 : ℚ), (-562676711/10000000000 : ℚ), (3214894627/100000000000 : ℚ), 1⟩,
    ⟨(86928975847/125000000000 : ℚ), (-578816903/10000000000 : ℚ), (8317393201/250000000000 : ℚ), 1⟩,
    ⟨(348616039711/500000000000 : ℚ), (-147902853/2500000000 : ℚ), (34160493119/1000000000000 : ℚ), 1⟩,
    ⟨(698586092561/1000000000000 : ℚ), (-601139351/10000000000 : ℚ), (34825455733/1000000000000 : ℚ), 1⟩,
    ⟨(699490584259/1000000000000 : ℚ), (-303729599/5000000000 : ℚ), (8816809257/250000000000 : ℚ), 1⟩,
    ⟨(349971687757/500000000000 : ℚ), (-122121907/2000000000 : ℚ), (35487671399/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-611002879/10000000000 : ℚ), (7103040873/200000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (117172050453/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control88.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control88.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate88
