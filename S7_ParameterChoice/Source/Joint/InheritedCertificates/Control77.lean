import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
