import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control762
namespace DiagonalRamsey.JointInheritedCertificate762
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(184108786977/1000000000000 : ℚ), (3156196772037/10000000000 : ℚ), (-5833101333891/100000000000 : ℚ), 11⟩,
    ⟨(185371812539/1000000000000 : ℚ), (83512652781/2500000000 : ℚ), (-6307110824101/1000000000000 : ℚ), 8⟩,
    ⟨(187849326299/1000000000000 : ℚ), (55254776297/5000000000 : ℚ), (-2144656523129/1000000000000 : ℚ), 7⟩,
    ⟨(23930764849/125000000000 : ℚ), (49879105237/10000000000 : ℚ), (-997185644519/1000000000000 : ℚ), 6⟩,
    ⟨(1960239673/10000000000 : ℚ), (25421301107/10000000000 : ℚ), (-524252910189/1000000000000 : ℚ), 5⟩,
    ⟨(25175868459/125000000000 : ℚ), (2663472851/2000000000 : ℚ), (-142069022763/500000000000 : ℚ), 5⟩,
    ⟨(207388194991/1000000000000 : ℚ), (651843491/1000000000 : ℚ), (-36343614541/250000000000 : ℚ), 4⟩,
    ⟨(106868926639/500000000000 : ℚ), (588049727/2500000000 : ℚ), (-57757151961/1000000000000 : ℚ), 4⟩,
    ⟨(55052977181/250000000000 : ℚ), (-367439229/10000000000 : ℚ), (47745577/40000000000 : ℚ), 4⟩,
    ⟨(226561567011/1000000000000 : ℚ), (-2227022077/10000000000 : ℚ), (42702617803/1000000000000 : ℚ), 4⟩,
    ⟨(232542814331/1000000000000 : ℚ), (-14158539/40000000 : ℚ), (72817235767/1000000000000 : ℚ), 4⟩,
    ⟨(237925794703/1000000000000 : ℚ), (-2240776403/5000000000 : ℚ), (94966023367/1000000000000 : ℚ), 4⟩,
    ⟨(242503643211/1000000000000 : ℚ), (-5155476011/10000000000 : ℚ), (111150844303/1000000000000 : ℚ), 4⟩,
    ⟨(30762554463/125000000000 : ℚ), (-5622162847/10000000000 : ℚ), (24510126459/200000000000 : ℚ), 3⟩,
    ⟨(31072243683/125000000000 : ℚ), (-2958615181/5000000000 : ℚ), (64924200611/500000000000 : ℚ), 3⟩,
    ⟨(9993639001/40000000000 : ℚ), (-6060385019/10000000000 : ℚ), (16676987723/125000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6078084223/10000000000 : ℚ), (133858241069/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (542212908183/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control762.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control762.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate762

-- Control763
namespace DiagonalRamsey.JointInheritedCertificate763
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(222521644017/1000000000000 : ℚ), (162239370487/500000000 : ℚ), (-72473292608221/1000000000000 : ℚ), 11⟩,
    ⟨(224006775943/1000000000000 : ℚ), (42963945107/1250000000 : ℚ), (-7838643926503/1000000000000 : ℚ), 8⟩,
    ⟨(7091248969/31250000000 : ℚ), (3558202931/312500000 : ℚ), (-333417439553/125000000000 : ℚ), 7⟩,
    ⟨(14446829057/62500000000 : ℚ), (12875467889/2500000000 : ℚ), (-1241933204801/1000000000000 : ℚ), 6⟩,
    ⟨(23653214011/100000000000 : ℚ), (13170105027/5000000000 : ℚ), (-163660122947/250000000000 : ℚ), 5⟩,
    ⟨(242861731727/1000000000000 : ℚ), (6943978639/5000000000 : ℚ), (-356658774647/1000000000000 : ℚ), 5⟩,
    ⟨(49978959421/200000000000 : ℚ), (6896131113/10000000000 : ℚ), (-184643375241/1000000000000 : ℚ), 4⟩,
    ⟨(257361059487/1000000000000 : ℚ), (2615538877/10000000000 : ℚ), (-76206654047/1000000000000 : ℚ), 4⟩,
    ⟨(66243398649/250000000000 : ℚ), (-174749329/10000000000 : ℚ), (-851086059/250000000000 : ℚ), 4⟩,
    ⟨(136219928489/500000000000 : ℚ), (-1039514013/5000000000 : ℚ), (4772656601/100000000000 : ℚ), 4⟩,
    ⟨(69868230589/250000000000 : ℚ), (-342024621/1000000000 : ℚ), (1694362081/20000000000 : ℚ), 4⟩,
    ⟨(71450628493/250000000000 : ℚ), (-2190255519/5000000000 : ℚ), (111848680329/1000000000000 : ℚ), 4⟩,
    ⟨(29118538917/100000000000 : ℚ), (-316631737/625000000 : ℚ), (16452889767/125000000000 : ℚ), 3⟩,
    ⟨(11816587483/40000000000 : ℚ), (-5540032949/10000000000 : ℚ), (145521567377/1000000000000 : ℚ), 3⟩,
    ⟨(14916393907/50000000000 : ℚ), (-116785591/200000000 : ℚ), (154404846279/1000000000000 : ℚ), 3⟩,
    ⟨(149906505033/500000000000 : ℚ), (-1496086019/2500000000 : ℚ), (992145239/6250000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-750284241/1250000000 : ℚ), (39820241513/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (252471503963/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control763.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control763.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate763

-- Control764
namespace DiagonalRamsey.JointInheritedCertificate764
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71328563123/250000000000 : ℚ), (13728891762959/10000000000 : ℚ), (-49020114585329/125000000000 : ℚ), 13⟩,
    ⟨(142884957741/500000000000 : ℚ), (1504919784387/10000000000 : ℚ), (-43291040350759/1000000000000 : ℚ), 10⟩,
    ⟨(14333842659/50000000000 : ℚ), (529310035519/10000000000 : ℚ), (-3845336586599/250000000000 : ℚ), 9⟩,
    ⟨(144013165639/500000000000 : ℚ), (130785667449/5000000000 : ℚ), (-961476202719/125000000000 : ℚ), 8⟩,
    ⟨(144902676783/500000000000 : ℚ), (75991625877/5000000000 : ℚ), (-4527244856861/1000000000000 : ℚ), 7⟩,
    ⟨(58399357417/200000000000 : ℚ), (96883881377/10000000000 : ℚ), (-1462596382187/500000000000 : ℚ), 6⟩,
    ⟨(147289763567/500000000000 : ℚ), (32723298551/5000000000 : ℚ), (-1001808708883/500000000000 : ℚ), 6⟩,
    ⟨(148764350257/500000000000 : ℚ), (4590187369/1000000000 : ℚ), (-89078471661/62500000000 : ℚ), 6⟩,
    ⟨(300815905073/1000000000000 : ℚ), (32971042347/10000000000 : ℚ), (-1038572108537/1000000000000 : ℚ), 5⟩,
    ⟨(152204741617/500000000000 : ℚ), (187519933/78125000 : ℚ), (-383644159159/500000000000 : ℚ), 5⟩,
    ⟨(493239723/1600000000 : ℚ), (17547243841/10000000000 : ℚ), (-113922697279/200000000000 : ℚ), 5⟩,
    ⟨(312374710623/1000000000000 : ℚ), (127596277/100000000 : ℚ), (-210548543677/500000000000 : ℚ), 5⟩,
    ⟨(158334825179/500000000000 : ℚ), (9120029107/10000000000 : ℚ), (-306663139663/1000000000000 : ℚ), 4⟩,
    ⟨(321118283461/1000000000000 : ℚ), (6295179683/10000000000 : ℚ), (-216609029883/1000000000000 : ℚ), 4⟩,
    ⟨(81419441791/250000000000 : ℚ), (126990581/312500000 : ℚ), (-72232157037/500000000000 : ℚ), 4⟩,
    ⟨(165152095573/500000000000 : ℚ), (227412229/1000000000 : ℚ), (-85783227607/1000000000000 : ℚ), 4⟩,
    ⟨(66990600083/200000000000 : ℚ), (820201599/10000000000 : ℚ), (-59892839/1600000000 : ℚ), 4⟩,
    ⟨(339579424397/1000000000000 : ℚ), (-74839037/2000000000 : ℚ), (2841572193/1000000000000 : ℚ), 4⟩,
    ⟨(3441389081/10000000000 : ℚ), (-272922683/2000000000 : ℚ), (36693775671/1000000000000 : ℚ), 4⟩,
    ⟨(348587541203/1000000000000 : ℚ), (-2192202733/10000000000 : ℚ), (13070786663/200000000000 : ℚ), 4⟩,
    ⟨(352882480937/1000000000000 : ℚ), (-721960019/2500000000 : ℚ), (44874559879/500000000000 : ℚ), 4⟩,
    ⟨(178491182343/500000000000 : ℚ), (-1737468801/5000000000 : ℚ), (3455774787/31250000000 : ℚ), 4⟩,
    ⟨(360847708327/1000000000000 : ℚ), (-794278747/2000000000 : ℚ), (12840172171/100000000000 : ℚ), 4⟩,
    ⟨(45555160811/125000000000 : ℚ), (-1097743383/2500000000 : ℚ), (17952054477/125000000000 : ℚ), 3⟩,
    ⟨(367728491047/1000000000000 : ℚ), (-4744301339/10000000000 : ℚ), (78275245417/500000000000 : ℚ), 3⟩,
    ⟨(185338832213/500000000000 : ℚ), (-503958493/1000000000 : ℚ), (167451978331/1000000000000 : ℚ), 3⟩,
    ⟨(14930416179/40000000000 : ℚ), (-5283150159/10000000000 : ℚ), (176511564753/1000000000000 : ℚ), 3⟩,
    ⟨(75090367599/200000000000 : ℚ), (-5479839137/10000000000 : ℚ), (18387457743/100000000000 : ℚ), 3⟩,
    ⟨(377230860283/1000000000000 : ℚ), (-2816653929/5000000000 : ℚ), (189650160621/1000000000000 : ℚ), 3⟩,
    ⟨(378580338381/1000000000000 : ℚ), (-5746247691/10000000000 : ℚ), (38783637493/200000000000 : ℚ), 3⟩,
    ⟨(189743638039/500000000000 : ℚ), (-727568411/1250000000 : ℚ), (9836719191/50000000000 : ℚ), 3⟩,
    ⟨(379942939069/1000000000000 : ℚ), (-585740601/1000000000 : ℚ), (99066982011/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-46895999/80000000 : ℚ), (39661703557/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (11118229481/25000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control764.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control764.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate764

-- Control765
namespace DiagonalRamsey.JointInheritedCertificate765
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(151816769193/1000000000000 : ℚ), (890151378457/2500000000 : ℚ), (-54239288972251/1000000000000 : ℚ), 11⟩,
    ⟨(152740362027/1000000000000 : ℚ), (37711485091/1000000000 : ℚ), (-1463586824229/250000000000 : ℚ), 8⟩,
    ⟨(7727602727/50000000000 : ℚ), (124662948071/10000000000 : ℚ), (-495748733217/250000000000 : ℚ), 7⟩,
    ⟨(31436444881/200000000000 : ℚ), (28031504993/5000000000 : ℚ), (-457853260913/500000000000 : ℚ), 6⟩,
    ⟨(160529795669/1000000000000 : ℚ), (28320736491/10000000000 : ℚ), (-118937193693/250000000000 : ℚ), 5⟩,
    ⟨(82233061523/500000000000 : ℚ), (2909817673/2000000000 : ℚ), (-25230118457/100000000000 : ℚ), 5⟩,
    ⟨(168839935681/1000000000000 : ℚ), (3392966077/5000000000 : ℚ), (-123095855309/1000000000000 : ℚ), 4⟩,
    ⟨(17348315041/100000000000 : ℚ), (62817973/312500000 : ℚ), (-10360807791/250000000000 : ℚ), 4⟩,
    ⟨(44554332773/250000000000 : ℚ), (-560200513/5000000000 : ℚ), (6779642881/500000000000 : ℚ), 4⟩,
    ⟨(9143027291/50000000000 : ℚ), (-1635104191/5000000000 : ℚ), (10469058397/200000000000 : ℚ), 4⟩,
    ⟨(23404294807/125000000000 : ℚ), (-4794179439/10000000000 : ℚ), (16106409449/200000000000 : ℚ), 4⟩,
    ⟨(191170685833/1000000000000 : ℚ), (-5892207551/10000000000 : ℚ), (25325007967/250000000000 : ℚ), 4⟩,
    ⟨(194518257097/1000000000000 : ℚ), (-1670171721/2500000000 : ℚ), (14562779643/125000000000 : ℚ), 4⟩,
    ⟨(98574213481/500000000000 : ℚ), (-7228364169/10000000000 : ℚ), (127226358009/1000000000000 : ℚ), 4⟩,
    ⟨(7958404779/40000000000 : ℚ), (-1515086117/2000000000 : ℚ), (134099816231/1000000000000 : ℚ), 4⟩,
    ⟨(49970928077/250000000000 : ℚ), (-7744051677/10000000000 : ℚ), (68731224723/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-3882455367/5000000000 : ℚ), (68939754613/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (110522003099/200000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control765.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control765.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate765

-- Control766
namespace DiagonalRamsey.JointInheritedCertificate766
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11933048423/62500000000 : ℚ), (182655971387/500000000 : ℚ), (-218686497123/3125000000 : ℚ), 11⟩,
    ⟨(38412214489/200000000000 : ℚ), (193606732339/5000000000 : ℚ), (-3777973809129/500000000000 : ℚ), 8⟩,
    ⟨(97141077117/500000000000 : ℚ), (32043709599/2500000000 : ℚ), (-80045607549/31250000000 : ℚ), 7⟩,
    ⟨(24688333151/125000000000 : ℚ), (28884056037/5000000000 : ℚ), (-1184695830113/1000000000000 : ℚ), 6⟩,
    ⟨(100805344609/500000000000 : ℚ), (14645326267/5000000000 : ℚ), (-617340834469/1000000000000 : ℚ), 5⟩,
    ⟨(206436510923/1000000000000 : ℚ), (3788760329/2500000000 : ℚ), (-82341894701/250000000000 : ℚ), 5⟩,
    ⟨(105899338351/500000000000 : ℚ), (179755021/250000000 : ℚ), (-1304182727/8000000000 : ℚ), 4⟩,
    ⟨(21749112153/100000000000 : ℚ), (458955339/2000000000 : ℚ), (-58058388009/1000000000000 : ℚ), 4⟩,
    ⟨(44659017589/200000000000 : ℚ), (-113726757/1250000000 : ℚ), (6253583807/500000000000 : ℚ), 4⟩,
    ⟨(228987532773/1000000000000 : ℚ), (-621302787/2000000000 : ℚ), (31075184123/500000000000 : ℚ), 4⟩,
    ⟨(29293712319/125000000000 : ℚ), (-4660551147/10000000000 : ℚ), (98134959449/1000000000000 : ℚ), 4⟩,
    ⟨(239175520257/1000000000000 : ℚ), (-5777905243/10000000000 : ℚ), (31145230479/250000000000 : ℚ), 4⟩,
    ⟨(243279544267/1000000000000 : ℚ), (-6578711797/10000000000 : ℚ), (143894568711/1000000000000 : ℚ), 4⟩,
    ⟨(246504055241/1000000000000 : ℚ), (-1783513093/2500000000 : ℚ), (31498571647/200000000000 : ℚ), 4⟩,
    ⟨(24872513703/100000000000 : ℚ), (-935694177/1250000000 : ℚ), (265913773/1600000000 : ℚ), 4⟩,
    ⟨(249857434707/1000000000000 : ℚ), (-1914051109/2500000000 : ℚ), (170450237809/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-3838654401/5000000000 : ℚ), (85488848213/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (51022577437/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control766.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control766.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate766

-- Control767
namespace DiagonalRamsey.JointInheritedCertificate767
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120990855887/1000000000000 : ℚ), (2251239020573/5000000000 : ℚ), (-54614934115739/1000000000000 : ℚ), 12⟩,
    ⟨(24309382639/200000000000 : ℚ), (477386629809/10000000000 : ℚ), (-5873724031941/1000000000000 : ℚ), 9⟩,
    ⟨(122637658841/1000000000000 : ℚ), (39375430619/2500000000 : ℚ), (-1973871624489/1000000000000 : ℚ), 7⟩,
    ⟨(124221176081/1000000000000 : ℚ), (70274987069/10000000000 : ℚ), (-898732559317/1000000000000 : ℚ), 6⟩,
    ⟨(25247322247/200000000000 : ℚ), (17419620919/5000000000 : ℚ), (-455544652813/1000000000000 : ℚ), 6⟩,
    ⟨(64303256131/500000000000 : ℚ), (17154319627/10000000000 : ℚ), (-230460689791/1000000000000 : ℚ), 5⟩,
    ⟨(131239805193/1000000000000 : ℚ), (890841849/1250000000 : ℚ), (-6269378611/62500000000 : ℚ), 5⟩,
    ⟨(67017647029/500000000000 : ℚ), (184023821/2000000000 : ℚ), (-9028271441/500000000000 : ℚ), 5⟩,
    ⟨(136885549787/1000000000000 : ℚ), (-1586792323/5000000000 : ℚ), (3735916023/100000000000 : ℚ), 4⟩,
    ⟨(34920259663/250000000000 : ℚ), (-75023697/125000000 : ℚ), (76449467863/1000000000000 : ℚ), 4⟩,
    ⟨(142314331583/1000000000000 : ℚ), (-1002322551/1250000000 : ℚ), (104873397461/1000000000000 : ℚ), 4⟩,
    ⟨(144684232609/1000000000000 : ℚ), (-2369891711/2500000000 : ℚ), (125833003137/1000000000000 : ℚ), 4⟩,
    ⟨(36674916941/250000000000 : ℚ), (-10533852883/10000000000 : ℚ), (35297655177/250000000000 : ℚ), 4⟩,
    ⟨(37070796251/250000000000 : ℚ), (-225384341/200000000 : ℚ), (152035656263/1000000000000 : ℚ), 4⟩,
    ⟨(149373930649/1000000000000 : ℚ), (-11736711681/10000000000 : ℚ), (158993046521/1000000000000 : ℚ), 4⟩,
    ⟨(149929987957/1000000000000 : ℚ), (-1495537493/1250000000 : ℚ), (162398917669/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-5996237639/5000000000 : ℚ), (81410724493/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (111510232201/200000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control767.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control767.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate767

-- Control768
namespace DiagonalRamsey.JointInheritedCertificate768
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(203375527139/1000000000000 : ℚ), (471004708023/1000000000 : ℚ), (-96025430151213/1000000000000 : ℚ), 12⟩,
    ⟨(102134620581/500000000000 : ℚ), (2000262087/40000000 : ℚ), (-10335303167467/1000000000000 : ℚ), 9⟩,
    ⟨(103011162139/500000000000 : ℚ), (41350847123/2500000000 : ℚ), (-3479426392597/1000000000000 : ℚ), 7⟩,
    ⟨(104283703243/500000000000 : ℚ), (1482449513/200000000 : ℚ), (-1589734808603/1000000000000 : ℚ), 6⟩,
    ⟨(105903340853/500000000000 : ℚ), (9259112797/2500000000 : ℚ), (-405596759383/500000000000 : ℚ), 6⟩,
    ⟨(107807833203/500000000000 : ℚ), (18534017397/10000000000 : ℚ), (-416213524563/1000000000000 : ℚ), 5⟩,
    ⟨(219847983441/1000000000000 : ℚ), (1610605263/2000000000 : ℚ), (-188229416901/1000000000000 : ℚ), 5⟩,
    ⟨(5608524681/25000000000 : ℚ), (788554859/5000000000 : ℚ), (-44519976201/1000000000000 : ℚ), 5⟩,
    ⟨(57230503547/250000000000 : ℚ), (-2683337717/10000000000 : ℚ), (2598575737/50000000000 : ℚ), 4⟩,
    ⟨(233415017987/1000000000000 : ℚ), (-5617399129/10000000000 : ℚ), (14970400017/125000000000 : ℚ), 4⟩,
    ⟨(118823667511/500000000000 : ℚ), (-308077979/400000000 : ℚ), (33768510371/200000000000 : ℚ), 4⟩,
    ⟨(120728159861/500000000000 : ℚ), (-9206592953/10000000000 : ℚ), (12804836207/62500000000 : ℚ), 4⟩,
    ⟨(244695594941/1000000000000 : ℚ), (-5144372829/5000000000 : ℚ), (11558886287/50000000000 : ℚ), 4⟩,
    ⟨(4944813543/20000000000 : ℚ), (-5520722609/5000000000 : ℚ), (15605632867/62500000000 : ℚ), 4⟩,
    ⟨(124496880133/500000000000 : ℚ), (-89992017/78125000 : ℚ), (65384523583/250000000000 : ℚ), 4⟩,
    ⟨(249887474289/1000000000000 : ℚ), (-91805967/78125000 : ℚ), (66832423173/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2944973701/2500000000 : ℚ), (3350597583/12500000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (11207473271/25000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control768.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control768.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate768

-- Control769
namespace DiagonalRamsey.JointInheritedCertificate769
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(245223544771/1000000000000 : ℚ), (2417347758677/5000000000 : ℚ), (-59420856550669/500000000000 : ℚ), 12⟩,
    ⟨(246273518811/1000000000000 : ℚ), (128423077593/2500000000 : ℚ), (-12796848159129/1000000000000 : ℚ), 9⟩,
    ⟨(248333116977/1000000000000 : ℚ), (85078113701/5000000000 : ℚ), (-1078158581609/250000000000 : ℚ), 7⟩,
    ⟨(62830797517/250000000000 : ℚ), (7643998811/1000000000 : ℚ), (-1974371946001/1000000000000 : ℚ), 6⟩,
    ⟨(40820613/160000000 : ℚ), (19180952417/5000000000 : ℚ), (-505646275287/500000000000 : ℚ), 6⟩,
    ⟨(259603791869/1000000000000 : ℚ), (19367330199/10000000000 : ℚ), (-32685268537/62500000000 : ℚ), 5⟩,
    ⟨(52915220339/200000000000 : ℚ), (2153192831/2500000000 : ℚ), (-241364147847/1000000000000 : ℚ), 5⟩,
    ⟨(269854677653/1000000000000 : ℚ), (493461363/2500000000 : ℚ), (-64103192397/1000000000000 : ℚ), 4⟩,
    ⟨(137618333513/500000000000 : ℚ), (-477591721/2000000000 : ℚ), (54699005931/1000000000000 : ℚ), 4⟩,
    ⟨(35064405373/125000000000 : ℚ), (-5386633631/10000000000 : ℚ), (27596642133/200000000000 : ℚ), 4⟩,
    ⟨(28548755281/100000000000 : ℚ), (-751289789/1000000000 : ℚ), (198134668891/1000000000000 : ℚ), 4⟩,
    ⟨(289962513429/1000000000000 : ℚ), (-9044550089/10000000000 : ℚ), (121096521423/500000000000 : ℚ), 4⟩,
    ⟨(293768154611/1000000000000 : ℚ), (-5072028431/5000000000 : ℚ), (5485575571/20000000000 : ℚ), 4⟩,
    ⟨(148379113851/500000000000 : ℚ), (-1363452323/1250000000 : ℚ), (296821999633/1000000000000 : ℚ), 4⟩,
    ⟨(74704456467/250000000000 : ℚ), (-1139147313/1000000000 : ℚ), (62246013859/200000000000 : ℚ), 4⟩,
    ⟨(74966949977/250000000000 : ℚ), (-11626563453/10000000000 : ℚ), (159133632221/500000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11655646039/10000000000 : ℚ), (159569774831/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (397074594379/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control769.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control769.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate769
