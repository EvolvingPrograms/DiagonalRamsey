import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control549
namespace DiagonalRamsey.JointInheritedCertificate549
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(75333913879/125000000000 : ℚ), (5219201934221/2500000000 : ℚ), (-314917299572901/250000000000 : ℚ), 12⟩,
    ⟨(301810464993/500000000000 : ℚ), (2291989778929/10000000000 : ℚ), (-6964533022209/50000000000 : ℚ), 9⟩,
    ⟨(121102204509/200000000000 : ℚ), (808685698139/10000000000 : ℚ), (-1241530195231/25000000000 : ℚ), 7⟩,
    ⟨(152080846521/250000000000 : ℚ), (401622358211/10000000000 : ℚ), (-6242109108939/250000000000 : ℚ), 6⟩,
    ⟨(122406187201/200000000000 : ℚ), (235022542517/10000000000 : ℚ), (-740399665377/50000000000 : ℚ), 6⟩,
    ⟨(308298983287/500000000000 : ℚ), (75639887001/5000000000 : ℚ), (-9666071663777/1000000000000 : ℚ), 5⟩,
    ⟨(621980494793/1000000000000 : ℚ), (103524517043/10000000000 : ℚ), (-6710043838531/1000000000000 : ℚ), 5⟩,
    ⟨(62812668397/100000000000 : ℚ), (3693072237/500000000 : ℚ), (-971358260927/200000000000 : ℚ), 4⟩,
    ⟨(126995468589/200000000000 : ℚ), (27131974063/5000000000 : ℚ), (-361965016999/100000000000 : ℚ), 4⟩,
    ⟨(321233248063/500000000000 : ℚ), (40699724657/10000000000 : ℚ), (-550727056887/200000000000 : ℚ), 4⟩,
    ⟨(5204176151/8000000000 : ℚ), (15482307123/5000000000 : ℚ), (-2124514729287/1000000000000 : ℚ), 4⟩,
    ⟨(82383291513/125000000000 : ℚ), (23772273299/10000000000 : ℚ), (-330747891879/200000000000 : ℚ), 3⟩,
    ⟨(334008574703/500000000000 : ℚ), (9165860419/5000000000 : ℚ), (-646430706723/500000000000 : ℚ), 3⟩,
    ⟨(169322067379/250000000000 : ℚ), (2827072701/2000000000 : ℚ), (-1010683188787/1000000000000 : ℚ), 3⟩,
    ⟨(686790406481/1000000000000 : ℚ), (2169137689/2000000000 : ℚ), (-786380926407/1000000000000 : ℚ), 3⟩,
    ⟨(696432049527/1000000000000 : ℚ), (1646288747/2000000000 : ℚ), (-605625792019/1000000000000 : ℚ), 3⟩,
    ⟨(706120344361/1000000000000 : ℚ), (766259271/1250000000 : ℚ), (-229148946733/500000000000 : ℚ), 3⟩,
    ⟨(357880993703/500000000000 : ℚ), (553095567/1250000000 : ℚ), (-67417419543/200000000000 : ℚ), 3⟩,
    ⟨(725264124371/1000000000000 : ℚ), (1514974061/5000000000 : ℚ), (-236608400857/1000000000000 : ℚ), 3⟩,
    ⟨(367267622241/500000000000 : ℚ), (940948797/5000000000 : ℚ), (-1193957897/7812500000 : ℚ), 3⟩,
    ⟨(743486061783/1000000000000 : ℚ), (932463539/10000000000 : ℚ), (-41336427981/500000000000 : ℚ), 2⟩,
    ⟨(188007593753/250000000000 : ℚ), (3620417/250000000 : ℚ), (-4756677489/200000000000 : ℚ), 2⟩,
    ⟨(760085897761/1000000000000 : ℚ), (-509502851/10000000000 : ℚ), (5136342581/200000000000 : ℚ), 2⟩,
    ⟨(767575050943/1000000000000 : ℚ), (-263166183/2500000000 : ℚ), (6716645443/100000000000 : ℚ), 2⟩,
    ⟨(387212854959/500000000000 : ℚ), (-1502035013/10000000000 : ℚ), (101810506341/1000000000000 : ℚ), 2⟩,
    ⟨(156114379819/200000000000 : ℚ), (-467813093/2500000000 : ℚ), (130515565979/1000000000000 : ℚ), 2⟩,
    ⟨(785954427313/1000000000000 : ℚ), (-54275387/250000000 : ℚ), (30798793909/200000000000 : ℚ), 2⟩,
    ⟨(790521457883/1000000000000 : ℚ), (-2409663531/10000000000 : ℚ), (86402295051/500000000000 : ℚ), 2⟩,
    ⟨(198557251951/250000000000 : ℚ), (-2593605861/10000000000 : ℚ), (187379463389/1000000000000 : ℚ), 2⟩,
    ⟨(797041371343/1000000000000 : ℚ), (-2727638899/10000000000 : ℚ), (39608699109/200000000000 : ℚ), 2⟩,
    ⟨(798931463901/1000000000000 : ℚ), (-351897039/1250000000 : ℚ), (205028830693/1000000000000 : ℚ), 2⟩,
    ⟨(99985135357/125000000000 : ℚ), (-114336381/400000000 : ℚ), (208484916993/1000000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1431894407/5000000000 : ℚ), (104457614071/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (31143124831/250000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control549.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control549.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate549

-- Control550
namespace DiagonalRamsey.JointInheritedCertificate550
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32402080157/125000000000 : ℚ), (12572693263813/10000000000 : ℚ), (-163261115919753/500000000000 : ℚ), 12⟩,
    ⟨(64973535769/250000000000 : ℚ), (1373569710497/10000000000 : ℚ), (-36082676898269/1000000000000 : ℚ), 9⟩,
    ⟨(261242622003/1000000000000 : ℚ), (240546828691/5000000000 : ℚ), (-8029602911/625000000 : ℚ), 7⟩,
    ⟨(32906136431/125000000000 : ℚ), (236774774747/10000000000 : ℚ), (-805701383601/125000000000 : ℚ), 6⟩,
    ⟨(265894228013/1000000000000 : ℚ), (137109494019/10000000000 : ℚ), (-3810933392039/1000000000000 : ℚ), 6⟩,
    ⟨(269152557587/1000000000000 : ℚ), (43604207597/5000000000 : ℚ), (-247703867333/100000000000 : ℚ), 5⟩,
    ⟨(10919708027/40000000000 : ℚ), (29437925087/5000000000 : ℚ), (-1709618607133/1000000000000 : ℚ), 5⟩,
    ⟨(277377674601/1000000000000 : ℚ), (2067869499/500000000 : ℚ), (-1227896917757/1000000000000 : ℚ), 4⟩,
    ⟨(282265249667/1000000000000 : ℚ), (3729438037/1250000000 : ℚ), (-452859750873/500000000000 : ℚ), 4⟩,
    ⟨(57521671171/200000000000 : ℚ), (21893845773/10000000000 : ℚ), (-679584912761/1000000000000 : ℚ), 4⟩,
    ⟨(293355536131/1000000000000 : ℚ), (4053536757/2500000000 : ℚ), (-64338036759/125000000000 : ℚ), 4⟩,
    ⟨(149725721003/500000000000 : ℚ), (3007227151/2500000000 : ℚ), (-195362731707/500000000000 : ℚ), 4⟩,
    ⟨(19114835411/62500000000 : ℚ), (8867568949/10000000000 : ℚ), (-147550682329/500000000000 : ℚ), 3⟩,
    ⟨(39056476237/125000000000 : ℚ), (6429227587/10000000000 : ℚ), (-219758934617/1000000000000 : ℚ), 3⟩,
    ⟨(15961553563/50000000000 : ℚ), (2257331327/5000000000 : ℚ), (-159316392041/1000000000000 : ℚ), 3⟩,
    ⟨(81527465669/250000000000 : ℚ), (2988071397/10000000000 : ℚ), (-2751945643/25000000000 : ℚ), 3⟩,
    ⟨(166510968811/500000000000 : ℚ), (175457067/1000000000 : ℚ), (-13888109947/200000000000 : ℚ), 3⟩,
    ⟨(169950364519/500000000000 : ℚ), (746460071/10000000000 : ℚ), (-35532319973/1000000000000 : ℚ), 3⟩,
    ⟨(173339995201/500000000000 : ℚ), (-42720291/5000000000 : ℚ), (-6981875583/1000000000000 : ℚ), 3⟩,
    ⟨(176647216861/500000000000 : ℚ), (-388704913/5000000000 : ℚ), (538450291/31250000000 : ℚ), 3⟩,
    ⟨(359680358291/1000000000000 : ℚ), (-1356559927/10000000000 : ℚ), (37872228441/1000000000000 : ℚ), 3⟩,
    ⟨(365776264167/1000000000000 : ℚ), (-1843375037/10000000000 : ℚ), (55527432079/1000000000000 : ℚ), 3⟩,
    ⟨(371523444443/1000000000000 : ℚ), (-1126734767/5000000000 : ℚ), (70643487233/1000000000000 : ℚ), 3⟩,
    ⟨(37686655063/100000000000 : ℚ), (-649706811/2500000000 : ℚ), (83565180841/1000000000000 : ℚ), 3⟩,
    ⟨(381754125697/1000000000000 : ℚ), (-5641969/19531250 : ℚ), (18911792191/200000000000 : ℚ), 3⟩,
    ⟨(193069549811/500000000000 : ℚ), (-3130191043/10000000000 : ℚ), (51915390977/500000000000 : ℚ), 3⟩,
    ⟨(389979242711/1000000000000 : ℚ), (-3328844627/10000000000 : ℚ), (27884838299/250000000000 : ℚ), 2⟩,
    ⟨(78647514457/200000000000 : ℚ), (-697774961/2000000000 : ℚ), (117806066603/1000000000000 : ℚ), 2⟩,
    ⟨(7917654177/20000000000 : ℚ), (-3613481891/10000000000 : ℚ), (15340308077/125000000000 : ℚ), 2⟩,
    ⟨(79577835659/200000000000 : ℚ), (-463128733/1250000000 : ℚ), (63177916681/500000000000 : ℚ), 2⟩,
    ⟨(199618828611/500000000000 : ℚ), (-941295817/2500000000 : ℚ), (128753315869/1000000000000 : ℚ), 2⟩,
    ⟨(199957579521/500000000000 : ℚ), (-3795002193/10000000000 : ℚ), (16243101031/125000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-759743523/2000000000 : ℚ), (16261676171/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (47547776489/125000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control550.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control550.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate550

-- Control551
namespace DiagonalRamsey.JointInheritedCertificate551
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(273638606639/1000000000000 : ℚ), (12766875402139/10000000000 : ℚ), (-87500794485161/250000000000 : ℚ), 12⟩,
    ⟨(137171476017/500000000000 : ℚ), (1395034338877/10000000000 : ℚ), (-38678295073117/1000000000000 : ℚ), 9⟩,
    ⟨(34468107449/125000000000 : ℚ), (97748373391/2000000000 : ℚ), (-3443041721191/250000000000 : ℚ), 7⟩,
    ⟨(277830828177/1000000000000 : ℚ), (240617647569/10000000000 : ℚ), (-276403975603/40000000000 : ℚ), 6⟩,
    ⟨(70145192193/250000000000 : ℚ), (69693869237/5000000000 : ℚ), (-408600666183/100000000000 : ℚ), 6⟩,
    ⟨(56793639589/200000000000 : ℚ), (88696059187/10000000000 : ℚ), (-2656245915919/1000000000000 : ℚ), 5⟩,
    ⟨(143980246451/500000000000 : ℚ), (29955104201/5000000000 : ℚ), (-1833704948107/1000000000000 : ℚ), 5⟩,
    ⟨(14625960283/50000000000 : ℚ), (10527191167/2500000000 : ℚ), (-1317416732323/1000000000000 : ℚ), 4⟩,
    ⟨(297600433323/1000000000000 : ℚ), (15199565911/5000000000 : ℚ), (-194431023763/200000000000 : ℚ), 4⟩,
    ⟨(30315524089/100000000000 : ℚ), (2790894013/1250000000 : ℚ), (-182462958957/250000000000 : ℚ), 4⟩,
    ⟨(309130132529/1000000000000 : ℚ), (16553820677/10000000000 : ℚ), (-55321580209/100000000000 : ℚ), 4⟩,
    ⟨(157733783383/500000000000 : ℚ), (6149742447/5000000000 : ℚ), (-10510765839/25000000000 : ℚ), 4⟩,
    ⟨(161053255323/500000000000 : ℚ), (4543035679/5000000000 : ℚ), (-63609243951/200000000000 : ℚ), 3⟩,
    ⟨(32898302751/100000000000 : ℚ), (1651957183/2500000000 : ℚ), (-237408049277/1000000000000 : ℚ), 3⟩,
    ⟨(336030892741/1000000000000 : ℚ), (466228561/1000000000 : ℚ), (-86373153667/500000000000 : ℚ), 3⟩,
    ⟨(68636446309/200000000000 : ℚ), (48615523/156250000 : ℚ), (-120098169821/1000000000000 : ℚ), 3⟩,
    ⟨(175184086309/500000000000 : ℚ), (1858675027/10000000000 : ℚ), (-19168137689/250000000000 : ℚ), 3⟩,
    ⟨(178759755711/500000000000 : ℚ), (417635909/5000000000 : ℚ), (-20230621391/500000000000 : ℚ), 3⟩,
    ⟨(364567376653/1000000000000 : ℚ), (-4427287/5000000000 : ℚ), (-9992974219/1000000000000 : ℚ), 3⟩,
    ⟨(371443893517/1000000000000 : ℚ), (-1110359/15625000 : ℚ), (15826659897/1000000000000 : ℚ), 3⟩,
    ⟨(378082837397/1000000000000 : ℚ), (-1297661057/10000000000 : ℚ), (37822048627/1000000000000 : ℚ), 3⟩,
    ⟨(192210135817/500000000000 : ℚ), (-71632639/400000000 : ℚ), (7077565683/125000000000 : ℚ), 3⟩,
    ⟨(390395163273/1000000000000 : ℚ), (-17648069/80000000 : ℚ), (72703215703/1000000000000 : ℚ), 3⟩,
    ⟨(395949970841/1000000000000 : ℚ), (-2555458833/10000000000 : ℚ), (345764549/4000000000 : ℚ), 3⟩,
    ⟨(401031198503/1000000000000 : ℚ), (-2848593153/10000000000 : ℚ), (98121265999/1000000000000 : ℚ), 3⟩,
    ⟨(405589911261/1000000000000 : ℚ), (-3092698113/10000000000 : ℚ), (107965639941/1000000000000 : ℚ), 2⟩,
    ⟨(204791103109/500000000000 : ℚ), (-3293398879/10000000000 : ℚ), (929164311/8000000000 : ℚ), 2⟩,
    ⟨(412969635391/1000000000000 : ℚ), (-345501259/1000000000 : ℚ), (122792106933/1000000000000 : ℚ), 2⟩,
    ⟨(207859787993/500000000000 : ℚ), (-3580809853/10000000000 : ℚ), (128004341851/1000000000000 : ℚ), 2⟩,
    ⟨(417805544571/1000000000000 : ℚ), (-3673207331/10000000000 : ℚ), (131855078739/1000000000000 : ℚ), 2⟩,
    ⟨(419207452129/1000000000000 : ℚ), (-233369193/625000000 : ℚ), (67197695089/500000000000 : ℚ), 2⟩,
    ⟨(104977949381/250000000000 : ℚ), (-470499163/1250000000 : ℚ), (33914421187/250000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-470967733/1250000000 : ℚ), (16976888467/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (369007415107/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control551.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control551.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate551

-- Control552
namespace DiagonalRamsey.JointInheritedCertificate552
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71530454399/250000000000 : ℚ), (13581538330273/10000000000 : ℚ), (-97320190477631/250000000000 : ℚ), 12⟩,
    ⟨(286814212857/1000000000000 : ℚ), (1484890743787/10000000000 : ℚ), (-5376891645869/125000000000 : ℚ), 9⟩,
    ⟨(144096167617/500000000000 : ℚ), (520615313063/10000000000 : ℚ), (-382843735859/25000000000 : ℚ), 7⟩,
    ⟨(18140182041/62500000000 : ℚ), (256518153793/10000000000 : ℚ), (-1920391494757/250000000000 : ℚ), 7⟩,
    ⟨(14647309847/50000000000 : ℚ), (148717160767/10000000000 : ℚ), (-4540559405129/1000000000000 : ℚ), 6⟩,
    ⟨(148138076991/500000000000 : ℚ), (18940284369/2000000000 : ℚ), (-2950384353177/1000000000000 : ℚ), 5⟩,
    ⟨(12008028579/40000000000 : ℚ), (6400595359/1000000000 : ℚ), (-2035588974199/1000000000000 : ℚ), 5⟩,
    ⟨(60936416551/200000000000 : ℚ), (1800342267/400000000 : ℚ), (-292285553703/200000000000 : ℚ), 4⟩,
    ⟨(309677100797/1000000000000 : ℚ), (16250859139/5000000000 : ℚ), (-107749749709/100000000000 : ℚ), 4⟩,
    ⟨(157568831923/500000000000 : ℚ), (11936356471/5000000000 : ℚ), (-808089953841/1000000000000 : ℚ), 4⟩,
    ⟨(64202236739/200000000000 : ℚ), (17695620253/10000000000 : ℚ), (-305864086097/500000000000 : ℚ), 4⟩,
    ⟨(327241095137/1000000000000 : ℚ), (6569949981/5000000000 : ℚ), (-232073245951/500000000000 : ℚ), 4⟩,
    ⟨(333767400719/1000000000000 : ℚ), (9696071471/10000000000 : ℚ), (-2737377681/7812500000 : ℚ), 3⟩,
    ⟨(42565906069/125000000000 : ℚ), (3519072521/5000000000 : ℚ), (-260814837641/1000000000000 : ℚ), 3⟩,
    ⟨(86863884401/250000000000 : ℚ), (4950131831/10000000000 : ℚ), (-189019416191/1000000000000 : ℚ), 3⟩,
    ⟨(70897108933/200000000000 : ℚ), (82116961/250000000 : ℚ), (-65294605183/500000000000 : ℚ), 3⟩,
    ⟨(90387391731/250000000000 : ℚ), (969368309/5000000000 : ℚ), (-82418517133/1000000000000 : ℚ), 3⟩,
    ⟨(73715914797/200000000000 : ℚ), (838705619/10000000000 : ℚ), (-42272323111/1000000000000 : ℚ), 3⟩,
    ⟨(187753931519/500000000000 : ℚ), (-6893931/1000000000 : ℚ), (-8512785637/1000000000000 : ℚ), 3⟩,
    ⟨(38226771087/100000000000 : ℚ), (-411863531/5000000000 : ℚ), (2509846697/125000000000 : ℚ), 3⟩,
    ⟨(97198504113/250000000000 : ℚ), (-727617131/5000000000 : ℚ), (44420684919/1000000000000 : ℚ), 3⟩,
    ⟨(197511963947/500000000000 : ℚ), (-496458487/2500000000 : ℚ), (32606027267/500000000000 : ℚ), 3⟩,
    ⟨(400897447743/1000000000000 : ℚ), (-608150173/2500000000 : ℚ), (41494648203/500000000000 : ℚ), 3⟩,
    ⟨(406358010793/1000000000000 : ℚ), (-2808654049/10000000000 : ℚ), (98166264791/1000000000000 : ℚ), 3⟩,
    ⟨(205676514417/500000000000 : ℚ), (-78103013/250000000 : ℚ), (111063230441/1000000000000 : ℚ), 3⟩,
    ⟨(83166879423/200000000000 : ℚ), (-1693415739/5000000000 : ℚ), (15241014639/125000000000 : ℚ), 3⟩,
    ⟨(419758957607/1000000000000 : ℚ), (-3602835017/10000000000 : ℚ), (130952266593/1000000000000 : ℚ), 2⟩,
    ⟨(423088914649/1000000000000 : ℚ), (-3776774137/10000000000 : ℚ), (138282250309/1000000000000 : ℚ), 2⟩,
    ⟨(212896099467/500000000000 : ℚ), (-1956083471/5000000000 : ℚ), (144028757123/1000000000000 : ℚ), 2⟩,
    ⟨(85568555271/200000000000 : ℚ), (-1002903303/2500000000 : ℚ), (74136625617/500000000000 : ℚ), 2⟩,
    ⟨(107305224683/250000000000 : ℚ), (-2038472023/5000000000 : ℚ), (9442054493/62500000000 : ℚ), 2⟩,
    ⟨(429913293993/1000000000000 : ℚ), (-821865163/2000000000 : ℚ), (38115971109/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-4113360393/10000000000 : ℚ), (30527470757/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (175788124767/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control552.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control552.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate552

-- Control553
namespace DiagonalRamsey.JointInheritedCertificate553
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18348866273/62500000000 : ℚ), (6847088815613/5000000000 : ℚ), (-402737817135867/1000000000000 : ℚ), 12⟩,
    ⟨(294286478847/1000000000000 : ℚ), (748672428643/5000000000 : ℚ), (-44502760926327/1000000000000 : ℚ), 9⟩,
    ⟨(295688929943/1000000000000 : ℚ), (2050996623/39062500 : ℚ), (-792191520211/50000000000 : ℚ), 7⟩,
    ⟨(297775707287/1000000000000 : ℚ), (258750611979/10000000000 : ℚ), (-7947842348359/1000000000000 : ℚ), 7⟩,
    ⟨(30052671407/100000000000 : ℚ), (75020980997/5000000000 : ℚ), (-939656936717/200000000000 : ℚ), 6⟩,
    ⟨(60783091319/200000000000 : ℚ), (95567524559/10000000000 : ℚ), (-3053172456613/1000000000000 : ℚ), 5⟩,
    ⟨(153954649709/500000000000 : ℚ), (16152250647/2500000000 : ℚ), (-2106791775767/1000000000000 : ℚ), 5⟩,
    ⟨(6249395593/20000000000 : ℚ), (22723661881/5000000000 : ℚ), (-1512825760087/1000000000000 : ℚ), 4⟩,
    ⟨(79388244343/250000000000 : ℚ), (32831436213/10000000000 : ℚ), (-557835968851/500000000000 : ℚ), 4⟩,
    ⟨(323109938613/1000000000000 : ℚ), (2412668547/1000000000 : ℚ), (-167400962741/200000000000 : ℚ), 4⟩,
    ⟨(329087146797/1000000000000 : ℚ), (17895125191/10000000000 : ℚ), (-633913352563/1000000000000 : ℚ), 4⟩,
    ⟨(335427038143/1000000000000 : ℚ), (415599009/312500000 : ℚ), (-481292708873/1000000000000 : ℚ), 4⟩,
    ⟨(34206855603/100000000000 : ℚ), (2456244819/2500000000 : ℚ), (-363664713751/1000000000000 : ℚ), 3⟩,
    ⟨(87236934753/250000000000 : ℚ), (892969591/1250000000 : ℚ), (-271069183779/1000000000000 : ℚ), 3⟩,
    ⟨(177999168397/500000000000 : ℚ), (1007525727/2000000000 : ℚ), (-196865102269/1000000000000 : ℚ), 3⟩,
    ⟨(90788112067/250000000000 : ℚ), (26233909/78125000 : ℚ), (-13649054931/100000000000 : ℚ), 3⟩,
    ⟨(370341175427/1000000000000 : ℚ), (1000360019/5000000000 : ℚ), (-5420734871/62500000000 : ℚ), 3⟩,
    ⟨(3774952869/10000000000 : ℚ), (445848013/5000000000 : ℚ), (-22637847953/500000000000 : ℚ), 3⟩,
    ⟨(384545884683/1000000000000 : ℚ), (-23153717/10000000000 : ℚ), (-10427099779/1000000000000 : ℚ), 3⟩,
    ⟨(78285013533/200000000000 : ℚ), (-783733109/10000000000 : ℚ), (19075673473/1000000000000 : ℚ), 3⟩,
    ⟨(24879161597/62500000000 : ℚ), (-1419905823/10000000000 : ℚ), (8836711699/200000000000 : ℚ), 3⟩,
    ⟨(202203238449/500000000000 : ℚ), (-30535427/156250000 : ℚ), (65620695327/1000000000000 : ℚ), 3⟩,
    ⟨(205191842541/500000000000 : ℚ), (-2404066251/10000000000 : ℚ), (83942900327/1000000000000 : ℚ), 3⟩,
    ⟨(207970323161/500000000000 : ℚ), (-2782559337/10000000000 : ℚ), (49789585559/500000000000 : ℚ), 3⟩,
    ⟨(84204768809/200000000000 : ℚ), (-387497711/1250000000 : ℚ), (7053853047/62500000000 : ℚ), 3⟩,
    ⟨(425584324277/1000000000000 : ℚ), (-1682125371/5000000000 : ℚ), (6202378693/50000000000 : ℚ), 3⟩,
    ⟨(4295781671/10000000000 : ℚ), (-3581482601/10000000000 : ℚ), (133335582931/1000000000000 : ℚ), 2⟩,
    ⟨(3463735277/8000000000 : ℚ), (-187818679/500000000 : ℚ), (14087791723/100000000000 : ℚ), 2⟩,
    ⟨(54464739551/125000000000 : ℚ), (-3892482923/10000000000 : ℚ), (29357921441/200000000000 : ℚ), 2⟩,
    ⟨(54725586719/125000000000 : ℚ), (-3992441287/10000000000 : ℚ), (30231070773/200000000000 : ℚ), 2⟩,
    ⟨(27450446553/62500000000 : ℚ), (-2029050891/5000000000 : ℚ), (154034591467/1000000000000 : ℚ), 2⟩,
    ⟨(439911763327/1000000000000 : ℚ), (-163625797/400000000 : ℚ), (15546505439/100000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2047349757/5000000000 : ℚ), (31128687681/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (172806973371/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control553.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control553.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate553

-- Control554
namespace DiagonalRamsey.JointInheritedCertificate554
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(508913294933/1000000000000 : ℚ), (36480461555139/5000000000 : ℚ), (-3714609754965553/1000000000000 : ℚ), 14⟩,
    ⟨(509143432571/1000000000000 : ℚ), (8075098427797/10000000000 : ℚ), (-412209100831879/1000000000000 : ℚ), 11⟩,
    ⟨(31850197089/62500000000 : ℚ), (2887720299171/10000000000 : ℚ), (-148017144141719/1000000000000 : ℚ), 9⟩,
    ⟨(510291349987/1000000000000 : ℚ), (1460154965099/10000000000 : ℚ), (-18807422246207/250000000000 : ℚ), 8⟩,
    ⟨(127801591083/250000000000 : ℚ), (174720906581/2000000000 : ℚ), (-5659518116753/125000000000 : ℚ), 8⟩,
    ⟨(512345992109/1000000000000 : ℚ), (144323220067/2500000000 : ℚ), (-15056931074673/500000000000 : ℚ), 7⟩,
    ⟨(32106717991/62500000000 : ℚ), (203644278313/5000000000 : ℚ), (-10696732849993/500000000000 : ℚ), 7⟩,
    ⟨(515287571611/1000000000000 : ℚ), (75233709093/2500000000 : ℚ), (-796119445517/50000000000 : ℚ), 6⟩,
    ⟨(129270609203/250000000000 : ℚ), (230092854089/10000000000 : ℚ), (-613307913963/50000000000 : ℚ), 6⟩,
    ⟨(519087759473/1000000000000 : ℚ), (90302823267/5000000000 : ℚ), (-4851332169769/500000000000 : ℚ), 6⟩,
    ⟨(130324677149/250000000000 : ℚ), (144721332611/10000000000 : ℚ), (-1959062107083/250000000000 : ℚ), 5⟩,
    ⟨(52370995781/100000000000 : ℚ), (29476734783/2500000000 : ℚ), (-12870756621/2000000000 : ℚ), 5⟩,
    ⟨(105263139641/200000000000 : ℚ), (48684373699/5000000000 : ℚ), (-2678621702589/500000000000 : ℚ), 5⟩,
    ⟨(132277413081/250000000000 : ℚ), (81309266841/10000000000 : ℚ), (-1127469333447/250000000000 : ℚ), 5⟩,
    ⟨(532085089287/1000000000000 : ℚ), (34264862977/5000000000 : ℚ), (-3831886959693/1000000000000 : ℚ), 5⟩,
    ⟨(267617420503/500000000000 : ℚ), (11641193761/2000000000 : ℚ), (-102531872753/31250000000 : ℚ), 4⟩,
    ⟨(134637829863/250000000000 : ℚ), (49756411473/10000000000 : ℚ), (-1413712913781/500000000000 : ℚ), 4⟩,
    ⟨(542026534939/1000000000000 : ℚ), (855225027/200000000 : ℚ), (-1224765619567/500000000000 : ℚ), 4⟩,
    ⟨(545652115369/1000000000000 : ℚ), (36911397219/10000000000 : ℚ), (-2131431030423/1000000000000 : ℚ), 4⟩,
    ⟨(343387079/625000000 : ℚ), (31975253863/10000000000 : ℚ), (-1861190838299/1000000000000 : ℚ), 4⟩,
    ⟨(553319092491/1000000000000 : ℚ), (27776569861/10000000000 : ℚ), (-814857178251/500000000000 : ℚ), 4⟩,
    ⟨(111468403753/200000000000 : ℚ), (12089665289/5000000000 : ℚ), (-1429970439587/1000000000000 : ℚ), 4⟩,
    ⟨(280739206819/500000000000 : ℚ), (21077248201/10000000000 : ℚ), (-125645508587/100000000000 : ℚ), 4⟩,
    ⟨(282859156087/500000000000 : ℚ), (9193158777/5000000000 : ℚ), (-44192405151/40000000000 : ℚ), 3⟩,
    ⟨(285025750043/500000000000 : ℚ), (16039457137/10000000000 : ℚ), (-971548563673/1000000000000 : ℚ), 3⟩,
    ⟨(114893507669/200000000000 : ℚ), (1398259393/1000000000 : ℚ), (-853853741171/1000000000000 : ℚ), 3⟩,
    ⟨(578955788327/1000000000000 : ℚ), (1521470527/1250000000 : ℚ), (-74943056837/100000000000 : ℚ), 3⟩,
    ⟨(116701087489/200000000000 : ℚ), (5285470043/5000000000 : ℚ), (-164098468799/250000000000 : ℚ), 3⟩,
    ⟨(588105525197/1000000000000 : ℚ), (915038137/1000000000 : ℚ), (-573183703809/1000000000000 : ℚ), 3⟩,
    ⟨(592744969567/1000000000000 : ℚ), (7885372819/10000000000 : ℚ), (-498500350061/1000000000000 : ℚ), 3⟩,
    ⟨(9334571777/15625000000 : ℚ), (3377623517/5000000000 : ℚ), (-21562703131/50000000000 : ℚ), 3⟩,
    ⟨(150524288241/250000000000 : ℚ), (1148524333/2000000000 : ℚ), (-18526287043/50000000000 : ℚ), 3⟩,
    ⟨(606787361763/1000000000000 : ℚ), (4832798873/10000000000 : ℚ), (-157767983197/500000000000 : ℚ), 3⟩,
    ⟨(611471920999/1000000000000 : ℚ), (2006644419/5000000000 : ℚ), (-132810204829/500000000000 : ℚ), 3⟩,
    ⟨(15403488629/25000000000 : ℚ), (654685783/2000000000 : ℚ), (-11010507743/50000000000 : ℚ), 3⟩,
    ⟨(62077898953/100000000000 : ℚ), (2604077169/10000000000 : ℚ), (-89407926559/500000000000 : ℚ), 3⟩,
    ⟨(312689538641/500000000000 : ℚ), (1997364167/10000000000 : ℚ), (-141014875097/1000000000000 : ℚ), 3⟩,
    ⟨(196852727/312500000 : ℚ), (1446490747/10000000000 : ℚ), (-53220416399/500000000000 : ℚ), 3⟩,
    ⟨(317208488191/500000000000 : ℚ), (37822493/400000000 : ℚ), (-74774986389/1000000000000 : ℚ), 3⟩,
    ⟨(638833014641/1000000000000 : ℚ), (489452397/10000000000 : ℚ), (-22869578261/500000000000 : ℚ), 3⟩,
    ⟨(643166202553/1000000000000 : ℚ), (73689553/10000000000 : ℚ), (-19089852221/1000000000000 : ℚ), 3⟩,
    ⟨(647406101089/1000000000000 : ℚ), (-305636513/10000000000 : ℚ), (336663787/62500000000 : ℚ), 3⟩,
    ⟨(651542495963/1000000000000 : ℚ), (-651953523/10000000000 : ℚ), (27878249983/1000000000000 : ℚ), 3⟩,
    ⟨(163891355559/250000000000 : ℚ), (-484136243/5000000000 : ℚ), (24275376893/500000000000 : ℚ), 2⟩,
    ⟨(659465188327/1000000000000 : ℚ), (-157155399/1250000000 : ℚ), (13510095781/200000000000 : ℚ), 2⟩,
    ⟨(331616199679/500000000000 : ℚ), (-1521201119/10000000000 : ℚ), (85006854737/1000000000000 : ℚ), 2⟩,
    ⟨(166714494947/250000000000 : ℚ), (-1762207241/10000000000 : ℚ), (101034479557/1000000000000 : ℚ), 2⟩,
    ⟨(26813327811/40000000000 : ℚ), (-19820819/100000000 : ℚ), (57867448939/500000000000 : ℚ), 2⟩,
    ⟨(673649673721/1000000000000 : ℚ), (-272804217/1250000000 : ℚ), (64599061181/500000000000 : ℚ), 2⟩,
    ⟨(4229996409/6250000000 : ℚ), (-2364684453/10000000000 : ℚ), (28300787877/200000000000 : ℚ), 2⟩,
    ⟨(679774862403/1000000000000 : ℚ), (-2530090069/10000000000 : ℚ), (152723031629/1000000000000 : ℚ), 2⟩,
    ⟨(341284408261/500000000000 : ℚ), (-2679759201/10000000000 : ℚ), (162917947547/1000000000000 : ℚ), 2⟩,
    ⟨(685174556917/1000000000000 : ℚ), (-351833601/1250000000 : ℚ), (172143938083/1000000000000 : ℚ), 2⟩,
    ⟨(687585806131/1000000000000 : ℚ), (-2935677767/10000000000 : ℚ), (36089936183/200000000000 : ℚ), 2⟩,
    ⟨(344898377627/500000000000 : ℚ), (-608707717/2000000000 : ℚ), (187877908003/1000000000000 : ℚ), 2⟩,
    ⟨(138360415583/200000000000 : ℚ), (-784726871/2500000000 : ℚ), (97232973821/500000000000 : ℚ), 2⟩,
    ⟨(173399235779/250000000000 : ℚ), (-805588269/2500000000 : ℚ), (200246193113/1000000000000 : ℚ), 2⟩,
    ⟨(695177026871/1000000000000 : ℚ), (-205897737/625000000 : ℚ), (102623252947/500000000000 : ℚ), 2⟩,
    ⟨(348269261309/500000000000 : ℚ), (-3355354199/10000000000 : ℚ), (13093159989/62500000000 : ℚ), 2⟩,
    ⟨(174419537599/250000000000 : ℚ), (-1702835161/5000000000 : ℚ), (212998132417/1000000000000 : ℚ), 2⟩,
    ⟨(34929658237/50000000000 : ℚ), (-3445594061/10000000000 : ℚ), (107892673901/500000000000 : ℚ), 2⟩,
    ⟨(699281361303/1000000000000 : ℚ), (-868836693/2500000000 : ℚ), (108932437133/500000000000 : ℚ), 2⟩,
    ⟨(699741082157/1000000000000 : ℚ), (-3495092073/10000000000 : ℚ), (5481151997/25000000000 : ℚ), 2⟩,
    ⟨(349985609897/500000000000 : ℚ), (-1752468953/5000000000 : ℚ), (43987029299/200000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-3506167381/10000000000 : ℚ), (110010603973/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (36229625267/200000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control554.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control554.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate554

-- Control555
namespace DiagonalRamsey.JointInheritedCertificate555
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(249583220563/1000000000000 : ℚ), (13068736913697/10000000000 : ℚ), (-81692001998489/250000000000 : ℚ), 12⟩,
    ⟨(250210834553/1000000000000 : ℚ), (57127926599/400000000 : ℚ), (-36105237616881/1000000000000 : ℚ), 9⟩,
    ⟨(125730009133/500000000000 : ℚ), (250204478313/5000000000 : ℚ), (-1285205579189/100000000000 : ℚ), 7⟩,
    ⟨(12665937069/50000000000 : ℚ), (61590248979/2500000000 : ℚ), (-805670393911/125000000000 : ℚ), 7⟩,
    ⟨(15985568961/62500000000 : ℚ), (5707680889/400000000 : ℚ), (-952158833293/250000000000 : ℚ), 6⟩,
    ⟨(258787505929/1000000000000 : ℚ), (90764299031/10000000000 : ℚ), (-98947368227/40000000000 : ℚ), 5⟩,
    ⟨(65586220043/250000000000 : ℚ), (61266100137/10000000000 : ℚ), (-852818684217/500000000000 : ℚ), 5⟩,
    ⟨(53281393329/200000000000 : ℚ), (336064553/78125000 : ℚ), (-152937877091/125000000000 : ℚ), 4⟩,
    ⟨(270934645237/1000000000000 : ℚ), (15502749917/5000000000 : ℚ), (-56314397587/62500000000 : ℚ), 4⟩,
    ⟨(137942155963/500000000000 : ℚ), (22720928419/10000000000 : ℚ), (-168667358327/250000000000 : ℚ), 4⟩,
    ⟨(140604149359/500000000000 : ℚ), (16791385271/10000000000 : ℚ), (-509604932861/1000000000000 : ℚ), 4⟩,
    ⟨(71713833177/250000000000 : ℚ), (6209209433/5000000000 : ℚ), (-77093870117/200000000000 : ℚ), 4⟩,
    ⟨(18298189367/62500000000 : ℚ), (9112381369/10000000000 : ℚ), (-289706330587/1000000000000 : ℚ), 3⟩,
    ⟨(298898418813/1000000000000 : ℚ), (6560089577/10000000000 : ℚ), (-107118494137/500000000000 : ℚ), 3⟩,
    ⟨(305178489427/1000000000000 : ℚ), (284633331/625000000 : ℚ), (-153675840421/1000000000000 : ℚ), 3⟩,
    ⟨(311550761199/1000000000000 : ℚ), (46141997/156250000 : ℚ), (-104324631389/1000000000000 : ℚ), 3⟩,
    ⟨(317953865669/1000000000000 : ℚ), (829056727/5000000000 : ℚ), (-31789620623/500000000000 : ℚ), 3⟩,
    ⟨(324326137441/1000000000000 : ℚ), (299333521/5000000000 : ℚ), (-29566628783/1000000000000 : ℚ), 3⟩,
    ⟨(165303104027/500000000000 : ℚ), (-69127473/2500000000 : ℚ), (-91519879/100000000000 : ℚ), 3⟩,
    ⟨(67346719399/200000000000 : ℚ), (-1005237219/10000000000 : ℚ), (23394664303/1000000000000 : ℚ), 3⟩,
    ⟨(4283116177/12500000000 : ℚ), (-323156747/2000000000 : ℚ), (5516297901/125000000000 : ℚ), 3⟩,
    ⟨(6965926563/20000000000 : ℚ), (-106475471/500000000 : ℚ), (61875340649/1000000000000 : ℚ), 3⟩,
    ⟨(353620314941/1000000000000 : ℚ), (-40042133/156250000 : ℚ), (9634549053/125000000000 : ℚ), 3⟩,
    ⟨(35856998163/100000000000 : ℚ), (-365980063/1250000000 : ℚ), (45038808203/500000000000 : ℚ), 3⟩,
    ⟨(181548830111/500000000000 : ℚ), (-101080447/312500000 : ℚ), (25286173671/250000000000 : ℚ), 3⟩,
    ⟨(73431949339/200000000000 : ℚ), (-872584629/2500000000 : ℚ), (55241398261/500000000000 : ℚ), 3⟩,
    ⟨(185358560469/500000000000 : ℚ), (-3700872773/10000000000 : ℚ), (59124930963/500000000000 : ℚ), 3⟩,
    ⟨(373735523491/1000000000000 : ℚ), (-1935289277/5000000000 : ℚ), (15570820111/125000000000 : ℚ), 3⟩,
    ⟨(376185885487/1000000000000 : ℚ), (-62543559/156250000 : ℚ), (25904757851/200000000000 : ℚ), 2⟩,
    ⟨(189022304301/500000000000 : ℚ), (-2049980323/5000000000 : ℚ), (66594142969/500000000000 : ℚ), 2⟩,
    ⟨(75858758463/200000000000 : ℚ), (-2081914421/5000000000 : ℚ), (67803383013/500000000000 : ℚ), 2⟩,
    ⟨(11872543947/31250000000 : ℚ), (-2097747447/5000000000 : ℚ), (136808831979/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4199440731/10000000000 : ℚ), (27391751649/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (15239131333/40000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control555.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control555.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate555

-- Control556
namespace DiagonalRamsey.JointInheritedCertificate556
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264113239397/1000000000000 : ℚ), (13273383138023/10000000000 : ℚ), (-43899665131133/125000000000 : ℚ), 12⟩,
    ⟨(33095897121/125000000000 : ℚ), (58032983549/400000000 : ℚ), (-2425350668731/62500000000 : ℚ), 9⟩,
    ⟨(266068754333/1000000000000 : ℚ), (101694957949/2000000000 : ℚ), (-3453530679963/250000000000 : ℚ), 7⟩,
    ⟨(268005436591/1000000000000 : ℚ), (62604122151/2500000000 : ℚ), (-6928520572063/1000000000000 : ℚ), 7⟩,
    ⟨(270558572433/1000000000000 : ℚ), (18137318699/1250000000 : ℚ), (-2047361836039/500000000000 : ℚ), 6⟩,
    ⟨(54740714753/200000000000 : ℚ), (46168781853/5000000000 : ℚ), (-2660030441809/1000000000000 : ℚ), 5⟩,
    ⟨(138705076253/500000000000 : ℚ), (62361572713/10000000000 : ℚ), (-1834631711749/1000000000000 : ℚ), 5⟩,
    ⟨(11265704491/40000000000 : ℚ), (43813408441/10000000000 : ℚ), (-164566173867/125000000000 : ℚ), 4⟩,
    ⟨(71590048043/250000000000 : ℚ), (31604677119/10000000000 : ℚ), (-485017112709/500000000000 : ℚ), 4⟩,
    ⟨(145758729661/500000000000 : ℚ), (11591325557/5000000000 : ℚ), (-726844983027/1000000000000 : ℚ), 4⟩,
    ⟨(11882589857/40000000000 : ℚ), (17154314753/10000000000 : ℚ), (-17173221939/31250000000 : ℚ), 4⟩,
    ⟨(302948630073/1000000000000 : ℚ), (6354205249/5000000000 : ℚ), (-208118883311/500000000000 : ℚ), 4⟩,
    ⟨(1236449781/4000000000 : ℚ), (1168421951/1250000000 : ℚ), (-156716567379/500000000000 : ℚ), 3⟩,
    ⟨(157748415523/500000000000 : ℚ), (3376458023/5000000000 : ℚ), (-58111359859/250000000000 : ℚ), 3⟩,
    ⟨(1257969931/3906250000 : ℚ), (589274767/1250000000 : ℚ), (-20935693827/125000000000 : ℚ), 3⟩,
    ⟨(164339920957/500000000000 : ℚ), (1543715659/5000000000 : ℚ), (-28644396891/250000000000 : ℚ), 3⟩,
    ⟨(167675753693/500000000000 : ℚ), (221512081/1250000000 : ℚ), (-7092149907/100000000000 : ℚ), 3⟩,
    ⟨(85497761741/250000000000 : ℚ), (696431101/10000000000 : ℚ), (-34502877569/1000000000000 : ℚ), 3⟩,
    ⟨(174267259127/500000000000 : ℚ), (-38345553/2000000000 : ℚ), (-1923087409/500000000000 : ℚ), 3⟩,
    ⟨(7098378081/20000000000 : ℚ), (-93088133/1000000000 : ℚ), (22145917791/1000000000000 : ℚ), 3⟩,
    ⟨(361082719227/1000000000000 : ℚ), (-1549819747/10000000000 : ℚ), (44299694961/1000000000000 : ℚ), 3⟩,
    ⟨(183483301437/500000000000 : ℚ), (-2070306687/10000000000 : ℚ), (15810915123/250000000000 : ℚ), 3⟩,
    ⟨(372513889977/1000000000000 : ℚ), (-2508939987/10000000000 : ℚ), (79459566911/1000000000000 : ℚ), 3⟩,
    ⟨(47208894641/125000000000 : ℚ), (-2878463601/10000000000 : ℚ), (23329665281/250000000000 : ℚ), 3⟩,
    ⟨(15295549481/40000000000 : ℚ), (-3188706867/10000000000 : ℚ), (52553931993/500000000000 : ℚ), 3⟩,
    ⟨(193310598397/500000000000 : ℚ), (-430908229/1250000000 : ℚ), (115048965349/1000000000000 : ℚ), 3⟩,
    ⟨(195163887767/500000000000 : ℚ), (-3660002789/10000000000 : ℚ), (24662575877/200000000000 : ℚ), 3⟩,
    ⟨(393472776867/1000000000000 : ℚ), (-3831415231/10000000000 : ℚ), (8126895553/62500000000 : ℚ), 2⟩,
    ⟨(396025912709/1000000000000 : ℚ), (-1982454537/5000000000 : ℚ), (8456242853/62500000000 : ℚ), 2⟩,
    ⟨(397962594967/1000000000000 : ℚ), (-2031499997/5000000000 : ℚ), (139193995941/1000000000000 : ℚ), 2⟩,
    ⟨(99816043083/250000000000 : ℚ), (-2063729589/5000000000 : ℚ), (8860213301/62500000000 : ℚ), 2⟩,
    ⟨(399918109903/1000000000000 : ℚ), (-4159414523/10000000000 : ℚ), (3576007963/25000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-832679247/2000000000 : ℚ), (28639914141/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (92316179179/250000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control556.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control556.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate556
