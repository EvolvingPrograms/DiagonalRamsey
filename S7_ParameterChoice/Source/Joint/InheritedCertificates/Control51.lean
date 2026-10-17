import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate51
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(316500916341/1000000000000 : ℚ), (889708639741/250000000 : ℚ), (-563901910807761/500000000000 : ℚ), 12⟩,
    ⟨(19810174263/62500000000 : ℚ), (156738941761/400000000 : ℚ), (-125180381790071/1000000000000 : ℚ), 9⟩,
    ⟨(79471354813/250000000000 : ℚ), (1390367649429/10000000000 : ℚ), (-5621326613671/125000000000 : ℚ), 8⟩,
    ⟨(12770663471/40000000000 : ℚ), (348185291391/5000000000 : ℚ), (-2287213690191/100000000000 : ℚ), 7⟩,
    ⟨(160551481711/500000000000 : ℚ), (82443053697/2000000000 : ℚ), (-1377826177131/100000000000 : ℚ), 6⟩,
    ⟨(323390125201/1000000000000 : ℚ), (269301933329/10000000000 : ℚ), (-9175111911341/1000000000000 : ℚ), 5⟩,
    ⟨(16306128107/50000000000 : ℚ), (187746075581/10000000000 : ℚ), (-815972079999/125000000000 : ℚ), 5⟩,
    ⟨(329293691559/1000000000000 : ℚ), (137043264747/10000000000 : ℚ), (-4866974631821/1000000000000 : ℚ), 4⟩,
    ⟨(332895873929/1000000000000 : ℚ), (25877317957/2500000000 : ℚ), (-3757189072019/1000000000000 : ℚ), 4⟩,
    ⟨(84230107819/250000000000 : ℚ), (16053658731/2000000000 : ℚ), (-595835954007/200000000000 : ℚ), 4⟩,
    ⟨(341357668091/1000000000000 : ℚ), (63560938571/10000000000 : ℚ), (-603204574611/250000000000 : ℚ), 4⟩,
    ⟨(346196894681/1000000000000 : ℚ), (51192565187/10000000000 : ℚ), (-1987805703251/1000000000000 : ℚ), 3⟩,
    ⟨(87856613231/250000000000 : ℚ), (5226644363/1250000000 : ℚ), (-1660779380337/1000000000000 : ℚ), 3⟩,
    ⟨(178516872179/500000000000 : ℚ), (34555946287/10000000000 : ℚ), (-1403813404099/1000000000000 : ℚ), 3⟩,
    ⟨(181502630263/500000000000 : ℚ), (14422129183/5000000000 : ℚ), (-599132127031/500000000000 : ℚ), 3⟩,
    ⟨(369326615523/1000000000000 : ℚ), (6070668563/2500000000 : ℚ), (-128912492037/125000000000 : ℚ), 3⟩,
    ⟨(7519651613/20000000000 : ℚ), (20592982933/10000000000 : ℚ), (-893854096231/1000000000000 : ℚ), 3⟩,
    ⟨(76591424221/200000000000 : ℚ), (17575022571/10000000000 : ℚ), (-77937370529/100000000000 : ℚ), 2⟩,
    ⟨(390233434609/1000000000000 : ℚ), (120655627/80000000 : ℚ), (-683027074117/1000000000000 : ℚ), 2⟩,
    ⟨(79558798377/200000000000 : ℚ), (13004192283/10000000000 : ℚ), (-601188494167/1000000000000 : ℚ), 2⟩,
    ⟨(50702572361/125000000000 : ℚ), (2251742089/2000000000 : ℚ), (-531094346417/1000000000000 : ℚ), 2⟩,
    ⟨(206847170343/500000000000 : ℚ), (9781742937/10000000000 : ℚ), (-470608442133/1000000000000 : ℚ), 2⟩,
    ⟨(210997913439/500000000000 : ℚ), (8523723059/10000000000 : ℚ), (-209029332993/500000000000 : ℚ), 2⟩,
    ⟨(215252519229/500000000000 : ℚ), (930712363/1250000000 : ℚ), (-372121190913/1000000000000 : ℚ), 2⟩,
    ⟨(109800368997/250000000000 : ℚ), (6516757177/10000000000 : ℚ), (-331737061611/1000000000000 : ℚ), 2⟩,
    ⟨(448064188991/1000000000000 : ℚ), (2856071897/5000000000 : ℚ), (-296051201579/1000000000000 : ℚ), 2⟩,
    ⟨(457071826413/1000000000000 : ℚ), (2505937179/5000000000 : ℚ), (-66091801761/250000000000 : ℚ), 2⟩,
    ⟨(233101344033/500000000000 : ℚ), (879938839/2000000000 : ℚ), (-236113422571/1000000000000 : ℚ), 2⟩,
    ⟨(475434776907/1000000000000 : ℚ), (965572813/2500000000 : ℚ), (-105408595323/500000000000 : ℚ), 2⟩,
    ⟨(60593231503/125000000000 : ℚ), (3388694193/10000000000 : ℚ), (-23510637041/125000000000 : ℚ), 2⟩,
    ⟨(24705674111/50000000000 : ℚ), (2969807751/10000000000 : ℚ), (-167587664943/1000000000000 : ℚ), 2⟩,
    ⟨(62939387507/125000000000 : ℚ), (51961017/200000000 : ℚ), (-74523698761/500000000000 : ℚ), 2⟩,
    ⟨(51292805621/100000000000 : ℚ), (141692031/625000000 : ℚ), (-6611466977/50000000000 : ℚ), 2⟩,
    ⟨(104465934809/200000000000 : ℚ), (394305403/2000000000 : ℚ), (-58466792447/500000000000 : ℚ), 2⟩,
    ⟨(265848652121/500000000000 : ℚ), (1706895013/10000000000 : ℚ), (-102989276259/1000000000000 : ℚ), 2⟩,
    ⟨(541008379359/1000000000000 : ℚ), (367334953/2500000000 : ℚ), (-90249768191/1000000000000 : ℚ), 2⟩,
    ⟨(550240468199/1000000000000 : ℚ), (1255591639/10000000000 : ℚ), (-153493561/1953125000 : ℚ), 2⟩,
    ⟨(559371329853/1000000000000 : ℚ), (1062853671/10000000000 : ℚ), (-67896809147/1000000000000 : ℚ), 1⟩,
    ⟨(22735158691/40000000000 : ℚ), (888725403/10000000000 : ℚ), (-14519817343/250000000000 : ℚ), 1⟩,
    ⟨(577241680277/1000000000000 : ℚ), (365569923/5000000000 : ℚ), (-12263388499/250000000000 : ℚ), 1⟩,
    ⟨(36621132363/62500000000 : ℚ), (588311803/10000000000 : ℚ), (-40747619483/1000000000000 : ℚ), 1⟩,
    ⟨(148611832347/250000000000 : ℚ), (229347549/5000000000 : ℚ), (-33098409271/1000000000000 : ℚ), 1⟩,
    ⟨(30137440779/50000000000 : ℚ), (170473533/5000000000 : ℚ), (-26050599739/1000000000000 : ℚ), 1⟩,
    ⟨(610822577377/1000000000000 : ℚ), (11694947/500000000 : ℚ), (-19555544593/1000000000000 : ℚ), 1⟩,
    ⟨(618649164381/1000000000000 : ℚ), (136531097/10000000000 : ℚ), (-13570386687/1000000000000 : ℚ), 1⟩,
    ⟨(626209721657/1000000000000 : ℚ), (4795227/1000000000 : ℚ), (-4028652249/500000000000 : ℚ), 1⟩,
    ⟨(633486035161/1000000000000 : ℚ), (-2038621/625000000 : ℚ), (-29828743/10000000000 : ℚ), 1⟩,
    ⟨(5003598247/7812500000 : ℚ), (-13232977/1250000000 : ℚ), (841237373/500000000000 : ℚ), 1⟩,
    ⟨(647116540743/1000000000000 : ℚ), (-172386047/10000000000 : ℚ), (2982461653/500000000000 : ℚ), 1⟩,
    ⟨(32671894787/50000000000 : ℚ), (-23271229/1000000000 : ℚ), (9887659933/1000000000000 : ℚ), 1⟩,
    ⟨(164852352977/250000000000 : ℚ), (-287306181/10000000000 : ℚ), (13471219939/1000000000000 : ℚ), 1⟩,
    ⟨(332508351671/500000000000 : ℚ), (-67314997/2000000000 : ℚ), (16733776707/1000000000000 : ℚ), 1⟩,
    ⟨(134049252317/200000000000 : ℚ), (-190438059/5000000000 : ℚ), (19691392287/1000000000000 : ℚ), 1⟩,
    ⟨(27003419527/40000000000 : ℚ), (-420522693/10000000000 : ℚ), (11179115561/500000000000 : ℚ), 1⟩,
    ⟨(67952272499/100000000000 : ℚ), (-56973531/1250000000 : ℚ), (24746744041/1000000000000 : ℚ), 1⟩,
    ⟨(683547282337/1000000000000 : ℚ), (-243455383/5000000000 : ℚ), (26867825617/1000000000000 : ℚ), 1⟩,
    ⟨(687149464707/1000000000000 : ℚ), (-128524021/2500000000 : ℚ), (3591368531/125000000000 : ℚ), 1⟩,
    ⟨(5522564753/8000000000 : ℚ), (-537520777/10000000000 : ℚ), (30344276573/1000000000000 : ℚ), 1⟩,
    ⟨(86631628883/125000000000 : ℚ), (-139333643/2500000000 : ℚ), (6342952589/200000000000 : ℚ), 1⟩,
    ⟨(173835048211/250000000000 : ℚ), (-573662363/10000000000 : ℚ), (32848228191/1000000000000 : ℚ), 1⟩,
    ⟨(697176569491/1000000000000 : ℚ), (-586605863/10000000000 : ℚ), (33749428029/1000000000000 : ℚ), 1⟩,
    ⟨(349278868507/500000000000 : ℚ), (-14906123/250000000 : ℚ), (34422105181/1000000000000 : ℚ), 1⟩,
    ⟨(349740184029/500000000000 : ℚ), (-602638553/10000000000 : ℚ), (6973806409/200000000000 : ℚ), 1⟩,
    ⟨(27997689597/40000000000 : ℚ), (-605825697/10000000000 : ℚ), (8773010029/250000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-606223637/10000000000 : ℚ), (17559947359/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (97983224863/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control51.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control51.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate51
