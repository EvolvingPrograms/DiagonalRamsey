import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate159
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(178493984573/500000000000 : ℚ), (53637437449587/10000000000 : ℚ), (-95809825293367/50000000000 : ℚ), 13⟩,
    ⟨(357280643693/1000000000000 : ℚ), (2962506126573/5000000000 : ℚ), (-212663401123981/1000000000000 : ℚ), 10⟩,
    ⟨(357865287707/1000000000000 : ℚ), (211266299/1000000 : ℚ), (-76380776645521/1000000000000 : ℚ), 8⟩,
    ⟨(358740492731/1000000000000 : ℚ), (13305768779/125000000 : ℚ), (-19416775364833/500000000000 : ℚ), 8⟩,
    ⟨(179952075159/500000000000 : ℚ), (158581973953/2500000000 : ℚ), (-5845512025651/250000000000 : ℚ), 7⟩,
    ⟨(90338364279/250000000000 : ℚ), (417385019367/10000000000 : ℚ), (-15560554940793/1000000000000 : ℚ), 6⟩,
    ⟨(181542460809/500000000000 : ℚ), (146579890009/5000000000 : ℚ), (-11062071549687/1000000000000 : ℚ), 6⟩,
    ⟨(365094372573/1000000000000 : ℚ), (107810715337/5000000000 : ℚ), (-4119860762737/500000000000 : ℚ), 5⟩,
    ⟨(367376969039/1000000000000 : ℚ), (641039407/39062500 : ℚ), (-3176767623987/500000000000 : ℚ), 5⟩,
    ⟨(369927212041/1000000000000 : ℚ), (801389967/62500000 : ℚ), (-5031013813597/1000000000000 : ℚ), 5⟩,
    ⟨(18636947891/50000000000 : ℚ), (102283431041/10000000000 : ℚ), (-4068056920029/1000000000000 : ℚ), 4⟩,
    ⟨(75161086527/200000000000 : ℚ), (41482868303/5000000000 : ℚ), (-3345228375181/1000000000000 : ℚ), 4⟩,
    ⟨(379119249077/1000000000000 : ℚ), (34111208351/5000000000 : ℚ), (-697214702667/250000000000 : ℚ), 4⟩,
    ⟨(3061379391/8000000000 : ℚ), (11347497283/2000000000 : ℚ), (-18371146419/7812500000 : ℚ), 4⟩,
    ⟨(193228198559/500000000000 : ℚ), (4763403447/1000000000 : ℚ), (-250187735331/125000000000 : ℚ), 4⟩,
    ⟨(390462052883/1000000000000 : ℚ), (20154872589/5000000000 : ℚ), (-42926194277/25000000000 : ℚ), 4⟩,
    ⟨(78935948239/200000000000 : ℚ), (17170009293/5000000000 : ℚ), (-1482745580221/1000000000000 : ℚ), 3⟩,
    ⟨(199549650637/500000000000 : ℚ), (14709357743/5000000000 : ℚ), (-20116660831/15625000000 : ℚ), 3⟩,
    ⟨(403710086011/1000000000000 : ℚ), (25320714771/10000000000 : ℚ), (-1123005026239/1000000000000 : ℚ), 3⟩,
    ⟨(408500987623/1000000000000 : ℚ), (10938785331/5000000000 : ℚ), (-983205380261/1000000000000 : ℚ), 3⟩,
    ⟨(51682558051/125000000000 : ℚ), (9480642307/5000000000 : ℚ), (-431687571951/500000000000 : ℚ), 3⟩,
    ⟨(418576568551/1000000000000 : ℚ), (164732431/100000000 : ℚ), (-379943801437/500000000000 : ℚ), 3⟩,
    ⟨(423836974911/1000000000000 : ℚ), (14336525069/10000000000 : ℚ), (-669904007811/1000000000000 : ℚ), 3⟩,
    ⟨(107307252677/250000000000 : ℚ), (6245227943/5000000000 : ℚ), (-59117687741/100000000000 : ℚ), 3⟩,
    ⟨(217369843027/500000000000 : ℚ), (5443344339/5000000000 : ℚ), (-6523853827/12500000000 : ℚ), 3⟩,
    ⟨(1761422901/4000000000 : ℚ), (148224107/156250000 : ℚ), (-460646373539/1000000000000 : ℚ), 3⟩,
    ⟨(223031799383/500000000000 : ℚ), (2064471569/2500000000 : ℚ), (-406208380197/1000000000000 : ℚ), 2⟩,
    ⟨(90369911167/200000000000 : ℚ), (7175548469/10000000000 : ℚ), (-178811626173/500000000000 : ℚ), 2⟩,
    ⟨(457699657579/1000000000000 : ℚ), (6218118021/10000000000 : ℚ), (-31408783461/100000000000 : ℚ), 2⟩,
    ⟨(463599810591/1000000000000 : ℚ), (2684010859/5000000000 : ℚ), (-68733342293/250000000000 : ℚ), 2⟩,
    ⟨(93907160177/200000000000 : ℚ), (2305306243/5000000000 : ℚ), (-239599536083/1000000000000 : ℚ), 2⟩,
    ⟨(475493328141/1000000000000 : ℚ), (196680693/500000000 : ℚ), (-41522833121/200000000000 : ℚ), 2⟩,
    ⟨(240729020077/500000000000 : ℚ), (1663341477/5000000000 : ℚ), (-44644312441/250000000000 : ℚ), 2⟩,
    ⟨(48741556741/100000000000 : ℚ), (2781063967/10000000000 : ℚ), (-76074120509/500000000000 : ℚ), 2⟩,
    ⟨(61668944713/125000000000 : ℚ), (1144655743/5000000000 : ℚ), (-64017944273/500000000000 : ℚ), 2⟩,
    ⟨(124812927679/250000000000 : ℚ), (184506803/1000000000 : ℚ), (-105990048817/1000000000000 : ℚ), 2⟩,
    ⟨(25255090623/50000000000 : ℚ), (1442884061/10000000000 : ℚ), (-5362190193/62500000000 : ℚ), 2⟩,
    ⟨(510887769529/1000000000000 : ℚ), (539035753/5000000000 : ℚ), (-67264238281/1000000000000 : ℚ), 2⟩,
    ⟨(103319128609/200000000000 : ℚ), (373291937/5000000000 : ℚ), (-50235598883/1000000000000 : ℚ), 2⟩,
    ⟨(522211682241/1000000000000 : ℚ), (88983527/2000000000 : ℚ), (-17284008439/500000000000 : ℚ), 2⟩,
    ⟨(527722357587/1000000000000 : ℚ), (21253837/1250000000 : ℚ), (-1258641777/62500000000 : ℚ), 2⟩,
    ⟨(533114393383/1000000000000 : ℚ), (-40362651/5000000000 : ℚ), (-213702433/31250000000 : ℚ), 2⟩,
    ⟨(538374799743/1000000000000 : ℚ), (-15483073/500000000 : ℚ), (1356501579/250000000000 : ℚ), 2⟩,
    ⟨(543490903887/1000000000000 : ℚ), (-5187989/100000000 : ℚ), (8369197619/500000000000 : ℚ), 2⟩,
    ⟨(4284768599/7812500000 : ℚ), (-17747713/250000000 : ℚ), (5434393409/200000000000 : ℚ), 2⟩,
    ⟨(138310320571/250000000000 : ℚ), (-22113613/250000000 : ℚ), (36791342949/1000000000000 : ℚ), 2⟩,
    ⟨(557852067021/1000000000000 : ℚ), (-1044072781/10000000000 : ℚ), (1826142919/40000000000 : ℚ), 2⟩,
    ⟨(562271627099/1000000000000 : ℚ), (-1189694953/10000000000 : ℚ), (53809062037/1000000000000 : ℚ), 2⟩,
    ⟨(566489315411/1000000000000 : ℚ), (-330617239/2500000000 : ℚ), (61302362119/1000000000000 : ℚ), 2⟩,
    ⟨(570494971177/1000000000000 : ℚ), (-180415809/1250000000 : ℚ), (17043212987/250000000000 : ℚ), 2⟩,
    ⟨(28713947221/50000000000 : ℚ), (-1553087909/10000000000 : ℚ), (9306915309/125000000000 : ℚ), 2⟩,
    ⟨(577832119217/1000000000000 : ℚ), (-826237603/5000000000 : ℚ), (80180480077/1000000000000 : ℚ), 2⟩,
    ⟨(29057296783/50000000000 : ℚ), (-217765353/1250000000 : ℚ), (666995173/7812500000 : ℚ), 2⟩,
    ⟨(292106205237/500000000000 : ℚ), (-364517433/2000000000 : ℚ), (90063811913/1000000000000 : ℚ), 2⟩,
    ⟨(587024156253/1000000000000 : ℚ), (-947177333/5000000000 : ℚ), (23566650969/250000000000 : ℚ), 2⟩,
    ⟨(117914879851/200000000000 : ℚ), (-1957848719/10000000000 : ℚ), (98001922701/1000000000000 : ℚ), 2⟩,
    ⟨(591856995721/1000000000000 : ℚ), (-2013435603/10000000000 : ℚ), (25321376323/250000000000 : ℚ), 2⟩,
    ⟨(593866446677/1000000000000 : ℚ), (-412285903/2000000000 : ℚ), (104130866049/1000000000000 : ℚ), 2⟩,
    ⟨(297798955589/500000000000 : ℚ), (-420419369/2000000000 : ℚ), (106549474003/1000000000000 : ℚ), 2⟩,
    ⟨(74630902247/125000000000 : ℚ), (-2135659737/10000000000 : ℚ), (108550899801/1000000000000 : ℚ), 2⟩,
    ⟨(149552718891/250000000000 : ℚ), (-2162299041/10000000000 : ℚ), (11014293931/100000000000 : ℚ), 2⟩,
    ⟨(599086080587/1000000000000 : ℚ), (-545539173/2500000000 : ℚ), (111331713467/1000000000000 : ℚ), 2⟩,
    ⟨(299835362301/500000000000 : ℚ), (-2195337559/10000000000 : ℚ), (112121745829/1000000000000 : ℚ), 2⟩,
    ⟨(149990849787/250000000000 : ℚ), (-550477703/2500000000 : ℚ), (112516020761/1000000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-440546333/2000000000 : ℚ), (112565270419/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (109807473813/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control159.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control159.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate159
