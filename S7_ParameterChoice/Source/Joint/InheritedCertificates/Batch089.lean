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

-- Control784
namespace DiagonalRamsey.JointInheritedCertificate784
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(90693283989/500000000000 : ℚ), (1424853457487/5000000000 : ℚ), (-25949537117777/500000000000 : ℚ), 11⟩,
    ⟨(7308070959/40000000000 : ℚ), (301402646853/10000000000 : ℚ), (-2807238271263/500000000000 : ℚ), 8⟩,
    ⟨(9264082167/50000000000 : ℚ), (24916622951/2500000000 : ℚ), (-382242727143/200000000000 : ℚ), 7⟩,
    ⟨(189027033141/1000000000000 : ℚ), (44998819979/10000000000 : ℚ), (-89031292979/100000000000 : ℚ), 6⟩,
    ⟨(48448502537/250000000000 : ℚ), (11485661977/5000000000 : ℚ), (-469529168021/1000000000000 : ℚ), 5⟩,
    ⟨(199399382107/1000000000000 : ℚ), (1510512431/1250000000 : ℚ), (-31984217489/125000000000 : ℚ), 5⟩,
    ⟨(102813868859/500000000000 : ℚ), (2988397221/5000000000 : ℚ), (-26476917547/200000000000 : ℚ), 4⟩,
    ⟨(6632491399/31250000000 : ℚ), (2239280511/10000000000 : ℚ), (-27198333809/500000000000 : ℚ), 4⟩,
    ⟨(109490624151/500000000000 : ℚ), (-197508451/10000000000 : ℚ), (-1911704659/1000000000000 : ℚ), 4⟩,
    ⟨(28199154419/125000000000 : ℚ), (-1861856807/10000000000 : ℚ), (1095470547/31250000000 : ℚ), 4⟩,
    ⟨(57955397741/250000000000 : ℚ), (-379441493/1250000000 : ℚ), (61882280947/1000000000000 : ℚ), 4⟩,
    ⟨(237426962923/1000000000000 : ℚ), (-969264869/2500000000 : ℚ), (40809378193/500000000000 : ℚ), 4⟩,
    ⟨(24219393993/100000000000 : ℚ), (-1119686223/2500000000 : ℚ), (600276551/6250000000 : ℚ), 4⟩,
    ⟨(24593932973/100000000000 : ℚ), (-1223795281/2500000000 : ℚ), (106206698249/1000000000000 : ℚ), 4⟩,
    ⟨(31064899887/125000000000 : ℚ), (-5158372009/10000000000 : ℚ), (14089145891/125000000000 : ℚ), 3⟩,
    ⟨(249834405093/1000000000000 : ℚ), (-2643015033/5000000000 : ℚ), (57947032051/500000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2650905921/5000000000 : ℚ), (116288477741/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (570205697937/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control784.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control784.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate784

-- Control785
namespace DiagonalRamsey.JointInheritedCertificate785
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(219391888373/1000000000000 : ℚ), (1467241282151/5000000000 : ℚ), (-8079248146853/125000000000 : ℚ), 11⟩,
    ⟨(220937012537/1000000000000 : ℚ), (15532537501/500000000 : ℚ), (-6994507237163/1000000000000 : ℚ), 8⟩,
    ⟨(223967882611/1000000000000 : ℚ), (51439201557/5000000000 : ℚ), (-297857746863/125000000000 : ℚ), 7⟩,
    ⟨(228368023957/1000000000000 : ℚ), (23277502873/5000000000 : ℚ), (-1111703914721/1000000000000 : ℚ), 6⟩,
    ⟨(58492085403/250000000000 : ℚ), (2981727197/1250000000 : ℚ), (-587948393777/1000000000000 : ℚ), 5⟩,
    ⟨(240553618507/1000000000000 : ℚ), (394783539/312500000 : ℚ), (-4027358947/12500000000 : ℚ), 5⟩,
    ⟨(123935393073/500000000000 : ℚ), (1268186081/2000000000 : ℚ), (-10547475123/62500000000 : ℚ), 4⟩,
    ⟨(255638649879/1000000000000 : ℚ), (2493706051/10000000000 : ℚ), (-72026770501/1000000000000 : ℚ), 4⟩,
    ⟨(263558695059/1000000000000 : ℚ), (-10985241/10000000000 : ℚ), (-1767932003/250000000000 : ℚ), 4⟩,
    ⟨(33915819849/125000000000 : ℚ), (-13424993/78125000 : ℚ), (38555913367/1000000000000 : ℚ), 4⟩,
    ⟨(27864372643/100000000000 : ℚ), (-2919726129/10000000000 : ℚ), (71571695053/1000000000000 : ℚ), 4⟩,
    ⟨(142614501663/500000000000 : ℚ), (-3779058437/10000000000 : ℚ), (11973740921/125000000000 : ℚ), 4⟩,
    ⟨(14541466049/50000000000 : ℚ), (-54901523/125000000 : ℚ), (4537745157/40000000000 : ℚ), 4⟩,
    ⟨(147614731163/500000000000 : ℚ), (-4815643767/10000000000 : ℚ), (125852405199/1000000000000 : ℚ), 3⟩,
    ⟨(298260332401/1000000000000 : ℚ), (-1016588193/2000000000 : ℚ), (133783852181/1000000000000 : ℚ), 3⟩,
    ⟨(59961091313/200000000000 : ℚ), (-1303120107/2500000000 : ℚ), (68828726417/500000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-326780603/625000000 : ℚ), (13813757361/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (535300175571/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control785.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control785.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate785

-- Control788
namespace DiagonalRamsey.JointInheritedCertificate788
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(473309775739/1000000000000 : ℚ), (3250671362987/2000000000 : ℚ), (-770018757309919/1000000000000 : ℚ), 13⟩,
    ⟨(2961996601/6250000000 : ℚ), (892308671819/5000000000 : ℚ), (-17007355554783/200000000000 : ℚ), 10⟩,
    ⟨(475132945447/1000000000000 : ℚ), (629331234563/10000000000 : ℚ), (-30238453946139/1000000000000 : ℚ), 9⟩,
    ⟨(95387711407/200000000000 : ℚ), (312054629691/10000000000 : ℚ), (-23658212541/1562500000 : ℚ), 8⟩,
    ⟨(479318901897/1000000000000 : ℚ), (45516911787/2500000000 : ℚ), (-8928755285031/1000000000000 : ℚ), 7⟩,
    ⟨(482251056011/1000000000000 : ℚ), (116640170437/10000000000 : ℚ), (-723045122807/125000000000 : ℚ), 6⟩,
    ⟨(48570678113/100000000000 : ℚ), (39633177979/5000000000 : ℚ), (-994062631887/250000000000 : ℚ), 6⟩,
    ⟨(489652796731/1000000000000 : ℚ), (7000515217/1250000000 : ℚ), (-2842223869971/1000000000000 : ℚ), 6⟩,
    ⟨(494051100527/1000000000000 : ℚ), (2537376119/625000000 : ℚ), (-4071765793/1953125000 : ℚ), 5⟩,
    ⟨(498859334449/1000000000000 : ℚ), (3738043351/1250000000 : ℚ), (-62161320851/40000000000 : ℚ), 5⟩,
    ⟨(984435923/1953125000 : ℚ), (1110197699/500000000 : ℚ), (-584012807241/500000000000 : ℚ), 5⟩,
    ⟨(254758433543/500000000000 : ℚ), (824653443/500000000 : ℚ), (-439350473919/500000000000 : ℚ), 5⟩,
    ⟨(103052705587/200000000000 : ℚ), (12154149481/10000000000 : ℚ), (-1641105419/2500000000 : ℚ), 4⟩,
    ⟨(521215831637/1000000000000 : ℚ), (439534621/500000000 : ℚ), (-482180359049/1000000000000 : ℚ), 4⟩,
    ⟨(105463290851/200000000000 : ℚ), (6138917941/10000000000 : ℚ), (-343190412573/1000000000000 : ℚ), 4⟩,
    ⟨(533506643457/1000000000000 : ℚ), (803603739/2000000000 : ℚ), (-46144045531/200000000000 : ℚ), 4⟩,
    ⟨(269863392169/500000000000 : ℚ), (575217831/2500000000 : ℚ), (-69296758491/500000000000 : ℚ), 4⟩,
    ⟨(27295848677/50000000000 : ℚ), (224033591/2500000000 : ℚ), (-12470964741/200000000000 : ℚ), 4⟩,
    ⟨(552017596157/1000000000000 : ℚ), (-32881881/1250000000 : ℚ), (254189021/200000000000 : ℚ), 4⟩,
    ⟨(27898494993/50000000000 : ℚ), (-1226422961/10000000000 : ℚ), (13682498299/250000000000 : ℚ), 4⟩,
    ⟨(563716560709/1000000000000 : ℚ), (-1015723893/5000000000 : ℚ), (24968499781/250000000000 : ℚ), 4⟩,
    ⟨(569202235219/1000000000000 : ℚ), (-2706689277/10000000000 : ℚ), (27623984559/200000000000 : ℚ), 4⟩,
    ⟨(114874818669/200000000000 : ℚ), (-1637050429/5000000000 : ℚ), (170561201027/1000000000000 : ℚ), 3⟩,
    ⟨(579182327267/1000000000000 : ℚ), (-29302071/78125000 : ℚ), (24755821659/125000000000 : ℚ), 3⟩,
    ⟨(72947578883/125000000000 : ℚ), (-4149569543/10000000000 : ℚ), (110618466433/500000000000 : ℚ), 3⟩,
    ⟨(117505329333/200000000000 : ℚ), (-2240532419/5000000000 : ℚ), (240646990177/1000000000000 : ℚ), 3⟩,
    ⟨(590982371783/1000000000000 : ℚ), (-2376549359/5000000000 : ℚ), (256676244097/1000000000000 : ℚ), 3⟩,
    ⟨(593914525897/1000000000000 : ℚ), (-4971789191/10000000000 : ℚ), (134816133803/500000000000 : ℚ), 3⟩,
    ⟨(596294870759/1000000000000 : ℚ), (-1285444809/2500000000 : ℚ), (8742135187/31250000000 : ℚ), 3⟩,
    ⟨(598100482347/1000000000000 : ℚ), (-1316625459/2500000000 : ℚ), (287196677427/1000000000000 : ℚ), 3⟩,
    ⟨(299656985817/500000000000 : ℚ), (-5348374623/10000000000 : ℚ), (9128076403/31250000000 : ℚ), 3⟩,
    ⟨(74990456507/125000000000 : ℚ), (-673617107/1250000000 : ℚ), (294530630777/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-2696994901/5000000000 : ℚ), (294833788231/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (283176271983/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control788.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control788.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate788

-- Control789
namespace DiagonalRamsey.JointInheritedCertificate789
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(14020108523/62500000000 : ℚ), (319704507439/1000000000 : ℚ), (-7197630717467/100000000000 : ℚ), 11⟩,
    ⟨(225772363501/1000000000000 : ℚ), (338774841613/10000000000 : ℚ), (-7782647492981/1000000000000 : ℚ), 8⟩,
    ⟨(11430893549/50000000000 : ℚ), (56124881521/5000000000 : ℚ), (-661661890379/250000000000 : ℚ), 7⟩,
    ⟨(58187226887/250000000000 : ℚ), (50762500487/10000000000 : ℚ), (-6154997217/5000000000 : ℚ), 6⟩,
    ⟨(238006719787/1000000000000 : ℚ), (5187781501/2000000000 : ℚ), (-323878118443/500000000000 : ℚ), 5⟩,
    ⟨(244189252921/1000000000000 : ℚ), (213221579/156250000 : ℚ), (-351857954279/1000000000000 : ℚ), 5⟩,
    ⟨(62764728917/250000000000 : ℚ), (6739548419/10000000000 : ℚ), (-181072142609/1000000000000 : ℚ), 4⟩,
    ⟨(258351710743/1000000000000 : ℚ), (2508604737/10000000000 : ℚ), (-73434139749/1000000000000 : ℚ), 4⟩,
    ⟨(265787380119/1000000000000 : ℚ), (-1003129/40000000 : ℚ), (-1187413783/1000000000000 : ℚ), 4⟩,
    ⟨(136540087597/500000000000 : ℚ), (-266855929/1250000000 : ℚ), (2476933233/50000000000 : ℚ), 4⟩,
    ⟨(279949837941/1000000000000 : ℚ), (-3462375457/10000000000 : ℚ), (43113636663/500000000000 : ℚ), 4⟩,
    ⟨(11445294843/40000000000 : ℚ), (-4413193919/10000000000 : ℚ), (56564782273/500000000000 : ℚ), 4⟩,
    ⟨(145695091657/500000000000 : ℚ), (-50922787/100000000 : ℚ), (132734449189/1000000000000 : ℚ), 4⟩,
    ⟨(147760609941/500000000000 : ℚ), (-2780922401/5000000000 : ℚ), (146512418547/1000000000000 : ℚ), 4⟩,
    ⟨(298366727361/1000000000000 : ℚ), (-1464602857/2500000000 : ℚ), (4853697177/31250000000 : ℚ), 4⟩,
    ⟨(149908677247/500000000000 : ℚ), (-6002199827/10000000000 : ℚ), (159618849043/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-376248317/625000000 : ℚ), (32030376797/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (515333149669/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control789.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control789.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate789

-- Control790
namespace DiagonalRamsey.JointInheritedCertificate790
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(192358544579/1000000000000 : ℚ), (900183116619/2500000000 : ℚ), (-3474271916999/50000000000 : ℚ), 11⟩,
    ⟨(193463435933/1000000000000 : ℚ), (190881910609/5000000000 : ℚ), (-375012034821/50000000000 : ℚ), 8⟩,
    ⟨(12226922393/62500000000 : ℚ), (63189816693/5000000000 : ℚ), (-25408597869/10000000000 : ℚ), 7⟩,
    ⟨(198777222659/1000000000000 : ℚ), (2277488621/400000000 : ℚ), (-234759795769/200000000000 : ℚ), 6⟩,
    ⟨(101390956093/500000000000 : ℚ), (1802198017/625000000 : ℚ), (-122093892069/200000000000 : ℚ), 5⟩,
    ⟨(41498185779/200000000000 : ℚ), (14877920001/10000000000 : ℚ), (-324566151393/1000000000000 : ℚ), 5⟩,
    ⟨(212723307917/1000000000000 : ℚ), (7009056361/10000000000 : ℚ), (-159441925957/1000000000000 : ℚ), 5⟩,
    ⟨(218277971859/1000000000000 : ℚ), (2170005921/10000000000 : ℚ), (-55269278339/1000000000000 : ℚ), 4⟩,
    ⟨(223941458101/1000000000000 : ℚ), (-999227921/10000000000 : ℚ), (14746361639/1000000000000 : ℚ), 4⟩,
    ⟨(229496122043/1000000000000 : ℚ), (-1586317969/5000000000 : ℚ), (63989537079/1000000000000 : ℚ), 4⟩,
    ⟨(29341062633/125000000000 : ℚ), (-4710801153/10000000000 : ℚ), (24918824351/250000000000 : ℚ), 4⟩,
    ⟨(119718758887/500000000000 : ℚ), (-5817148333/10000000000 : ℚ), (125896417701/1000000000000 : ℚ), 4⟩,
    ⟨(243442207301/1000000000000 : ℚ), (-6610337871/10000000000 : ℚ), (145043305921/1000000000000 : ℚ), 4⟩,
    ⟨(30823583959/125000000000 : ℚ), (-7160565703/10000000000 : ℚ), (79261623481/500000000000 : ℚ), 4⟩,
    ⟨(124377997013/500000000000 : ℚ), (-1501783571/2000000000 : ℚ), (41787638113/250000000000 : ℚ), 4⟩,
    ⟨(249860885381/1000000000000 : ℚ), (-7678068023/10000000000 : ℚ), (171367559207/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7698988141/10000000000 : ℚ), (85945208273/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (520468510299/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control790.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control790.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate790

-- Control791
namespace DiagonalRamsey.JointInheritedCertificate791
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(204672356231/1000000000000 : ℚ), (928778008911/2000000000 : ℚ), (-95272422098727/1000000000000 : ℚ), 12⟩,
    ⟨(41108242437/200000000000 : ℚ), (246551389033/5000000000 : ℚ), (-2562688187877/250000000000 : ℚ), 9⟩,
    ⟨(41449106889/200000000000 : ℚ), (16307517143/1000000000 : ℚ), (-172419049573/50000000000 : ℚ), 7⟩,
    ⟨(13107489179/62500000000 : ℚ), (18257010671/2500000000 : ℚ), (-1573465513457/1000000000000 : ℚ), 6⟩,
    ⟨(21286900377/100000000000 : ℚ), (291422241/80000000 : ℚ), (-40052099971/50000000000 : ℚ), 6⟩,
    ⟨(216572044063/1000000000000 : ℚ), (9079533819/5000000000 : ℚ), (-204597561541/500000000000 : ℚ), 5⟩,
    ⟨(220686641979/1000000000000 : ℚ), (3902727129/5000000000 : ℚ), (-2288078437/12500000000 : ℚ), 5⟩,
    ⟨(56263668957/250000000000 : ℚ), (1405234677/10000000000 : ℚ), (-4051656261/100000000000 : ℚ), 5⟩,
    ⟨(5737707113/25000000000 : ℚ), (-2807272131/10000000000 : ℚ), (6895597549/125000000000 : ℚ), 4⟩,
    ⟨(233876318369/1000000000000 : ℚ), (-142737987/250000000 : ℚ), (61187204371/500000000000 : ℚ), 4⟩,
    ⟨(118995458143/500000000000 : ℚ), (-7772282883/10000000000 : ℚ), (85512173357/500000000000 : ℚ), 4⟩,
    ⟨(120846978289/500000000000 : ℚ), (-4630886857/5000000000 : ℚ), (103369919201/500000000000 : ℚ), 4⟩,
    ⟨(61210783371/250000000000 : ℚ), (-10333426673/10000000000 : ℚ), (58201441481/250000000000 : ℚ), 4⟩,
    ⟨(247317425903/1000000000000 : ℚ), (-11079076879/10000000000 : ℚ), (125576600359/500000000000 : ℚ), 4⟩,
    ⟨(62255437041/250000000000 : ℚ), (-11552269717/10000000000 : ℚ), (262895979313/1000000000000 : ℚ), 4⟩,
    ⟨(249890604117/1000000000000 : ℚ), (-11782387639/10000000000 : ℚ), (67159090399/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2952716223/2500000000 : ℚ), (269348137059/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (114325257667/250000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control791.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control791.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate791

-- Control792
namespace DiagonalRamsey.JointInheritedCertificate792
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42133864207/250000000000 : ℚ), (5510003965309/10000000000 : ℚ), (-9304725314329/100000000000 : ℚ), 12⟩,
    ⟨(6765543203/40000000000 : ℚ), (584725889571/10000000000 : ℚ), (-1248005879929/125000000000 : ℚ), 9⟩,
    ⟨(2129020611/12500000000 : ℚ), (96365616597/5000000000 : ℚ), (-417285140309/125000000000 : ℚ), 7⟩,
    ⟨(43009799643/250000000000 : ℚ), (8560175757/1000000000 : ℚ), (-1506422689873/1000000000000 : ℚ), 7⟩,
    ⟨(174225224681/1000000000000 : ℚ), (20980487191/5000000000 : ℚ), (-375809680821/500000000000 : ℚ), 6⟩,
    ⟨(176795719449/1000000000000 : ℚ), (314334167/156250000 : ℚ), (-184294312549/500000000000 : ℚ), 5⟩,
    ⟨(179651900203/1000000000000 : ℚ), (3848584751/5000000000 : ℚ), (-147405900037/1000000000000 : ℚ), 5⟩,
    ⟨(182684005519/1000000000000 : ℚ), (-4486621/5000000000 : ℚ), (-157769759/20000000000 : ℚ), 5⟩,
    ⟨(18577551329/100000000000 : ℚ), (-1020300367/2000000000 : ℚ), (17176056567/200000000000 : ℚ), 5⟩,
    ⟨(94403809303/500000000000 : ℚ), (-2156248587/2500000000 : ℚ), (151844721411/1000000000000 : ℚ), 4⟩,
    ⟨(598949373/3125000000 : ℚ), (-11140143423/10000000000 : ℚ), (99838605007/500000000000 : ℚ), 4⟩,
    ⟨(12139643383/62500000000 : ℚ), (-2592786787/2000000000 : ℚ), (46971947287/200000000000 : ℚ), 4⟩,
    ⟨(196420320237/1000000000000 : ℚ), (-14281183221/10000000000 : ℚ), (260585870229/1000000000000 : ℚ), 4⟩,
    ⟨(19813786993/100000000000 : ℚ), (-7600374033/5000000000 : ℚ), (139362838627/500000000000 : ℚ), 4⟩,
    ⟨(39864187747/200000000000 : ℚ), (-15785787213/10000000000 : ℚ), (9073492801/31250000000 : ℚ), 4⟩,
    ⟨(199924061981/1000000000000 : ℚ), (-2008843833/1250000000 : ℚ), (148020119323/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16106036689/10000000000 : ℚ), (296745825087/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (456343183361/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control792.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control792.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate792

-- Control793
namespace DiagonalRamsey.JointInheritedCertificate793
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1789201007/40000000000 : ℚ), (425215441273/2000000000 : ℚ), (-9543639675639/1000000000000 : ℚ), 11⟩,
    ⟨(11281821679/250000000000 : ℚ), (24180712803/1250000000 : ℚ), (-884667110249/1000000000000 : ℚ), 8⟩,
    ⟨(5732666291/125000000000 : ℚ), (10121768241/2500000000 : ℚ), (-190558770271/1000000000000 : ℚ), 6⟩,
    ⟨(46820404527/1000000000000 : ℚ), (-148924569/1250000000 : ℚ), (548258413/250000000000 : ℚ), 6⟩,
    ⟨(47858498959/1000000000000 : ℚ), (-4553434659/2500000000 : ℚ), (16532816167/200000000000 : ℚ), 5⟩,
    ⟨(24408786579/500000000000 : ℚ), (-26685819239/10000000000 : ℚ), (123584354099/1000000000000 : ℚ), 5⟩,
    ⟨(49551616771/1000000000000 : ℚ), (-31170082047/10000000000 : ℚ), (145632715663/1000000000000 : ℚ), 5⟩,
    ⟨(49948878311/1000000000000 : ℚ), (-16589370453/5000000000 : ℚ), (31125014053/200000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-33421194033/10000000000 : ℚ), (156836714761/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (301743039759/500000000000 : ℚ)
  μ := (1/20 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control793.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control793.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate793
