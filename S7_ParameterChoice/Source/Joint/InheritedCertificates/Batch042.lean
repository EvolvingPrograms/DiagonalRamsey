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

-- Control363
namespace DiagonalRamsey.JointInheritedCertificate363
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276990802041/1000000000000 : ℚ), (1779221136859/1250000000 : ℚ), (-197511050453479/500000000000 : ℚ), 12⟩,
    ⟨(277727139141/1000000000000 : ℚ), (777437765503/5000000000 : ℚ), (-1364268703543/31250000000 : ℚ), 9⟩,
    ⟨(69798180503/250000000000 : ℚ), (136135526501/2500000000 : ℚ), (-3109442652207/200000000000 : ℚ), 7⟩,
    ⟨(28137343629/100000000000 : ℚ), (33498865701/1250000000 : ℚ), (-390130259503/50000000000 : ℚ), 6⟩,
    ⟨(35531035063/125000000000 : ℚ), (3879887183/250000000 : ℚ), (-923062719249/200000000000 : ℚ), 5⟩,
    ⟨(287789568333/1000000000000 : ℚ), (1974647939/200000000 : ℚ), (-3001685816883/1000000000000 : ℚ), 5⟩,
    ⟨(291963195239/1000000000000 : ℚ), (66682638761/10000000000 : ℚ), (-518343705147/250000000000 : ℚ), 5⟩,
    ⟨(148364483457/500000000000 : ℚ), (9374427463/2000000000 : ℚ), (-1490703673849/1000000000000 : ℚ), 4⟩,
    ⟨(302040986371/1000000000000 : ℚ), (16923833277/5000000000 : ℚ), (-1101052988813/1000000000000 : ℚ), 4⟩,
    ⟨(307848095959/1000000000000 : ℚ), (1554636293/625000000 : ℚ), (-165519779583/200000000000 : ℚ), 4⟩,
    ⟨(157047185019/500000000000 : ℚ), (3691927727/2000000000 : ℚ), (-628253378507/1000000000000 : ℚ), 3⟩,
    ⟨(160359826787/500000000000 : ℚ), (6867717869/5000000000 : ℚ), (-23919684313/50000000000 : ℚ), 3⟩,
    ⟨(163830070733/500000000000 : ℚ), (5084535173/5000000000 : ℚ), (-181419849483/500000000000 : ℚ), 3⟩,
    ⟨(16742449651/50000000000 : ℚ), (1484014201/2000000000 : ℚ), (-135911993617/500000000000 : ℚ), 3⟩,
    ⟨(171108487833/500000000000 : ℚ), (2631522169/5000000000 : ℚ), (-99417552219/500000000000 : ℚ), 3⟩,
    ⟨(349693131703/1000000000000 : ℚ), (443046033/1250000000 : ℚ), (-139401219223/1000000000000 : ℚ), 3⟩,
    ⟨(357205461663/1000000000000 : ℚ), (2156724637/10000000000 : ℚ), (-90373096247/1000000000000 : ℚ), 3⟩,
    ⟨(364681617701/1000000000000 : ℚ), (1023550601/10000000000 : ℚ), (-49485156193/1000000000000 : ℚ), 3⟩,
    ⟨(372049600347/1000000000000 : ℚ), (17846757/2000000000 : ℚ), (-1884729237/125000000000 : ℚ), 3⟩,
    ⟨(379238451901/1000000000000 : ℚ), (-687246863/10000000000 : ℚ), (2816627899/200000000000 : ℚ), 2⟩,
    ⟨(24136183737/62500000000 : ℚ), (-1336548429/10000000000 : ℚ), (38927382007/1000000000000 : ℚ), 2⟩,
    ⟨(12275131979/31250000000 : ℚ), (-470459009/2500000000 : ℚ), (15040561537/250000000000 : ℚ), 2⟩,
    ⟨(399050497407/1000000000000 : ℚ), (-58519299/250000000 : ℚ), (9791279097/125000000000 : ℚ), 2⟩,
    ⟨(80971521399/200000000000 : ℚ), (-1363458491/5000000000 : ℚ), (93849747477/1000000000000 : ℚ), 2⟩,
    ⟨(410169626453/1000000000000 : ℚ), (-1525366281/5000000000 : ℚ), (10704451651/100000000000 : ℚ), 2⟩,
    ⟨(414935398127/1000000000000 : ℚ), (-3320306831/10000000000 : ℚ), (59082566233/500000000000 : ℚ), 2⟩,
    ⟨(209554512517/500000000000 : ℚ), (-1770943009/5000000000 : ℚ), (127405030921/1000000000000 : ℚ), 2⟩,
    ⟨(422650312863/1000000000000 : ℚ), (-3720266247/10000000000 : ℚ), (134912443037/1000000000000 : ℚ), 2⟩,
    ⟨(425525157077/1000000000000 : ℚ), (-3859083111/10000000000 : ℚ), (140799372081/1000000000000 : ℚ), 2⟩,
    ⟨(85541174271/200000000000 : ℚ), (-495128077/1250000000 : ℚ), (72574151873/500000000000 : ℚ), 2⟩,
    ⟨(17166858169/40000000000 : ℚ), (-2013992519/5000000000 : ℚ), (148017132193/1000000000000 : ℚ), 2⟩,
    ⟨(17196311653/40000000000 : ℚ), (-507646447/1250000000 : ℚ), (14944262363/100000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1016326571/2500000000 : ℚ), (29924079403/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (152567685899/500000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control363.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control363.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate363

-- Control364
namespace DiagonalRamsey.JointInheritedCertificate364
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71061560433/250000000000 : ℚ), (7174761018333/5000000000 : ℚ), (-102164984041579/250000000000 : ℚ), 12⟩,
    ⟨(71248946669/250000000000 : ℚ), (78383521639/500000000 : ℚ), (-45164292440959/1000000000000 : ℚ), 9⟩,
    ⟨(71621914509/250000000000 : ℚ), (68637619037/1250000000 : ℚ), (-1608450339257/100000000000 : ℚ), 7⟩,
    ⟨(11548299531/40000000000 : ℚ), (844629343/31250000 : ℚ), (-8072548623191/1000000000000 : ℚ), 6⟩,
    ⟨(145816949607/500000000000 : ℚ), (78276635573/5000000000 : ℚ), (-2387624192679/500000000000 : ℚ), 5⟩,
    ⟨(295238707917/1000000000000 : ℚ), (19923780761/2000000000 : ℚ), (-776486415511/250000000000 : ℚ), 5⟩,
    ⟨(149743599053/500000000000 : ℚ), (67298943793/10000000000 : ℚ), (-107281250129/50000000000 : ℚ), 5⟩,
    ⟨(9510576703/31250000000 : ℚ), (23659878897/5000000000 : ℚ), (-192860334697/125000000000 : ℚ), 4⟩,
    ⟨(154872878419/500000000000 : ℚ), (17091685917/5000000000 : ℚ), (-1139830213189/1000000000000 : ℚ), 4⟩,
    ⟨(157828514927/500000000000 : ℚ), (25132200471/10000000000 : ℚ), (-8569912759/10000000000 : ℚ), 4⟩,
    ⟨(20125959047/62500000000 : ℚ), (149294723/80000000 : ℚ), (-325412246957/500000000000 : ℚ), 3⟩,
    ⟨(65751893497/200000000000 : ℚ), (13896441897/10000000000 : ℚ), (-30991041051/62500000000 : ℚ), 3⟩,
    ⟨(67164889693/200000000000 : ℚ), (10299025299/10000000000 : ℚ), (-188191546601/500000000000 : ℚ), 3⟩,
    ⟨(171571124031/500000000000 : ℚ), (1881556863/2500000000 : ℚ), (-141149308209/500000000000 : ℚ), 3⟩,
    ⟨(175321195933/500000000000 : ℚ), (133767951/250000000 : ℚ), (-51716590103/250000000000 : ℚ), 3⟩,
    ⟨(358252649391/1000000000000 : ℚ), (904384143/2500000000 : ℚ), (-145459423501/1000000000000 : ℚ), 3⟩,
    ⟨(365899729699/1000000000000 : ℚ), (221841507/1000000000 : ℚ), (-47409550441/500000000000 : ℚ), 3⟩,
    ⟨(46688748403/125000000000 : ℚ), (269025229/2500000000 : ℚ), (-26300399313/500000000000 : ℚ), 3⟩,
    ⟨(95252532757/250000000000 : ℚ), (16808847/1250000000 : ℚ), (-854340817/50000000000 : ℚ), 3⟩,
    ⟨(621324689/1600000000 : ℚ), (-647881457/10000000000 : ℚ), (650029941/50000000000 : ℚ), 2⟩,
    ⟨(79078582321/200000000000 : ℚ), (-1301907307/10000000000 : ℚ), (38624050007/1000000000000 : ℚ), 2⟩,
    ⟨(201068517169/500000000000 : ℚ), (-1850999791/10000000000 : ℚ), (60516205773/1000000000000 : ℚ), 2⟩,
    ⟨(102123837309/250000000000 : ℚ), (-1156499647/5000000000 : ℚ), (79239181183/1000000000000 : ℚ), 2⟩,
    ⟨(103601655563/250000000000 : ℚ), (-6754017/25000000 : ℚ), (95226686291/1000000000000 : ℚ), 2⟩,
    ⟨(209906962297/500000000000 : ℚ), (-3027394611/10000000000 : ℚ), (10881444183/100000000000 : ℚ), 2⟩,
    ⟨(53083147623/125000000000 : ℚ), (-659707719/2000000000 : ℚ), (12026245463/100000000000 : ℚ), 2⟩,
    ⟨(107228417793/250000000000 : ℚ), (-1760677121/5000000000 : ℚ), (64885766353/500000000000 : ℚ), 2⟩,
    ⟨(108129619969/250000000000 : ℚ), (-925172981/2500000000 : ℚ), (8593477441/62500000000 : ℚ), 2⟩,
    ⟨(87088978163/200000000000 : ℚ), (-384022907/1000000000 : ℚ), (143551168301/1000000000000 : ℚ), 2⟩,
    ⟨(218832360527/500000000000 : ℚ), (-3942685069/10000000000 : ℚ), (9251492603/62500000000 : ℚ), 2⟩,
    ⟨(219578296207/500000000000 : ℚ), (-2004988283/5000000000 : ℚ), (75486998647/500000000000 : ℚ), 2⟩,
    ⟨(219953068679/500000000000 : ℚ), (-505415641/1250000000 : ℚ), (19054971159/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2023739963/5000000000 : ℚ), (30524512179/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (4682196007/15625000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control364.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control364.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate364

-- Control365
namespace DiagonalRamsey.JointInheritedCertificate365
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291593802319/1000000000000 : ℚ), (23158855513/16000000 : ℚ), (-26428880192193/62500000000 : ℚ), 12⟩,
    ⟨(146178055893/500000000000 : ℚ), (790731747263/5000000000 : ℚ), (-46734531355149/1000000000000 : ℚ), 9⟩,
    ⟨(18367086829/62500000000 : ℚ), (277008523501/5000000000 : ℚ), (-416104943959/25000000000 : ℚ), 7⟩,
    ⟨(296131022541/1000000000000 : ℚ), (68188138301/2500000000 : ℚ), (-522114887393/62500000000 : ℚ), 6⟩,
    ⟨(149553634687/500000000000 : ℚ), (158019132131/10000000000 : ℚ), (-617747487513/125000000000 : ℚ), 5⟩,
    ⟨(236541771/781250000 : ℚ), (100576760113/10000000000 : ℚ), (-3214700657409/1000000000000 : ℚ), 5⟩,
    ⟨(307094307571/1000000000000 : ℚ), (1359310173/200000000 : ℚ), (-444209596871/200000000000 : ℚ), 5⟩,
    ⟨(4875440303/15625000000 : ℚ), (47804440581/10000000000 : ℚ), (-1597406267651/1000000000000 : ℚ), 4⟩,
    ⟨(317527566457/1000000000000 : ℚ), (34547353239/10000000000 : ℚ), (-590199993561/500000000000 : ℚ), 4⟩,
    ⟨(64707901333/200000000000 : ℚ), (25412368851/10000000000 : ℚ), (-221947654023/250000000000 : ℚ), 4⟩,
    ⟨(20625381359/62500000000 : ℚ), (9440880557/5000000000 : ℚ), (-674523305007/1000000000000 : ℚ), 3⟩,
    ⟨(336865074849/1000000000000 : ℚ), (7035936417/5000000000 : ℚ), (-32139948997/62500000000 : ℚ), 3⟩,
    ⟨(172025185159/500000000000 : ℚ), (5220449439/5000000000 : ℚ), (-390687316157/1000000000000 : ℚ), 3⟩,
    ⟨(35149278983/100000000000 : ℚ), (1528472101/2000000000 : ℚ), (-58682152721/200000000000 : ℚ), 3⟩,
    ⟨(71824131763/200000000000 : ℚ), (5446840741/10000000000 : ℚ), (-215437889547/1000000000000 : ℚ), 3⟩,
    ⟨(14674420669/40000000000 : ℚ), (3697937451/10000000000 : ℚ), (-151980276209/1000000000000 : ℚ), 3⟩,
    ⟨(374637824499/1000000000000 : ℚ), (2286359741/10000000000 : ℚ), (-99665185837/1000000000000 : ℚ), 3⟩,
    ⟨(382377682409/1000000000000 : ℚ), (283528073/2500000000 : ℚ), (-28032851103/500000000000 : ℚ), 3⟩,
    ⟨(195002775697/500000000000 : ℚ), (92260841/5000000000 : ℚ), (-9701770747/500000000000 : ℚ), 2⟩,
    ⟨(198723985453/500000000000 : ℚ), (-120846533/2000000000 : ℚ), (5822188993/500000000000 : ℚ), 2⟩,
    ⟨(3237066131/8000000000 : ℚ), (-1263419169/10000000000 : ℚ), (19037529069/500000000000 : ℚ), 2⟩,
    ⟨(10287305987/25000000000 : ℚ), (-181667611/1000000000 : ℚ), (60647581939/1000000000000 : ℚ), 2⟩,
    ⟨(417958834559/1000000000000 : ℚ), (-2282035569/10000000000 : ℚ), (39972271521/500000000000 : ℚ), 2⟩,
    ⟨(423970774767/1000000000000 : ℚ), (-1336674721/5000000000 : ℚ), (48207820883/500000000000 : ℚ), 2⟩,
    ⟨(53683770229/125000000000 : ℚ), (-960419/3200000 : ℚ), (110409141993/1000000000000 : ℚ), 2⟩,
    ⟨(434404033653/1000000000000 : ℚ), (-3274185741/10000000000 : ℚ), (7637181571/62500000000 : ℚ), 2⟩,
    ⟨(54840609293/125000000000 : ℚ), (-437296083/1250000000 : ℚ), (32995365983/250000000000 : ℚ), 2⟩,
    ⟨(8847821437/20000000000 : ℚ), (-919691753/2500000000 : ℚ), (69964397021/500000000000 : ℚ), 2⟩,
    ⟨(445367318683/1000000000000 : ℚ), (-954775839/2500000000 : ℚ), (73078950789/500000000000 : ℚ), 2⟩,
    ⟨(11190623799/25000000000 : ℚ), (-1961065483/5000000000 : ℚ), (150757990583/1000000000000 : ℚ), 2⟩,
    ⟨(224571114719/500000000000 : ℚ), (-79795813/200000000 : ℚ), (30758344811/200000000000 : ℚ), 2⟩,
    ⟨(89980907781/200000000000 : ℚ), (-1005829877/2500000000 : ℚ), (38824730667/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-4027496667/10000000000 : ℚ), (155486874913/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (1176579339/4000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control365.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control365.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate365

-- Control366
namespace DiagonalRamsey.JointInheritedCertificate366
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(59792699149/200000000000 : ℚ), (14598031433859/10000000000 : ℚ), (-218624770949949/500000000000 : ℚ), 12⟩,
    ⟨(11989538529/40000000000 : ℚ), (1595143082787/10000000000 : ℚ), (-24162598007717/500000000000 : ℚ), 9⟩,
    ⟨(37660116853/125000000000 : ℚ), (558891874221/10000000000 : ℚ), (-268923875167/15625000000 : ℚ), 7⟩,
    ⟨(303576055697/1000000000000 : ℚ), (137601169011/5000000000 : ℚ), (-8638730514457/1000000000000 : ℚ), 6⟩,
    ⟨(306601722577/1000000000000 : ℚ), (79735897101/5000000000 : ℚ), (-5110819922521/1000000000000 : ℚ), 5⟩,
    ⟨(77582199159/250000000000 : ℚ), (101525553193/10000000000 : ℚ), (-664961745999/200000000000 : ℚ), 5⟩,
    ⟨(62944276823/200000000000 : ℚ), (8578173029/1250000000 : ℚ), (-2297390538439/1000000000000 : ℚ), 5⟩,
    ⟨(159868590997/500000000000 : ℚ), (24141959653/5000000000 : ℚ), (-66103137769/40000000000 : ℚ), 4⟩,
    ⟨(162663942699/500000000000 : ℚ), (4363389927/1250000000 : ℚ), (-152679780871/125000000000 : ℚ), 4⟩,
    ⟨(331439652797/1000000000000 : ℚ), (6422253043/2500000000 : ℚ), (-918933160109/1000000000000 : ℚ), 4⟩,
    ⟨(33801362453/100000000000 : ℚ), (9549328369/5000000000 : ℚ), (-139695017239/200000000000 : ℚ), 3⟩,
    ⟨(43123311207/125000000000 : ℚ), (178058149/125000000 : ℚ), (-532807918339/1000000000000 : ℚ), 3⟩,
    ⟨(44036386959/125000000000 : ℚ), (10580406439/10000000000 : ℚ), (-405127304993/1000000000000 : ℚ), 3⟩,
    ⟨(89964273807/250000000000 : ℚ), (3878175621/5000000000 : ℚ), (-304619944117/1000000000000 : ℚ), 3⟩,
    ⟨(367611623613/1000000000000 : ℚ), (221639983/400000000 : ℚ), (-224076340027/1000000000000 : ℚ), 3⟩,
    ⟨(375480000479/1000000000000 : ℚ), (1888259623/5000000000 : ℚ), (-158544424511/1000000000000 : ℚ), 3⟩,
    ⟨(383386449057/1000000000000 : ℚ), (117630229/500000000 : ℚ), (-20907181981/200000000000 : ℚ), 3⟩,
    ⟨(391254825923/1000000000000 : ℚ), (1190523371/10000000000 : ℚ), (-372127827/6250000000 : ℚ), 3⟩,
    ⟨(99752338577/250000000000 : ℚ), (233056327/10000000000 : ℚ), (-21718361343/1000000000000 : ℚ), 2⟩,
    ⟨(50821919233/125000000000 : ℚ), (-140507129/2500000000 : ℚ), (2059879963/200000000000 : ℚ), 2⟩,
    ⟨(10346998997/25000000000 : ℚ), (-613157099/5000000000 : ℚ), (4693089493/125000000000 : ℚ), 2⟩,
    ⟨(210426412503/500000000000 : ℚ), (-1783682583/10000000000 : ℚ), (7600433181/125000000000 : ℚ), 2⟩,
    ⟨(427426796739/1000000000000 : ℚ), (-563089049/2500000000 : ℚ), (80679023287/1000000000000 : ℚ), 2⟩,
    ⟨(216769282069/500000000000 : ℚ), (-1323168459/5000000000 : ℚ), (48818661829/500000000000 : ℚ), 2⟩,
    ⟨(219564633771/500000000000 : ℚ), (-372054381/1250000000 : ℚ), (112039370483/1000000000000 : ℚ), 2⟩,
    ⟨(444145065421/1000000000000 : ℚ), (-101594217/312500000 : ℚ), (124165038849/1000000000000 : ℚ), 2⟩,
    ⟨(4485376529/10000000000 : ℚ), (-434567623/1250000000 : ℚ), (134230715413/1000000000000 : ℚ), 2⟩,
    ⟨(452264726959/1000000000000 : ℚ), (-1828990119/5000000000 : ℚ), (71201245501/500000000000 : ℚ), 2⟩,
    ⟨(455290393839/1000000000000 : ℚ), (-3799100203/10000000000 : ℚ), (29761212809/200000000000 : ℚ), 2⟩,
    ⟨(57198189339/125000000000 : ℚ), (-3902687871/10000000000 : ℚ), (15353414297/100000000000 : ℚ), 2⟩,
    ⟨(459127986311/1000000000000 : ℚ), (-39707081/100000000 : ℚ), (78325939953/500000000000 : ℚ), 2⟩,
    ⟨(459902953791/1000000000000 : ℚ), (-4004413451/10000000000 : ℚ), (79100345469/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-801722499/2000000000 : ℚ), (158393826571/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (288625974457/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control366.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control366.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate366

-- Control367
namespace DiagonalRamsey.JointInheritedCertificate367
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(153176433867/500000000000 : ℚ), (3680130331361/2500000000 : ℚ), (-451809880575303/1000000000000 : ℚ), 12⟩,
    ⟨(12285615941/40000000000 : ℚ), (201085305883/1250000000 : ℚ), (-4993489967293/100000000000 : ℚ), 9⟩,
    ⟨(77176968939/250000000000 : ℚ), (11274315793/200000000 : ℚ), (-17784790216887/1000000000000 : ℚ), 7⟩,
    ⟨(77760050941/250000000000 : ℚ), (277625812697/10000000000 : ℚ), (-557935304717/62500000000 : ℚ), 6⟩,
    ⟨(62822984191/200000000000 : ℚ), (8045413263/500000000 : ℚ), (-33010049197/6250000000 : ℚ), 5⟩,
    ⟨(158951208061/500000000000 : ℚ), (102463272367/10000000000 : ℚ), (-687231997197/200000000000 : ℚ), 5⟩,
    ⟨(64473242723/200000000000 : ℚ), (34638562069/5000000000 : ℚ), (-2374571936999/1000000000000 : ℚ), 5⟩,
    ⟨(163731662313/500000000000 : ℚ), (48757101309/10000000000 : ℚ), (-1708336788557/1000000000000 : ℚ), 4⟩,
    ⟨(83286165297/250000000000 : ℚ), (282094511/80000000 : ℚ), (-12628948213/10000000000 : ℚ), 4⟩,
    ⟨(13574220357/40000000000 : ℚ), (6490359819/2500000000 : ℚ), (-237594333453/250000000000 : ℚ), 4⟩,
    ⟨(346036053977/1000000000000 : ℚ), (3862391243/2000000000 : ℚ), (-90330566557/125000000000 : ℚ), 3⟩,
    ⟨(88280489761/250000000000 : ℚ), (3603574511/2500000000 : ℚ), (-275766134751/500000000000 : ℚ), 3⟩,
    ⟨(360544982987/1000000000000 : ℚ), (2679283959/2500000000 : ℚ), (-104919026403/250000000000 : ℚ), 3⟩,
    ⟨(92058409507/250000000000 : ℚ), (1966960371/2500000000 : ℚ), (-63180413799/200000000000 : ℚ), 3⟩,
    ⟨(188056939107/500000000000 : ℚ), (2816439657/5000000000 : ℚ), (-232759921429/1000000000000 : ℚ), 3⟩,
    ⟨(15364392501/40000000000 : ℚ), (3853001399/10000000000 : ℚ), (-41282987567/250000000000 : ℚ), 3⟩,
    ⟨(12254513617/31250000000 : ℚ), (302112169/1250000000 : ℚ), (-1709576563/15625000000 : ℚ), 3⟩,
    ⟨(80028074011/200000000000 : ℚ), (311276323/2500000000 : ℚ), (-63007965271/1000000000000 : ℚ), 3⟩,
    ⟨(204010305121/500000000000 : ℚ), (55973059/2000000000 : ℚ), (-960611101/40000000000 : ℚ), 2⟩,
    ⟨(207854632641/500000000000 : ℚ), (-521462141/10000000000 : ℚ), (8980742343/1000000000000 : ℚ), 2⟩,
    ⟨(16925291569/40000000000 : ℚ), (-1190771823/10000000000 : ℚ), (7409463447/200000000000 : ℚ), 2⟩,
    ⟨(107554548573/250000000000 : ℚ), (-175218707/1000000000 : ℚ), (243989917/4000000000 : ℚ), 2⟩,
    ⟨(27306171209/62500000000 : ℚ), (-1112059631/5000000000 : ℚ), (16291134181/200000000000 : ℚ), 2⟩,
    ⟨(443109587081/1000000000000 : ℚ), (-262071907/1000000000 : ℚ), (98904290717/1000000000000 : ℚ), 2⟩,
    ⟨(448790923643/1000000000000 : ℚ), (-2952914547/10000000000 : ℚ), (22743453897/200000000000 : ℚ), 2⟩,
    ⟨(226944017327/500000000000 : ℚ), (-807290839/2500000000 : ℚ), (126184647497/1000000000000 : ℚ), 2⟩,
    ⟨(458351832147/1000000000000 : ℚ), (-864000903/2500000000 : ℚ), (136530787719/1000000000000 : ℚ), 2⟩,
    ⟨(231069663657/500000000000 : ℚ), (-3638460197/10000000000 : ℚ), (4528999821/31250000000 : ℚ), 2⟩,
    ⟨(93042808901/200000000000 : ℚ), (-3780345241/10000000000 : ℚ), (75753367587/500000000000 : ℚ), 2⟩,
    ⟨(467546372513/1000000000000 : ℚ), (-1942239619/5000000000 : ℚ), (156363281819/1000000000000 : ℚ), 2⟩,
    ⟨(29319615609/62500000000 : ℚ), (-3860206/9765625 : ℚ), (159565318131/1000000000000 : ℚ), 2⟩,
    ⟨(93980276107/200000000000 : ℚ), (-996682069/2500000000 : ℚ), (161155882573/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-997737161/2500000000 : ℚ), (161354219071/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (283105876773/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control367.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control367.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate367

-- Control368
namespace DiagonalRamsey.JointInheritedCertificate368
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(220589598931/1000000000000 : ℚ), (6700200265309/5000000000 : ℚ), (-148100576083237/500000000000 : ℚ), 12⟩,
    ⟨(110606184927/500000000000 : ℚ), (2856960741/19531250 : ℚ), (-8183122950561/250000000000 : ℚ), 9⟩,
    ⟨(8898076563/40000000000 : ℚ), (63965820593/1250000000 : ℚ), (-11654817217163/1000000000000 : ℚ), 7⟩,
    ⟨(112148147053/500000000000 : ℚ), (251506469059/10000000000 : ℚ), (-2923735451573/500000000000 : ℚ), 6⟩,
    ⟨(226727747559/1000000000000 : ℚ), (145425483261/10000000000 : ℚ), (-1728677355159/500000000000 : ℚ), 5⟩,
    ⟨(229722858209/1000000000000 : ℚ), (23088707333/2500000000 : ℚ), (-2247200990837/1000000000000 : ℚ), 5⟩,
    ⟨(233252781501/1000000000000 : ℚ), (62249766513/10000000000 : ℚ), (-31017811303/20000000000 : ℚ), 5⟩,
    ⟨(118641761173/500000000000 : ℚ), (43653012757/10000000000 : ℚ), (-111372043/100000000 : ℚ), 4⟩,
    ⟨(48355252501/200000000000 : ℚ), (7858381417/2500000000 : ℚ), (-821251510103/1000000000000 : ℚ), 4⟩,
    ⟨(61671933609/250000000000 : ℚ), (2877319051/1250000000 : ℚ), (-615879750747/1000000000000 : ℚ), 4⟩,
    ⟨(251970637977/1000000000000 : ℚ), (265704233/156250000 : ℚ), (-466047875351/1000000000000 : ℚ), 3⟩,
    ⟨(257574095881/1000000000000 : ℚ), (12576652141/10000000000 : ℚ), (-353295206769/1000000000000 : ℚ), 3⟩,
    ⟨(32930517973/125000000000 : ℚ), (4616524011/5000000000 : ℚ), (-266241950451/1000000000000 : ℚ), 3⟩,
    ⟨(67381062479/250000000000 : ℚ), (6654617449/10000000000 : ℚ), (-98783690517/500000000000 : ℚ), 3⟩,
    ⟨(68938964883/250000000000 : ℚ), (2314960923/5000000000 : ℚ), (-71196318339/500000000000 : ℚ), 3⟩,
    ⟨(35259869853/125000000000 : ℚ), (1507491449/5000000000 : ℚ), (-97368611077/1000000000000 : ℚ), 3⟩,
    ⟨(28843265289/100000000000 : ℚ), (854663377/5000000000 : ℚ), (-15034566691/250000000000 : ℚ), 3⟩,
    ⟨(147377876091/500000000000 : ℚ), (160340167/2500000000 : ℚ), (-14503726497/500000000000 : ℚ), 3⟩,
    ⟨(300987361797/1000000000000 : ℚ), (-240846549/10000000000 : ℚ), (-273666157/100000000000 : ℚ), 3⟩,
    ⟨(30706746793/100000000000 : ℚ), (-39021711/400000000 : ℚ), (9797274779/500000000000 : ℚ), 2⟩,
    ⟨(312937515833/1000000000000 : ℚ), (-1591265673/10000000000 : ℚ), (38678096203/1000000000000 : ℚ), 2⟩,
    ⟨(39817621717/125000000000 : ℚ), (-1054770569/5000000000 : ℚ), (55039225191/1000000000000 : ℚ), 2⟩,
    ⟨(161911938639/500000000000 : ℚ), (-1273375769/5000000000 : ℚ), (690796507/10000000000 : ℚ), 2⟩,
    ⟨(41091918651/125000000000 : ℚ), (-2915451339/10000000000 : ℚ), (81108201177/1000000000000 : ℚ), 2⟩,
    ⟨(333228089367/1000000000000 : ℚ), (-322530747/1000000000 : ℚ), (45681480387/500000000000 : ℚ), 2⟩,
    ⟨(84314707553/250000000000 : ℚ), (-3483780073/10000000000 : ℚ), (100027503759/1000000000000 : ℚ), 2⟩,
    ⟨(68157750701/200000000000 : ℚ), (-739324077/2000000000 : ℚ), (268107363/2500000000 : ℚ), 2⟩,
    ⟨(171891932077/500000000000 : ℚ), (-1934118711/5000000000 : ℚ), (28279241253/250000000000 : ℚ), 2⟩,
    ⟨(346215317607/1000000000000 : ℚ), (-1563269/3906250 : ℚ), (117730588833/1000000000000 : ℚ), 2⟩,
    ⟨(348059697639/1000000000000 : ℚ), (-4100278697/10000000000 : ℚ), (121143259359/1000000000000 : ℚ), 2⟩,
    ⟨(17464962093/50000000000 : ℚ), (-1041225711/2500000000 : ℚ), (61698279461/500000000000 : ℚ), 2⟩,
    ⟨(349922012783/1000000000000 : ℚ), (-419694619/1000000000 : ℚ), (62258413453/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-1050234789/2500000000 : ℚ), (62328282557/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (87073241599/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control368.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control368.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate368

-- Control369
namespace DiagonalRamsey.JointInheritedCertificate369
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30174749937/125000000000 : ℚ), (13692779601971/10000000000 : ℚ), (-331201128811807/1000000000000 : ℚ), 12⟩,
    ⟨(242065003809/1000000000000 : ℚ), (1495078371477/10000000000 : ℚ), (-9150334204561/250000000000 : ℚ), 9⟩,
    ⟨(243392588821/1000000000000 : ℚ), (523237485689/10000000000 : ℚ), (-13033180726969/1000000000000 : ℚ), 7⟩,
    ⟨(6134199229/25000000000 : ℚ), (257287832263/10000000000 : ℚ), (-817461610331/125000000000 : ℚ), 6⟩,
    ⟨(61993030209/250000000000 : ℚ), (37212810069/2500000000 : ℚ), (-3867226739917/1000000000000 : ℚ), 5⟩,
    ⟨(251179964443/1000000000000 : ℚ), (47295253961/5000000000 : ℚ), (-2514161495379/1000000000000 : ℚ), 5⟩,
    ⟨(254960606693/1000000000000 : ℚ), (2552132603/400000000 : ℚ), (-173566977537/100000000000 : ℚ), 5⟩,
    ⟨(259277637937/1000000000000 : ℚ), (44780894231/10000000000 : ℚ), (-623476360891/500000000000 : ℚ), 4⟩,
    ⟨(264089482801/1000000000000 : ℚ), (16139581713/5000000000 : ℚ), (-46002434609/50000000000 : ℚ), 4⟩,
    ⟨(269349800591/1000000000000 : ℚ), (23668426769/10000000000 : ℚ), (-690546474439/1000000000000 : ℚ), 4⟩,
    ⟨(27500793157/100000000000 : ℚ), (17514426931/10000000000 : ℚ), (-523159131027/1000000000000 : ℚ), 3⟩,
    ⟨(70252346211/250000000000 : ℚ), (12982426101/10000000000 : ℚ), (-198621817567/500000000000 : ℚ), 3⟩,
    ⟨(143648181569/500000000000 : ℚ), (9560857257/10000000000 : ℚ), (-300074340731/1000000000000 : ℚ), 3⟩,
    ⟨(73452079853/250000000000 : ℚ), (865346059/1250000000 : ℚ), (-111732058547/500000000000 : ℚ), 3⟩,
    ⟨(300482539969/1000000000000 : ℚ), (4851822987/10000000000 : ℚ), (-20244507861/125000000000 : ℚ), 3⟩,
    ⟨(1200213861/3906250000 : ℚ), (640131441/2000000000 : ℚ), (-111803635067/1000000000000 : ℚ), 3⟩,
    ⟨(78514931171/250000000000 : ℚ), (1866394573/10000000000 : ℚ), (-70369445731/1000000000000 : ℚ), 3⟩,
    ⟨(320831933131/1000000000000 : ℚ), (387848789/5000000000 : ℚ), (-8939301119/250000000000 : ℚ), 3⟩,
    ⟨(40938269211/125000000000 : ℚ), (-124657167/10000000000 : ℚ), (-6578892103/1000000000000 : ℚ), 3⟩,
    ⟨(334018109963/1000000000000 : ℚ), (-873890831/10000000000 : ℚ), (454920153/25000000000 : ℚ), 2⟩,
    ⟨(1329316751/3906250000 : ℚ), (-1501284719/10000000000 : ℚ), (39345707997/1000000000000 : ℚ), 2⟩,
    ⟨(34630654153/100000000000 : ℚ), (-50723491/250000000 : ℚ), (11491453163/200000000000 : ℚ), 2⟩,
    ⟨(351964672509/1000000000000 : ℚ), (-618421653/2500000000 : ℚ), (14596553019/200000000000 : ℚ), 2⟩,
    ⟨(357224990299/1000000000000 : ℚ), (-712108153/2500000000 : ℚ), (10783694669/125000000000 : ℚ), 2⟩,
    ⟨(90509208791/250000000000 : ℚ), (-197695167/625000000 : ℚ), (19517156649/200000000000 : ℚ), 2⟩,
    ⟨(366353866407/1000000000000 : ℚ), (-428179569/1250000000 : ℚ), (107138493641/1000000000000 : ℚ), 2⟩,
    ⟨(185067254329/500000000000 : ℚ), (-3641298441/10000000000 : ℚ), (57543548119/500000000000 : ℚ), 2⟩,
    ⟨(46667794033/125000000000 : ℚ), (-763050497/2000000000 : ℚ), (121553420907/1000000000000 : ℚ), 2⟩,
    ⟨(18797325197/50000000000 : ℚ), (-3950740123/10000000000 : ℚ), (126629282491/1000000000000 : ℚ), 2⟩,
    ⟨(377921884279/1000000000000 : ℚ), (-506287981/1250000000 : ℚ), (2037220867/15625000000 : ℚ), 2⟩,
    ⟨(379249469291/1000000000000 : ℚ), (-823146859/2000000000 : ℚ), (132859225559/1000000000000 : ℚ), 2⟩,
    ⟨(75983294721/200000000000 : ℚ), (-4148172111/10000000000 : ℚ), (134090508241/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4152213983/10000000000 : ℚ), (134244082471/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (33224886841/100000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control369.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control369.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate369

-- Control370
namespace DiagonalRamsey.JointInheritedCertificate370
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134912390947/500000000000 : ℚ), (706345507907/500000000 : ℚ), (-2386992608863/6250000000 : ℚ), 12⟩,
    ⟨(27054748083/100000000000 : ℚ), (1543065921901/10000000000 : ℚ), (-42208149338251/1000000000000 : ℚ), 9⟩,
    ⟨(67996479679/250000000000 : ℚ), (135083969791/2500000000 : ℚ), (-300622883333/20000000000 : ℚ), 7⟩,
    ⟨(27412624261/100000000000 : ℚ), (3323485029/125000000 : ℚ), (-471462995681/62500000000 : ℚ), 6⟩,
    ⟨(276947840021/1000000000000 : ℚ), (38486089359/2500000000 : ℚ), (-1115453883833/250000000000 : ℚ), 5⟩,
    ⟨(11216941497/40000000000 : ℚ), (97916290517/10000000000 : ℚ), (-725420637759/250000000000 : ℚ), 5⟩,
    ⟨(56903972391/200000000000 : ℚ), (66115918017/10000000000 : ℚ), (-1002064328687/500000000000 : ℚ), 5⟩,
    ⟨(289197363767/1000000000000 : ℚ), (11615268993/2500000000 : ℚ), (-360186053537/250000000000 : ℚ), 4⟩,
    ⟨(147205497981/500000000000 : ℚ), (209624063/62500000 : ℚ), (-531986226123/500000000000 : ℚ), 4⟩,
    ⟨(300110548411/1000000000000 : ℚ), (3079750501/1250000000 : ℚ), (-799538029739/1000000000000 : ℚ), 4⟩,
    ⟨(76560282827/250000000000 : ℚ), (18274910493/10000000000 : ℚ), (-60674931563/100000000000 : ℚ), 3⟩,
    ⟨(31274370379/100000000000 : ℚ), (13588654483/10000000000 : ℚ), (-461800693223/1000000000000 : ℚ), 3⟩,
    ⟨(9986113829/31250000000 : ℚ), (125635869/125000000 : ℚ), (-175008008863/500000000000 : ℚ), 3⟩,
    ⟨(81652836207/250000000000 : ℚ), (7323754727/10000000000 : ℚ), (-16372022523/62500000000 : ℚ), 3⟩,
    ⟨(333842860421/1000000000000 : ℚ), (5183705833/10000000000 : ℚ), (-95657417409/500000000000 : ℚ), 3⟩,
    ⟨(170590272929/500000000000 : ℚ), (217396077/625000000 : ℚ), (-66890286661/500000000000 : ℚ), 3⟩,
    ⟨(348553735217/1000000000000 : ℚ), (2101208437/10000000000 : ℚ), (-345221943/4000000000 : ℚ), 3⟩,
    ⟨(355891420653/1000000000000 : ℚ), (244098519/2500000000 : ℚ), (-5837484109/125000000000 : ℚ), 3⟩,
    ⟨(181561468123/500000000000 : ℚ), (48754109/10000000000 : ℚ), (-13359984749/1000000000000 : ℚ), 3⟩,
    ⟨(370178638547/1000000000000 : ℚ), (-90297063/1250000000 : ℚ), (116458689/7812500000 : ℚ), 2⟩,
    ⟨(75398115457/200000000000 : ℚ), (-1367382589/10000000000 : ℚ), (19499095727/500000000000 : ℚ), 2⟩,
    ⟨(191746574883/500000000000 : ℚ), (-1909218521/10000000000 : ℚ), (59597531099/1000000000000 : ℚ), 2⟩,
    ⟨(48702966583/125000000000 : ℚ), (-236538187/1000000000 : ℚ), (15445687409/200000000000 : ℚ), 2⟩,
    ⟨(395323285113/1000000000000 : ℚ), (-1374651893/5000000000 : ℚ), (46147330717/500000000000 : ℚ), 2⟩,
    ⟨(400536917307/1000000000000 : ℚ), (-383917909/1250000000 : ℚ), (105108456549/1000000000000 : ℚ), 2⟩,
    ⟨(405214419119/1000000000000 : ℚ), (-3339507391/10000000000 : ℚ), (57955709101/500000000000 : ℚ), 2⟩,
    ⟨(8186214873/20000000000 : ℚ), (-355997841/1000000000 : ℚ), (7805621507/62500000000 : ℚ), 2⟩,
    ⟨(412786441053/1000000000000 : ℚ), (-934375597/2500000000 : ℚ), (132186799903/1000000000000 : ℚ), 2⟩,
    ⟨(83121607693/200000000000 : ℚ), (-775135267/2000000000 : ℚ), (137909806141/1000000000000 : ℚ), 2⟩,
    ⟨(208874181179/500000000000 : ℚ), (-994289833/2500000000 : ℚ), (142138331669/1000000000000 : ℚ), 2⟩,
    ⟨(104796700061/250000000000 : ℚ), (-126369533/312500000 : ℚ), (72464030781/500000000000 : ℚ), 2⟩,
    ⟨(20995474959/50000000000 : ℚ), (-4076867479/10000000000 : ℚ), (146314348539/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2040492161/5000000000 : ℚ), (29297447459/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (310570225433/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control370.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control370.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate370
