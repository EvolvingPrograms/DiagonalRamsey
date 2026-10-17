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

-- Control0
namespace DiagonalRamsey.JointInheritedCertificate0
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38536884359/1000000000000 : ℚ), (55003984883807/10000000000 : ℚ), (-212188226340561/1000000000000 : ℚ), 10⟩,
    ⟨(3859204913/100000000000 : ℚ), (301407935397/500000000 : ℚ), (-23400915360733/1000000000000 : ℚ), 7⟩,
    ⟨(9675461851/250000000000 : ℚ), (1059209440541/5000000000 : ℚ), (-4149008327839/500000000000 : ℚ), 6⟩,
    ⟨(7773044353/200000000000 : ℚ), (1045069235833/10000000000 : ℚ), (-64642456427/15625000000 : ℚ), 5⟩,
    ⟨(39080598829/1000000000000 : ℚ), (302769391419/5000000000 : ℚ), (-606229954211/250000000000 : ℚ), 4⟩,
    ⟨(7869180879/200000000000 : ℚ), (12013789867/312500000 : ℚ), (-1558310327387/1000000000000 : ℚ), 4⟩,
    ⟨(39658583427/1000000000000 : ℚ), (16139542651/625000000 : ℚ), (-1059973213187/1000000000000 : ℚ), 3⟩,
    ⟨(20007812327/500000000000 : ℚ), (5616712399/312500000 : ℚ), (-747390448123/1000000000000 : ℚ), 3⟩,
    ⟨(20206794787/500000000000 : ℚ), (127782330649/10000000000 : ℚ), (-538548877589/1000000000000 : ℚ), 3⟩,
    ⟨(40848645569/1000000000000 : ℚ), (2866872449/312500000 : ℚ), (-196080013817/500000000000 : ℚ), 2⟩,
    ⟨(41316602809/1000000000000 : ℚ), (16448122821/2500000000 : ℚ), (-2231244911/7812500000 : ℚ), 2⟩,
    ⟨(41812954613/1000000000000 : ℚ), (23272833223/5000000000 : ℚ), (-102813598281/500000000000 : ℚ), 2⟩,
    ⟨(42332920839/1000000000000 : ℚ), (31912077287/10000000000 : ℚ), (-72039303329/500000000000 : ℚ), 2⟩,
    ⟨(4287149393/100000000000 : ℚ), (411050043/200000000 : ℚ), (-1913964797/20000000000 : ℚ), 2⟩,
    ⟨(10855871783/250000000000 : ℚ), (1447134067/1250000000 : ℚ), (-56981700441/1000000000000 : ℚ), 2⟩,
    ⟨(43983584449/1000000000000 : ℚ), (547115327/1250000000 : ℚ), (-25521990191/1000000000000 : ℚ), 2⟩,
    ⟨(44546391837/1000000000000 : ℚ), (-1474958503/10000000000 : ℚ), (375832167/1000000000000 : ℚ), 1⟩,
    ⟨(22553244577/500000000000 : ℚ), (-1571093399/2500000000 : ℚ), (4386131471/200000000000 : ℚ), 1⟩,
    ⟨(11414620589/250000000000 : ℚ), (-2568562801/2500000000 : ℚ), (20017360887/500000000000 : ℚ), 1⟩,
    ⟨(46197055447/1000000000000 : ℚ), (-6804790237/5000000000 : ℚ), (2767547931/50000000000 : ℚ), 1⟩,
    ⟨(46717021673/1000000000000 : ℚ), (-3282808759/2000000000 : ℚ), (34189040653/500000000000 : ℚ), 1⟩,
    ⟨(47213373477/1000000000000 : ℚ), (-2347670009/1250000000 : ℚ), (79495096709/1000000000000 : ℚ), 1⟩,
    ⟨(23840665359/500000000000 : ℚ), (-166265381/80000000 : ℚ), (889923713/10000000000 : ℚ), 1⟩,
    ⟨(6014548339/125000000000 : ℚ), (-11237314069/5000000000 : ℚ), (9709370329/100000000000 : ℚ), 1⟩,
    ⟨(3032146977/62500000000 : ℚ), (-11949190081/5000000000 : ℚ), (103972249197/1000000000000 : ℚ), 1⟩,
    ⟨(2443569643/50000000000 : ℚ), (-12543748371/5000000000 : ℚ), (109762165989/1000000000000 : ℚ), 1⟩,
    ⟨(49184071891/1000000000000 : ℚ), (-6516897889/2500000000 : ℚ), (114567207259/1000000000000 : ℚ), 1⟩,
    ⟨(24724688729/500000000000 : ℚ), (-6714598713/2500000000 : ℚ), (118467110921/1000000000000 : ℚ), 1⟩,
    ⟨(49664754521/1000000000000 : ℚ), (-27474912371/10000000000 : ℚ), (972178811/8000000000 : ℚ), 1⟩,
    ⟨(24914064441/500000000000 : ℚ), (-3491034371/1250000000 : ℚ), (123777652659/1000000000000 : ℚ), 1⟩,
    ⟨(12484481789/250000000000 : ℚ), (-28226349939/10000000000 : ℚ), (25052907221/200000000000 : ℚ), 1⟩,
    ⟨(49993091927/1000000000000 : ℚ), (-28374162951/10000000000 : ℚ), (3150077269/25000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-5678516559/2000000000 : ℚ), (126095183619/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (12499/1000000 : ℚ)
  x := (8592808511/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control0.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control0.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate0

-- Control6
namespace DiagonalRamsey.JointInheritedCertificate6
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9683315273/250000000000 : ℚ), (11301659452989/10000000000 : ℚ), (-43910102464609/1000000000000 : ℚ), 10⟩,
    ⟨(486865323/12500000000 : ℚ), (1194726917291/10000000000 : ℚ), (-2361202119801/500000000000 : ℚ), 6⟩,
    ⟨(39372855933/1000000000000 : ℚ), (39258864439/1000000000 : ℚ), (-317339686899/200000000000 : ℚ), 5⟩,
    ⟨(39987871503/1000000000000 : ℚ), (174283980889/10000000000 : ℚ), (-360956684933/500000000000 : ℚ), 4⟩,
    ⟨(20385318923/500000000000 : ℚ), (85778564233/10000000000 : ℚ), (-365089074533/1000000000000 : ℚ), 4⟩,
    ⟨(10422768423/250000000000 : ℚ), (41677549183/10000000000 : ℚ), (-18350907947/100000000000 : ℚ), 3⟩,
    ⟨(42713807207/1000000000000 : ℚ), (8343530059/5000000000 : ℚ), (-78169834759/1000000000000 : ℚ), 3⟩,
    ⟨(10949883829/250000000000 : ℚ), (1210289039/10000000000 : ℚ), (-705602291/62500000000 : ℚ), 2⟩,
    ⟨(8981306819/200000000000 : ℚ), (-1126734849/1250000000 : ℚ), (34021184819/1000000000000 : ℚ), 2⟩,
    ⟨(45992262203/1000000000000 : ℚ), (-2011512413/1250000000 : ℚ), (16542866187/250000000000 : ℚ), 2⟩,
    ⟨(23507497859/500000000000 : ℚ), (-21148041737/10000000000 : ℚ), (44836460047/500000000000 : ℚ), 2⟩,
    ⟨(11983857891/250000000000 : ℚ), (-12407023451/5000000000 : ℚ), (26768015029/250000000000 : ℚ), 2⟩,
    ⟨(12179549477/250000000000 : ℚ), (-27458867053/10000000000 : ℚ), (59925600983/500000000000 : ℚ), 2⟩,
    ⟨(24666606739/500000000000 : ℚ), (-5860289489/2000000000 : ℚ), (12888363837/100000000000 : ℚ), 2⟩,
    ⟨(4975684357/100000000000 : ℚ), (-1523549933/500000000 : ℚ), (134677919377/1000000000000 : ℚ), 2⟩,
    ⟨(49972808319/1000000000000 : ℚ), (-31039629357/10000000000 : ℚ), (137513354599/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-1244399441/400000000 : ℚ), (5514601689/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (199999/1000000 : ℚ)
  x := (38398339849/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control6.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control6.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate6

-- Control7
namespace DiagonalRamsey.JointInheritedCertificate7
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19411354089/500000000000 : ℚ), (5620156812383/5000000000 : ℚ), (-21885571250617/500000000000 : ℚ), 10⟩,
    ⟨(39036958373/1000000000000 : ℚ), (1188273841381/10000000000 : ℚ), (-2353342564629/500000000000 : ℚ), 6⟩,
    ⟨(157828901/4000000000 : ℚ), (6100367377/156250000 : ℚ), (-1580831989551/1000000000000 : ℚ), 5⟩,
    ⟨(40067358187/1000000000000 : ℚ), (173254437833/10000000000 : ℚ), (-359377255719/500000000000 : ℚ), 4⟩,
    ⟨(20421955059/500000000000 : ℚ), (2129797267/250000000 : ℚ), (-181519300839/500000000000 : ℚ), 4⟩,
    ⟨(41757038587/1000000000000 : ℚ), (41300829037/10000000000 : ℚ), (-182015419149/1000000000000 : ℚ), 3⟩,
    ⟨(2138582629/50000000000 : ℚ), (16422444313/10000000000 : ℚ), (-76993642737/1000000000000 : ℚ), 3⟩,
    ⟨(876975221/20000000000 : ℚ), (505284757/5000000000 : ℚ), (-322212579/31250000000 : ℚ), 3⟩,
    ⟨(22473485661/500000000000 : ℚ), (-1834760321/2000000000 : ℚ), (6973924979/200000000000 : ℚ), 2⟩,
    ⟨(2876504987/62500000000 : ℚ), (-3245324963/2000000000 : ℚ), (33465101341/500000000000 : ℚ), 2⟩,
    ⟨(9407738757/200000000000 : ℚ), (-4253195093/2000000000 : ℚ), (90368619093/1000000000000 : ℚ), 2⟩,
    ⟨(9590364451/200000000000 : ℚ), (-24921067879/10000000000 : ℚ), (107723343087/1000000000000 : ℚ), 2⟩,
    ⟨(9745674837/200000000000 : ℚ), (-27558790321/10000000000 : ℚ), (60235859191/500000000000 : ℚ), 2⟩,
    ⟨(24669253561/500000000000 : ℚ), (-5879382321/2000000000 : ℚ), (25896745499/200000000000 : ℚ), 2⟩,
    ⟨(49758773999/1000000000000 : ℚ), (-764096999/250000000 : ℚ), (135265636633/1000000000000 : ℚ), 2⟩,
    ⟨(24986512097/500000000000 : ℚ), (-31131333163/10000000000 : ℚ), (13809526161/100000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31201547933/10000000000 : ℚ), (69223120349/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (212499/1000000 : ℚ)
  x := (16355144823/100000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
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
theorem certOK : JointInheritedControls.control7.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control7.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate7

-- Control8
namespace DiagonalRamsey.JointInheritedCertificate8
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19498364057/250000000000 : ℚ), (11470714516923/10000000000 : ℚ), (-350516305723/3906250000 : ℚ), 10⟩,
    ⟨(78415285271/1000000000000 : ℚ), (1213447017183/10000000000 : ℚ), (-9652404765917/1000000000000 : ℚ), 6⟩,
    ⟨(39621366351/500000000000 : ℚ), (99799294043/2500000000 : ℚ), (-405594883913/125000000000 : ℚ), 5⟩,
    ⟨(80444000183/1000000000000 : ℚ), (5547886477/312500000 : ℚ), (-1477799270457/1000000000000 : ℚ), 4⟩,
    ⟨(20493230919/250000000000 : ℚ), (43821513493/5000000000 : ℚ), (-2995682203/4000000000 : ℚ), 4⟩,
    ⟨(83770747509/1000000000000 : ℚ), (5356201657/1250000000 : ℚ), (-378209824621/1000000000000 : ℚ), 3⟩,
    ⟨(85768382321/1000000000000 : ℚ), (17472645651/10000000000 : ℚ), (-163341884171/1000000000000 : ℚ), 3⟩,
    ⟨(87889060127/1000000000000 : ℚ), (882923603/5000000000 : ℚ), (-27095109829/1000000000000 : ℚ), 3⟩,
    ⟨(45025642233/500000000000 : ℚ), (-8600446529/10000000000 : ℚ), (6506156273/100000000000 : ℚ), 2⟩,
    ⟨(92171962271/1000000000000 : ℚ), (-3153662559/2000000000 : ℚ), (65164906929/500000000000 : ℚ), 2⟩,
    ⟨(23542399271/250000000000 : ℚ), (-4176271033/2000000000 : ℚ), (177947548089/1000000000000 : ℚ), 2⟩,
    ⟨(95967420917/1000000000000 : ℚ), (-24583797483/10000000000 : ℚ), (26641949161/125000000000 : ℚ), 2⟩,
    ⟨(9749634441/100000000000 : ℚ), (-27251708899/10000000000 : ℚ), (1866702929/7812500000 : ℚ), 2⟩,
    ⟨(9869761189/100000000000 : ℚ), (-5821715259/2000000000 : ℚ), (128575704643/500000000000 : ℚ), 2⟩,
    ⟨(49762529661/500000000000 : ℚ), (-30286372739/10000000000 : ℚ), (268824183691/1000000000000 : ℚ), 2⟩,
    ⟨(19989377673/200000000000 : ℚ), (-30858773321/10000000000 : ℚ), (17158313341/62500000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-30929585429/10000000000 : ℚ), (55048189273/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (212499/1000000 : ℚ)
  x := (61922979223/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
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
theorem certOK : JointInheritedControls.control8.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control8.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate8

-- Control9
namespace DiagonalRamsey.JointInheritedCertificate9
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38933915393/1000000000000 : ℚ), (11205586409261/10000000000 : ℚ), (-10939820421547/250000000000 : ℚ), 10⟩,
    ⟨(3914603393/100000000000 : ℚ), (740474373/6250000 : ℚ), (-4705076934469/1000000000000 : ℚ), 6⟩,
    ⟨(2472632463/62500000000 : ℚ), (194651652009/5000000000 : ℚ), (-1580040770727/1000000000000 : ℚ), 5⟩,
    ⟨(5020772737/125000000000 : ℚ), (10796846467/625000000 : ℚ), (-359092801707/500000000000 : ℚ), 4⟩,
    ⟨(4093500761/100000000000 : ℚ), (16983437991/2000000000 : ℚ), (-362559910923/1000000000000 : ℚ), 4⟩,
    ⟨(4183905101/100000000000 : ℚ), (20564918313/5000000000 : ℚ), (-181582904073/1000000000000 : ℚ), 3⟩,
    ⟨(21421785107/500000000000 : ℚ), (16303784649/10000000000 : ℚ), (-38294838721/500000000000 : ℚ), 3⟩,
    ⟨(21954981057/500000000000 : ℚ), (920530347/10000000000 : ℚ), (-9927589891/1000000000000 : ℚ), 3⟩,
    ⟨(22498622933/500000000000 : ℚ), (-9247187143/10000000000 : ℚ), (7047201431/200000000000 : ℚ), 2⟩,
    ⟨(23031818883/500000000000 : ℚ), (-16289866431/10000000000 : ℚ), (67282311921/1000000000000 : ℚ), 2⟩,
    ⟨(4706815697/100000000000 : ℚ), (-10661438071/5000000000 : ℚ), (90708715819/1000000000000 : ℚ), 2⟩,
    ⟨(4797220037/100000000000 : ℚ), (-24973997301/10000000000 : ℚ), (21610747879/200000000000 : ℚ), 2⟩,
    ⟨(12185256521/250000000000 : ℚ), (-3451161511/1250000000 : ℚ), (6039738019/50000000000 : ℚ), 2⟩,
    ⟨(12336272143/250000000000 : ℚ), (-29446004501/10000000000 : ℚ), (8112602433/62500000000 : ℚ), 2⟩,
    ⟨(995223481/20000000000 : ℚ), (-6122445479/2000000000 : ℚ), (33895095331/250000000000 : ℚ), 2⟩,
    ⟨(49973292587/1000000000000 : ℚ), (-15589683229/5000000000 : ℚ), (34602128969/250000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-3124954473/1000000000 : ℚ), (138759313463/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (224999/1000000 : ℚ)
  x := (173520137841/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
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
theorem certOK : JointInheritedControls.control9.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control9.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate9

-- Control10
namespace DiagonalRamsey.JointInheritedCertificate10
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(78171382793/1000000000000 : ℚ), (11406924077713/10000000000 : ℚ), (-89433766701671/1000000000000 : ℚ), 10⟩,
    ⟨(39294900639/500000000000 : ℚ), (75420215231/625000000 : ℚ), (-9618677167327/1000000000000 : ℚ), 6⟩,
    ⟨(79410558659/1000000000000 : ℚ), (79387110473/2000000000 : ℚ), (-3232194017097/1000000000000 : ℚ), 5⟩,
    ⟨(20150528423/250000000000 : ℚ), (176454343703/10000000000 : ℚ), (-294210465519/200000000000 : ℚ), 4⟩,
    ⟨(16423735117/200000000000 : ℚ), (87027689651/10000000000 : ℚ), (-372278798683/500000000000 : ℚ), 4⟩,
    ⟨(41950981857/500000000000 : ℚ), (10613575847/2500000000 : ℚ), (-9376158977/25000000000 : ℚ), 3⟩,
    ⟨(21470861829/250000000000 : ℚ), (17195261627/10000000000 : ℚ), (-40215930787/250000000000 : ℚ), 3⟩,
    ⟨(87986979089/1000000000000 : ℚ), (1557026079/10000000000 : ℚ), (-12522001749/500000000000 : ℚ), 3⟩,
    ⟨(18026344297/200000000000 : ℚ), (-4383508977/5000000000 : ℚ), (13365954481/200000000000 : ℚ), 2⟩,
    ⟨(46117626629/500000000000 : ℚ), (-15907775879/10000000000 : ℚ), (13190285397/100000000000 : ℚ), 2⟩,
    ⟨(4710836843/50000000000 : ℚ), (-10501500919/5000000000 : ℚ), (35876598181/200000000000 : ℚ), 2⟩,
    ⟨(96000024989/1000000000000 : ℚ), (-6173411651/2500000000 : ℚ), (42894745681/200000000000 : ℚ), 2⟩,
    ⟨(48758293441/500000000000 : ℚ), (-27353827357/10000000000 : ℚ), (240208421239/1000000000000 : ℚ), 2⟩,
    ⟨(19741628383/200000000000 : ℚ), (-14602899887/5000000000 : ℚ), (129188355657/500000000000 : ℚ), 2⟩,
    ⟨(3110278103/31250000000 : ℚ), (-1898796249/625000000 : ℚ), (135011014163/500000000000 : ℚ), 2⟩,
    ⟨(99947317781/1000000000000 : ℚ), (-30951831359/10000000000 : ℚ), (34464740417/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7755621333/2500000000 : ℚ), (55284855367/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (224999/1000000 : ℚ)
  x := (16462260501/125000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
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
theorem certOK : JointInheritedControls.control10.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control10.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate10

-- Control11
namespace DiagonalRamsey.JointInheritedCertificate11
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(237876722107/1000000000000 : ℚ), (8256750846113/10000000000 : ℚ), (-98695875364843/500000000000 : ℚ), 10⟩,
    ⟨(2995242423/12500000000 : ℚ), (886302959719/10000000000 : ℚ), (-109149224939/5000000000 : ℚ), 6⟩,
    ⟨(121543977213/500000000000 : ℚ), (75755718661/2500000000 : ℚ), (-7785574431311/1000000000000 : ℚ), 5⟩,
    ⟨(248248999729/1000000000000 : ℚ), (145184058477/10000000000 : ℚ), (-3917046691101/1000000000000 : ℚ), 4⟩,
    ⟨(255052826061/1000000000000 : ℚ), (81810870641/10000000000 : ℚ), (-1162943780191/500000000000 : ℚ), 3⟩,
    ⟨(263433908857/1000000000000 : ℚ), (50703560599/10000000000 : ℚ), (-1521222256921/1000000000000 : ℚ), 3⟩,
    ⟨(273311533707/1000000000000 : ℚ), (33448255111/10000000000 : ℚ), (-529554386233/500000000000 : ℚ), 3⟩,
    ⟨(71147643421/250000000000 : ℚ), (23054717793/10000000000 : ℚ), (-769756363539/1000000000000 : ℚ), 2⟩,
    ⟨(297162405467/1000000000000 : ℚ), (8205166147/5000000000 : ℚ), (-288423836267/500000000000 : ℚ), 2⟩,
    ⟨(77726488861/250000000000 : ℚ), (14957037/12500000 : ℚ), (-441948417563/1000000000000 : ℚ), 2⟩,
    ⟨(81422216429/250000000000 : ℚ), (4441593953/5000000000 : ℚ), (-335930151/976562500 : ℚ), 2⟩,
    ⟨(13654750751/40000000000 : ℚ), (267241337/400000000 : ℚ), (-270652027187/1000000000000 : ℚ), 2⟩,
    ⟨(357794658583/1000000000000 : ℚ), (2533847111/5000000000 : ℚ), (-42865526411/200000000000 : ℚ), 2⟩,
    ⟨(374808344843/1000000000000 : ℚ), (3859737267/10000000000 : ℚ), (-170132831453/1000000000000 : ℚ), 1⟩,
    ⟨(78449195291/200000000000 : ℚ), (1468939137/5000000000 : ℚ), (-26962922531/200000000000 : ℚ), 1⟩,
    ⟨(204969809747/500000000000 : ℚ), (277798837/1250000000 : ℚ), (-53071906059/500000000000 : ℚ), 1⟩,
    ⟨(213859437253/500000000000 : ℚ), (829363451/5000000000 : ℚ), (-20638810127/250000000000 : ℚ), 1⟩,
    ⟨(89082503509/200000000000 : ℚ), (604401737/5000000000 : ℚ), (-62927021523/1000000000000 : ℚ), 1⟩,
    ⟨(462850149157/1000000000000 : ℚ), (422777999/5000000000 : ℚ), (-9288159589/200000000000 : ℚ), 1⟩,
    ⟨(479863835417/1000000000000 : ℚ), (549446687/10000000000 : ℚ), (-1299624897/40000000000 : ℚ), 1⟩,
    ⟨(248144862613/500000000000 : ℚ), (306173249/10000000000 : ℚ), (-322220117/15625000000 : ℚ), 1⟩,
    ⟨(102393925657/200000000000 : ℚ), (105135859/10000000000 : ℚ), (-2622691321/250000000000 : ℚ), 1⟩,
    ⟨(526752538557/1000000000000 : ℚ), (-12321309/2000000000 : ℚ), (-916642631/500000000000 : ℚ), 1⟩,
    ⟨(270248044267/500000000000 : ℚ), (-50014437/2500000000 : ℚ), (5553131589/1000000000000 : ℚ), 1⟩,
    ⟨(553067920317/1000000000000 : ℚ), (-157394843/5000000000 : ℚ), (2956340723/250000000000 : ℚ), 1⟩,
    ⟨(282173480147/500000000000 : ℚ), (-409300573/10000000000 : ℚ), (17105056221/1000000000000 : ℚ), 1⟩,
    ⟨(574224585143/1000000000000 : ℚ), (-243135493/5000000000 : ℚ), (10743225779/500000000000 : ℚ), 1⟩,
    ⟨(582605667939/1000000000000 : ℚ), (-547748163/10000000000 : ℚ), (5008430087/200000000000 : ℚ), 1⟩,
    ⟨(2302380837/3906250000 : ℚ), (-297639453/5000000000 : ℚ), (13913685927/500000000000 : ℚ), 1⟩,
    ⟨(23782821583/40000000000 : ℚ), (-7875063/125000000 : ℚ), (14941538263/500000000000 : ℚ), 1⟩,
    ⟨(467218047/781250000 : ℚ), (-326365431/5000000000 : ℚ), (488097099/15625000000 : ℚ), 1⟩,
    ⟨(299890885947/500000000000 : ℚ), (-663969023/10000000000 : ℚ), (15955638907/500000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-665368011/10000000000 : ℚ), (6399040367/200000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (141392496627/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
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
theorem certOK : JointInheritedControls.control11.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control11.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate11

-- Control12
namespace DiagonalRamsey.JointInheritedCertificate12
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(151784566889/500000000000 : ℚ), (38730807013599/10000000000 : ℚ), (-58867137333733/50000000000 : ℚ), 12⟩,
    ⟨(152023290099/500000000000 : ℚ), (4261639436953/10000000000 : ℚ), (-130662472854143/1000000000000 : ℚ), 9⟩,
    ⟨(152500161413/500000000000 : ℚ), (1510541700527/10000000000 : ℚ), (-46928302192383/1000000000000 : ℚ), 7⟩,
    ⟨(153214032007/500000000000 : ℚ), (94443486669/1250000000 : ℚ), (-23858999156031/1000000000000 : ℚ), 6⟩,
    ⟨(19270397763/62500000000 : ℚ), (22327195411/500000000 : ℚ), (-14365807718533/1000000000000 : ℚ), 5⟩,
    ⟨(310690650237/1000000000000 : ℚ), (291216125121/10000000000 : ℚ), (-9560735097071/1000000000000 : ℚ), 5⟩,
    ⟨(39189403291/125000000000 : ℚ), (101317322493/5000000000 : ℚ), (-106210595619/15625000000 : ℚ), 4⟩,
    ⟨(31679328783/100000000000 : ℚ), (147608101377/10000000000 : ℚ), (-5064158653337/1000000000000 : ℚ), 4⟩,
    ⟨(160258468803/500000000000 : ℚ), (111248682627/10000000000 : ℚ), (-976529269201/250000000000 : ℚ), 4⟩,
    ⟨(162338602529/500000000000 : ℚ), (5379802341/625000000 : ℚ), (-3094473592751/1000000000000 : ℚ), 3⟩,
    ⟨(329264067737/1000000000000 : ℚ), (68003680579/10000000000 : ℚ), (-2503815086581/1000000000000 : ℚ), 3⟩,
    ⟨(10445827359/31250000000 : ℚ), (54642610041/10000000000 : ℚ), (-515186855311/250000000000 : ℚ), 3⟩,
    ⟨(169836188537/500000000000 : ℚ), (22262892861/5000000000 : ℚ), (-1719996473063/1000000000000 : ℚ), 3⟩,
    ⟨(86367187301/250000000000 : ℚ), (9177746179/2500000000 : ℚ), (-1452403256039/1000000000000 : ℚ), 3⟩,
    ⟨(351641627909/1000000000000 : ℚ), (30571455369/10000000000 : ℚ), (-309624827881/250000000000 : ℚ), 2⟩,
    ⟨(71635228437/200000000000 : ℚ), (641938839/250000000 : ℚ), (-42595335697/40000000000 : ℚ), 2⟩,
    ⟨(182528274907/500000000000 : ℚ), (2715883887/1250000000 : ℚ), (-92208573637/100000000000 : ℚ), 2⟩,
    ⟨(93066568823/250000000000 : ℚ), (9251325987/5000000000 : ℚ), (-803260767903/1000000000000 : ℚ), 2⟩,
    ⟨(379787949757/1000000000000 : ℚ), (7922451841/5000000000 : ℚ), (-703360339257/1000000000000 : ℚ), 2⟩,
    ⟨(387603452839/1000000000000 : ℚ), (6817464503/5000000000 : ℚ), (-618595739707/1000000000000 : ℚ), 2⟩,
    ⟨(24730872269/62500000000 : ℚ), (11782689809/10000000000 : ℚ), (-273039347747/500000000000 : ℚ), 2⟩,
    ⟨(404039969423/1000000000000 : ℚ), (10219081173/10000000000 : ℚ), (-48357638967/100000000000 : ℚ), 2⟩,
    ⟨(412621385917/1000000000000 : ℚ), (8890424299/10000000000 : ℚ), (-429340910213/1000000000000 : ℚ), 2⟩,
    ⟨(105354383101/250000000000 : ℚ), (1938642729/2500000000 : ℚ), (-381988352601/1000000000000 : ℚ), 2⟩,
    ⟨(86081443639/200000000000 : ℚ), (3389051359/5000000000 : ℚ), (-340411709543/1000000000000 : ℚ), 2⟩,
    ⟨(439568786351/1000000000000 : ℚ), (5934288271/10000000000 : ℚ), (-151858583069/500000000000 : ℚ), 2⟩,
    ⟨(448880165851/1000000000000 : ℚ), (1300393117/2500000000 : ℚ), (-271176873949/1000000000000 : ℚ), 1⟩,
    ⟨(229159462383/500000000000 : ℚ), (456244601/1000000000 : ℚ), (-242193502511/1000000000000 : ℚ), 1⟩,
    ⟨(467862324299/1000000000000 : ℚ), (4002589793/10000000000 : ℚ), (-21627332363/100000000000 : ℚ), 1⟩,
    ⟨(238743686783/500000000000 : ℚ), (27423599/78125000 : ℚ), (-96502778301/500000000000 : ℚ), 1⟩,
    ⟨(243585442489/500000000000 : ℚ), (1537793233/5000000000 : ℚ), (-172046362289/1000000000000 : ℚ), 1⟩,
    ⟨(49688953011/100000000000 : ℚ), (672643187/2500000000 : ℚ), (-153106325817/1000000000000 : ℚ), 1⟩,
    ⟨(253309947947/500000000000 : ℚ), (11741971/50000000 : ℚ), (-27188116747/200000000000 : ℚ), 1⟩,
    ⟨(258169270513/500000000000 : ℚ), (2043350541/10000000000 : ℚ), (-4813639033/40000000000 : ℚ), 1⟩,
    ⟨(526022052439/1000000000000 : ℚ), (1770632183/10000000000 : ℚ), (-106129760333/1000000000000 : ℚ), 1⟩,
    ⟨(107129420341/200000000000 : ℚ), (763082241/5000000000 : ℚ), (-18630909129/200000000000 : ℚ), 1⟩,
    ⟨(545190501239/1000000000000 : ℚ), (653241089/5000000000 : ℚ), (-81284177181/1000000000000 : ℚ), 1⟩,
    ⟨(277314630077/500000000000 : ℚ), (1108627609/10000000000 : ℚ), (-8800672423/125000000000 : ℚ), 1⟩,
    ⟨(563940639653/1000000000000 : ℚ), (11625847/125000000 : ℚ), (-15104999407/250000000000 : ℚ), 1⟩,
    ⟨(573102207809/1000000000000 : ℚ), (384313173/5000000000 : ℚ), (-6405340307/125000000000 : ℚ), 1⟩,
    ⟨(727614867/1250000000 : ℚ), (31121397/500000000 : ℚ), (-42799201043/1000000000000 : ℚ), 1⟩,
    ⟨(590888040087/1000000000000 : ℚ), (24492591/500000000 : ℚ), (-35024463471/1000000000000 : ℚ), 1⟩,
    ⟨(599469456581/1000000000000 : ℚ), (92373423/2500000000 : ℚ), (-13930802781/500000000000 : ℚ), 1⟩,
    ⟨(6078154697/10000000000 : ℚ), (65033457/2500000000 : ℚ), (-10630341093/500000000000 : ℚ), 1⟩,
    ⟨(123181194633/200000000000 : ℚ), (10044403/625000000 : ℚ), (-7588886721/500000000000 : ℚ), 1⟩,
    ⟨(623721476247/1000000000000 : ℚ), (35148707/5000000000 : ℚ), (-9574194371/1000000000000 : ℚ), 1⟩,
    ⟨(631243150713/1000000000000 : ℚ), (-2382903/2000000000 : ℚ), (-4415824473/1000000000000 : ℚ), 1⟩,
    ⟨(63845287619/100000000000 : ℚ), (-21658371/2500000000 : ℚ), (81865867/250000000000 : ℚ), 1⟩,
    ⟨(645333283819/1000000000000 : ℚ), (-154479889/10000000000 : ℚ), (4682290497/1000000000000 : ℚ), 1⟩,
    ⟨(130373559619/200000000000 : ℚ), (-53999419/2500000000 : ℚ), (8672187869/1000000000000 : ℚ), 1⟩,
    ⟨(658040676801/1000000000000 : ℚ), (-33957991/1250000000 : ℚ), (6158977079/500000000000 : ℚ), 1⟩,
    ⟨(66383704893/100000000000 : ℚ), (-160948501/5000000000 : ℚ), (3909490169/250000000000 : ℚ), 1⟩,
    ⟨(167310737629/250000000000 : ℚ), (-367063449/10000000000 : ℚ), (18648413839/1000000000000 : ℚ), 1⟩,
    ⟨(168561339567/250000000000 : ℚ), (-203741949/5000000000 : ℚ), (267044751/12500000000 : ℚ), 1⟩,
    ⟨(339416110473/500000000000 : ℚ), (-221719031/5000000000 : ℚ), (23795979141/1000000000000 : ℚ), 1⟩,
    ⟨(341496244199/500000000000 : ℚ), (-237584489/5000000000 : ℚ), (3244568499/125000000000 : ℚ), 1⟩,
    ⟨(343358069087/500000000000 : ℚ), (-502886611/10000000000 : ℚ), (13927391191/500000000000 : ℚ), 1⟩,
    ⟨(172498549919/250000000000 : ℚ), (-105354177/2000000000 : ℚ), (14749427857/500000000000 : ℚ), 1⟩,
    ⟨(692818775767/1000000000000 : ℚ), (-546974229/10000000000 : ℚ), (15447859973/500000000000 : ℚ), 1⟩,
    ⟨(173795765449/250000000000 : ℚ), (-563623687/10000000000 : ℚ), (32051189169/1000000000000 : ℚ), 1⟩,
    ⟨(69708136199/100000000000 : ℚ), (-288411327/5000000000 : ℚ), (8242502369/250000000000 : ℚ), 1⟩,
    ⟨(349254551589/500000000000 : ℚ), (-293326127/5000000000 : ℚ), (33655913283/1000000000000 : ℚ), 1⟩,
    ⟨(699462845807/1000000000000 : ℚ), (-296586211/5000000000 : ℚ), (17055831773/500000000000 : ℚ), 1⟩,
    ⟨(349970146113/500000000000 : ℚ), (-18638209/312500000 : ℚ), (8584771287/250000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-18650891/312500000 : ℚ), (34367491601/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (4634226051/40000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control12.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control12.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate12
