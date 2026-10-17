import S7_ParameterChoice.Source.Joint.Controls.ControlPrecision
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeData
import S7_ParameterChoice.Source.Joint.Controls.FastControlDomain
import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate13
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12199391/312500000 : ℚ), (8927827039/8000000 : ℚ), (-21847699022583/500000000000 : ℚ), 10⟩,
    ⟨(19624086813/500000000000 : ℚ), (1180015325401/10000000000 : ℚ), (-4697654063947/1000000000000 : ℚ), 7⟩,
    ⟨(4957542949/125000000000 : ℚ), (3029234803/78125000 : ℚ), (-394283068831/250000000000 : ℚ), 5⟩,
    ⟨(8051744327/200000000000 : ℚ), (172020679677/10000000000 : ℚ), (-89564852389/125000000000 : ℚ), 4⟩,
    ⟨(1640812497/40000000000 : ℚ), (21126954247/2500000000 : ℚ), (-45175418921/125000000000 : ℚ), 4⟩,
    ⟨(20957924227/500000000000 : ℚ), (8173854791/2000000000 : ℚ), (-90342655171/500000000000 : ℚ), 3⟩,
    ⟨(21455457387/500000000000 : ℚ), (4030333271/2500000000 : ℚ), (-15168571389/200000000000 : ℚ), 3⟩,
    ⟨(8793454309/200000000000 : ℚ), (156532769/2000000000 : ℚ), (-9277726957/1000000000000 : ℚ), 3⟩,
    ⟨(45044323569/1000000000000 : ℚ), (-9357970103/10000000000 : ℚ), (17909425343/500000000000 : ℚ), 2⟩,
    ⟨(2305034017/50000000000 : ℚ), (-655337919/400000000 : ℚ), (33908313913/500000000000 : ℚ), 2⟩,
    ⟨(2354787333/50000000000 : ℚ), (-4281048087/2000000000 : ℚ), (18241430811/200000000000 : ℚ), 2⟩,
    ⟨(47991282689/1000000000000 : ℚ), (-12524497437/5000000000 : ℚ), (108525738593/1000000000000 : ℚ), 2⟩,
    ⟨(24376436739/500000000000 : ℚ), (-345993953/125000000 : ℚ), (121247774933/1000000000000 : ℚ), 2⟩,
    ⟨(24675625761/500000000000 : ℚ), (-29513251393/10000000000 : ℚ), (3256042879/25000000000 : ℚ), 2⟩,
    ⟨(49763421487/1000000000000 : ℚ), (-3834720811/1250000000 : ℚ), (136012487909/1000000000000 : ℚ), 2⟩,
    ⟨(24986771957/500000000000 : ℚ), (-7811033463/2500000000 : ℚ), (2169325709/15625000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-15657109753/5000000000 : ℚ), (69593590439/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (1835113723/10000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control13.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control13.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate13

namespace DiagonalRamsey.JointInheritedCertificate14
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39196128071/500000000000 : ℚ), (284255212669/250000000 : ℚ), (-89394513762819/1000000000000 : ℚ), 10⟩,
    ⟨(1576128817/20000000000 : ℚ), (1202990292329/10000000000 : ℚ), (-9613732665163/1000000000000 : ℚ), 7⟩,
    ⟨(3980944669/50000000000 : ℚ), (98934659053/2500000000 : ℚ), (-3229988614987/1000000000000 : ℚ), 5⟩,
    ⟨(80798391637/1000000000000 : ℚ), (8795587269/500000000 : ℚ), (-36739926863/25000000000 : ℚ), 4⟩,
    ⟨(20574902041/250000000000 : ℚ), (86731315959/10000000000 : ℚ), (-185852368047/250000000000 : ℚ), 4⟩,
    ⟨(21016213013/250000000000 : ℚ), (21134862217/5000000000 : ℚ), (-18702775951/50000000000 : ℚ), 3⟩,
    ⟨(86026285969/1000000000000 : ℚ), (17067633847/10000000000 : ℚ), (-159967942243/1000000000000 : ℚ), 3⟩,
    ⟨(22027133277/250000000000 : ℚ), (1460884103/10000000000 : ℚ), (-242139739/10000000000 : ℚ), 3⟩,
    ⟨(90231573881/1000000000000 : ℚ), (-8844621927/10000000000 : ℚ), (33804838229/500000000000 : ℚ), 2⟩,
    ⟨(92313821021/1000000000000 : ℚ), (-3993486027/2500000000 : ℚ), (26528512181/200000000000 : ℚ), 2⟩,
    ⟨(94275254937/1000000000000 : ℚ), (-4212383831/2000000000 : ℚ), (90045113481/500000000000 : ℚ), 2⟩,
    ⟨(48020249413/500000000000 : ℚ), (-989917761/400000000 : ℚ), (215155396861/1000000000000 : ℚ), 2⟩,
    ⟨(97541715353/1000000000000 : ℚ), (-3425654759/1250000000 : ℚ), (240870933389/1000000000000 : ℚ), 2⟩,
    ⟨(98721213609/1000000000000 : ℚ), (-365693601/125000000 : ℚ), (64756470389/250000000000 : ℚ), 2⟩,
    ⟨(99533666139/1000000000000 : ℚ), (-30429487327/10000000000 : ℚ), (67665731379/250000000000 : ℚ), 2⟩,
    ⟨(99947850847/1000000000000 : ℚ), (-7750042673/2500000000 : ℚ), (276354903143/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31070776613/10000000000 : ℚ), (277060778127/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (34891401539/250000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control14.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control14.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate14

namespace DiagonalRamsey.JointInheritedCertificate17
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39134291113/1000000000000 : ℚ), (693855930289/625000000 : ℚ), (-43573581394441/1000000000000 : ℚ), 10⟩,
    ⟨(39342568779/1000000000000 : ℚ), (586954704311/5000000000 : ℚ), (-468376261351/100000000000 : ℚ), 7⟩,
    ⟨(39751120117/1000000000000 : ℚ), (24105778073/625000000 : ℚ), (-785936377037/500000000000 : ℚ), 5⟩,
    ⟨(40344244729/1000000000000 : ℚ), (85522085601/5000000000 : ℚ), (-89204483773/125000000000 : ℚ), 4⟩,
    ⟨(41099149169/1000000000000 : ℚ), (83949748383/10000000000 : ℚ), (-89874466899/250000000000 : ℚ), 4⟩,
    ⟨(41986822881/1000000000000 : ℚ), (10127482993/2500000000 : ℚ), (-35855043681/200000000000 : ℚ), 3⟩,
    ⟨(42973153063/1000000000000 : ℚ), (15868586647/10000000000 : ℚ), (-18679776093/250000000000 : ℚ), 3⟩,
    ⟨(110050589/2500000000 : ℚ), (118422079/2000000000 : ℚ), (-8335279873/1000000000000 : ℚ), 3⟩,
    ⟨(2817989481/62500000000 : ℚ), (-9509958759/10000000000 : ℚ), (36638853683/1000000000000 : ℚ), 3⟩,
    ⟨(46134914233/1000000000000 : ℚ), (-1031905089/625000000 : ℚ), (34275182747/500000000000 : ℚ), 2⟩,
    ⟨(9424248883/200000000000 : ℚ), (-21515709371/10000000000 : ℚ), (45939392569/500000000000 : ℚ), 2⟩,
    ⟨(3000557383/62500000000 : ℚ), (-25148380513/10000000000 : ℚ), (5457628867/50000000000 : ℚ), 2⟩,
    ⟨(48763822567/1000000000000 : ℚ), (-13885782647/5000000000 : ℚ), (121842905321/1000000000000 : ℚ), 2⟩,
    ⟨(49356947179/1000000000000 : ℚ), (-29600612103/10000000000 : ℚ), (130815382683/1000000000000 : ℚ), 2⟩,
    ⟨(49765498517/1000000000000 : ℚ), (-3845296353/1250000000 : ℚ), (68286475269/500000000000 : ℚ), 2⟩,
    ⟨(49973776183/1000000000000 : ℚ), (-31327468337/10000000000 : ℚ), (139391041121/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-313974003/100000000 : ℚ), (139740609183/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (96762464407/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control17.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control17.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate17

namespace DiagonalRamsey.JointInheritedCertificate18
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(78592152799/1000000000000 : ℚ), (11317411560727/10000000000 : ℚ), (-89203169601701/1000000000000 : ℚ), 10⟩,
    ⟨(39501252909/500000000000 : ℚ), (1197474404969/10000000000 : ℚ), (-599488522431/62500000000 : ℚ), 7⟩,
    ⟨(39903721111/500000000000 : ℚ), (98475698203/2500000000 : ℚ), (-3221621631869/1000000000000 : ℚ), 5⟩,
    ⟨(80976028753/1000000000000 : ℚ), (87522607173/5000000000 : ℚ), (-732479529751/500000000000 : ℚ), 4⟩,
    ⟨(82463357289/1000000000000 : ℚ), (86240426219/10000000000 : ℚ), (-740304343967/1000000000000 : ℚ), 4⟩,
    ⟨(84212270627/1000000000000 : ℚ), (1678234277/400000000 : ℚ), (-371727319237/1000000000000 : ℚ), 3⟩,
    ⟨(2692361219/31250000000 : ℚ), (16847890503/10000000000 : ℚ), (-3952239877/25000000000 : ℚ), 3⟩,
    ⟨(1764370859/20000000000 : ℚ), (1295566479/10000000000 : ℚ), (-2262171117/100000000000 : ℚ), 3⟩,
    ⟨(2822560723/31250000000 : ℚ), (-8976473793/10000000000 : ℚ), (69007362399/1000000000000 : ℚ), 2⟩,
    ⟨(46192463539/500000000000 : ℚ), (-16084301697/10000000000 : ℚ), (33475486803/250000000000 : ℚ), 2⟩,
    ⟨(4716410773/50000000000 : ℚ), (-21158105857/10000000000 : ℚ), (181249144531/1000000000000 : ℚ), 2⟩,
    ⟨(96077128797/1000000000000 : ℚ), (-24834712769/10000000000 : ℚ), (43248259559/200000000000 : ℚ), 2⟩,
    ⟨(97564457333/1000000000000 : ℚ), (-27485818633/10000000000 : ℚ), (12095243497/50000000000 : ℚ), 2⟩,
    ⟨(19746608773/200000000000 : ℚ), (-29332146633/10000000000 : ℚ), (10400981867/40000000000 : ℚ), 2⟩,
    ⟨(24884495067/250000000000 : ℚ), (-30503859033/10000000000 : ℚ), (271639874387/1000000000000 : ℚ), 2⟩,
    ⟨(12493541661/125000000000 : ℚ), (-31073495617/10000000000 : ℚ), (69330387199/250000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-6228795039/2000000000 : ℚ), (13901308119/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (73735825209/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control18.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control18.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate18

namespace DiagonalRamsey.JointInheritedCertificate19
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7641201587/200000000000 : ℚ), (12978050026181/10000000000 : ℚ), (-777301808363/15625000000 : ℚ), 9⟩,
    ⟨(19216039627/500000000000 : ℚ), (1372916789457/10000000000 : ℚ), (-335022310491/62500000000 : ℚ), 5⟩,
    ⟨(38875534099/1000000000000 : ℚ), (11313330557/250000000 : ℚ), (-904697553607/500000000000 : ℚ), 4⟩,
    ⟨(39519330747/1000000000000 : ℚ), (50620254133/2500000000 : ℚ), (-831003306021/1000000000000 : ℚ), 3⟩,
    ⟨(5042341057/125000000000 : ℚ), (50720210701/5000000000 : ℚ), (-428222938907/1000000000000 : ℚ), 3⟩,
    ⟨(41302238231/1000000000000 : ℚ), (5136294899/1000000000 : ℚ), (-2801333721/12500000000 : ℚ), 2⟩,
    ⟨(4237283293/100000000000 : ℚ), (2900084021/1250000000 : ℚ), (-106434313773/1000000000000 : ℚ), 2⟩,
    ⟨(21754685101/500000000000 : ℚ), (1481818691/2500000000 : ℚ), (-323406203/10000000000 : ℚ), 2⟩,
    ⟨(22334086777/500000000000 : ℚ), (-2678086193/5000000000 : ℚ), (1085206623/62500000000 : ℚ), 2⟩,
    ⟨(22902355413/500000000000 : ℚ), (-13073322461/10000000000 : ℚ), (52249443263/1000000000000 : ℚ), 1⟩,
    ⟨(1875012221/40000000000 : ℚ), (-2314756763/1250000000 : ℚ), (77467895041/1000000000000 : ℚ), 1⟩,
    ⟨(478388153/10000000000 : ℚ), (-22419634617/10000000000 : ℚ), (95938378059/1000000000000 : ℚ), 1⟩,
    ⟨(48658213009/1000000000000 : ℚ), (-12602322373/5000000000 : ℚ), (109372771141/1000000000000 : ℚ), 1⟩,
    ⟨(49302009657/1000000000000 : ℚ), (-423870249/156250000 : ℚ), (59395392437/500000000000 : ℚ), 1⟩,
    ⟨(24872732251/500000000000 : ℚ), (-354251949/125000000 : ℚ), (62397514477/500000000000 : ℚ), 1⟩,
    ⟨(49971535821/1000000000000 : ℚ), (-14463595673/5000000000 : ℚ), (127721862003/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-7249927357/2500000000 : ℚ), (32021087283/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (24999/1000000 : ℚ)
  x := (1770294371/100000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control19.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control19.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate19

namespace DiagonalRamsey.JointInheritedCertificate20
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(767725671/10000000000 : ℚ), (53392588184841/10000000000 : ℚ), (-410340936232373/1000000000000 : ℚ), 11⟩,
    ⟨(15376869227/200000000000 : ℚ), (5850786721277/10000000000 : ℚ), (-11313123617503/250000000000 : ℚ), 7⟩,
    ⟨(77106827713/1000000000000 : ℚ), (256956195313/1250000000 : ℚ), (-8022742501017/500000000000 : ℚ), 6⟩,
    ⟨(38718934607/500000000000 : ℚ), (1013808555781/10000000000 : ℚ), (-7998730637451/1000000000000 : ℚ), 5⟩,
    ⟨(2433571329/31250000000 : ℚ), (293599114831/5000000000 : ℚ), (-4687377707609/1000000000000 : ℚ), 4⟩,
    ⟨(15682372951/200000000000 : ℚ), (74520754529/2000000000 : ℚ), (-602245852533/200000000000 : ℚ), 4⟩,
    ⟨(15809087737/200000000000 : ℚ), (250103840629/10000000000 : ℚ), (-1023613458711/500000000000 : ℚ), 3⟩,
    ⟨(15953780531/200000000000 : ℚ), (34781022241/2000000000 : ℚ), (-288482031273/200000000000 : ℚ), 3⟩,
    ⟨(80575289311/1000000000000 : ℚ), (12346455951/1000000000 : ℚ), (-1038181337911/1000000000000 : ℚ), 3⟩,
    ⟨(8145683271/100000000000 : ℚ), (88460210049/10000000000 : ℚ), (-377349504197/500000000000 : ℚ), 2⟩,
    ⟨(16481008621/200000000000 : ℚ), (31624446881/5000000000 : ℚ), (-548215356893/1000000000000 : ℚ), 2⟩,
    ⟨(10426348589/125000000000 : ℚ), (44537005487/10000000000 : ℚ), (-196565889281/500000000000 : ℚ), 2⟩,
    ⟨(84464383653/1000000000000 : ℚ), (1211980043/400000000 : ℚ), (-54732677697/200000000000 : ℚ), 2⟩,
    ⟨(8555568123/100000000000 : ℚ), (2404677969/1250000000 : ℚ), (-17965202349/100000000000 : ℚ), 2⟩,
    ⟨(86674171653/1000000000000 : ℚ), (10487881259/10000000000 : ℚ), (-104325433841/1000000000000 : ℚ), 2⟩,
    ⟨(87809083247/1000000000000 : ℚ), (1730319611/5000000000 : ℚ), (-21516681003/500000000000 : ℚ), 2⟩,
    ⟨(88949486193/1000000000000 : ℚ), (-451622427/2000000000 : ℚ), (937211357/125000000000 : ℚ), 2⟩,
    ⟨(45042198893/500000000000 : ℚ), (-1741154671/2500000000 : ℚ), (9924177857/200000000000 : ℚ), 1⟩,
    ⟨(91202888209/1000000000000 : ℚ), (-10874763983/10000000000 : ℚ), (4252899133/50000000000 : ℚ), 1⟩,
    ⟨(92294185787/1000000000000 : ℚ), (-7074132149/5000000000 : ℚ), (57543782561/500000000000 : ℚ), 1⟩,
    ⟨(93347780727/1000000000000 : ℚ), (-8452402463/5000000000 : ℚ), (70335464099/500000000000 : ℚ), 1⟩,
    ⟨(18870705267/200000000000 : ℚ), (-769401701/400000000 : ℚ), (40634532461/250000000000 : ℚ), 1⟩,
    ⟨(9530173673/100000000000 : ℚ), (-21208254029/10000000000 : ℚ), (36249611741/200000000000 : ℚ), 1⟩,
    ⟨(187857969/1953125000 : ℚ), (-11438872541/5000000000 : ℚ), (7889244269/40000000000 : ℚ), 1⟩,
    ⟨(3030927087/31250000000 : ℚ), (-6071182543/2500000000 : ℚ), (52704990147/250000000000 : ℚ), 1⟩,
    ⟨(48856565377/500000000000 : ℚ), (-25461149983/10000000000 : ℚ), (55568027901/250000000000 : ℚ), 1⟩,
    ⟨(24586676171/250000000000 : ℚ), (-2643173599/1000000000 : ℚ), (46357295861/200000000000 : ℚ), 1⟩,
    ⟨(1545066983/15625000000 : ℚ), (-272155321/100000000 : ℚ), (119757883607/500000000000 : ℚ), 1⟩,
    ⟨(3972828009/40000000000 : ℚ), (-5565403437/2000000000 : ℚ), (122787829471/500000000000 : ℚ), 1⟩,
    ⟨(49825870863/500000000000 : ℚ), (-28276927981/10000000000 : ℚ), (125025809601/500000000000 : ℚ), 1⟩,
    ⟨(12484277913/125000000000 : ℚ), (-7143212811/2500000000 : ℚ), (10120153141/40000000000 : ℚ), 1⟩,
    ⟨(4999300117/50000000000 : ℚ), (-28719632451/10000000000 : ℚ), (50894122723/200000000000 : ℚ), 1⟩,
    ⟨(1/10 : ℚ), (-28737925363/10000000000 : ℚ), (63663382481/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (24999/1000000 : ℚ)
  x := (12236322349/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control20.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control20.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate20

namespace DiagonalRamsey.JointInheritedCertificate22
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39252055841/1000000000000 : ℚ), (1383753322181/1250000000 : ℚ), (-43578354650989/1000000000000 : ℚ), 10⟩,
    ⟨(4932259519/125000000000 : ℚ), (1170722464401/10000000000 : ℚ), (-4683937625073/1000000000000 : ℚ), 7⟩,
    ⟨(39862199529/1000000000000 : ℚ), (192341333577/5000000000 : ℚ), (-196460093217/125000000000 : ℚ), 5⟩,
    ⟨(20224447869/500000000000 : ℚ), (85295473289/5000000000 : ℚ), (-22292023607/31250000000 : ℚ), 4⟩,
    ⟨(10298904593/250000000000 : ℚ), (41851828091/5000000000 : ℚ), (-71833888593/200000000000 : ℚ), 4⟩,
    ⟨(42073671299/1000000000000 : ℚ), (8071371739/2000000000 : ℚ), (-178932735679/1000000000000 : ℚ), 3⟩,
    ⟨(43049311437/1000000000000 : ℚ), (3152502513/2000000000 : ℚ), (-74374247021/1000000000000 : ℚ), 3⟩,
    ⟨(44085045483/1000000000000 : ℚ), (511954889/10000000000 : ℚ), (-51167/6400000 : ℚ), 3⟩,
    ⟨(1128526769/25000000000 : ℚ), (-2393693663/2500000000 : ℚ), (36970923959/1000000000000 : ℚ), 3⟩,
    ⟨(23088402403/500000000000 : ℚ), (-8282856119/5000000000 : ℚ), (34436103547/500000000000 : ℚ), 2⟩,
    ⟨(9430488989/200000000000 : ℚ), (-4312950021/2000000000 : ℚ), (92190158619/1000000000000 : ℚ), 2⟩,
    ⟨(48030497871/1000000000000 : ℚ), (-6298348457/2500000000 : ℚ), (109454433937/1000000000000 : ℚ), 2⟩,
    ⟨(9755444101/200000000000 : ℚ), (-1112560337/400000000 : ℚ), (122136938267/1000000000000 : ℚ), 2⟩,
    ⟨(24681958357/500000000000 : ℚ), (-14820745511/5000000000 : ℚ), (26220722829/200000000000 : ℚ), 2⟩,
    ⟨(49768040091/1000000000000 : ℚ), (-7700595097/2500000000 : ℚ), (17107178587/125000000000 : ℚ), 2⟩,
    ⟨(24987030201/500000000000 : ℚ), (-7841774057/2500000000 : ℚ), (139673696079/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31436983003/10000000000 : ℚ), (140023039253/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (262499/1000000 : ℚ)
  x := (203545250209/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control22.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control22.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate22

namespace DiagonalRamsey.JointInheritedCertificate23
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(78802622511/1000000000000 : ℚ), (1126980897799/1000000000 : ℚ), (-89062631839673/1000000000000 : ℚ), 10⟩,
    ⟨(39604470587/500000000000 : ℚ), (1192529966391/10000000000 : ℚ), (-59846958559/6250000000 : ℚ), 7⟩,
    ⟨(80005963903/1000000000000 : ℚ), (392268988559/10000000000 : ℚ), (-643051124951/200000000000 : ℚ), 5⟩,
    ⟨(2029076539/25000000000 : ℚ), (174279434867/10000000000 : ℚ), (-29226608483/20000000000 : ℚ), 4⟩,
    ⟨(20658941883/250000000000 : ℚ), (21452274687/2500000000 : ℚ), (-147560859701/200000000000 : ℚ), 4⟩,
    ⟨(42183743277/500000000000 : ℚ), (41681160231/10000000000 : ℚ), (-92450791749/250000000000 : ℚ), 3⟩,
    ⟨(17258333927/200000000000 : ℚ), (16655996751/10000000000 : ℚ), (-78251502777/500000000000 : ℚ), 3⟩,
    ⟨(44167185749/500000000000 : ℚ), (1151345403/10000000000 : ℚ), (-10626872597/500000000000 : ℚ), 3⟩,
    ⟨(90417092257/1000000000000 : ℚ), (-9091447507/10000000000 : ℚ), (35111602557/500000000000 : ℚ), 3⟩,
    ⟨(92459794121/1000000000000 : ℚ), (-647219767/400000000 : ℚ), (6750348747/50000000000 : ℚ), 2⟩,
    ⟨(47191988601/500000000000 : ℚ), (-2124190149/1000000000 : ℚ), (182271760133/1000000000000 : ℚ), 2⟩,
    ⟨(3003615507/31250000000 : ℚ), (-24910257031/10000000000 : ℚ), (217202792399/1000000000000 : ℚ), 2⟩,
    ⟨(24397100549/250000000000 : ℚ), (-107640377/39062500 : ℚ), (121411078317/500000000000 : ℚ), 2⟩,
    ⟨(98745499853/1000000000000 : ℚ), (-14699413173/5000000000 : ℚ), (260911466443/1000000000000 : ℚ), 2⟩,
    ⟨(49771261291/500000000000 : ℚ), (-3821067083/1250000000 : ℚ), (2128968339/7812500000 : ℚ), 2⟩,
    ⟨(19989768249/200000000000 : ℚ), (-973039319/312500000 : ℚ), (69545159833/250000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-3900953429/1250000000 : ℚ), (34860518933/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (262499/1000000 : ℚ)
  x := (6216094017/40000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control23.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control23.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate23

namespace DiagonalRamsey.JointInheritedCertificate26
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39345927037/1000000000000 : ℚ), (11004813653849/10000000000 : ℚ), (-21711856591641/500000000000 : ℚ), 10⟩,
    ⟨(4943768499/125000000000 : ℚ), (1163823012591/10000000000 : ℚ), (-4666357577623/1000000000000 : ℚ), 7⟩,
    ⟨(39950741807/1000000000000 : ℚ), (95586581561/2500000000 : ℚ), (-1565065350687/1000000000000 : ℚ), 5⟩,
    ⟨(10133078471/250000000000 : ℚ), (169467703993/10000000000 : ℚ), (-141950119467/200000000000 : ℚ), 4⟩,
    ⟨(2579532171/62500000000 : ℚ), (41528393843/5000000000 : ℚ), (-356819858231/1000000000000 : ℚ), 4⟩,
    ⟨(42142898859/1000000000000 : ℚ), (39938280319/10000000000 : ℚ), (-11075951953/62500000000 : ℚ), 3⟩,
    ⟨(43110017879/1000000000000 : ℚ), (15467679079/10000000000 : ℚ), (-3651138263/50000000000 : ℚ), 3⟩,
    ⟨(22068352977/500000000000 : ℚ), (58027303/2000000000 : ℚ), (-6875314977/1000000000000 : ℚ), 3⟩,
    ⟨(22591754019/500000000000 : ℚ), (-2437700489/2500000000 : ℚ), (18966940457/500000000000 : ℚ), 3⟩,
    ⟨(46210196113/1000000000000 : ℚ), (-16711777371/10000000000 : ℚ), (69725008757/1000000000000 : ℚ), 2⟩,
    ⟨(47177315133/1000000000000 : ℚ), (-216907061/100000000 : ℚ), (92963762083/1000000000000 : ℚ), 2⟩,
    ⟨(6005962407/125000000000 : ℚ), (-1012229579/400000000 : ℚ), (13771367173/125000000000 : ℚ), 2⟩,
    ⟨(12196975027/250000000000 : ℚ), (-27917233761/10000000000 : ℚ), (30703242127/250000000000 : ℚ), 2⟩,
    ⟨(24684736093/500000000000 : ℚ), (-3717351701/1250000000 : ℚ), (2635043411/20000000000 : ℚ), 2⟩,
    ⟨(24885033/500000000 : ℚ), (-1931011949/625000000 : ℚ), (137489020871/1000000000000 : ℚ), 2⟩,
    ⟨(12493571739/250000000000 : ℚ), (-31459274933/10000000000 : ℚ), (35074303173/250000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-394112043/125000000 : ℚ), (17580695697/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (26699316799/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control26.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control26.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate26

namespace DiagonalRamsey.JointInheritedCertificate27
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1580472251/20000000000 : ℚ), (11227370539469/10000000000 : ℚ), (-17794555715153/200000000000 : ℚ), 10⟩,
    ⟨(99282119/1250000000 : ℚ), (1188154277163/10000000000 : ℚ), (-1912963237529/200000000000 : ℚ), 7⟩,
    ⟨(80214408689/1000000000000 : ℚ), (39083668973/1000000000 : ℚ), (-802722999743/250000000000 : ℚ), 5⟩,
    ⟨(81359443201/1000000000000 : ℚ), (86807214821/5000000000 : ℚ), (-364678690141/250000000000 : ℚ), 4⟩,
    ⟨(828167957/10000000000 : ℚ), (21359386049/2500000000 : ℚ), (-735913544379/1000000000000 : ℚ), 4⟩,
    ⟨(84530460949/1000000000000 : ℚ), (41445903203/10000000000 : ℚ), (-184143659493/500000000000 : ℚ), 3⟩,
    ⟨(86434583751/1000000000000 : ℚ), (8246111867/5000000000 : ℚ), (-77606113003/500000000000 : ℚ), 3⟩,
    ⟨(88455989737/1000000000000 : ℚ), (514234289/5000000000 : ℚ), (-5028451597/250000000000 : ℚ), 3⟩,
    ⟨(90516997407/1000000000000 : ℚ), (-4594664817/5000000000 : ℚ), (17813460359/250000000000 : ℚ), 3⟩,
    ⟨(1445912553/15625000000 : ℚ), (-16262345163/10000000000 : ℚ), (6797732521/50000000000 : ℚ), 2⟩,
    ⟨(18888505239/200000000000 : ℚ), (-21313164953/10000000000 : ℚ), (5723607011/31250000000 : ℚ), 2⟩,
    ⟨(96156191443/1000000000000 : ℚ), (-3121808327/1250000000 : ℚ), (43607506433/200000000000 : ℚ), 2⟩,
    ⟨(48806771971/500000000000 : ℚ), (-13807753377/5000000000 : ℚ), (60905173007/250000000000 : ℚ), 2⟩,
    ⟨(49379289227/500000000000 : ℚ), (-2945546127/1000000000 : ℚ), (16355295431/62500000000 : ℚ), 2⟩,
    ⟨(99547291943/1000000000000 : ℚ), (-3827933361/1250000000 : ℚ), (136632677937/500000000000 : ℚ), 2⟩,
    ⟨(99949374593/1000000000000 : ℚ), (-1559570571/500000000 : ℚ), (278930448873/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-1953855441/625000000 : ℚ), (55926605447/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (2552440541/15625000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control27.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control27.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate27

namespace DiagonalRamsey.JointInheritedCertificate30
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79221068551/1000000000000 : ℚ), (11166801875313/10000000000 : ℚ), (-44355384305447/500000000000 : ℚ), 10⟩,
    ⟨(9952420787/125000000000 : ℚ), (1181770322377/10000000000 : ℚ), (-953493068933/100000000000 : ℚ), 7⟩,
    ⟨(80400655427/1000000000000 : ℚ), (19434283167/500000000 : ℚ), (-399947151197/125000000000 : ℚ), 5⟩,
    ⟨(81534911441/1000000000000 : ℚ), (172585687293/10000000000 : ℚ), (-36312968801/25000000000 : ℚ), 4⟩,
    ⟨(20744636379/250000000000 : ℚ), (42423988347/5000000000 : ℚ), (-731828371031/1000000000000 : ℚ), 4⟩,
    ⟨(84676079603/1000000000000 : ℚ), (20532989073/5000000000 : ℚ), (-91319172897/250000000000 : ℚ), 3⟩,
    ⟨(4328113921/50000000000 : ℚ), (4056376321/2500000000 : ℚ), (-30565298961/200000000000 : ℚ), 3⟩,
    ⟨(88564656403/1000000000000 : ℚ), (414169953/5000000000 : ℚ), (-9063320407/500000000000 : ℚ), 3⟩,
    ⟨(9060626329/100000000000 : ℚ), (-9347780601/10000000000 : ℚ), (36484854409/500000000000 : ℚ), 3⟩,
    ⟨(46304320637/500000000000 : ℚ), (-16393548067/10000000000 : ℚ), (27495565691/200000000000 : ℚ), 2⟩,
    ⟨(94494840091/1000000000000 : ℚ), (-10713039739/5000000000 : ℚ), (184538733861/1000000000000 : ℚ), 2⟩,
    ⟨(48096187089/500000000000 : ℚ), (-6268749597/2500000000 : ℚ), (219319119029/1000000000000 : ℚ), 2⟩,
    ⟨(24409002063/250000000000 : ℚ), (-2770773931/1000000000 : ℚ), (244829656291/1000000000000 : ℚ), 2⟩,
    ⟨(49385132133/500000000000 : ℚ), (-5908464849/2000000000 : ℚ), (131422063569/500000000000 : ℚ), 2⟩,
    ⟨(99551553397/1000000000000 : ℚ), (-191919611/62500000 : ℚ), (137197020697/500000000000 : ℚ), 2⟩,
    ⟨(99949851143/1000000000000 : ℚ), (-31273599991/10000000000 : ℚ), (56008896749/200000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7835923907/2500000000 : ℚ), (280745264237/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (287499/1000000 : ℚ)
  x := (171346854441/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control30.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control30.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate30

namespace DiagonalRamsey.JointInheritedCertificate34
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79428055309/1000000000000 : ℚ), (11110586791051/10000000000 : ℚ), (-88491596217021/1000000000000 : ℚ), 10⟩,
    ⟨(3991119273/50000000000 : ℚ), (293966545487/2500000000 : ℚ), (-1901957375617/200000000000 : ℚ), 7⟩,
    ⟨(20148972969/250000000000 : ℚ), (386704860859/10000000000 : ℚ), (-797489688693/250000000000 : ℚ), 5⟩,
    ⟨(81718849139/1000000000000 : ℚ), (171642243847/10000000000 : ℚ), (-72359143157/50000000000 : ℚ), 5⟩,
    ⟨(83148102631/1000000000000 : ℚ), (42154567277/5000000000 : ℚ), (-364131056113/500000000000 : ℚ), 4⟩,
    ⟨(42414363471/500000000000 : ℚ), (20359814529/5000000000 : ℚ), (-181307540659/500000000000 : ℚ), 3⟩,
    ⟨(43348068311/500000000000 : ℚ), (3196562961/2000000000 : ℚ), (-75347343307/500000000000 : ℚ), 3⟩,
    ⟨(17735713633/200000000000 : ℚ), (80815421/1250000000 : ℚ), (-16336110831/1000000000000 : ℚ), 3⟩,
    ⟨(45349918919/500000000000 : ℚ), (-11864381/12500000 : ℚ), (74525111207/1000000000000 : ℚ), 3⟩,
    ⟨(4634113469/50000000000 : ℚ), (-8256170243/5000000000 : ℚ), (27772809103/200000000000 : ℚ), 3⟩,
    ⟨(94549679061/1000000000000 : ℚ), (-5382026273/2500000000 : ℚ), (92900292447/500000000000 : ℚ), 2⟩,
    ⟨(24057575843/250000000000 : ℚ), (-25165646299/10000000000 : ℚ), (110244750629/500000000000 : ℚ), 2⟩,
    ⟨(95370661/976562500 : ℚ), (-6947686773/2500000000 : ℚ), (245934128007/1000000000000 : ℚ), 2⟩,
    ⟨(98782514127/1000000000000 : ℚ), (-2962038263/1000000000 : ℚ), (263903294261/1000000000000 : ℚ), 2⟩,
    ⟨(99556020543/1000000000000 : ℚ), (-30782252093/10000000000 : ℚ), (13448486/48828125 : ℚ), 2⟩,
    ⟨(49975175347/500000000000 : ℚ), (-15673673507/5000000000 : ℚ), (140530968911/500000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31417276619/10000000000 : ℚ), (56352212033/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (299999/1000000 : ℚ)
  x := (179359139127/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control34.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control34.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate34

namespace DiagonalRamsey.JointInheritedCertificate38
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19847227503/500000000000 : ℚ), (435419942829/400000000 : ℚ), (-8665674749929/200000000000 : ℚ), 10⟩,
    ⟨(39891995257/1000000000000 : ℚ), (1151555985123/10000000000 : ℚ), (-290909637897/62500000000 : ℚ), 7⟩,
    ⟨(20139742199/500000000000 : ℚ), (47292555263/1250000000 : ℚ), (-779977232987/500000000000 : ℚ), 5⟩,
    ⟨(20421015719/500000000000 : ℚ), (167609448841/10000000000 : ℚ), (-706497443817/1000000000000 : ℚ), 5⟩,
    ⟨(41558018011/1000000000000 : ℚ), (41008925529/5000000000 : ℚ), (-354348905087/1000000000000 : ℚ), 4⟩,
    ⟨(42399929153/1000000000000 : ℚ), (39279503053/10000000000 : ℚ), (-35032137677/200000000000 : ℚ), 4⟩,
    ⟨(10833852673/250000000000 : ℚ), (15008621641/10000000000 : ℚ), (-7122924493/100000000000 : ℚ), 3⟩,
    ⟨(44328512597/1000000000000 : ℚ), (-54056337/10000000000 : ℚ), (-131652783/25000000000 : ℚ), 3⟩,
    ⟨(45341070519/1000000000000 : ℚ), (-501207939/500000000 : ℚ), (9850566581/250000000000 : ℚ), 3⟩,
    ⟨(5791771553/125000000000 : ℚ), (-4234788293/2500000000 : ℚ), (17770339721/250000000000 : ℚ), 3⟩,
    ⟨(47269653963/1000000000000 : ℚ), (-10943645789/5000000000 : ℚ), (94230251401/1000000000000 : ℚ), 2⟩,
    ⟨(9622313021/200000000000 : ℚ), (-12740755053/5000000000 : ℚ), (27841648111/250000000000 : ℚ), 2⟩,
    ⟨(48827551677/1000000000000 : ℚ), (-44926583/16000000 : ℚ), (24790981609/200000000000 : ℚ), 2⟩,
    ⟨(24695049359/500000000000 : ℚ), (-5978356851/2000000000 : ℚ), (132855880499/1000000000000 : ℚ), 2⟩,
    ⟨(49777587859/1000000000000 : ℚ), (-31043925107/10000000000 : ℚ), (13856840427/100000000000 : ℚ), 2⟩,
    ⟨(4997512811/100000000000 : ℚ), (-31604601631/10000000000 : ℚ), (141364826431/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31673999181/10000000000 : ℚ), (141711727823/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (243801060407/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control38.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control38.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate38

namespace DiagonalRamsey.JointInheritedCertificate39
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3983984519/50000000000 : ℚ), (11082883646253/10000000000 : ℚ), (-88547107532153/1000000000000 : ℚ), 10⟩,
    ⟨(80069197103/1000000000000 : ℚ), (586557934727/5000000000 : ℚ), (-594699434149/62500000000 : ℚ), 7⟩,
    ⟨(3233329681/40000000000 : ℚ), (24115631287/625000000 : ℚ), (-127654499811/40000000000 : ℚ), 5⟩,
    ⟨(81942463327/1000000000000 : ℚ), (85633610477/5000000000 : ℚ), (-1447496148637/1000000000000 : ℚ), 5⟩,
    ⟨(5209639641/62500000000 : ℚ), (42055186309/5000000000 : ℚ), (-182035304163/250000000000 : ℚ), 4⟩,
    ⟨(85014301249/1000000000000 : ℚ), (1014972981/250000000 : ℚ), (-362291054977/1000000000000 : ℚ), 3⟩,
    ⟨(86858868861/1000000000000 : ℚ), (7950527969/5000000000 : ℚ), (-15027136543/100000000000 : ℚ), 3⟩,
    ⟨(88817051393/1000000000000 : ℚ), (293047577/5000000000 : ℚ), (-3966871673/250000000000 : ℚ), 3⟩,
    ⟨(90813596989/1000000000000 : ℚ), (-953928571/1000000000 : ℚ), (9376114209/125000000000 : ℚ), 3⟩,
    ⟨(92771779521/1000000000000 : ℚ), (-662085059/400000000 : ℚ), (139346306151/1000000000000 : ℚ), 3⟩,
    ⟨(94616347133/1000000000000 : ℚ), (-21562627651/10000000000 : ℚ), (93136478499/500000000000 : ℚ), 2⟩,
    ⟨(48138207063/500000000000 : ℚ), (-25196664139/10000000000 : ℚ), (110474532383/500000000000 : ℚ), 2⟩,
    ⟨(19537637011/200000000000 : ℚ), (-1112778983/400000000 : ℚ), (49276269881/200000000000 : ℚ), 2⟩,
    ⟨(98797406357/1000000000000 : ℚ), (-14823842531/5000000000 : ℚ), (13217026029/50000000000 : ℚ), 2⟩,
    ⟨(99561451279/1000000000000 : ℚ), (-30808747549/10000000000 : ℚ), (275855403381/1000000000000 : ℚ), 2⟩,
    ⟨(49975479001/500000000000 : ℚ), (-31373483499/10000000000 : ℚ), (14074446919/50000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31443370371/10000000000 : ℚ), (141093817809/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (187375733713/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control39.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control39.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate39

namespace DiagonalRamsey.JointInheritedCertificate42
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4974451541/125000000000 : ℚ), (2164264236587/2000000000 : ℚ), (-5397638626877/125000000000 : ℚ), 10⟩,
    ⟨(39991213561/1000000000000 : ℚ), (228952905999/2000000000 : ℚ), (-2318874485947/500000000000 : ℚ), 7⟩,
    ⟨(2018744959/50000000000 : ℚ), (75207738577/2000000000 : ℚ), (-155358917837/100000000000 : ℚ), 6⟩,
    ⟨(40931924363/1000000000000 : ℚ), (83250742077/5000000000 : ℚ), (-140602567849/200000000000 : ℚ), 5⟩,
    ⟨(162659699/3906250000 : ℚ), (16275838789/2000000000 : ℚ), (-176027509917/500000000000 : ℚ), 4⟩,
    ⟨(21237265021/500000000000 : ℚ), (38866336277/10000000000 : ℚ), (-17347525653/100000000000 : ℚ), 4⟩,
    ⟨(43400829067/1000000000000 : ℚ), (7359117393/5000000000 : ℚ), (-17474844723/250000000000 : ℚ), 3⟩,
    ⟨(11096045717/250000000000 : ℚ), (-271521543/10000000000 : ℚ), (-832844909/200000000000 : ℚ), 3⟩,
    ⟨(11346700427/250000000000 : ℚ), (-101955049/100000000 : ℚ), (161392713/4000000000 : ℚ), 3⟩,
    ⟨(11592538877/250000000000 : ℚ), (-17080022181/10000000000 : ℚ), (8989495149/125000000000 : ℚ), 3⟩,
    ⟨(23648227267/500000000000 : ℚ), (-22007481567/10000000000 : ℚ), (94983679419/1000000000000 : ℚ), 3⟩,
    ⟨(376016419/7812500000 : ℚ), (-25587543321/10000000000 : ℚ), (112060692077/1000000000000 : ℚ), 2⟩,
    ⟨(48839060213/1000000000000 : ℚ), (-3521944041/1250000000 : ℚ), (124606420491/1000000000000 : ℚ), 2⟩,
    ⟨(12349021349/250000000000 : ℚ), (-7495486299/2500000000 : ℚ), (8342385021/62500000000 : ℚ), 2⟩,
    ⟨(9955954203/200000000000 : ℚ), (-486411213/156250000 : ℚ), (139172471603/1000000000000 : ℚ), 2⟩,
    ⟨(49975372247/1000000000000 : ℚ), (-31689231927/10000000000 : ℚ), (141960172683/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31758414869/10000000000 : ℚ), (35576500537/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (253907547987/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control42.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control42.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate42

namespace DiagonalRamsey.JointInheritedCertificate43
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79870803003/1000000000000 : ℚ), (5505638516837/5000000000 : ℚ), (-88182902292937/1000000000000 : ℚ), 10⟩,
    ⟨(80256646413/1000000000000 : ℚ), (582752826259/5000000000 : ℚ), (-118423323963/12500000000 : ℚ), 7⟩,
    ⟨(5063344093/62500000000 : ℚ), (383258057013/10000000000 : ℚ), (-1587936154491/500000000000 : ℚ), 5⟩,
    ⟨(41056147279/500000000000 : ℚ), (1700141227/100000000 : ℚ), (-11513040863/8000000000 : ℚ), 5⟩,
    ⟨(41755393887/500000000000 : ℚ), (41692934023/5000000000 : ℚ), (-722714885279/1000000000000 : ℚ), 4⟩,
    ⟨(21288810457/250000000000 : ℚ), (10032371339/2500000000 : ℚ), (-5599400871/15625000000 : ℚ), 4⟩,
    ⟨(86982461271/1000000000000 : ℚ), (15571023103/10000000000 : ℚ), (-147211644069/1000000000000 : ℚ), 3⟩,
    ⟨(44461113543/500000000000 : ℚ), (42383193/1250000000 : ℚ), (-13360796891/1000000000000 : ℚ), 3⟩,
    ⟨(2272499879/25000000000 : ℚ), (-9733760211/10000000000 : ℚ), (2410657723/31250000000 : ℚ), 3⟩,
    ⟨(46419880487/500000000000 : ℚ), (-16711872397/10000000000 : ℚ), (35303513539/250000000000 : ℚ), 3⟩,
    ⟨(47333490209/500000000000 : ℚ), (-1084941337/500000000 : ℚ), (187949945207/1000000000000 : ℚ), 3⟩,
    ⟨(96311434471/1000000000000 : ℚ), (-25316755509/10000000000 : ℚ), (111243974511/500000000000 : ℚ), 2⟩,
    ⟨(12213740961/125000000000 : ℚ), (-5585730419/2000000000 : ℚ), (1982574947/8000000000 : ℚ), 2⟩,
    ⟨(98808716757/1000000000000 : ℚ), (-14874860549/5000000000 : ℚ), (265713915493/1000000000000 : ℚ), 2⟩,
    ⟨(12445696979/125000000000 : ℚ), (-1931655821/625000000 : ℚ), (277187146041/1000000000000 : ℚ), 2⟩,
    ⟨(49975709621/500000000000 : ℚ), (-31469221259/10000000000 : ℚ), (35350097707/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7884715881/2500000000 : ℚ), (28349703503/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (195444022037/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control43.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control43.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate43

namespace DiagonalRamsey.JointInheritedCertificate47
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19959352509/500000000000 : ℚ), (10784353667409/10000000000 : ℚ), (-43164989558729/1000000000000 : ℚ), 10⟩,
    ⟨(40111946767/1000000000000 : ℚ), (570491390657/5000000000 : ℚ), (-2317765117509/500000000000 : ℚ), 7⟩,
    ⟨(40491004093/1000000000000 : ℚ), (9370285691/250000000 : ℚ), (-1552488016001/1000000000000 : ℚ), 6⟩,
    ⟨(10260327509/250000000000 : ℚ), (82967915719/5000000000 : ℚ), (-702227024609/1000000000000 : ℚ), 5⟩,
    ⟨(41741716647/1000000000000 : ℚ), (1013311567/125000000 : ℚ), (-70281537647/200000000000 : ℚ), 4⟩,
    ⟨(10641326923/250000000000 : ℚ), (38668335023/10000000000 : ℚ), (-86453715927/500000000000 : ℚ), 4⟩,
    ⟨(4348043303/100000000000 : ℚ), (14581254843/10000000000 : ℚ), (-17346680537/250000000000 : ℚ), 3⟩,
    ⟨(11112981227/250000000000 : ℚ), (-373320647/10000000000 : ℚ), (-230934229/62500000000 : ℚ), 3⟩,
    ⟨(11360612359/250000000000 : ℚ), (-128443357/125000000 : ℚ), (40781001413/1000000000000 : ℚ), 3⟩,
    ⟨(46413941313/1000000000000 : ℚ), (-17145670197/10000000000 : ℚ), (4519844607/62500000000 : ℚ), 3⟩,
    ⟨(47329066651/1000000000000 : ℚ), (-22063424693/10000000000 : ℚ), (95358699049/1000000000000 : ℚ), 3⟩,
    ⟨(1504770553/31250000000 : ℚ), (-12818419003/5000000000 : ℚ), (28103478507/250000000000 : ℚ), 3⟩,
    ⟨(48853064307/1000000000000 : ℚ), (-7055087947/2500000000 : ℚ), (15617825169/125000000000 : ℚ), 2⟩,
    ⟨(197613481/4000000000 : ℚ), (-15011913073/5000000000 : ℚ), (16725242263/125000000000 : ℚ), 2⟩,
    ⟨(6222803447/125000000000 : ℚ), (-3896308247/1250000000 : ℚ), (139488231153/1000000000000 : ℚ), 2⟩,
    ⟨(1999026773/40000000000 : ℚ), (-253828627/80000000 : ℚ), (28454403083/200000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-254381313/80000000 : ℚ), (71308680033/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (52803117119/200000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control47.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control47.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate47

namespace DiagonalRamsey.JointInheritedCertificate48
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80106754159/1000000000000 : ℚ), (1371038931787/1250000000 : ℚ), (-88094918313623/1000000000000 : ℚ), 10⟩,
    ⟨(10061009347/125000000000 : ℚ), (2902660951/25000000 : ℚ), (-9463266658777/1000000000000 : ℚ), 7⟩,
    ⟨(10154507759/125000000000 : ℚ), (190899001361/5000000000 : ℚ), (-158573654589/50000000000 : ℚ), 6⟩,
    ⟨(20580492829/250000000000 : ℚ), (33866563507/2000000000 : ℚ), (-287290328013/200000000000 : ℚ), 5⟩,
    ⟨(10463008953/125000000000 : ℚ), (83003709731/10000000000 : ℚ), (-144151900693/200000000000 : ℚ), 4⟩,
    ⟨(10666156207/125000000000 : ℚ), (19943677327/5000000000 : ℚ), (-71357730543/200000000000 : ℚ), 4⟩,
    ⟨(21783762683/250000000000 : ℚ), (1925400547/1250000000 : ℚ), (-145875075469/1000000000000 : ℚ), 3⟩,
    ⟨(89052078929/1000000000000 : ℚ), (1072201/50000000 : ℚ), (-12187874331/1000000000000 : ℚ), 3⟩,
    ⟨(11375832991/125000000000 : ℚ), (-4915736577/5000000000 : ℚ), (39095872569/500000000000 : ℚ), 3⟩,
    ⟨(743389537/8000000000 : ℚ), (-3358388951/2000000000 : ℚ), (71084766013/500000000000 : ℚ), 3⟩,
    ⟨(94729493201/1000000000000 : ℚ), (-10883486109/5000000000 : ℚ), (188830303311/1000000000000 : ℚ), 3⟩,
    ⟨(96354671233/1000000000000 : ℚ), (-25376755399/10000000000 : ℚ), (223309749097/1000000000000 : ℚ), 2⟩,
    ⟨(97736771541/1000000000000 : ℚ), (-27983154311/10000000000 : ℚ), (62149882847/250000000000 : ℚ), 2⟩,
    ⟨(19764536157/200000000000 : ℚ), (-2980065317/1000000000 : ℚ), (33307528973/125000000000 : ℚ), 2⟩,
    ⟨(99570668081/1000000000000 : ℚ), (-3869412727/1250000000 : ℚ), (17369594263/62500000000 : ℚ), 2⟩,
    ⟨(49975994349/500000000000 : ℚ), (-31517045033/10000000000 : ℚ), (141758739211/500000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-6317313559/2000000000 : ℚ), (284212539039/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (50878640511/250000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control48.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control48.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate48

namespace DiagonalRamsey.JointInheritedCertificate54
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80352615813/1000000000000 : ℚ), (2185992232837/2000000000 : ℚ), (-44026441740553/500000000000 : ℚ), 10⟩,
    ⟨(80729223669/1000000000000 : ℚ), (1157133513103/10000000000 : ℚ), (-4728884345989/500000000000 : ℚ), 7⟩,
    ⟨(10183495819/125000000000 : ℚ), (190260100807/5000000000 : ℚ), (-126756368727/40000000000 : ℚ), 6⟩,
    ⟨(82540454987/1000000000000 : ℚ), (84371815931/5000000000 : ℚ), (-717355456133/500000000000 : ℚ), 5⟩,
    ⟨(41952736923/500000000000 : ℚ), (41338429607/5000000000 : ℚ), (-359687382339/500000000000 : ℚ), 4⟩,
    ⟨(42755283109/500000000000 : ℚ), (39682164687/10000000000 : ℚ), (-88900676723/250000000000 : ℚ), 4⟩,
    ⟨(17458809861/200000000000 : ℚ), (15262007367/10000000000 : ℚ), (-72411046183/500000000000 : ℚ), 3⟩,
    ⟨(89187384851/1000000000000 : ℚ), (55091067/5000000000 : ℚ), (-1404448153/125000000000 : ℚ), 3⟩,
    ⟨(45558906517/500000000000 : ℚ), (-9912803509/10000000000 : ℚ), (79062071981/1000000000000 : ℚ), 3⟩,
    ⟨(4650557429/50000000000 : ℚ), (-16858256033/10000000000 : ℚ), (142971215813/1000000000000 : ℚ), 3⟩,
    ⟨(94794631667/1000000000000 : ℚ), (-1091155679/500000000 : ℚ), (23696839633/125000000000 : ℚ), 3⟩,
    ⟨(2409993101/25000000000 : ℚ), (-5085187241/2000000000 : ℚ), (28000955857/125000000000 : ℚ), 3⟩,
    ⟨(48882371449/500000000000 : ℚ), (-28027630589/10000000000 : ℚ), (249261336229/1000000000000 : ℚ), 2⟩,
    ⟨(49418615667/500000000000 : ℚ), (-29842074353/10000000000 : ℚ), (267095893689/1000000000000 : ℚ), 2⟩,
    ⟨(99575974217/1000000000000 : ℚ), (-30994908191/10000000000 : ℚ), (139266159699/500000000000 : ℚ), 2⟩,
    ⟨(12494072759/125000000000 : ℚ), (-15777905467/5000000000 : ℚ), (284128071229/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-158126159/50000000 : ℚ), (284822115201/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (105801295457/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control54.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control54.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate54

namespace DiagonalRamsey.JointInheritedCertificate55
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120917128277/1000000000000 : ℚ), (559801911587/125000000 : ℚ), (-541968846336709/1000000000000 : ℚ), 12⟩,
    ⟨(121057085859/1000000000000 : ℚ), (4910423616197/10000000000 : ℚ), (-29862210980689/500000000000 : ℚ), 9⟩,
    ⟨(30333913289/250000000000 : ℚ), (862979512173/5000000000 : ℚ), (-4228887443059/200000000000 : ℚ), 8⟩,
    ⟨(121750147411/1000000000000 : ℚ), (212766297039/2500000000 : ℚ), (-525735603801/50000000000 : ℚ), 7⟩,
    ⟨(6114828841/50000000000 : ℚ), (492396356971/10000000000 : ℚ), (-6139728585283/1000000000000 : ℚ), 6⟩,
    ⟨(122969678967/1000000000000 : ℚ), (155845073659/5000000000 : ℚ), (-3924469843891/1000000000000 : ℚ), 5⟩,
    ⟨(123762971511/1000000000000 : ℚ), (208321787527/10000000000 : ℚ), (-82803057497/31250000000 : ℚ), 5⟩,
    ⟨(124668814611/1000000000000 : ℚ), (2877148061/200000000 : ℚ), (-462304327627/250000000000 : ℚ), 5⟩,
    ⟨(15709810563/125000000000 : ℚ), (50525527041/5000000000 : ℚ), (-52542692077/40000000000 : ℚ), 4⟩,
    ⟨(25356451503/200000000000 : ℚ), (14247031753/2000000000 : ℚ), (-937315449193/1000000000000 : ℚ), 4⟩,
    ⟨(127969503709/1000000000000 : ℚ), (49669790497/10000000000 : ℚ), (-662704073539/1000000000000 : ℚ), 4⟩,
    ⟨(129228789253/1000000000000 : ℚ), (33587765713/10000000000 : ℚ), (-14248330423/31250000000 : ℚ), 4⟩,
    ⟨(65273993271/500000000000 : ℚ), (4257437577/2000000000 : ℚ), (-74054122967/250000000000 : ℚ), 3⟩,
    ⟨(131914390983/1000000000000 : ℚ), (5837988293/5000000000 : ℚ), (-3402331691/20000000000 : ℚ), 3⟩,
    ⟨(66657421677/500000000000 : ℚ), (161132849/400000000 : ℚ), (-68718871321/1000000000000 : ℚ), 3⟩,
    ⟨(26947171307/200000000000 : ℚ), (-430509941/2000000000 : ℚ), (14104710177/1000000000000 : ℚ), 3⟩,
    ⟨(13616374539/100000000000 : ℚ), (-7215182311/10000000000 : ℚ), (82666321353/1000000000000 : ℚ), 3⟩,
    ⟨(137584758571/1000000000000 : ℚ), (-5704658369/5000000000 : ℚ), (70032308009/500000000000 : ℚ), 3⟩,
    ⟨(69492605471/500000000000 : ℚ), (-7458555323/5000000000 : ℚ), (94282899059/500000000000 : ℚ), 3⟩,
    ⟨(140351615383/1000000000000 : ℚ), (-3574687503/2000000000 : ℚ), (57462925817/250000000000 : ℚ), 3⟩,
    ⟨(141670812671/1000000000000 : ℚ), (-10189709507/5000000000 : ℚ), (66296371017/250000000000 : ℚ), 3⟩,
    ⟨(17866262277/125000000000 : ℚ), (-22511651131/10000000000 : ℚ), (147762416033/500000000000 : ℚ), 3⟩,
    ⟨(144117344409/1000000000000 : ℚ), (-12164310827/5000000000 : ℚ), (32160097201/100000000000 : ℚ), 3⟩,
    ⟨(145221117421/1000000000000 : ℚ), (-6468813717/2500000000 : ℚ), (2751798633/8000000000 : ℚ), 2⟩,
    ⟨(146230787313/1000000000000 : ℚ), (-27186181753/10000000000 : ℚ), (363077658277/1000000000000 : ℚ), 2⟩,
    ⟨(73568315207/500000000000 : ℚ), (-3536015743/1250000000 : ℚ), (379240886659/1000000000000 : ℚ), 2⟩,
    ⟨(73964961479/500000000000 : ℚ), (-1825104021/625000000 : ℚ), (392718316641/1000000000000 : ℚ), 2⟩,
    ⟨(29720605021/200000000000 : ℚ), (-14971268267/5000000000 : ℚ), (80740559779/200000000000 : ℚ), 2⟩,
    ⟨(149149454513/1000000000000 : ℚ), (-30522621519/10000000000 : ℚ), (103084700513/250000000000 : ℚ), 2⟩,
    ⟨(149563948769/1000000000000 : ℚ), (-773766561/250000000 : ℚ), (3349854763/8000000000 : ℚ), 2⟩,
    ⟨(74921258033/500000000000 : ℚ), (-31232794779/10000000000 : ℚ), (422955447561/1000000000000 : ℚ), 2⟩,
    ⟨(9373904603/62500000000 : ℚ), (-31372915159/10000000000 : ℚ), (10626400647/25000000000 : ℚ), 2⟩,
    ⟨(3/20 : ℚ), (-1569519321/500000000 : ℚ), (425318079487/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (80333855209/500000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control55.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control55.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate55

namespace DiagonalRamsey.JointInheritedCertificate61
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40148300009/1000000000000 : ℚ), (333784018363/312500000 : ℚ), (-21497116102319/500000000000 : ℚ), 10⟩,
    ⟨(20168570401/500000000000 : ℚ), (1130172594623/10000000000 : ℚ), (-576957537943/125000000000 : ℚ), 7⟩,
    ⟨(40707565343/1000000000000 : ℚ), (371196578853/10000000000 : ℚ), (-1544700251379/1000000000000 : ℚ), 6⟩,
    ⟨(20622669211/500000000000 : ℚ), (82109275499/5000000000 : ℚ), (-697782575263/1000000000000 : ℚ), 5⟩,
    ⟨(10482448431/250000000000 : ℚ), (20021546631/2500000000 : ℚ), (-17417785737/50000000000 : ℚ), 4⟩,
    ⟨(8546925603/200000000000 : ℚ), (4755101527/1250000000 : ℚ), (-170577819121/1000000000000 : ℚ), 4⟩,
    ⟨(43628911963/1000000000000 : ℚ), (14143309651/10000000000 : ℚ), (-13497922073/200000000000 : ℚ), 3⟩,
    ⟨(2228913937/50000000000 : ℚ), (-87410767/1250000000 : ℚ), (-416885051/200000000000 : ℚ), 3⟩,
    ⟨(4554624471/100000000000 : ℚ), (-5265354317/5000000000 : ℚ), (21093864307/500000000000 : ℚ), 3⟩,
    ⟨(46495611487/1000000000000 : ℚ), (-17354057679/10000000000 : ℚ), (73572850339/1000000000000 : ℚ), 3⟩,
    ⟨(9477979087/200000000000 : ℚ), (-5559966361/2500000000 : ℚ), (9649938387/100000000000 : ℚ), 3⟩,
    ⟨(24097364863/500000000000 : ℚ), (-3223910613/1250000000 : ℚ), (113468010431/1000000000000 : ℚ), 3⟩,
    ⟨(12219796257/250000000000 : ℚ), (-28359820047/10000000000 : ℚ), (125932869669/1000000000000 : ℚ), 3⟩,
    ⟨(12354239527/250000000000 : ℚ), (-15076732727/5000000000 : ℚ), (3368687629/25000000000 : ℚ), 3⟩,
    ⟨(6223422831/125000000000 : ℚ), (-31294196559/10000000000 : ℚ), (8775347497/62500000000 : ℚ), 2⟩,
    ⟨(49976223441/1000000000000 : ℚ), (-7962386307/2500000000 : ℚ), (143175712849/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-1595914721/500000000 : ℚ), (1121245133/7812500000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (8883781543/31250000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control61.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control61.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate61

namespace DiagonalRamsey.JointInheritedCertificate62
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40285610109/500000000000 : ℚ), (217404223821/200000000 : ℚ), (-87806495469017/1000000000000 : ℚ), 10⟩,
    ⟨(80943637789/1000000000000 : ℚ), (1150833466461/10000000000 : ℚ), (-471475820367/50000000000 : ℚ), 7⟩,
    ⟨(81674161133/1000000000000 : ℚ), (369526656/9765625 : ℚ), (-3158117533711/1000000000000 : ℚ), 6⟩,
    ⟨(41367358323/500000000000 : ℚ), (33545243601/2000000000 : ℚ), (-285748514637/200000000000 : ℚ), 5⟩,
    ⟨(1313821059/15625000000 : ℚ), (16418723581/2000000000 : ℚ), (-715405968041/1000000000000 : ℚ), 4⟩,
    ⟨(8567178127/100000000000 : ℚ), (1572279371/400000000 : ℚ), (-352661443651/1000000000000 : ℚ), 4⟩,
    ⟨(87435420633/1000000000000 : ℚ), (3749976921/2500000000 : ℚ), (-71243335621/500000000000 : ℚ), 3⟩,
    ⟨(17861538039/200000000000 : ℚ), (-84789243/10000000000 : ℚ), (-4646662909/500000000000 : ℚ), 3⟩,
    ⟨(45608319843/500000000000 : ℚ), (-10065269123/10000000000 : ℚ), (80731464659/1000000000000 : ℚ), 3⟩,
    ⟨(1454514207/15625000000 : ℚ), (-169825533/100000000 : ℚ), (144442885053/1000000000000 : ℚ), 3⟩,
    ⟨(94852548611/1000000000000 : ℚ), (-5482055477/2500000000 : ℚ), (190900029969/1000000000000 : ℚ), 3⟩,
    ⟨(19287956421/200000000000 : ℚ), (-5103569671/2000000000 : ℚ), (56306133969/250000000000 : ℚ), 3⟩,
    ⟨(19557922647/200000000000 : ℚ), (-878454977/312500000 : ℚ), (250399495033/1000000000000 : ℚ), 3⟩,
    ⟨(24712542187/250000000000 : ℚ), (-29919104343/10000000000 : ℚ), (6704487819/25000000000 : ℚ), 2⟩,
    ⟨(24895173023/250000000000 : ℚ), (-9708871/3125000 : ℚ), (279581732299/1000000000000 : ℚ), 2⟩,
    ⟨(99953109663/1000000000000 : ℚ), (-15813813341/5000000000 : ℚ), (35645129787/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-15848422433/5000000000 : ℚ), (142926528877/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (2197255717/10000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control62.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control62.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate62

namespace DiagonalRamsey.JointInheritedCertificate68
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40271315859/1000000000000 : ℚ), (2127400119731/2000000000 : ℚ), (-10736562636221/250000000000 : ℚ), 10⟩,
    ⟨(20228899321/500000000000 : ℚ), (281400534337/2500000000 : ℚ), (-36879042377/8000000000 : ℚ), 7⟩,
    ⟨(20411798889/500000000000 : ℚ), (369687331003/10000000000 : ℚ), (-192787905353/125000000000 : ℚ), 6⟩,
    ⟨(41354655813/1000000000000 : ℚ), (163510688541/10000000000 : ℚ), (-348163228461/500000000000 : ℚ), 5⟩,
    ⟨(42030564483/1000000000000 : ℚ), (7968735519/1000000000 : ℚ), (-21706048287/62500000000 : ℚ), 4⟩,
    ⟨(21412674499/500000000000 : ℚ), (9446875021/2500000000 : ℚ), (-169730329421/1000000000000 : ℚ), 4⟩,
    ⟨(21854233117/500000000000 : ℚ), (436495569/312500000 : ℚ), (-66773853207/1000000000000 : ℚ), 3⟩,
    ⟨(11161494623/250000000000 : ℚ), (-829023717/10000000000 : ℚ), (-292089887/200000000000 : ℚ), 3⟩,
    ⟨(456018577/10000000000 : ℚ), (-1328955029/1250000000 : ℚ), (42742816651/1000000000000 : ℚ), 3⟩,
    ⟨(23269684979/500000000000 : ℚ), (-17435882633/10000000000 : ℚ), (9259259301/125000000000 : ℚ), 3⟩,
    ⟨(23711243597/500000000000 : ℚ), (-1394288483/625000000 : ℚ), (96957971103/1000000000000 : ℚ), 3⟩,
    ⟨(48217271709/1000000000000 : ℚ), (-5170199117/2000000000 : ℚ), (56946615081/500000000000 : ℚ), 3⟩,
    ⟨(48893180379/1000000000000 : ℚ), (-14206676431/5000000000 : ℚ), (63166408611/500000000000 : ℚ), 3⟩,
    ⟨(24712119207/500000000000 : ℚ), (-30202936283/10000000000 : ℚ), (13512940521/100000000000 : ℚ), 3⟩,
    ⟨(995800751/20000000000 : ℚ), (-979413257/312500000 : ℚ), (17596988801/125000000000 : ℚ), 3⟩,
    ⟨(49976520333/1000000000000 : ℚ), (-6379086089/2000000000 : ℚ), (143540446793/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-31964040551/10000000000 : ℚ), (5755336669/40000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (294428155999/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control68.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control68.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate68

namespace DiagonalRamsey.JointInheritedCertificate69
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80798918107/1000000000000 : ℚ), (27035717739/25000000 : ℚ), (-87598294858903/1000000000000 : ℚ), 10⟩,
    ⟨(40583485543/500000000000 : ℚ), (572478345547/5000000000 : ℚ), (-9405505729233/1000000000000 : ℚ), 7⟩,
    ⟨(40944466487/500000000000 : ℚ), (75284327437/2000000000 : ℚ), (-3148853256903/1000000000000 : ℚ), 6⟩,
    ⟨(41468529591/500000000000 : ℚ), (166785337953/10000000000 : ℚ), (-284711144213/200000000000 : ℚ), 5⟩,
    ⟨(42135535403/500000000000 : ℚ), (815564033/100000000 : ℚ), (-88989207937/125000000000 : ℚ), 4⟩,
    ⟨(167655669/1953125000 : ℚ), (3896261689/1000000000 : ℚ), (-350044218333/1000000000000 : ℚ), 4⟩,
    ⟨(87582672711/1000000000000 : ℚ), (14760081883/10000000000 : ℚ), (-17548680039/125000000000 : ℚ), 3⟩,
    ⟨(22358249997/250000000000 : ℚ), (-52530789/2000000000 : ℚ), (-7537106481/1000000000000 : ℚ), 3⟩,
    ⟨(91319577319/1000000000000 : ℚ), (-5101956029/5000000000 : ℚ), (82248094439/1000000000000 : ℚ), 3⟩,
    ⟨(18633980919/200000000000 : ℚ), (-4273795313/2500000000 : ℚ), (145783687567/1000000000000 : ℚ), 3⟩,
    ⟨(47456437389/500000000000 : ℚ), (-22023098169/10000000000 : ℚ), (192109121851/1000000000000 : ℚ), 3⟩,
    ⟨(192963013/2000000000 : ℚ), (-5120098649/2000000000 : ℚ), (113167518063/500000000000 : ℚ), 3⟩,
    ⟨(24453879531/250000000000 : ℚ), (-28184863249/10000000000 : ℚ), (50287559601/200000000000 : ℚ), 3⟩,
    ⟨(24715911083/250000000000 : ℚ), (-2998792499/1000000000 : ℚ), (67291869967/250000000000 : ℚ), 3⟩,
    ⟨(4979280311/50000000000 : ℚ), (-1245356191/400000000 : ℚ), (28053798889/100000000000 : ℚ), 2⟩,
    ⟨(99953659199/1000000000000 : ℚ), (-31691596749/10000000000 : ℚ), (143051004571/500000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31760626349/10000000000 : ℚ), (35849018137/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (227865464027/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control69.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control69.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate69

namespace DiagonalRamsey.JointInheritedCertificate70
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12170757517/100000000000 : ℚ), (11056616976617/10000000000 : ℚ), (-4215618244203/31250000000 : ℚ), 10⟩,
    ⟨(24449978831/200000000000 : ℚ), (1171487626603/10000000000 : ℚ), (-115931063919/8000000000 : ℚ), 7⟩,
    ⟨(12331369111/100000000000 : ℚ), (385704925541/10000000000 : ℚ), (-607130655933/125000000000 : ℚ), 6⟩,
    ⟨(31214521229/250000000000 : ℚ), (85668246977/5000000000 : ℚ), (-4298082693/1953125000 : ℚ), 5⟩,
    ⟨(15852965673/125000000000 : ℚ), (84180940701/10000000000 : ℚ), (-221042185939/200000000000 : ℚ), 4⟩,
    ⟨(129135074053/1000000000000 : ℚ), (40632179467/10000000000 : ℚ), (-548499942899/1000000000000 : ℚ), 4⟩,
    ⟨(131703307091/1000000000000 : ℚ), (15899262053/10000000000 : ℚ), (-226249211203/1000000000000 : ℚ), 3⟩,
    ⟨(134429728741/1000000000000 : ℚ), (560667821/10000000000 : ℚ), (-22310717071/1000000000000 : ℚ), 3⟩,
    ⟨(2744191283/20000000000 : ℚ), (-1915403493/2000000000 : ℚ), (14411022507/125000000000 : ℚ), 3⟩,
    ⟨(139935985801/1000000000000 : ℚ), (-16593656817/10000000000 : ℚ), (21247031641/100000000000 : ℚ), 3⟩,
    ⟨(71252109419/500000000000 : ℚ), (-21602698581/10000000000 : ℚ), (5663636759/20000000000 : ℚ), 3⟩,
    ⟨(36203891877/250000000000 : ℚ), (-25232785033/10000000000 : ℚ), (335318420347/1000000000000 : ℚ), 3⟩,
    ⟨(18347650997/125000000000 : ℚ), (-27851124917/10000000000 : ℚ), (74697469609/200000000000 : ℚ), 3⟩,
    ⟨(148325601781/1000000000000 : ℚ), (-7418877411/2500000000 : ℚ), (50050553191/125000000000 : ℚ), 2⟩,
    ⟨(149389398737/1000000000000 : ℚ), (-30833922309/10000000000 : ℚ), (417647614747/1000000000000 : ℚ), 2⟩,
    ⟨(74965858861/500000000000 : ℚ), (-1962333263/625000000 : ℚ), (426079560187/1000000000000 : ℚ), 2⟩,
    ⟨(3/20 : ℚ), (-31467054027/10000000000 : ℚ), (427125149293/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (173482030227/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control70.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control70.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate70

namespace DiagonalRamsey.JointInheritedCertificate72
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1902888457/50000000000 : ℚ), (98455129751/78125000 : ℚ), (-3007609016141/62500000000 : ℚ), 9⟩,
    ⟨(1196458811/31250000000 : ℚ), (1332468957801/10000000000 : ℚ), (-1295969370717/250000000000 : ℚ), 6⟩,
    ⟨(4841963823/125000000000 : ℚ), (438763503899/10000000000 : ℚ), (-1748670115929/1000000000000 : ℚ), 4⟩,
    ⟨(39387599119/1000000000000 : ℚ), (195961356759/10000000000 : ℚ), (-801963907111/1000000000000 : ℚ), 3⟩,
    ⟨(8043459169/200000000000 : ℚ), (97825492513/10000000000 : ℚ), (-103003193881/250000000000 : ℚ), 3⟩,
    ⟨(41192915983/1000000000000 : ℚ), (49154152601/10000000000 : ℚ), (-107096410931/500000000000 : ℚ), 2⟩,
    ⟨(42276966997/1000000000000 : ℚ), (21748639421/10000000000 : ℚ), (-99965117661/1000000000000 : ℚ), 2⟩,
    ⟨(5428473677/125000000000 : ℚ), (4908785663/10000000000 : ℚ), (-6970287961/250000000000 : ℚ), 2⟩,
    ⟨(44601157779/1000000000000 : ℚ), (-6116991807/10000000000 : ℚ), (4121109771/200000000000 : ℚ), 2⟩,
    ⟨(45751980197/1000000000000 : ℚ), (-6838962571/5000000000 : ℚ), (54740132027/1000000000000 : ℚ), 1⟩,
    ⟨(11709007803/250000000000 : ℚ), (-1189201909/625000000 : ℚ), (79491967347/1000000000000 : ℚ), 1⟩,
    ⟨(47811651349/1000000000000 : ℚ), (-22870684547/10000000000 : ℚ), (48837254027/500000000000 : ℚ), 1⟩,
    ⟨(1945653923/40000000000 : ℚ), (-25620768167/10000000000 : ℚ), (110934373813/1000000000000 : ℚ), 1⟩,
    ⟨(4929323661/100000000000 : ℚ), (-27523449491/10000000000 : ℚ), (4810007697/40000000000 : ℚ), 1⟩,
    ⟨(49742265243/1000000000000 : ℚ), (-14362409973/5000000000 : ℚ), (126198802133/1000000000000 : ℚ), 1⟩,
    ⟨(24985589027/500000000000 : ℚ), (-2930700699/1000000000 : ℚ), (64550679423/500000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-1836184407/625000000 : ℚ), (32365243177/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (37499/1000000 : ℚ)
  x := (27005013341/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control72.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control72.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate72

namespace DiagonalRamsey.JointInheritedCertificate80
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(122031860277/1000000000000 : ℚ), (5495315710139/5000000000 : ℚ), (-33611766432411/250000000000 : ℚ), 10⟩,
    ⟨(122567963253/1000000000000 : ℚ), (582250369647/5000000000 : ℚ), (-2887958405213/200000000000 : ℚ), 7⟩,
    ⟨(30904891767/250000000000 : ℚ), (191668481203/5000000000 : ℚ), (-967511947239/200000000000 : ℚ), 6⟩,
    ⟨(62573129589/500000000000 : ℚ), (85099065389/5000000000 : ℚ), (-273749733643/125000000000 : ℚ), 5⟩,
    ⟨(6354468483/50000000000 : ℚ), (41763409863/5000000000 : ℚ), (-1098260777107/1000000000000 : ℚ), 4⟩,
    ⟨(129374225869/1000000000000 : ℚ), (40211274093/10000000000 : ℚ), (-543430581/1000000000 : ℚ), 4⟩,
    ⟨(131913022061/1000000000000 : ℚ), (3121142981/2000000000 : ℚ), (-11114165603/50000000000 : ℚ), 3⟩,
    ⟨(33652048431/250000000000 : ℚ), (171512299/5000000000 : ℚ), (-19055816171/1000000000000 : ℚ), 3⟩,
    ⟨(137356166921/1000000000000 : ℚ), (-2436615093/2500000000 : ℚ), (118053925739/1000000000000 : ℚ), 3⟩,
    ⟨(140051338583/1000000000000 : ℚ), (-1673109687/1000000000 : ℚ), (214884892333/1000000000000 : ℚ), 3⟩,
    ⟨(17823766847/125000000000 : ℚ), (-21718306881/10000000000 : ℚ), (71334682423/250000000000 : ℚ), 3⟩,
    ⟨(18109373873/125000000000 : ℚ), (-25333357647/10000000000 : ℚ), (168642900383/500000000000 : ℚ), 3⟩,
    ⟨(73409050733/500000000000 : ℚ), (-13970721103/5000000000 : ℚ), (187658934929/500000000000 : ℚ), 3⟩,
    ⟨(18543099197/125000000000 : ℚ), (-14879538511/5000000000 : ℚ), (80428097473/200000000000 : ℚ), 3⟩,
    ⟨(149396397391/1000000000000 : ℚ), (-30913416087/10000000000 : ℚ), (209662280489/500000000000 : ℚ), 3⟩,
    ⟨(149932500367/1000000000000 : ℚ), (-15737457099/5000000000 : ℚ), (427728114339/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15772201427/5000000000 : ℚ), (214385104751/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (179946267243/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control80.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control80.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate80

namespace DiagonalRamsey.JointInheritedCertificate98
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4063772071/100000000000 : ℚ), (10485825120659/10000000000 : ℚ), (-21357995062601/500000000000 : ℚ), 10⟩,
    ⟨(40817180117/1000000000000 : ℚ), (69362426293/625000000 : ℚ), (-4582917931097/1000000000000 : ℚ), 7⟩,
    ⟨(5146150301/125000000000 : ℚ), (364413234223/10000000000 : ℚ), (-1531626784781/1000000000000 : ℚ), 6⟩,
    ⟨(41680259563/1000000000000 : ℚ), (161011503689/10000000000 : ℚ), (-345082600809/500000000000 : ℚ), 5⟩,
    ⟨(42330711943/1000000000000 : ℚ), (78267783559/10000000000 : ℚ), (-21439061291/62500000000 : ℚ), 4⟩,
    ⟨(21547781513/500000000000 : ℚ), (36881549171/10000000000 : ℚ), (-166447115703/1000000000000 : ℚ), 4⟩,
    ⟨(8789084003/200000000000 : ℚ), (6669794947/5000000000 : ℚ), (-16022483463/250000000000 : ℚ), 4⟩,
    ⟨(44847623383/1000000000000 : ℚ), (-1292764977/10000000000 : ℚ), (164048387/200000000000 : ℚ), 3⟩,
    ⟨(45767501959/1000000000000 : ℚ), (-1373873449/1250000000 : ℚ), (44732013557/1000000000000 : ℚ), 3⟩,
    ⟨(23334852663/500000000000 : ℚ), (-1772566143/1000000000 : ℚ), (7584322663/100000000000 : ℚ), 3⟩,
    ⟨(9503912463/200000000000 : ℚ), (-11275315403/5000000000 : ℚ), (6159875619/62500000000 : ℚ), 3⟩,
    ⟨(48284413399/1000000000000 : ℚ), (-101796421/39062500 : ℚ), (5768194223/50000000000 : ℚ), 3⟩,
    ⟨(24467432889/500000000000 : ℚ), (-14299756407/5000000000 : ℚ), (127707032093/1000000000000 : ℚ), 3⟩,
    ⟨(49445922933/1000000000000 : ℚ), (-1898379933/625000000 : ℚ), (17054432313/125000000000 : ℚ), 3⟩,
    ⟨(6224743153/125000000000 : ℚ), (-15751643577/5000000000 : ℚ), (142038603597/1000000000000 : ℚ), 3⟩,
    ⟨(6247175579/125000000000 : ℚ), (-8013307491/2500000000 : ℚ), (144782115779/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-16060660041/5000000000 : ℚ), (36280622349/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (324944318747/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control98.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control98.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate98

namespace DiagonalRamsey.JointInheritedCertificate111
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1273894067/31250000000 : ℚ), (260915664147/250000000 : ℚ), (-42646603098251/1000000000000 : ℚ), 11⟩,
    ⟨(40941637291/1000000000000 : ℚ), (1104663943989/10000000000 : ℚ), (-571843365531/125000000000 : ℚ), 7⟩,
    ⟨(10322222133/250000000000 : ℚ), (362703462721/10000000000 : ℚ), (-1528361439181/1000000000000 : ℚ), 6⟩,
    ⟨(8358603839/200000000000 : ℚ), (80101787659/5000000000 : ℚ), (-344130948641/500000000000 : ℚ), 5⟩,
    ⟨(21217327911/500000000000 : ℚ), (77810395397/10000000000 : ℚ), (-341693701057/1000000000000 : ℚ), 4⟩,
    ⟨(43189140677/1000000000000 : ℚ), (1829540717/500000000 : ℚ), (-165417094123/1000000000000 : ℚ), 4⟩,
    ⟨(44027479331/1000000000000 : ℚ), (164236819/125000000 : ℚ), (-1581107521/25000000000 : ℚ), 4⟩,
    ⟨(22458727449/500000000000 : ℚ), (-359997359/2500000000 : ℚ), (770172731/500000000000 : ℚ), 3⟩,
    ⟨(22912433059/500000000000 : ℚ), (-555212831/500000000 : ℚ), (11340057721/250000000000 : ℚ), 3⟩,
    ⟨(23357420843/500000000000 : ℚ), (-17816241423/10000000000 : ℚ), (19100311399/250000000000 : ℚ), 3⟩,
    ⟨(2377659017/50000000000 : ℚ), (-11312790351/5000000000 : ℚ), (49530749843/500000000000 : ℚ), 3⟩,
    ⟨(9661533039/200000000000 : ℚ), (-26123953143/10000000000 : ℚ), (115825273989/1000000000000 : ℚ), 3⟩,
    ⟨(24474650911/500000000000 : ℚ), (-28656089523/10000000000 : ℚ), (64068402473/500000000000 : ℚ), 3⟩,
    ⟨(9890686497/200000000000 : ℚ), (-760642209/250000000 : ℚ), (2138167999/15625000000 : ℚ), 3⟩,
    ⟨(24900341863/500000000000 : ℚ), (-7887971283/2500000000 : ℚ), (142431534363/1000000000000 : ℚ), 3⟩,
    ⟨(49977710873/1000000000000 : ℚ), (-32100411381/10000000000 : ℚ), (14516806361/100000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-16084164303/5000000000 : ℚ), (36376893499/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (335137036111/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control111.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control111.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate111

namespace DiagonalRamsey.JointInheritedCertificate112
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(81764432727/1000000000000 : ℚ), (662666270289/625000000 : ℚ), (-43448398175377/500000000000 : ℚ), 11⟩,
    ⟨(20528494597/250000000000 : ℚ), (1122787383139/10000000000 : ℚ), (-466201289309/50000000000 : ℚ), 7⟩,
    ⟨(41399818433/500000000000 : ℚ), (73801482753/2000000000 : ℚ), (-3117030727071/1000000000000 : ℚ), 6⟩,
    ⟨(8379505869/100000000000 : ℚ), (163267322499/10000000000 : ℚ), (-702742827529/500000000000 : ℚ), 5⟩,
    ⟨(42530995179/500000000000 : ℚ), (79557679011/10000000000 : ℚ), (-27983293697/40000000000 : ℚ), 4⟩,
    ⟨(86551744397/1000000000000 : ℚ), (9422050247/2500000000 : ℚ), (-2725593719/8000000000 : ℚ), 4⟩,
    ⟨(44103535197/500000000000 : ℚ), (6938905539/5000000000 : ℚ), (-132839785481/1000000000000 : ℚ), 4⟩,
    ⟨(89964355099/1000000000000 : ℚ), (-57030769/625000000 : ℚ), (-591312737/500000000000 : ℚ), 3⟩,
    ⟨(91756067047/1000000000000 : ℚ), (-1070638261/1000000000 : ℚ), (43874316503/500000000000 : ℚ), 3⟩,
    ⟨(11689168969/125000000000 : ℚ), (-17499607097/10000000000 : ℚ), (37661719293/250000000000 : ℚ), 3⟩,
    ⟨(23792169437/250000000000 : ℚ), (-447206981/200000000 : ℚ), (19648736917/100000000000 : ℚ), 3⟩,
    ⟨(96658431787/1000000000000 : ℚ), (-12945624793/5000000000 : ℚ), (7198291159/31250000000 : ℚ), 3⟩,
    ⟨(19585072691/200000000000 : ℚ), (-7110943489/2500000000 : ℚ), (255175569897/1000000000000 : ℚ), 3⟩,
    ⟨(98920785279/1000000000000 : ℚ), (-15112909917/5000000000 : ℚ), (17044597891/62500000000 : ℚ), 3⟩,
    ⟨(99606443757/1000000000000 : ℚ), (-3135910263/1000000000 : ℚ), (141981269019/500000000000 : ℚ), 3⟩,
    ⟨(49977994709/500000000000 : ℚ), (-7977708741/2500000000 : ℚ), (289467741897/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-15989568893/5000000000 : ℚ), (145075309857/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (65150209393/250000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control112.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control112.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate112

namespace DiagonalRamsey.JointInheritedCertificate127
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(20481368813/500000000000 : ℚ), (2549433004929/10000000000 : ℚ), (-82125740363/7812500000 : ℚ), 9⟩,
    ⟨(832879701/20000000000 : ℚ), (235119317813/10000000000 : ℚ), (-1002705278169/1000000000000 : ℚ), 6⟩,
    ⟨(5362845769/125000000000 : ℚ), (2150031043/400000000 : ℚ), (-23960988639/100000000000 : ℚ), 4⟩,
    ⟨(22273721461/500000000000 : ℚ), (1227386101/2500000000 : ℚ), (-13420754701/500000000000 : ℚ), 4⟩,
    ⟨(46327628229/1000000000000 : ℚ), (-1483370643/1000000000 : ℚ), (31320990661/500000000000 : ℚ), 3⟩,
    ⟨(47972304999/1000000000000 : ℚ), (-12284734963/5000000000 : ℚ), (54240780453/500000000000 : ℚ), 3⟩,
    ⟨(24615543051/500000000000 : ℚ), (-5934098549/2000000000 : ℚ), (133258584933/1000000000000 : ℚ), 3⟩,
    ⟨(1996493341/40000000000 : ℚ), (-31933688357/10000000000 : ℚ), (144476039761/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-1288223987/400000000 : ℚ), (29166880307/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (172668870747/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control127.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control127.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate127

namespace DiagonalRamsey.JointInheritedCertificate128
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(205101209/2500000000 : ℚ), (2641920214473/2500000000 : ℚ), (-86898946258151/1000000000000 : ℚ), 11⟩,
    ⟨(41192368911/500000000000 : ℚ), (1119231931327/10000000000 : ℚ), (-9323410871271/1000000000000 : ℚ), 7⟩,
    ⟨(8306001677/100000000000 : ℚ), (183933007311/5000000000 : ℚ), (-623242501593/200000000000 : ℚ), 6⟩,
    ⟨(21010092463/250000000000 : ℚ), (40687353107/2500000000 : ℚ), (-702317099339/500000000000 : ℚ), 5⟩,
    ⟨(85288122649/1000000000000 : ℚ), (79276000383/10000000000 : ℚ), (-698742383887/1000000000000 : ℚ), 4⟩,
    ⟨(86755324721/1000000000000 : ℚ), (9378896443/2500000000 : ℚ), (-339890911663/1000000000000 : ℚ), 4⟩,
    ⟨(17677118463/200000000000 : ℚ), (13762464299/10000000000 : ℚ), (-132074623889/1000000000000 : ℚ), 4⟩,
    ⟨(45058137581/500000000000 : ℚ), (-497344593/5000000000 : ℚ), (-93428207/200000000000 : ℚ), 3⟩,
    ⟨(9188086409/100000000000 : ℚ), (-10767832519/10000000000 : ℚ), (88411813209/1000000000000 : ℚ), 3⟩,
    ⟨(93611546937/1000000000000 : ℚ), (-4386820643/2500000000 : ℚ), (30251715697/200000000000 : ℚ), 3⟩,
    ⟨(95241814531/1000000000000 : ℚ), (-2799816993/1250000000 : ℚ), (197051394933/1000000000000 : ℚ), 3⟩,
    ⟨(96709016603/1000000000000 : ℚ), (-1620176087/625000000 : ℚ), (230867800693/1000000000000 : ℚ), 3⟩,
    ⟨(489783847/5000000000 : ℚ), (-14235390589/5000000000 : ℚ), (15979012117/62500000000 : ℚ), 3⟩,
    ⟨(49468561241/500000000000 : ℚ), (-30249811929/10000000000 : ℚ), (273176786943/1000000000000 : ℚ), 3⟩,
    ⟨(9961240143/100000000000 : ℚ), (-15690638311/5000000000 : ℚ), (71102245027/250000000000 : ℚ), 3⟩,
    ⟨(24989163913/250000000000 : ℚ), (-6386431667/2000000000 : ℚ), (28990587969/100000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-16000178803/5000000000 : ℚ), (145293862253/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (134407751719/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control128.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control128.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate128

namespace DiagonalRamsey.JointInheritedCertificate162
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10305803401/250000000000 : ℚ), (126246229611/500000000 : ℚ), (-2618714870907/250000000000 : ℚ), 9⟩,
    ⟨(41884825813/1000000000000 : ℚ), (58194114103/2500000000 : ℚ), (-62354717107/62500000000 : ℚ), 6⟩,
    ⟨(43107325769/1000000000000 : ℚ), (10602610569/2000000000 : ℚ), (-118612882189/500000000000 : ℚ), 4⟩,
    ⟨(44704598937/1000000000000 : ℚ), (2281560899/5000000000 : ℚ), (-25262701881/1000000000000 : ℚ), 4⟩,
    ⟨(9286694991/200000000000 : ℚ), (-15035104423/10000000000 : ℚ), (15956948393/250000000000 : ℚ), 3⟩,
    ⟨(24015374061/500000000000 : ℚ), (-3088056991/1250000000 : ℚ), (109436023067/1000000000000 : ℚ), 3⟩,
    ⟨(49253248079/1000000000000 : ℚ), (-29773554747/10000000000 : ℚ), (134078868717/1000000000000 : ℚ), 3⟩,
    ⟨(49914860287/1000000000000 : ℚ), (-32023826907/10000000000 : ℚ), (145235097957/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-32294259401/10000000000 : ℚ), (146586106371/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (91443522833/250000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control162.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control162.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate162

namespace DiagonalRamsey.JointInheritedCertificate163
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(82539562913/1000000000000 : ℚ), (2090110264157/2000000000 : ℚ), (-86451711629003/1000000000000 : ℚ), 11⟩,
    ⟨(82874250611/1000000000000 : ℚ), (55344956283/500000000 : ℚ), (-9271923842111/1000000000000 : ℚ), 8⟩,
    ⟨(16706152829/200000000000 : ℚ), (72743289633/2000000000 : ℚ), (-1548209038533/500000000000 : ℚ), 6⟩,
    ⟨(84483874069/1000000000000 : ℚ), (160770173973/10000000000 : ℚ), (-174201544021/125000000000 : ℚ), 5⟩,
    ⟨(85696952903/1000000000000 : ℚ), (15629609659/2000000000 : ℚ), (-172843799813/250000000000 : ℚ), 5⟩,
    ⟨(21780845677/250000000000 : ℚ), (29437031/8000000 : ℚ), (-33441843269/100000000000 : ℚ), 4⟩,
    ⟨(44354173293/500000000000 : ℚ), (3316505211/2500000000 : ℚ), (-12773376851/100000000000 : ℚ), 4⟩,
    ⟨(2824716727/31250000000 : ℚ), (-679070473/5000000000 : ℚ), (97730193/31250000000 : ℚ), 4⟩,
    ⟨(92106487803/1000000000000 : ℚ), (-5523232663/5000000000 : ℚ), (45739435679/500000000000 : ℚ), 3⟩,
    ⟨(46894538241/500000000000 : ℚ), (-8884600671/5000000000 : ℚ), (153936259409/1000000000000 : ℚ), 3⟩,
    ⟨(2384351009/25000000000 : ℚ), (-11290709571/5000000000 : ℚ), (99717797901/500000000000 : ℚ), 3⟩,
    ⟨(19360094033/200000000000 : ℚ), (-3259819293/1250000000 : ℚ), (116515437253/500000000000 : ℚ), 3⟩,
    ⟨(98013548999/1000000000000 : ℚ), (-5721565341/2000000000 : ℚ), (257664222659/1000000000000 : ℚ), 3⟩,
    ⟨(98966658923/1000000000000 : ℚ), (-30374452173/10000000000 : ℚ), (275062367953/1000000000000 : ℚ), 3⟩,
    ⟨(99623172457/1000000000000 : ℚ), (-7874595357/2500000000 : ℚ), (143111016809/500000000000 : ℚ), 3⟩,
    ⟨(49978930077/500000000000 : ℚ), (-6409142403/2000000000 : ℚ), (291683828031/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32113477497/10000000000 : ℚ), (58472267997/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (285328453293/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control163.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control163.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate163

namespace DiagonalRamsey.JointInheritedCertificate186
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(41351866793/1000000000000 : ℚ), (2510939301291/10000000000 : ℚ), (-10448157730187/1000000000000 : ℚ), 9⟩,
    ⟨(2100189043/50000000000 : ℚ), (57854136711/2500000000 : ℚ), (-497128830823/500000000000 : ℚ), 6⟩,
    ⟨(21604180493/500000000000 : ℚ), (26289379241/5000000000 : ℚ), (-2357051213/10000000000 : ℚ), 4⟩,
    ⟨(1399444399/31250000000 : ℚ), (4357895589/10000000000 : ℚ), (-24302120801/1000000000000 : ℚ), 4⟩,
    ⟨(581071929/12500000000 : ℚ), (-7577298911/5000000000 : ℚ), (12905725549/200000000000 : ℚ), 3⟩,
    ⟨(24029807051/500000000000 : ℚ), (-12392297443/5000000000 : ℚ), (54995624419/500000000000 : ℚ), 3⟩,
    ⟨(12316048557/250000000000 : ℚ), (-2983476167/1000000000 : ℚ), (26910467521/200000000000 : ℚ), 3⟩,
    ⟨(9983221659/200000000000 : ℚ), (-16038673433/5000000000 : ℚ), (36417962467/250000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-32346897593/10000000000 : ℚ), (147018470079/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (376009658123/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control186.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control186.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate186

namespace DiagonalRamsey.JointInheritedCertificate187
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(82803910277/1000000000000 : ℚ), (2599508873731/2500000000 : ℚ), (-2157231688077/25000000000 : ℚ), 11⟩,
    ⟨(83133530873/1000000000000 : ℚ), (220280858121/2000000000 : ℚ), (-9252993287061/1000000000000 : ℚ), 8⟩,
    ⟨(8378010493/100000000000 : ℚ), (361883208239/10000000000 : ℚ), (-3088986488287/1000000000000 : ℚ), 6⟩,
    ⟨(84718784969/1000000000000 : ℚ), (79951917441/5000000000 : ℚ), (-1389371241751/1000000000000 : ℚ), 5⟩,
    ⟨(85913498043/1000000000000 : ℚ), (151677557/19531250 : ℚ), (-68847136673/100000000000 : ℚ), 5⟩,
    ⟨(87318331999/1000000000000 : ℚ), (36487179873/10000000000 : ℚ), (-332215967431/1000000000000 : ℚ), 4⟩,
    ⟨(5554956241/62500000000 : ℚ), (326364567/250000000 : ℚ), (-1968088923/15625000000 : ℚ), 4⟩,
    ⟨(90536414493/1000000000000 : ℚ), (-755752017/5000000000 : ℚ), (1153934253/250000000000 : ℚ), 4⟩,
    ⟨(46112996963/500000000000 : ℚ), (-2232569309/2000000000 : ℚ), (92758685477/1000000000000 : ℚ), 3⟩,
    ⟨(23470777141/250000000000 : ℚ), (-4465210443/2500000000 : ℚ), (15505818281/100000000000 : ℚ), 3⟩,
    ⟨(95444076421/1000000000000 : ℚ), (-2831999609/1250000000 : ℚ), (200435769083/1000000000000 : ℚ), 3⟩,
    ⟨(96848910377/1000000000000 : ℚ), (-3267654443/1250000000 : ℚ), (233937532341/1000000000000 : ℚ), 3⟩,
    ⟨(98043623451/1000000000000 : ℚ), (-28662297079/10000000000 : ℚ), (258500867183/1000000000000 : ℚ), 3⟩,
    ⟨(9898230349/100000000000 : ℚ), (-30423463953/10000000000 : ℚ), (275849303623/1000000000000 : ℚ), 3⟩,
    ⟨(99628877547/1000000000000 : ℚ), (-1577203727/500000000 : ℚ), (286977220417/1000000000000 : ℚ), 3⟩,
    ⟨(99958498143/1000000000000 : ℚ), (-32089840717/10000000000 : ℚ), (292423577519/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32157415087/10000000000 : ℚ), (18318698807/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (146802397513/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control187.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control187.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate187

namespace DiagonalRamsey.JointInheritedCertificate290
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(76332457971/1000000000000 : ℚ), (25380594861121/5000000000 : ℚ), (-387890482295201/1000000000000 : ℚ), 11⟩,
    ⟨(3057854199/40000000000 : ℚ), (2780556380363/5000000000 : ℚ), (-21386207209167/500000000000 : ℚ), 8⟩,
    ⟨(76673052093/1000000000000 : ℚ), (1953082233363/10000000000 : ℚ), (-7581438911643/500000000000 : ℚ), 6⟩,
    ⟨(19252591527/250000000000 : ℚ), (38506735831/400000000 : ℚ), (-7556045558787/1000000000000 : ℚ), 5⟩,
    ⟨(77455048501/1000000000000 : ℚ), (557138133021/10000000000 : ℚ), (-4425512844449/1000000000000 : ℚ), 5⟩,
    ⟨(78002816737/1000000000000 : ℚ), (353149948649/10000000000 : ℚ), (-1420334605579/500000000000 : ℚ), 4⟩,
    ⟨(7864839551/100000000000 : ℚ), (473393807/20000000 : ℚ), (-1205595901/625000000 : ℚ), 4⟩,
    ⟨(39692783771/500000000000 : ℚ), (164246307089/10000000000 : ℚ), (-678359200731/500000000000 : ℚ), 3⟩,
    ⟨(10025904183/125000000000 : ℚ), (116270689147/10000000000 : ℚ), (-48702435393/50000000000 : ℚ), 3⟩,
    ⟨(16221096037/200000000000 : ℚ), (20739848729/2500000000 : ℚ), (-176369399707/250000000000 : ℚ), 3⟩,
    ⟨(10258957137/125000000000 : ℚ), (58949613191/10000000000 : ℚ), (-63707233263/125000000000 : ℚ), 2⟩,
    ⟨(41548229693/500000000000 : ℚ), (41112011489/10000000000 : ℚ), (-362398819237/1000000000000 : ℚ), 2⟩,
    ⟨(1683400353/20000000000 : ℚ), (3440382579/1250000000 : ℚ), (-248786605859/1000000000000 : ℚ), 2⟩,
    ⟨(42640996467/500000000000 : ℚ), (8474664349/5000000000 : ℚ), (-19903265067/125000000000 : ℚ), 2⟩,
    ⟨(86421676307/1000000000000 : ℚ), (1714354807/2000000000 : ℚ), (-87322675681/1000000000000 : ℚ), 2⟩,
    ⟨(87578091997/1000000000000 : ℚ), (457602357/2500000000 : ℚ), (-28687151307/1000000000000 : ℚ), 2⟩,
    ⟨(5546256443/62500000000 : ℚ), (-91679317/250000000 : ℚ), (19768511209/1000000000000 : ℚ), 2⟩,
    ⟨(44948259389/500000000000 : ℚ), (-1640348993/2000000000 : ℚ), (60262781917/1000000000000 : ℚ), 2⟩,
    ⟨(11379525269/125000000000 : ℚ), (-1497224817/1250000000 : ℚ), (94417654579/1000000000000 : ℚ), 2⟩,
    ⟨(23037044359/250000000000 : ℚ), (-15146531097/10000000000 : ℚ), (61718297221/500000000000 : ℚ), 2⟩,
    ⟨(93221735699/1000000000000 : ℚ), (-4455293559/2500000000 : ℚ), (148223486251/1000000000000 : ℚ), 1⟩,
    ⟨(9424653799/100000000000 : ℚ), (-10043720421/5000000000 : ℚ), (169463974533/1000000000000 : ℚ), 1⟩,
    ⟨(95212714901/1000000000000 : ℚ), (-22010785747/10000000000 : ℚ), (93841112481/500000000000 : ℚ), 1⟩,
    ⟨(96110961621/1000000000000 : ℚ), (-2364153789/1000000000 : ℚ), (101640625837/500000000000 : ℚ), 1⟩,
    ⟨(12116578443/125000000000 : ℚ), (-25018581153/10000000000 : ℚ), (216572021119/1000000000000 : ℚ), 1⟩,
    ⟨(12208724947/125000000000 : ℚ), (-1635751651/625000000 : ℚ), (227794735527/1000000000000 : ℚ), 1⟩,
    ⟨(98315378349/1000000000000 : ℚ), (-2712516947/1000000000 : ℚ), (47426911909/200000000000 : ℚ), 1⟩,
    ⟨(19772629317/200000000000 : ℚ), (-27895934043/10000000000 : ℚ), (9789332737/40000000000 : ℚ), 1⟩,
    ⟨(49653914489/500000000000 : ℚ), (-28497936511/10000000000 : ℚ), (250698213323/1000000000000 : ℚ), 1⟩,
    ⟨(6227821437/62500000000 : ℚ), (-14470633289/5000000000 : ℚ), (63777068411/250000000000 : ℚ), 1⟩,
    ⟨(9987184011/100000000000 : ℚ), (-29233049269/10000000000 : ℚ), (25801904459/100000000000 : ℚ), 1⟩,
    ⟨(49992868557/500000000000 : ℚ), (-29377832921/10000000000 : ℚ), (259465848943/1000000000000 : ℚ), 1⟩,
    ⟨(1/10 : ℚ), (-183724247/62500000 : ℚ), (12982315103/50000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (49999/1000000 : ℚ)
  x := (5196195367/200000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control290.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control290.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate290

namespace DiagonalRamsey.JointInheritedCertificate291
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8350131307/200000000000 : ℚ), (1234288102107/5000000000 : ℚ), (-5183676819413/500000000000 : ℚ), 9⟩,
    ⟨(42372509011/1000000000000 : ℚ), (5682478749/250000000 : ℚ), (-983939030487/1000000000000 : ℚ), 6⟩,
    ⟨(43521542561/1000000000000 : ℚ), (51268211887/10000000000 : ℚ), (-115566832653/500000000000 : ℚ), 5⟩,
    ⟨(22511413621/500000000000 : ℚ), (3743211499/10000000000 : ℚ), (-1339428557/62500000000 : ℚ), 4⟩,
    ⟨(46647806071/1000000000000 : ℚ), (-969262853/625000000 : ℚ), (33304415157/500000000000 : ℚ), 4⟩,
    ⟨(752329543/15625000000 : ℚ), (-12508981411/5000000000 : ℚ), (111626289513/1000000000000 : ℚ), 3⟩,
    ⟨(49298124301/1000000000000 : ℚ), (-30010045887/10000000000 : ℚ), (33984095747/250000000000 : ℚ), 3⟩,
    ⟨(49919976777/1000000000000 : ℚ), (-32228954233/10000000000 : ℚ), (29388553653/200000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-1299831349/400000000 : ℚ), (74137922751/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (406772372191/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control291.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control291.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate291

namespace DiagonalRamsey.JointInheritedCertificate292
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(41784317291/500000000000 : ℚ), (10198952583003/10000000000 : ℚ), (-42704275572843/500000000000 : ℚ), 11⟩,
    ⟨(41941798339/500000000000 : ℚ), (1080324855909/10000000000 : ℚ), (-2288109328029/250000000000 : ℚ), 8⟩,
    ⟨(21125354263/250000000000 : ℚ), (177371610267/5000000000 : ℚ), (-762723941711/250000000000 : ℚ), 6⟩,
    ⟨(17079670643/200000000000 : ℚ), (78238918517/5000000000 : ℚ), (-1368555460463/1000000000000 : ℚ), 5⟩,
    ⟨(86539936413/1000000000000 : ℚ), (75698336943/10000000000 : ℚ), (-674834551943/1000000000000 : ℚ), 5⟩,
    ⟨(87882296243/1000000000000 : ℚ), (17617374957/5000000000 : ℚ), (-40285294087/125000000000 : ℚ), 4⟩,
    ⟨(89373846571/1000000000000 : ℚ), (12190851101/10000000000 : ℚ), (-118217816351/1000000000000 : ℚ), 4⟩,
    ⟨(90957267953/1000000000000 : ℚ), (-1070978601/5000000000 : ℚ), (10924765209/1000000000000 : ℚ), 4⟩,
    ⟨(46285855197/500000000000 : ℚ), (-1164386541/1000000000 : ℚ), (98069518049/1000000000000 : ℚ), 4⟩,
    ⟨(735586967/7812500000 : ℚ), (-9120808923/5000000000 : ℚ), (159641710037/1000000000000 : ℚ), 3⟩,
    ⟨(95646682103/1000000000000 : ℚ), (-717737393/312500000 : ℚ), (204477513777/1000000000000 : ℚ), 3⟩,
    ⟨(96989041933/1000000000000 : ℚ), (-26404601021/10000000000 : ℚ), (118787441347/500000000000 : ℚ), 3⟩,
    ⟨(98130625131/1000000000000 : ℚ), (-14446173691/5000000000 : ℚ), (261842039289/1000000000000 : ℚ), 3⟩,
    ⟨(49513780647/500000000000 : ℚ), (-15315661837/5000000000 : ℚ), (278983452991/1000000000000 : ℚ), 3⟩,
    ⟨(99645381669/1000000000000 : ℚ), (-31738406483/10000000000 : ℚ), (289980473689/1000000000000 : ℚ), 3⟩,
    ⟨(24990085941/250000000000 : ℚ), (-32277780247/10000000000 : ℚ), (295363536263/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32344572849/10000000000 : ℚ), (74007832443/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (159278325223/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control292.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control292.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate292

namespace DiagonalRamsey.JointInheritedCertificate333
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(41880686199/1000000000000 : ℚ), (2451577786979/10000000000 : ℚ), (-10326831323731/1000000000000 : ℚ), 9⟩,
    ⟨(10623184193/250000000000 : ℚ), (45122596747/2000000000 : ℚ), (-244745945063/250000000000 : ℚ), 6⟩,
    ⟨(8724731753/200000000000 : ℚ), (50722082237/10000000000 : ℚ), (-229058908079/1000000000000 : ℚ), 5⟩,
    ⟨(22550639779/500000000000 : ℚ), (3484513603/10000000000 : ℚ), (-1261668717/62500000000 : ℚ), 4⟩,
    ⟨(46700644779/1000000000000 : ℚ), (-15657941807/10000000000 : ℚ), (67483572077/1000000000000 : ℚ), 4⟩,
    ⟨(12044566393/250000000000 : ℚ), (-12558709797/5000000000 : ℚ), (112302752281/1000000000000 : ℚ), 3⟩,
    ⟨(9861837513/200000000000 : ℚ), (-15042608481/5000000000 : ℚ), (136504802343/1000000000000 : ℚ), 3⟩,
    ⟨(49921238137/1000000000000 : ℚ), (-32294203123/10000000000 : ℚ), (29492671563/200000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-2034993113/625000000 : ℚ), (74395371203/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (3336395209/8000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control333.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control333.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate333

namespace DiagonalRamsey.JointInheritedCertificate334
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(41914188791/500000000000 : ℚ), (10128734103511/10000000000 : ℚ), (-66469311307/781250000 : ℚ), 11⟩,
    ⟨(42069180417/500000000000 : ℚ), (214574677063/2000000000 : ℚ), (-9115115997411/1000000000000 : ℚ), 8⟩,
    ⟨(16949282971/200000000000 : ℚ), (70442564077/2000000000 : ℚ), (-15184167113/5000000000 : ℚ), 6⟩,
    ⟨(85629172471/1000000000000 : ℚ), (155261061183/10000000000 : ℚ), (-34023088317/25000000000 : ℚ), 6⟩,
    ⟨(86752709801/1000000000000 : ℚ), (37500562119/5000000000 : ℚ), (-1071796383/1600000000 : ℚ), 5⟩,
    ⟨(5504615621/62500000000 : ℚ), (17394638961/5000000000 : ℚ), (-19918476083/62500000000 : ℚ), 4⟩,
    ⟨(44770911101/500000000000 : ℚ), (5941960789/5000000000 : ℚ), (-28860867181/250000000000 : ℚ), 4⟩,
    ⟨(45550106623/500000000000 : ℚ), (-2365548937/10000000000 : ℚ), (2634237667/200000000000 : ℚ), 4⟩,
    ⟨(724133867/7812500000 : ℚ), (-11813973793/10000000000 : ℚ), (19989845479/200000000000 : ℚ), 4⟩,
    ⟨(94247526021/1000000000000 : ℚ), (-9187898221/5000000000 : ℚ), (161255386893/1000000000000 : ℚ), 3⟩,
    ⟨(47857749143/500000000000 : ℚ), (-23076948587/10000000000 : ℚ), (205893786511/1000000000000 : ℚ), 3⟩,
    ⟨(97036638421/1000000000000 : ℚ), (-26496618967/10000000000 : ℚ), (238844258279/1000000000000 : ℚ), 3⟩,
    ⟨(98160175751/1000000000000 : ℚ), (-28972374151/10000000000 : ℚ), (263004051169/1000000000000 : ℚ), 3⟩,
    ⟨(99042933367/1000000000000 : ℚ), (-245626797/80000000 : ℚ), (280070509771/1000000000000 : ℚ), 3⟩,
    ⟨(24912746847/250000000000 : ℚ), (-6361109387/2000000000 : ℚ), (291020163673/1000000000000 : ℚ), 3⟩,
    ⟨(1249512133/12500000000 : ℚ), (-32342609289/10000000000 : ℚ), (5927606521/20000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-8102279767/2500000000 : ℚ), (297045293971/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (326906802263/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control334.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control334.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate334

namespace DiagonalRamsey.JointInheritedCertificate378
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8409858973/100000000000 : ℚ), (2012487182391/2000000000 : ℚ), (-84792790428523/1000000000000 : ℚ), 11⟩,
    ⟨(42201696731/500000000000 : ℚ), (1065857816091/10000000000 : ℚ), (-227056098727/25000000000 : ℚ), 8⟩,
    ⟨(85001287489/1000000000000 : ℚ), (21864978073/625000000 : ℚ), (-94512021529/31250000000 : ℚ), 7⟩,
    ⟨(2146732377/25000000000 : ℚ), (77062420101/5000000000 : ℚ), (-270824994349/200000000000 : ℚ), 6⟩,
    ⟨(8697405919/100000000000 : ℚ), (74353025771/10000000000 : ℚ), (-665424308229/1000000000000 : ℚ), 5⟩,
    ⟨(88273124353/1000000000000 : ℚ), (3437712163/1000000000 : ℚ), (-315461433223/1000000000000 : ℚ), 5⟩,
    ⟨(89716568223/1000000000000 : ℚ), (2320267881/2000000000 : ℚ), (-4517213437/40000000000 : ℚ), 4⟩,
    ⟨(91248920063/1000000000000 : ℚ), (-1285150927/5000000000 : ℚ), (3803132211/250000000000 : ℚ), 4⟩,
    ⟨(1856225849/20000000000 : ℚ), (-11968807467/10000000000 : ℚ), (101660194009/1000000000000 : ℚ), 4⟩,
    ⟨(9434364429/100000000000 : ℚ), (-18497084423/10000000000 : ℚ), (162724637377/1000000000000 : ℚ), 4⟩,
    ⟨(598669301/6250000000 : ℚ), (-11587517373/5000000000 : ℚ), (103591099083/500000000000 : ℚ), 3⟩,
    ⟨(97086153323/1000000000000 : ℚ), (-26578484407/10000000000 : ℚ), (9599884241/40000000000 : ℚ), 3⟩,
    ⟨(12273864679/125000000000 : ℚ), (-5808600833/2000000000 : ℚ), (66014301193/250000000000 : ℚ), 3⟩,
    ⟨(99058925023/1000000000000 : ℚ), (-30766475369/10000000000 : ℚ), (281053725479/1000000000000 : ℚ), 3⟩,
    ⟨(99656819051/1000000000000 : ℚ), (-3186408731/1000000000 : ℚ), (58391806151/200000000000 : ℚ), 3⟩,
    ⟨(99961622783/1000000000000 : ℚ), (-16199489749/5000000000 : ℚ), (74324426987/250000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-16232611853/5000000000 : ℚ), (18622501427/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (41908612281/125000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control378.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control378.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate378

namespace DiagonalRamsey.JointInheritedCertificate424
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21079007321/500000000000 : ℚ), (2421037224503/10000000000 : ℚ), (-10263302552523/1000000000000 : ℚ), 9⟩,
    ⟨(21374579813/500000000000 : ℚ), (27828132801/1250000000 : ℚ), (-242761237277/250000000000 : ℚ), 6⟩,
    ⟨(43841453129/1000000000000 : ℚ), (49769601119/10000000000 : ℚ), (-112821384209/500000000000 : ℚ), 5⟩,
    ⟨(45268603367/1000000000000 : ℚ), (3040835213/10000000000 : ℚ), (-9048483131/500000000000 : ℚ), 4⟩,
    ⟨(46813339653/1000000000000 : ℚ), (-7954737017/5000000000 : ℚ), (34482691291/500000000000 : ℚ), 4⟩,
    ⟨(48240489891/1000000000000 : ℚ), (-25280058413/10000000000 : ℚ), (28361827297/250000000000 : ℚ), 3⟩,
    ⟨(24666391697/500000000000 : ℚ), (-30204700367/10000000000 : ℚ), (68730357787/500000000000 : ℚ), 3⟩,
    ⟨(24961964189/500000000000 : ℚ), (-6479198923/2000000000 : ℚ), (148334435929/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-32659641453/10000000000 : ℚ), (1496516649/10000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (109405909053/250000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control424.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control424.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate424

namespace DiagonalRamsey.JointInheritedCertificate425
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(84379814979/1000000000000 : ℚ), (400017535659/400000000 : ℚ), (-5284289539407/62500000000 : ℚ), 11⟩,
    ⟨(10584903511/125000000000 : ℚ), (1059320535697/10000000000 : ℚ), (-4527126188369/500000000000 : ℚ), 8⟩,
    ⟨(21316637007/250000000000 : ℚ), (21727441239/625000000 : ℚ), (-1506853040933/500000000000 : ℚ), 7⟩,
    ⟨(10764900553/125000000000 : ℚ), (15307707453/1000000000 : ℚ), (-1348240595831/1000000000000 : ℚ), 6⟩,
    ⟨(87204430169/1000000000000 : ℚ), (73758871/10000000 : ℚ), (-165384727197/250000000000 : ℚ), 5⟩,
    ⟨(17696104129/200000000000 : ℚ), (4250194109/1250000000 : ℚ), (-312613663587/1000000000000 : ℚ), 5⟩,
    ⟨(89898436411/1000000000000 : ℚ), (11345479143/10000000000 : ℚ), (-55351601673/500000000000 : ℚ), 4⟩,
    ⟨(91403687759/1000000000000 : ℚ), (-86075119/312500000 : ℚ), (17029680073/1000000000000 : ℚ), 4⟩,
    ⟨(3717537149/40000000000 : ℚ), (-12106927783/10000000000 : ℚ), (103187075177/1000000000000 : ℚ), 4⟩,
    ⟨(47221840037/500000000000 : ℚ), (-18604300769/10000000000 : ℚ), (164036710849/1000000000000 : ℚ), 4⟩,
    ⟨(299567487/3125000000 : ℚ), (-11630427833/5000000000 : ℚ), (104165911659/500000000000 : ℚ), 4⟩,
    ⟨(19427537263/200000000000 : ℚ), (-26649326833/10000000000 : ℚ), (241023794301/1000000000000 : ℚ), 3⟩,
    ⟨(4911145603/50000000000 : ℚ), (-14551728691/5000000000 : ℚ), (132496387919/500000000000 : ℚ), 3⟩,
    ⟨(12384446057/125000000000 : ℚ), (-1926248879/625000000 : ℚ), (17620311819/62500000000 : ℚ), 3⟩,
    ⟨(24915722099/250000000000 : ℚ), (-6382669319/2000000000 : ℚ), (292789342599/1000000000000 : ℚ), 3⟩,
    ⟨(49981150753/500000000000 : ℚ), (-4055778491/1250000000 : ℚ), (149054065179/500000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32512226037/10000000000 : ℚ), (298767986971/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (171821284579/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control425.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control425.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate425

namespace DiagonalRamsey.JointInheritedCertificate511
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42463127647/500000000000 : ℚ), (4925594131327/5000000000 : ℚ), (-83819221694641/1000000000000 : ℚ), 11⟩,
    ⟨(85215194047/1000000000000 : ℚ), (521725797611/5000000000 : ℚ), (-8971456517443/1000000000000 : ℚ), 8⟩,
    ⟨(85781967797/1000000000000 : ℚ), (21389999491/625000000 : ℚ), (-745669381977/250000000000 : ℚ), 7⟩,
    ⟨(21651198937/250000000000 : ℚ), (18809764921/1250000000 : ℚ), (-1331521186101/1000000000000 : ℚ), 6⟩,
    ⟨(87652057083/1000000000000 : ℚ), (18067519807/2500000000 : ℚ), (-16268941447/25000000000 : ℚ), 5⟩,
    ⟨(11110438267/125000000000 : ℚ), (1032877819/312500000 : ℚ), (-304886833121/1000000000000 : ℚ), 5⟩,
    ⟨(90251819011/1000000000000 : ℚ), (534680283/500000000 : ℚ), (-104777361829/1000000000000 : ℚ), 4⟩,
    ⟨(91704412211/1000000000000 : ℚ), (-3226846699/10000000000 : ℚ), (10894138483/500000000000 : ℚ), 4⟩,
    ⟨(46592731697/500000000000 : ℚ), (-2492796817/2000000000 : ℚ), (21427463917/200000000000 : ℚ), 4⟩,
    ⟨(47319028297/500000000000 : ℚ), (-18883698141/10000000000 : ℚ), (83701118941/500000000000 : ℚ), 4⟩,
    ⟨(96006369469/1000000000000 : ℚ), (-23486491139/10000000000 : ℚ), (105632238271/500000000000 : ℚ), 4⟩,
    ⟨(48618909261/500000000000 : ℚ), (-1073493791/400000000 : ℚ), (48726958399/200000000000 : ℚ), 4⟩,
    ⟨(98285079857/1000000000000 : ℚ), (-29265388547/10000000000 : ℚ), (66842202093/250000000000 : ℚ), 3⟩,
    ⟨(3097122119/31250000000 : ℚ), (-30964461831/10000000000 : ℚ), (71034237841/250000000000 : ℚ), 3⟩,
    ⟨(49837340779/500000000000 : ℚ), (-640942887/200000000 : ℚ), (36862195479/125000000000 : ℚ), 3⟩,
    ⟨(99963620311/1000000000000 : ℚ), (-254491899/78125000 : ℚ), (300166168361/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-204002133/62500000 : ℚ), (37602478931/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (45056265689/125000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control511.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control511.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate511

namespace DiagonalRamsey.JointInheritedCertificate543
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42597555297/1000000000000 : ℚ), (2376267409011/10000000000 : ℚ), (-5087447710273/500000000000 : ℚ), 9⟩,
    ⟨(21577783401/500000000000 : ℚ), (2728383837/125000000 : ℚ), (-959939369763/1000000000000 : ℚ), 6⟩,
    ⟨(2209331881/50000000000 : ℚ), (48395667041/10000000000 : ℚ), (-22083989397/100000000000 : ℚ), 5⟩,
    ⟨(11383449141/250000000000 : ℚ), (1205269223/5000000000 : ℚ), (-94730287/6250000000 : ℚ), 4⟩,
    ⟨(46991950899/1000000000000 : ℚ), (-1016186469/625000000 : ℚ), (71040299071/1000000000000 : ℚ), 4⟩,
    ⟨(48339109843/1000000000000 : ℚ), (-25499308881/10000000000 : ℚ), (115035031911/1000000000000 : ℚ), 4⟩,
    ⟨(49370180661/1000000000000 : ℚ), (-30360418487/10000000000 : ℚ), (34693106623/250000000000 : ℚ), 4⟩,
    ⟨(49928192167/1000000000000 : ℚ), (-32525557377/10000000000 : ℚ), (74760474311/500000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-819654571/250000000 : ℚ), (4713223061/31250000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (117136781469/250000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control543.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control543.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate543

namespace DiagonalRamsey.JointInheritedCertificate544
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42674867773/500000000000 : ℚ), (601554258221/2500000000 : ℚ), (-10321006422967/500000000000 : ℚ), 9⟩,
    ⟨(8645410261/100000000000 : ℚ), (44270925419/2000000000 : ℚ), (-974674832249/500000000000 : ℚ), 6⟩,
    ⟨(5530919179/62500000000 : ℚ), (49367663899/10000000000 : ℚ), (-112610493993/250000000000 : ℚ), 5⟩,
    ⟨(11395110601/125000000000 : ℚ), (1420065919/5000000000 : ℚ), (-16856241537/500000000000 : ℚ), 4⟩,
    ⟨(94046735019/1000000000000 : ℚ), (-16019446191/10000000000 : ℚ), (5623470081/40000000000 : ℚ), 4⟩,
    ⟨(96712912963/1000000000000 : ℚ), (-25332496641/10000000000 : ℚ), (45862940937/200000000000 : ℚ), 4⟩,
    ⟨(98753517217/1000000000000 : ℚ), (-604422879/200000000 : ℚ), (55414042841/200000000000 : ℚ), 4⟩,
    ⟨(99857884281/1000000000000 : ℚ), (-32395426177/10000000000 : ℚ), (37332454987/125000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-102053163/31250000 : ℚ), (150636818237/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (368856950377/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control544.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control544.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate544

namespace DiagonalRamsey.JointInheritedCertificate597
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(85808796287/1000000000000 : ℚ), (9640655476581/10000000000 : ℚ), (-82869715016839/1000000000000 : ℚ), 12⟩,
    ⟨(21520204547/250000000000 : ℚ), (510570852651/5000000000 : ℚ), (-2215860111793/250000000000 : ℚ), 8⟩,
    ⟨(43307204171/500000000000 : ℚ), (334687158131/10000000000 : ℚ), (-588408199861/200000000000 : ℚ), 7⟩,
    ⟨(87389061177/1000000000000 : ℚ), (146864583147/10000000000 : ℚ), (-261904541733/200000000000 : ℚ), 6⟩,
    ⟨(4418750361/50000000000 : ℚ), (8776838911/1250000000 : ℚ), (-636508144311/1000000000000 : ℚ), 5⟩,
    ⟨(89534357117/1000000000000 : ℚ), (31751822503/10000000000 : ℚ), (-147318665939/500000000000 : ℚ), 5⟩,
    ⟨(45411278851/500000000000 : ℚ), (306533281/312500000 : ℚ), (-24224900103/250000000000 : ℚ), 5⟩,
    ⟨(92190104149/1000000000000 : ℚ), (-482638131/1250000000 : ℚ), (3514653387/125000000000 : ℚ), 4⟩,
    ⟨(18716888483/200000000000 : ℚ), (-404292911/312500000 : ℚ), (1123839169/10000000000 : ℚ), 4⟩,
    ⟨(47475994431/500000000000 : ℚ), (-1924874971/1000000000 : ℚ), (171858198131/1000000000000 : ℚ), 4⟩,
    ⟨(96240189447/1000000000000 : ℚ), (-5944105963/2500000000 : ℚ), (215129349247/1000000000000 : ℚ), 4⟩,
    ⟨(6087471209/62500000000 : ℚ), (-13537300569/5000000000 : ℚ), (123528203867/500000000000 : ℚ), 4⟩,
    ⟨(98385485387/1000000000000 : ℚ), (-184162679/62500000 : ℚ), (270464024221/1000000000000 : ℚ), 4⟩,
    ⟨(49580069111/500000000000 : ℚ), (-15570276849/5000000000 : ℚ), (287002751519/1000000000000 : ℚ), 4⟩,
    ⟨(797549827/8000000000 : ℚ), (-1610409259/500000000 : ℚ), (297617599109/1000000000000 : ℚ), 4⟩,
    ⟨(99965750277/1000000000000 : ℚ), (-16364431647/5000000000 : ℚ), (151407740489/500000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-32793366817/10000000000 : ℚ), (303460405679/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (385757695833/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control597.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control597.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate597

namespace DiagonalRamsey.JointInheritedCertificate614
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8609603351/200000000000 : ℚ), (581276817619/2500000000 : ℚ), (-5028723747419/500000000000 : ℚ), 10⟩,
    ⟨(43572071549/1000000000000 : ℚ), (53307532841/2500000000 : ℚ), (-945627288203/1000000000000 : ℚ), 7⟩,
    ⟨(22270199273/500000000000 : ℚ), (46790105427/10000000000 : ℚ), (-214896502341/1000000000000 : ℚ), 5⟩,
    ⟨(22902789369/500000000000 : ℚ), (167189807/1000000000 : ℚ), (-2910755059/250000000000 : ℚ), 5⟩,
    ⟨(4717499991/100000000000 : ℚ), (-16667969671/10000000000 : ℚ), (73459778679/1000000000000 : ℚ), 4⟩,
    ⟨(24220090051/500000000000 : ℚ), (-25755080579/10000000000 : ℚ), (29214302059/250000000000 : ℚ), 4⟩,
    ⟨(49408507099/1000000000000 : ℚ), (-7635344267/2500000000 : ℚ), (35065842913/250000000000 : ℚ), 4⟩,
    ⟨(49932561893/1000000000000 : ℚ), (-16337815561/5000000000 : ℚ), (75431604121/500000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-32932681701/10000000000 : ℚ), (152147592333/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (124888873683/250000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control614.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control614.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate614

namespace DiagonalRamsey.JointInheritedCertificate615
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21527621873/250000000000 : ℚ), (59788323547/62500000 : ℚ), (-3300586453361/40000000000 : ℚ), 12⟩,
    ⟨(10797090809/125000000000 : ℚ), (202645497537/2000000000 : ℚ), (-1764633477167/200000000000 : ℚ), 8⟩,
    ⟨(86898973017/1000000000000 : ℚ), (10375042671/312500000 : ℚ), (-1463485312963/500000000000 : ℚ), 7⟩,
    ⟨(17531431497/200000000000 : ℚ), (72788515323/5000000000 : ℚ), (-1301420740257/1000000000000 : ℚ), 6⟩,
    ⟨(88622143273/1000000000000 : ℚ), (17370368817/2500000000 : ℚ), (-315650069131/500000000000 : ℚ), 5⟩,
    ⟨(44878423259/500000000000 : ℚ), (7821964139/2500000000 : ℚ), (-290919972711/1000000000000 : ℚ), 5⟩,
    ⟨(9101766121/100000000000 : ℚ), (2373418917/2500000000 : ℚ), (-23515777461/250000000000 : ℚ), 5⟩,
    ⟨(23089033737/250000000000 : ℚ), (-2043444187/5000000000 : ℚ), (30381062389/1000000000000 : ℚ), 4⟩,
    ⟨(93720830937/1000000000000 : ℚ), (-13105491901/10000000000 : ℚ), (11424961877/100000000000 : ℚ), 4⟩,
    ⟨(3802372187/40000000000 : ℚ), (-19378003877/10000000000 : ℚ), (86717287423/500000000000 : ℚ), 4⟩,
    ⟨(96320119367/1000000000000 : ℚ), (-23878714221/10000000000 : ℚ), (216490424871/1000000000000 : ℚ), 4⟩,
    ⟨(97454822611/1000000000000 : ℚ), (-27157970801/10000000000 : ℚ), (124128313771/500000000000 : ℚ), 4⟩,
    ⟨(98419808399/1000000000000 : ℚ), (-14768117159/5000000000 : ℚ), (27154610943/100000000000 : ℚ), 4⟩,
    ⟨(24794498217/250000000000 : ℚ), (-3120192409/1000000000 : ℚ), (144000971587/500000000000 : ℚ), 4⟩,
    ⟨(99700239413/1000000000000 : ℚ), (-8066033057/2500000000 : ℚ), (149282085229/500000000000 : ℚ), 4⟩,
    ⟨(99966478393/1000000000000 : ℚ), (-32782235093/10000000000 : ℚ), (75934133051/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-8211605761/2500000000 : ℚ), (152189152033/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (197112072383/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control615.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control615.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate615

namespace DiagonalRamsey.JointInheritedCertificate616
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32366043061/250000000000 : ℚ), (2432104035013/2500000000 : ℚ), (-63079521216791/500000000000 : ℚ), 12⟩,
    ⟨(64928905047/500000000000 : ℚ), (1030977999059/10000000000 : ℚ), (-1349520440063/100000000000 : ℚ), 8⟩,
    ⟨(130629958511/1000000000000 : ℚ), (67640021311/2000000000 : ℚ), (-1750357977/390625000 : ℚ), 7⟩,
    ⟨(26350188853/200000000000 : ℚ), (148606509617/10000000000 : ℚ), (-1995923478121/1000000000000 : ℚ), 6⟩,
    ⟨(66588844251/500000000000 : ℚ), (35610442943/5000000000 : ℚ), (-242929185729/250000000000 : ℚ), 5⟩,
    ⟨(134855362241/1000000000000 : ℚ), (32388194103/10000000000 : ℚ), (-451695731707/1000000000000 : ℚ), 5⟩,
    ⟨(136719493421/1000000000000 : ℚ), (10239567689/10000000000 : ℚ), (-75573955537/500000000000 : ℚ), 5⟩,
    ⟨(138698444527/1000000000000 : ℚ), (-710305181/2000000000 : ℚ), (38659800849/1000000000000 : ℚ), 4⟩,
    ⟨(140716165577/1000000000000 : ℚ), (-12700490897/10000000000 : ℚ), (166418608217/1000000000000 : ℚ), 4⟩,
    ⟨(142695116683/1000000000000 : ℚ), (-9527843173/5000000000 : ℚ), (256443225439/1000000000000 : ℚ), 4⟩,
    ⟨(18069905983/125000000000 : ℚ), (-4721892993/2000000000 : ℚ), (160915417967/500000000000 : ℚ), 4⟩,
    ⟨(146236921603/1000000000000 : ℚ), (-26922863727/10000000000 : ℚ), (184999232793/500000000000 : ℚ), 4⟩,
    ⟨(1845795823/12500000000 : ℚ), (-29322923053/10000000000 : ℚ), (202631753639/500000000000 : ℚ), 4⟩,
    ⟨(74392325797/500000000000 : ℚ), (-1550108653/500000000 : ℚ), (215076273851/500000000000 : ℚ), 4⟩,
    ⟨(149556800011/1000000000000 : ℚ), (-6414446829/2000000000 : ℚ), (111528577639/250000000000 : ℚ), 4⟩,
    ⟨(149950437861/1000000000000 : ℚ), (-32593933709/10000000000 : ℚ), (453926900439/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-6531711283/2000000000 : ℚ), (454896080793/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (306642406449/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control616.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control616.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate616

namespace DiagonalRamsey.JointInheritedCertificate635
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43185588493/1000000000000 : ℚ), (143769145699/625000000 : ℚ), (-9980739805149/1000000000000 : ℚ), 10⟩,
    ⟨(21849636423/500000000000 : ℚ), (105349813879/5000000000 : ℚ), (-936661842393/1000000000000 : ℚ), 7⟩,
    ⟨(5581054721/125000000000 : ℚ), (45954624891/10000000000 : ℚ), (-211384801441/1000000000000 : ℚ), 5⟩,
    ⟨(22944290751/500000000000 : ℚ), (1274784019/10000000000 : ℚ), (-4834085033/500000000000 : ℚ), 5⟩,
    ⟨(47230903407/1000000000000 : ℚ), (-16896019129/10000000000 : ℚ), (14955910597/200000000000 : ℚ), 4⟩,
    ⟨(48471047141/1000000000000 : ℚ), (-25904499849/10000000000 : ℚ), (117841508293/1000000000000 : ℚ), 4⟩,
    ⟨(24710106031/500000000000 : ℚ), (-6130511257/2000000000 : ℚ), (35267751637/250000000000 : ℚ), 4⟩,
    ⟨(1560434263/31250000000 : ℚ), (-4096380089/1250000000 : ℚ), (151593930281/1000000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-1032070767/312500000 : ℚ), (152869203893/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (127479819347/250000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control635.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control635.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate635

namespace DiagonalRamsey.JointInheritedCertificate636
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(86523949631/1000000000000 : ℚ), (233104136067/1000000000 : ℚ), (-5065626383909/250000000000 : ℚ), 10⟩,
    ⟨(87539802023/1000000000000 : ℚ), (213885563371/10000000000 : ℚ), (-1903986692757/1000000000000 : ℚ), 7⟩,
    ⟨(11177106561/125000000000 : ℚ), (46971797517/10000000000 : ℚ), (-432101416157/1000000000000 : ℚ), 5⟩,
    ⟨(91869337109/1000000000000 : ℚ), (346369039/2000000000 : ℚ), (-23119448253/1000000000000 : ℚ), 5⟩,
    ⟨(47261943667/500000000000 : ℚ), (-16637713263/10000000000 : ℚ), (18470973291/125000000000 : ℚ), 4⟩,
    ⟨(19395274391/200000000000 : ℚ), (-25723982113/10000000000 : ℚ), (117339860829/500000000000 : ℚ), 4⟩,
    ⟨(4942671121/50000000000 : ℚ), (-30502497949/10000000000 : ℚ), (281448142853/1000000000000 : ℚ), 4⟩,
    ⟨(24967318703/250000000000 : ℚ), (-32631472319/10000000000 : ℚ), (302599749909/1000000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16443909951/5000000000 : ℚ), (61032309241/200000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (100675234573/250000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control636.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control636.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate636

namespace DiagonalRamsey.JointInheritedCertificate647
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21678876107/500000000000 : ℚ), (571988932953/2500000000 : ℚ), (-9965488536863/1000000000000 : ℚ), 10⟩,
    ⟨(43858458513/1000000000000 : ℚ), (209544857069/10000000000 : ℚ), (-186917113559/200000000000 : ℚ), 7⟩,
    ⟨(8956728623/200000000000 : ℚ), (45611574069/10000000000 : ℚ), (-210406519059/1000000000000 : ℚ), 5⟩,
    ⟨(45992455051/1000000000000 : ℚ), (1130103539/10000000000 : ℚ), (-1129989863/125000000000 : ℚ), 5⟩,
    ⟨(47300863663/1000000000000 : ℚ), (-16966634377/10000000000 : ℚ), (75224836697/1000000000000 : ℚ), 4⟩,
    ⟨(48509675599/1000000000000 : ℚ), (-25940553971/10000000000 : ℚ), (118171447027/1000000000000 : ℚ), 4⟩,
    ⟨(49434860201/1000000000000 : ℚ), (-6134298047/2000000000 : ℚ), (28266010699/200000000000 : ℚ), 4⟩,
    ⟨(99871133/2000000000 : ℚ), (-32782833893/10000000000 : ℚ), (30363851869/200000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-6607445707/2000000000 : ℚ), (76545205527/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (260136494231/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control647.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control647.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate647

namespace DiagonalRamsey.JointInheritedCertificate648
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17370386059/200000000000 : ℚ), (36184422947/156250000 : ℚ), (-10101941454711/500000000000 : ℚ), 10⟩,
    ⟨(8784305883/100000000000 : ℚ), (212416818379/10000000000 : ℚ), (-948371280471/500000000000 : ℚ), 7⟩,
    ⟨(22418606391/250000000000 : ℚ), (46519372351/10000000000 : ℚ), (-26815428973/62500000000 : ℚ), 5⟩,
    ⟨(46033610757/500000000000 : ℚ), (38317979/250000000 : ℚ), (-21303622361/1000000000000 : ℚ), 5⟩,
    ⟨(94657165187/1000000000000 : ℚ), (-1046345369/625000000 : ℚ), (149007184163/1000000000000 : ℚ), 4⟩,
    ⟨(48524980569/500000000000 : ℚ), (-5156734817/2000000000 : ℚ), (235592841577/1000000000000 : ℚ), 4⟩,
    ⟨(386255187/3906250000 : ℚ), (-30540627369/10000000000 : ℚ), (70543721217/250000000000 : ℚ), 4⟩,
    ⟨(49936228203/500000000000 : ℚ), (-16330343599/5000000000 : ℚ), (4738144961/15625000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-32916002511/10000000000 : ℚ), (305792798587/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (411187810847/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control648.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control648.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate648

namespace DiagonalRamsey.JointInheritedCertificate649
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(130369342867/1000000000000 : ℚ), (298921481343/312500000 : ℚ), (-124902773714921/1000000000000 : ℚ), 12⟩,
    ⟨(130745630093/1000000000000 : ℚ), (1013627412917/10000000000 : ℚ), (-13353355126151/1000000000000 : ℚ), 9⟩,
    ⟨(65741872019/500000000000 : ℚ), (66458893433/2000000000 : ℚ), (-553534597063/125000000000 : ℚ), 7⟩,
    ⟨(33138829849/250000000000 : ℚ), (145768817259/10000000000 : ℚ), (-122995667467/62500000000 : ℚ), 6⟩,
    ⟨(2092487127/15625000000 : ℚ), (69602738487/10000000000 : ℚ), (-953939219607/1000000000000 : ℚ), 6⟩,
    ⟨(27104580397/200000000000 : ℚ), (15681973999/5000000000 : ℚ), (-27447481303/62500000000 : ℚ), 5⟩,
    ⟨(3432621667/25000000000 : ℚ), (9543589221/10000000000 : ℚ), (-141690435273/1000000000000 : ℚ), 5⟩,
    ⟨(139196590311/1000000000000 : ℚ), (-4049422049/10000000000 : ℚ), (2306613/50000000 : ℚ), 5⟩,
    ⟨(141125374999/1000000000000 : ℚ), (-653550781/500000000 : ℚ), (86262164831/500000000000 : ℚ), 4⟩,
    ⟨(143017098629/1000000000000 : ℚ), (-9670264347/5000000000 : ℚ), (130782931163/500000000000 : ℚ), 4⟩,
    ⟨(5791962533/40000000000 : ℚ), (-23835011553/10000000000 : ℚ), (163114534367/500000000000 : ℚ), 4⟩,
    ⟨(146402789181/1000000000000 : ℚ), (-2710690961/1000000000 : ℚ), (9346503897/25000000000 : ℚ), 4⟩,
    ⟨(147766645913/1000000000000 : ℚ), (-14739079503/5000000000 : ℚ), (408733941013/1000000000000 : ℚ), 4⟩,
    ⟨(18604777659/125000000000 : ℚ), (-31138103877/10000000000 : ℚ), (108337478949/250000000000 : ℚ), 4⟩,
    ⟨(9348520951/62500000000 : ℚ), (-6439265353/2000000000 : ℚ), (449138980671/1000000000000 : ℚ), 4⟩,
    ⟨(74976311221/500000000000 : ℚ), (-32712407829/10000000000 : ℚ), (456867994971/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16388171077/5000000000 : ℚ), (228913429151/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (64077520851/200000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control649.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control649.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate649

namespace DiagonalRamsey.JointInheritedCertificate660
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43509960053/1000000000000 : ℚ), (566497871863/2500000000 : ℚ), (-1237903696533/125000000000 : ℚ), 10⟩,
    ⟨(10999798153/250000000000 : ℚ), (51832929067/2500000000 : ℚ), (-927251263933/1000000000000 : ℚ), 7⟩,
    ⟨(44903176507/1000000000000 : ℚ), (224462379/50000000 : ℚ), (-3242242601/15625000000 : ℚ), 6⟩,
    ⟨(9216857677/200000000000 : ℚ), (31790809/400000000 : ℚ), (-7396031327/1000000000000 : ℚ), 5⟩,
    ⟨(47362714669/1000000000000 : ℚ), (-4288611691/2500000000 : ℚ), (38161624117/500000000000 : ℚ), 4⟩,
    ⟨(48543826547/1000000000000 : ℚ), (-3257453357/1250000000 : ℚ), (118984664909/1000000000000 : ℚ), 4⟩,
    ⟨(24723905221/500000000000 : ℚ), (-15378490099/5000000000 : ℚ), (70995092831/500000000000 : ℚ), 4⟩,
    ⟨(49937043001/1000000000000 : ℚ), (-32854423619/10000000000 : ℚ), (30482375041/200000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-3310720581/1000000000 : ℚ), (76837494289/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (530648554761/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control660.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control660.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate660

namespace DiagonalRamsey.JointInheritedCertificate661
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(87133655243/1000000000000 : ℚ), (2289370017487/10000000000 : ℚ), (-4007119124199/200000000000 : ℚ), 10⟩,
    ⟨(88103546771/1000000000000 : ℚ), (209713935633/10000000000 : ℚ), (-938612659161/500000000000 : ℚ), 7⟩,
    ⟨(17979134527/200000000000 : ℚ), (45627400157/10000000000 : ℚ), (-421495996523/1000000000000 : ℚ), 6⟩,
    ⟨(46118598959/500000000000 : ℚ), (222025427/2000000000 : ℚ), (-17113474731/1000000000000 : ℚ), 5⟩,
    ⟨(4738582331/50000000000 : ℚ), (-8491526493/5000000000 : ℚ), (151773799283/1000000000000 : ℚ), 4⟩,
    ⟨(97113171903/1000000000000 : ℚ), (-12970549807/5000000000 : ℚ), (237635661239/1000000000000 : ℚ), 4⟩,
    ⟨(98905297767/1000000000000 : ℚ), (-15328598653/5000000000 : ℚ), (283838658687/1000000000000 : ℚ), 4⟩,
    ⟨(19975037859/200000000000 : ℚ), (-16380205957/5000000000 : ℚ), (304740526933/1000000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16506887801/5000000000 : ℚ), (153636289479/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (2623219461/6250000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control661.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control661.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate661

namespace DiagonalRamsey.JointInheritedCertificate690
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43669966903/1000000000000 : ℚ), (561393186757/2500000000 : ℚ), (-1231104989777/125000000000 : ℚ), 10⟩,
    ⟨(5518392227/125000000000 : ℚ), (205291571713/10000000000 : ℚ), (-460402681421/500000000000 : ℚ), 7⟩,
    ⟨(5628604337/125000000000 : ℚ), (44236851907/10000000000 : ℚ), (-51232987691/250000000000 : ℚ), 6⟩,
    ⟨(23090413593/500000000000 : ℚ), (246563939/5000000000 : ℚ), (-5932123117/1000000000000 : ℚ), 5⟩,
    ⟨(47427734873/1000000000000 : ℚ), (-17320343769/10000000000 : ℚ), (77301550963/1000000000000 : ℚ), 4⟩,
    ⟨(48579727363/1000000000000 : ℚ), (-13081103641/5000000000 : ℚ), (119705322117/1000000000000 : ℚ), 4⟩,
    ⟨(49461424243/1000000000000 : ℚ), (-7707135033/2500000000 : ℚ), (71285361433/500000000000 : ℚ), 4⟩,
    ⟨(12484648789/250000000000 : ℚ), (-1316524591/400000000 : ℚ), (9558129957/62500000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-33164402901/10000000000 : ℚ), (154185746629/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (541029907463/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control690.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control690.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate690

namespace DiagonalRamsey.JointInheritedCertificate691
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(87463433203/1000000000000 : ℚ), (2271325142211/10000000000 : ℚ), (-4987607372243/250000000000 : ℚ), 10⟩,
    ⟨(8840846539/100000000000 : ℚ), (207940418439/10000000000 : ℚ), (-1867038104917/1000000000000 : ℚ), 7⟩,
    ⟨(45077328591/500000000000 : ℚ), (22534821901/5000000000 : ℚ), (-208691794017/500000000000 : ℚ), 6⟩,
    ⟨(92436166707/1000000000000 : ℚ), (859809071/10000000000 : ℚ), (-3688772509/250000000000 : ℚ), 5⟩,
    ⟨(94905654821/1000000000000 : ℚ), (-85582937/50000000 : ℚ), (76674479567/500000000000 : ℚ), 4⟩,
    ⟨(48593582173/500000000000 : ℚ), (-13010227527/5000000000 : ℚ), (14924145403/62500000000 : ℚ), 4⟩,
    ⟨(98933356137/1000000000000 : ℚ), (-3838760051/1250000000 : ℚ), (28475442469/100000000000 : ℚ), 4⟩,
    ⟨(3995135533/40000000000 : ℚ), (-512536511/156250000 : ℚ), (38193839467/125000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16527214869/5000000000 : ℚ), (308070109599/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (428236192463/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control691.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control691.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate691

namespace DiagonalRamsey.JointInheritedCertificate692
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6565454559/50000000000 : ℚ), (2349149628009/2500000000 : ℚ), (-15446395466803/125000000000 : ℚ), 12⟩,
    ⟨(26333472997/200000000000 : ℚ), (995626438413/10000000000 : ℚ), (-13203219204711/1000000000000 : ℚ), 9⟩,
    ⟨(66185072167/500000000000 : ℚ), (81540762661/2500000000 : ℚ), (-4372714785051/1000000000000 : ℚ), 7⟩,
    ⟨(13339042181/100000000000 : ℚ), (35705532513/2500000000 : ℚ), (-77539733513/40000000000 : ℚ), 6⟩,
    ⟨(134688988723/1000000000000 : ℚ), (67923445143/10000000000 : ℚ), (-467662544077/500000000000 : ℚ), 6⟩,
    ⟨(136215941873/1000000000000 : ℚ), (3787822143/1250000000 : ℚ), (-42609448767/100000000000 : ℚ), 5⟩,
    ⟨(137912601309/1000000000000 : ℚ), (551507669/625000000 : ℚ), (-131880217549/1000000000000 : ℚ), 5⟩,
    ⟨(69856882679/500000000000 : ℚ), (-4562403311/10000000000 : ℚ), (53847168171/1000000000000 : ℚ), 5⟩,
    ⟨(141550216297/1000000000000 : ℚ), (-13451137033/10000000000 : ℚ), (44699806011/250000000000 : ℚ), 4⟩,
    ⟨(143351380347/1000000000000 : ℚ), (-981561361/500000000 : ℚ), (10672271519/40000000000 : ℚ), 4⟩,
    ⟨(72524019891/500000000000 : ℚ), (-962551547/400000000 : ℚ), (33070917147/100000000000 : ℚ), 4⟩,
    ⟨(146574992933/1000000000000 : ℚ), (-27292314381/10000000000 : ℚ), (377777252153/1000000000000 : ℚ), 4⟩,
    ⟨(29574711969/200000000000 : ℚ), (-3704178027/1250000000 : ℚ), (206120318383/500000000000 : ℚ), 4⟩,
    ⟨(148893837321/1000000000000 : ℚ), (-1563657491/500000000 : ℚ), (54571271397/125000000000 : ℚ), 4⟩,
    ⟨(14959661667/100000000000 : ℚ), (-8079740093/2500000000 : ℚ), (452178029161/1000000000000 : ℚ), 4⟩,
    ⟨(5998195619/40000000000 : ℚ), (-32829145737/10000000000 : ℚ), (459819325141/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16446178739/5000000000 : ℚ), (2303836793/5000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (334206502247/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control692.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control692.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate692

namespace DiagonalRamsey.JointInheritedCertificate705
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43838442541/1000000000000 : ℚ), (222697460577/1000000000 : ℚ), (-1960740924333/200000000000 : ℚ), 10⟩,
    ⟨(22151456707/500000000000 : ℚ), (101727576203/5000000000 : ℚ), (-457701681497/500000000000 : ℚ), 7⟩,
    ⟨(70564287/1562500000 : ℚ), (21827945099/5000000000 : ℚ), (-202748989517/1000000000000 : ℚ), 6⟩,
    ⟨(46282475561/1000000000000 : ℚ), (115499909/5000000000 : ℚ), (-2339212131/500000000000 : ℚ), 5⟩,
    ⟨(47496196443/1000000000000 : ℚ), (-17460670353/10000000000 : ℚ), (78140405887/1000000000000 : ℚ), 5⟩,
    ⟨(12154382081/250000000000 : ℚ), (-6561418901/2500000000 : ℚ), (30079819121/250000000000 : ℚ), 4⟩,
    ⟨(4947575859/100000000000 : ℚ), (-30884061289/10000000000 : ℚ), (35765021139/250000000000 : ℚ), 4⟩,
    ⟨(6242528683/125000000000 : ℚ), (-16478505869/5000000000 : ℚ), (153363358001/1000000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-33206949019/10000000000 : ℚ), (154612295729/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (551416901291/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control705.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control705.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate705

namespace DiagonalRamsey.JointInheritedCertificate706
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21947297703/250000000000 : ℚ), (90028480049/400000000 : ℚ), (-19840518711383/1000000000000 : ℚ), 10⟩,
    ⟨(88709666721/1000000000000 : ℚ), (8235436349/400000000 : ℚ), (-185409505537/100000000000 : ℚ), 7⟩,
    ⟨(45205242213/500000000000 : ℚ), (8882660863/2000000000 : ℚ), (-206135747361/500000000000 : ℚ), 6⟩,
    ⟨(1852654197/20000000000 : ℚ), (280239949/5000000000 : ℚ), (-11876655033/1000000000000 : ℚ), 5⟩,
    ⟨(23759507329/250000000000 : ℚ), (-1727945443/1000000000 : ℚ), (155252124607/1000000000000 : ℚ), 5⟩,
    ⟨(4863012737/50000000000 : ℚ), (-26119935921/10000000000 : ℚ), (240174260433/1000000000000 : ℚ), 4⟩,
    ⟨(49480536223/500000000000 : ℚ), (-15389307061/5000000000 : ℚ), (4466609469/15625000000 : ℚ), 4⟩,
    ⟨(19976309671/200000000000 : ℚ), (-16429029421/5000000000 : ℚ), (76633805411/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-33108665609/10000000000 : ℚ), (154519900799/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (436777013249/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control706.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control706.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate706

namespace DiagonalRamsey.JointInheritedCertificate707
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131770480819/1000000000000 : ℚ), (371863689641/400000000 : ℚ), (-30670062511441/250000000000 : ℚ), 12⟩,
    ⟨(33029977637/250000000000 : ℚ), (492451639717/5000000000 : ℚ), (-13103127073/1000000000 : ℚ), 9⟩,
    ⟨(66402670809/500000000000 : ℚ), (10077550069/312500000 : ℚ), (-541989376533/125000000000 : ℚ), 7⟩,
    ⟨(8362527081/62500000000 : ℚ), (70518879989/5000000000 : ℚ), (-959581821169/500000000000 : ℚ), 7⟩,
    ⟨(527605253/3906250000 : ℚ), (13065993/1953125 : ℚ), (-923218610937/1000000000000 : ℚ), 6⟩,
    ⟨(136556204707/1000000000000 : ℚ), (14824505533/5000000000 : ℚ), (-20883844347/50000000000 : ℚ), 5⟩,
    ⟨(138210981691/1000000000000 : ℚ), (8377458593/10000000000 : ℚ), (-31403273793/250000000000 : ℚ), 5⟩,
    ⟨(139967683567/1000000000000 : ℚ), (-610447029/1250000000 : ℚ), (29370891069/500000000000 : ℚ), 5⟩,
    ⟨(141758801267/1000000000000 : ℚ), (-13691320137/10000000000 : ℚ), (182760322683/1000000000000 : ℚ), 5⟩,
    ⟨(143515503143/1000000000000 : ℚ), (-19816803723/10000000000 : ℚ), (54021026127/200000000000 : ℚ), 4⟩,
    ⟨(145170280127/1000000000000 : ℚ), (-12105760901/5000000000 : ℚ), (333525252971/1000000000000 : ℚ), 4⟩,
    ⟨(146659540067/1000000000000 : ℚ), (-27413530267/10000000000 : ℚ), (380240048507/1000000000000 : ℚ), 4⟩,
    ⟨(147926051539/1000000000000 : ℚ), (-14868102793/5000000000 : ℚ), (414448066697/1000000000000 : ℚ), 4⟩,
    ⟨(148921143217/1000000000000 : ℚ), (-6272711189/2000000000 : ℚ), (438600512097/1000000000000 : ℚ), 4⟩,
    ⟨(74803287143/500000000000 : ℚ), (-6480352579/2000000000 : ℚ), (227048418677/500000000000 : ℚ), 4⟩,
    ⟨(29991200803/200000000000 : ℚ), (-32908333911/10000000000 : ℚ), (461684281143/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-824277563/250000000 : ℚ), (462625672113/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (170576426989/500000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control707.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control707.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate707

namespace DiagonalRamsey.JointInheritedCertificate721
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11004042349/250000000000 : ℚ), (1105275799989/5000000000 : ℚ), (-9769606197931/1000000000000 : ℚ), 10⟩,
    ⟨(44467242853/1000000000000 : ℚ), (12616378559/625000000 : ℚ), (-911245379689/1000000000000 : ℚ), 7⟩,
    ⟨(45300717923/1000000000000 : ℚ), (21582002537/5000000000 : ℚ), (-8041129703/40000000000 : ℚ), 6⟩,
    ⟨(46389705581/1000000000000 : ℚ), (15890403/10000000000 : ℚ), (-3673837351/1000000000000 : ℚ), 5⟩,
    ⟨(2973026083/62500000000 : ℚ), (-17570713297/10000000000 : ℚ), (15762983589/200000000000 : ℚ), 5⟩,
    ⟨(24328702493/500000000000 : ℚ), (-26306650949/10000000000 : ℚ), (12080831629/100000000000 : ℚ), 4⟩,
    ⟨(6186360007/125000000000 : ℚ), (-30920820571/10000000000 : ℚ), (143443355837/1000000000000 : ℚ), 4⟩,
    ⟨(49941953513/1000000000000 : ℚ), (-32983666069/10000000000 : ℚ), (153698171113/1000000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-4154053471/1250000000 : ℚ), (77470627973/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (561809396537/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control721.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control721.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate721

namespace DiagonalRamsey.JointInheritedCertificate722
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(88111490129/1000000000000 : ℚ), (278434537391/1250000000 : ℚ), (-3941057652419/200000000000 : ℚ), 10⟩,
    ⟨(89007670453/1000000000000 : ℚ), (101772139313/5000000000 : ℚ), (-1838332510733/1000000000000 : ℚ), 7⟩,
    ⟨(9066359577/100000000000 : ℚ), (43656134763/10000000000 : ℚ), (-81227418581/200000000000 : ℚ), 6⟩,
    ⟨(46413583231/500000000000 : ℚ), (42198281/2000000000 : ℚ), (-33074253/3906250000 : ℚ), 5⟩,
    ⟨(11896124813/125000000000 : ℚ), (-3494465457/2000000000 : ℚ), (157489601483/1000000000000 : ℚ), 5⟩,
    ⟨(97332569197/1000000000000 : ℚ), (-2623996547/1000000000 : ℚ), (120901628771/500000000000 : ℚ), 4⟩,
    ⟨(49494247257/500000000000 : ℚ), (-30863085311/10000000000 : ℚ), (287166836151/1000000000000 : ℚ), 4⟩,
    ⟨(49942337419/500000000000 : ℚ), (-32927803963/10000000000 : ℚ), (61539173383/200000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16588350747/5000000000 : ℚ), (310183403669/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (445337297651/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control722.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control722.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate722

namespace DiagonalRamsey.JointInheritedCertificate723
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(33056836531/250000000000 : ℚ), (9185989418503/10000000000 : ℚ), (-121635678032461/1000000000000 : ℚ), 12⟩,
    ⟨(132568018501/1000000000000 : ℚ), (973006921453/10000000000 : ℚ), (-1298595508533/100000000000 : ℚ), 9⟩,
    ⟨(66618135703/500000000000 : ℚ), (318380686373/10000000000 : ℚ), (-2146480324763/500000000000 : ℚ), 8⟩,
    ⟨(26841284851/200000000000 : ℚ), (139041422611/10000000000 : ℚ), (-1896688183679/1000000000000 : ℚ), 7⟩,
    ⟨(67720597309/500000000000 : ℚ), (6574557001/1000000000 : ℚ), (-454601574147/500000000000 : ℚ), 6⟩,
    ⟨(136893130963/1000000000000 : ℚ), (3613955171/1250000000 : ℚ), (-203987357567/500000000000 : ℚ), 6⟩,
    ⟨(138506436189/1000000000000 : ℚ), (7871502947/10000000000 : ℚ), (-14802334799/125000000000 : ℚ), 5⟩,
    ⟨(140219111883/1000000000000 : ℚ), (-104977101/200000000 : ℚ), (32170803489/500000000000 : ℚ), 5⟩,
    ⟨(141965340877/1000000000000 : ℚ), (-279313149/200000000 : ℚ), (187280517213/1000000000000 : ℚ), 5⟩,
    ⟨(14367801657/100000000000 : ℚ), (-5007439829/2500000000 : ℚ), (273862672747/1000000000000 : ℚ), 5⟩,
    ⟨(145291321797/1000000000000 : ℚ), (-609547803/250000000 : ℚ), (168365310367/500000000000 : ℚ), 4⟩,
    ⟨(146743258141/1000000000000 : ℚ), (-5510816399/2000000000 : ℚ), (383042766727/1000000000000 : ℚ), 4⟩,
    ⟨(18497253563/125000000000 : ℚ), (-29856004841/10000000000 : ℚ), (83392171013/200000000000 : ℚ), 4⟩,
    ⟨(148948181353/1000000000000 : ℚ), (-15734708201/5000000000 : ℚ), (440912837157/1000000000000 : ℚ), 4⟩,
    ⟨(149616434259/1000000000000 : ℚ), (-16249527011/5000000000 : ℚ), (456283166079/1000000000000 : ℚ), 4⟩,
    ⟨(29991421327/200000000000 : ℚ), (-3300154969/1000000000 : ℚ), (23190492291/50000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-2066488659/625000000 : ℚ), (116185936249/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (174061680127/500000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control723.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control723.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate723

namespace DiagonalRamsey.JointInheritedCertificate737
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44171291987/1000000000000 : ℚ), (2182430469081/10000000000 : ℚ), (-604878677139/62500000000 : ℚ), 10⟩,
    ⟨(8922134397/200000000000 : ℚ), (1554522569/78125000 : ℚ), (-900661034273/1000000000000 : ℚ), 7⟩,
    ⟨(22711270179/500000000000 : ℚ), (42212498579/10000000000 : ℚ), (-39391140433/200000000000 : ℚ), 6⟩,
    ⟨(23241648753/500000000000 : ℚ), (-216406513/5000000000 : ℚ), (-1429782293/1000000000000 : ℚ), 5⟩,
    ⟨(4763145277/100000000000 : ℚ), (-1114029359/625000000 : ℚ), (80284255703/1000000000000 : ℚ), 5⟩,
    ⟨(24346104959/500000000000 : ℚ), (-6617324119/2500000000 : ℚ), (60941500209/500000000000 : ℚ), 5⟩,
    ⟨(49504078291/1000000000000 : ℚ), (-1241555339/400000000 : ℚ), (72155275343/500000000000 : ℚ), 4⟩,
    ⟨(3121466143/62500000000 : ℚ), (-16541612849/5000000000 : ℚ), (15447491299/100000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-8332459231/2500000000 : ℚ), (155707270323/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (71528080367/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control737.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control737.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate737

namespace DiagonalRamsey.JointInheritedCertificate738
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11053862907/125000000000 : ℚ), (110077885333/500000000 : ℚ), (-2443013170297/125000000000 : ℚ), 10⟩,
    ⟨(89303005561/1000000000000 : ℚ), (200908755977/10000000000 : ℚ), (-909840291117/500000000000 : ℚ), 7⟩,
    ⟨(45457220251/500000000000 : ℚ), (2139783677/500000000 : ℚ), (-398955646881/1000000000000 : ℚ), 6⟩,
    ⟨(18603976343/200000000000 : ℚ), (-94950513/5000000000 : ℚ), (-56425257/12500000000 : ℚ), 5⟩,
    ⟨(95298794863/1000000000000 : ℚ), (-3539185387/2000000000 : ℚ), (160068189799/1000000000000 : ℚ), 5⟩,
    ⟨(97404236077/1000000000000 : ℚ), (-5276198087/2000000000 : ℚ), (30459670797/125000000000 : ℚ), 4⟩,
    ⟨(99015671017/1000000000000 : ℚ), (-774094789/250000000 : ℚ), (288668475869/1000000000000 : ℚ), 4⟩,
    ⟨(99887773323/1000000000000 : ℚ), (-33011802767/10000000000 : ℚ), (77258636147/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-6651752013/2000000000 : ℚ), (311502728597/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (28369798543/62500000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control738.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control738.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate738

namespace DiagonalRamsey.JointInheritedCertificate739
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(132733872049/1000000000000 : ℚ), (9096457565393/10000000000 : ℚ), (-120906089628567/1000000000000 : ℚ), 12⟩,
    ⟨(66532417581/500000000000 : ℚ), (963452514099/10000000000 : ℚ), (-12903888531853/1000000000000 : ℚ), 9⟩,
    ⟨(6685702133/50000000000 : ℚ), (315123583313/10000000000 : ℚ), (-2131361839083/500000000000 : ℚ), 8⟩,
    ⟨(16832068233/125000000000 : ℚ), (68738187057/5000000000 : ℚ), (-940382379983/500000000000 : ℚ), 7⟩,
    ⟨(27171224981/200000000000 : ℚ), (12971009979/2000000000 : ℚ), (-89920587027/100000000000 : ℚ), 6⟩,
    ⟨(137266680631/1000000000000 : ℚ), (28350571323/10000000000 : ℚ), (-401011975663/1000000000000 : ℚ), 6⟩,
    ⟨(138834006179/1000000000000 : ℚ), (299720499/400000000 : ℚ), (-113232663309/1000000000000 : ℚ), 5⟩,
    ⟨(28099574021/200000000000 : ℚ), (-5516936923/10000000000 : ℚ), (68386650469/1000000000000 : ℚ), 5⟩,
    ⟨(142194331053/1000000000000 : ℚ), (-14162623493/10000000000 : ℚ), (95271728653/500000000000 : ℚ), 5⟩,
    ⟨(143858194979/1000000000000 : ℚ), (-20178812133/10000000000 : ℚ), (55313073101/200000000000 : ℚ), 5⟩,
    ⟨(145425520527/1000000000000 : ℚ), (-24497747457/10000000000 : ℚ), (67804355729/200000000000 : ℚ), 4⟩,
    ⟨(73418038127/500000000000 : ℚ), (-6911653413/2500000000 : ℚ), (385029653979/1000000000000 : ℚ), 4⟩,
    ⟨(74017827647/500000000000 : ℚ), (-1870769411/625000000 : ℚ), (418725949441/1000000000000 : ℚ), 4⟩,
    ⟨(74489079249/500000000000 : ℚ), (-788370323/250000000 : ℚ), (221261517831/500000000000 : ℚ), 4⟩,
    ⟨(37406841499/250000000000 : ℚ), (-3255773971/1000000000 : ℚ), (457795289079/1000000000000 : ℚ), 4⟩,
    ⟨(149958329109/1000000000000 : ℚ), (-6611408619/2000000000 : ℚ), (93054891527/200000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-1655946023/500000000 : ℚ), (466202489117/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (355096745451/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control739.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control739.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate739

namespace DiagonalRamsey.JointInheritedCertificate747
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44369173413/1000000000000 : ℚ), (135684494387/625000000 : ℚ), (-4834513149293/500000000000 : ℚ), 10⟩,
    ⟨(44793636701/1000000000000 : ℚ), (98969482019/5000000000 : ℚ), (-899327408669/1000000000000 : ℚ), 7⟩,
    ⟨(4557794259/100000000000 : ℚ), (41923090263/10000000000 : ℚ), (-19628333743/100000000000 : ℚ), 6⟩,
    ⟨(23301343809/500000000000 : ℚ), (-270570777/5000000000 : ℚ), (-494558051/500000000000 : ℚ), 5⟩,
    ⟨(47711863643/1000000000000 : ℚ), (-17865877843/10000000000 : ℚ), (16117579677/200000000000 : ℚ), 5⟩,
    ⟨(48736608671/1000000000000 : ℚ), (-3309930963/1250000000 : ℚ), (61045615327/500000000000 : ℚ), 5⟩,
    ⟨(77376429/1562500000 : ℚ), (-3879172373/1250000000 : ℚ), (144456171511/1000000000000 : ℚ), 5⟩,
    ⟨(6243172231/125000000000 : ℚ), (-33071112207/10000000000 : ℚ), (30917923219/200000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-1665847583/500000000 : ℚ), (77909070201/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (72828497853/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control747.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control747.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate747

namespace DiagonalRamsey.JointInheritedCertificate748
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22187004739/250000000000 : ℚ), (1086444588711/5000000000 : ℚ), (-604883514697/31250000000 : ℚ), 10⟩,
    ⟨(22399054107/250000000000 : ℚ), (39594368739/2000000000 : ℚ), (-1798062336789/1000000000000 : ℚ), 7⟩,
    ⟨(18232696199/200000000000 : ℚ), (5228652041/1250000000 : ℚ), (-390700028091/1000000000000 : ℚ), 6⟩,
    ⟨(18642242167/200000000000 : ℚ), (-32177583/500000000 : ℚ), (-891703/200000000000 : ℚ), 5⟩,
    ⟨(47713828821/500000000000 : ℚ), (-179510289/100000000 : ℚ), (6519810033/40000000000 : ℚ), 5⟩,
    ⟨(48737693741/500000000000 : ℚ), (-6635871093/2500000000 : ℚ), (61450230633/250000000000 : ℚ), 5⟩,
    ⟨(1980853041/20000000000 : ℚ), (-1942565157/625000000 : ℚ), (290370625999/1000000000000 : ℚ), 4⟩,
    ⟨(49945424761/500000000000 : ℚ), (-33110291441/10000000000 : ℚ), (155276611091/500000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-33355068687/10000000000 : ℚ), (78249913921/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (462515190381/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control748.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control748.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate748

namespace DiagonalRamsey.JointInheritedCertificate749
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(33339005117/250000000000 : ℚ), (137997800283/625000000 : ℚ), (-29553199550867/1000000000000 : ℚ), 10⟩,
    ⟨(1076885423/8000000000 : ℚ), (20165105121/1000000000 : ℚ), (-2750896930243/1000000000000 : ℚ), 7⟩,
    ⟨(17116122809/125000000000 : ℚ), (43029707827/10000000000 : ℚ), (-603087284843/1000000000000 : ℚ), 6⟩,
    ⟨(699789967/5000000000 : ℚ), (-90381959/10000000000 : ℚ), (-7394775823/1000000000000 : ℚ), 5⟩,
    ⟨(143236571203/1000000000000 : ℚ), (-3526673681/2000000000 : ℚ), (3760049447/15625000000 : ℚ), 5⟩,
    ⟨(146265582131/1000000000000 : ℚ), (-13161012721/5000000000 : ℚ), (22894209659/62500000000 : ℚ), 5⟩,
    ⟨(148583886729/1000000000000 : ℚ), (-15449768057/5000000000 : ℚ), (27110454927/62500000000 : ℚ), 4⟩,
    ⟨(18729818017/125000000000 : ℚ), (-8235841519/2500000000 : ℚ), (464260982771/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-8297437701/2500000000 : ℚ), (11698869001/25000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (362095420257/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control749.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control749.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate749

namespace DiagonalRamsey.JointInheritedCertificate772
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11136031249/250000000000 : ℚ), (1073609789553/5000000000 : ℚ), (-9599766694793/1000000000000 : ℚ), 11⟩,
    ⟨(22477700037/500000000000 : ℚ), (39109463433/2000000000 : ℚ), (-891257009101/1000000000000 : ℚ), 7⟩,
    ⟨(45715337329/1000000000000 : ℚ), (10287976681/2500000000 : ℚ), (-48286508617/250000000000 : ℚ), 6⟩,
    ⟨(7298163/156250000 : ℚ), (-223594973/2500000000 : ℚ), (375025299/500000000000 : ℚ), 5⟩,
    ⟨(11945739193/250000000000 : ℚ), (-18057927699/10000000000 : ℚ), (81723498607/1000000000000 : ℚ), 5⟩,
    ⟨(12193965661/250000000000 : ℚ), (-26596088989/10000000000 : ℚ), (122911710163/1000000000000 : ℚ), 5⟩,
    ⟨(24767899949/500000000000 : ℚ), (-6222589173/2000000000 : ℚ), (72553532099/500000000000 : ℚ), 5⟩,
    ⟨(1560846093/31250000000 : ℚ), (-33135227779/10000000000 : ℚ), (155165376807/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-33379268523/10000000000 : ℚ), (19548116657/125000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (14826357441/25000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control772.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control772.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate772

namespace DiagonalRamsey.JointInheritedCertificate773
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11139427719/125000000000 : ℚ), (2153177887443/10000000000 : ℚ), (-9628792280541/500000000000 : ℚ), 10⟩,
    ⟨(44967961823/500000000000 : ℚ), (196029624179/10000000000 : ℚ), (-1786453504551/1000000000000 : ℚ), 7⟩,
    ⟨(91452013457/1000000000000 : ℚ), (41221754839/10000000000 : ℚ), (-38613334027/100000000000 : ℚ), 6⟩,
    ⟨(729944377/7812500000 : ℚ), (-455775809/5000000000 : ℚ), (2542316081/1000000000000 : ℚ), 5⟩,
    ⟨(95576955029/1000000000000 : ℚ), (-9044796317/5000000000 : ℚ), (82324833201/500000000000 : ℚ), 5⟩,
    ⟨(24389455457/250000000000 : ℚ), (-26621813943/10000000000 : ℚ), (30872006383/125000000000 : ℚ), 5⟩,
    ⟨(2476847791/25000000000 : ℚ), (-15564896061/5000000000 : ℚ), (18205086197/62500000000 : ℚ), 5⟩,
    ⟨(99894413533/1000000000000 : ℚ), (-33146719879/10000000000 : ℚ), (3891812529/12500000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-33390063567/10000000000 : ℚ), (313777151557/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (235554650523/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control773.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control773.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate773

namespace DiagonalRamsey.JointInheritedCertificate774
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16716464643/125000000000 : ℚ), (8881433237037/10000000000 : ℚ), (-59462359967039/500000000000 : ℚ), 12⟩,
    ⟨(2094430519/15625000000 : ℚ), (117545277689/1250000000 : ℚ), (-12681711385097/1000000000000 : ℚ), 9⟩,
    ⟨(33663810419/250000000000 : ℚ), (307185773667/10000000000 : ℚ), (-4181334091923/1000000000000 : ℚ), 8⟩,
    ⟨(135543275679/1000000000000 : ℚ), (33406710907/2500000000 : ℚ), (-919113602931/500000000000 : ℚ), 7⟩,
    ⟨(533880971/3906250000 : ℚ), (31321875157/5000000000 : ℚ), (-436361642711/500000000000 : ℚ), 6⟩,
    ⟨(69001282691/500000000000 : ℚ), (6735978663/2500000000 : ℚ), (-191360016603/500000000000 : ℚ), 6⟩,
    ⟨(69739655979/500000000000 : ℚ), (3267343879/5000000000 : ℚ), (-12463484947/125000000000 : ℚ), 5⟩,
    ⟨(70523508881/500000000000 : ℚ), (-3101460797/5000000000 : ℚ), (4929700493/62500000000 : ℚ), 5⟩,
    ⟨(142645436737/1000000000000 : ℚ), (-7336307383/5000000000 : ℚ), (19897166291/100000000000 : ℚ), 5⟩,
    ⟨(144213142541/1000000000000 : ℚ), (-10284997037/5000000000 : ℚ), (11341358189/40000000000 : ℚ), 5⟩,
    ⟨(145689889117/1000000000000 : ℚ), (-12403238941/5000000000 : ℚ), (68986003407/200000000000 : ℚ), 5⟩,
    ⟨(147018925923/1000000000000 : ℚ), (-2789747139/1000000000 : ℚ), (195080922371/500000000000 : ℚ), 5⟩,
    ⟨(7407458941/50000000000 : ℚ), (-1507142727/500000000 : ℚ), (105824322221/250000000000 : ℚ), 5⟩,
    ⟨(149037212823/1000000000000 : ℚ), (-31718235111/10000000000 : ℚ), (446705286851/1000000000000 : ℚ), 5⟩,
    ⟨(149648901283/1000000000000 : ℚ), (-32724464461/10000000000 : ℚ), (461732324033/1000000000000 : ℚ), 4⟩,
    ⟨(37490184339/250000000000 : ℚ), (-16607909739/5000000000 : ℚ), (469093023161/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16638360889/5000000000 : ℚ), (11750160951/25000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (184559545727/500000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control774.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control774.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate774

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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate794
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(89479296809/1000000000000 : ℚ), (532582080511/2500000000 : ℚ), (-4782125925247/250000000000 : ℚ), 11⟩,
    ⟨(22568092263/250000000000 : ℚ), (193743727903/10000000000 : ℚ), (-885730514671/500000000000 : ℚ), 8⟩,
    ⟨(91737775479/1000000000000 : ℚ), (5061694499/1250000000 : ℚ), (-2377126793/6250000000 : ℚ), 6⟩,
    ⟨(18730484249/200000000000 : ℚ), (-1239619571/10000000000 : ℚ), (5725938871/1000000000000 : ℚ), 5⟩,
    ⟨(11965602361/125000000000 : ℚ), (-3652813219/2000000000 : ℚ), (20838058881/125000000000 : ℚ), 5⟩,
    ⟨(48819732327/500000000000 : ℚ), (-13362348011/5000000000 : ℚ), (124219733559/500000000000 : ℚ), 5⟩,
    ⟨(99104871081/1000000000000 : ℚ), (-6239508931/2000000000 : ℚ), (146212628359/500000000000 : ℚ), 5⟩,
    ⟨(24974485831/250000000000 : ℚ), (-518747547/156250000 : ℚ), (312346864351/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-33441484097/10000000000 : ℚ), (314762039363/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (59965500521/125000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control794.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control794.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate794

namespace DiagonalRamsey.JointInheritedCertificate795
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(26877602491/200000000000 : ℚ), (269568748473/1250000000 : ℚ), (-29080904081841/1000000000000 : ℚ), 11⟩,
    ⟨(135564876183/1000000000000 : ℚ), (39290863243/2000000000 : ℚ), (-2696581973411/1000000000000 : ℚ), 7⟩,
    ⟨(68869718403/500000000000 : ℚ), (66165269/16000000 : ℚ), (-582400631071/1000000000000 : ℚ), 6⟩,
    ⟨(140580637181/1000000000000 : ℚ), (-171531333/2000000000 : ℚ), (3835588191/1000000000000 : ℚ), 5⟩,
    ⟨(71827965153/500000000000 : ℚ), (-3610254699/2000000000 : ℚ), (247852385389/1000000000000 : ℚ), 5⟩,
    ⟨(146497130681/1000000000000 : ℚ), (-26577784103/10000000000 : ℚ), (371455610709/1000000000000 : ℚ), 5⟩,
    ⟨(18583961413/125000000000 : ℚ), (-15538128701/5000000000 : ℚ), (437824144831/1000000000000 : ℚ), 5⟩,
    ⟨(18731069379/125000000000 : ℚ), (-16543670563/5000000000 : ℚ), (467839288589/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6665984487/2000000000 : ℚ), (117869041779/250000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (94037295239/250000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control795.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control795.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate795

namespace DiagonalRamsey.JointInheritedCertificate802
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2805621571/62500000000 : ℚ), (418038889007/2000000000 : ℚ), (-2353707030451/250000000000 : ℚ), 11⟩,
    ⟨(45275151581/1000000000000 : ℚ), (94857844891/5000000000 : ℚ), (-217486602637/250000000000 : ℚ), 8⟩,
    ⟨(45986920281/1000000000000 : ℚ), (39240489069/10000000000 : ℚ), (-92498523761/500000000000 : ℚ), 6⟩,
    ⟨(9383378181/200000000000 : ℚ), (-356959957/2000000000 : ℚ), (1040268127/200000000000 : ℚ), 6⟩,
    ⟨(9584696771/200000000000 : ℚ), (-18552038057/10000000000 : ℚ), (84605234131/1000000000000 : ℚ), 5⟩,
    ⟨(24426727239/500000000000 : ℚ), (-13452232407/5000000000 : ℚ), (62495362383/500000000000 : ℚ), 5⟩,
    ⟨(49565223179/1000000000000 : ℚ), (-15665012103/5000000000 : ℚ), (146761648753/1000000000000 : ℚ), 5⟩,
    ⟨(6243803703/125000000000 : ℚ), (-8328560781/2500000000 : ℚ), (156633955093/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-6710770103/2000000000 : ℚ), (78915698417/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (76742693367/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control802.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control802.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate802

namespace DiagonalRamsey.JointInheritedCertificate803
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(89840288729/1000000000000 : ℚ), (526048260057/2500000000 : ℚ), (-9483763144997/500000000000 : ℚ), 11⟩,
    ⟨(90606148659/1000000000000 : ℚ), (47774423911/2500000000 : ℚ), (-1752917646917/1000000000000 : ℚ), 8⟩,
    ⟨(92021273287/1000000000000 : ℚ), (39638666457/10000000000 : ℚ), (-186630317899/500000000000 : ℚ), 6⟩,
    ⟨(93870222717/1000000000000 : ℚ), (-815394321/5000000000 : ℚ), (9577030853/1000000000000 : ℚ), 6⟩,
    ⟨(47935755579/500000000000 : ℚ), (-18476265993/10000000000 : ℚ), (42294510167/250000000000 : ℚ), 5⟩,
    ⟨(24430115147/250000000000 : ℚ), (-13426668611/5000000000 : ℚ), (125101721539/500000000000 : ℚ), 5⟩,
    ⟨(1548993519/15625000000 : ℚ), (-15642593911/5000000000 : ℚ), (58762269607/200000000000 : ℚ), 5⟩,
    ⟨(49950722573/500000000000 : ℚ), (-6654081831/2000000000 : ℚ), (39195813163/125000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-2094378877/625000000 : ℚ), (157980925223/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (15261220943/31250000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control803.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control803.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate803

namespace DiagonalRamsey.JointInheritedCertificate804
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134921942439/1000000000000 : ℚ), (133106823719/625000000 : ℚ), (-28829279946557/1000000000000 : ℚ), 11⟩,
    ⟨(136058557427/1000000000000 : ℚ), (193736148161/10000000000 : ℚ), (-533549524997/200000000000 : ℚ), 8⟩,
    ⟨(5526349923/40000000000 : ℚ), (40476008517/10000000000 : ℚ), (-571482467307/1000000000000 : ℚ), 6⟩,
    ⟨(28180555879/200000000000 : ℚ), (-314624841/2500000000 : ℚ), (9724181379/1000000000000 : ℚ), 6⟩,
    ⟨(71936448747/500000000000 : ℚ), (-9134368487/5000000000 : ℚ), (251608554869/1000000000000 : ℚ), 5⟩,
    ⟨(73308464407/500000000000 : ℚ), (-5342008053/2000000000 : ℚ), (374122125429/1000000000000 : ℚ), 5⟩,
    ⟨(74358559731/500000000000 : ℚ), (-31166919107/10000000000 : ℚ), (439914614391/1000000000000 : ℚ), 5⟩,
    ⟨(2997074689/20000000000 : ℚ), (-1658037027/500000000 : ℚ), (469677254479/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-33401315009/10000000000 : ℚ), (47328410809/100000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (47900686453/125000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control804.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control804.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate804

namespace DiagonalRamsey.JointInheritedCertificate816
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9020042747/200000000000 : ℚ), (2075130979279/10000000000 : ℚ), (-4694742932179/500000000000 : ℚ), 11⟩,
    ⟨(45469569701/1000000000000 : ℚ), (94147340379/5000000000 : ℚ), (-108353116411/125000000000 : ℚ), 8⟩,
    ⟨(23076025267/500000000000 : ℚ), (38825057649/10000000000 : ℚ), (-36739300957/200000000000 : ℚ), 7⟩,
    ⟨(9408750943/200000000000 : ℚ), (-975089063/5000000000 : ℚ), (5953278237/1000000000000 : ℚ), 6⟩,
    ⟨(24004464183/500000000000 : ℚ), (-3724648363/2000000000 : ℚ), (85092599969/1000000000000 : ℚ), 5⟩,
    ⟨(48900632547/1000000000000 : ℚ), (-26931611527/10000000000 : ℚ), (12532143283/100000000000 : ℚ), 5⟩,
    ⟨(49583113381/1000000000000 : ℚ), (-31335196927/10000000000 : ℚ), (146998878451/1000000000000 : ℚ), 5⟩,
    ⟨(24976234673/500000000000 : ℚ), (-8327535211/2500000000 : ℚ), (156827037481/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-33548663371/10000000000 : ℚ), (158019081979/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (624384144573/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control816.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control816.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate816

namespace DiagonalRamsey.JointInheritedCertificate817
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22549771387/250000000000 : ℚ), (129663068639/625000000 : ℚ), (-18772995963303/1000000000000 : ℚ), 11⟩,
    ⟨(22734474659/250000000000 : ℚ), (188073377329/10000000000 : ℚ), (-865319685467/500000000000 : ℚ), 8⟩,
    ⟨(5768940451/62500000000 : ℚ), (38650548117/10000000000 : ℚ), (-364828335227/1000000000000 : ℚ), 6⟩,
    ⟨(94086699793/1000000000000 : ℚ), (-208837039/1000000000 : ℚ), (7064503157/500000000000 : ℚ), 6⟩,
    ⟨(9601731143/100000000000 : ℚ), (-936408023/500000000 : ℚ), (21511285667/125000000000 : ℚ), 5⟩,
    ⟨(97800964007/1000000000000 : ℚ), (-27009031743/10000000000 : ℚ), (63070287641/250000000000 : ℚ), 5⟩,
    ⟨(99166112587/1000000000000 : ℚ), (-1569683159/500000000 : ℚ), (295449305277/1000000000000 : ℚ), 5⟩,
    ⟨(3996197027/40000000000 : ℚ), (-667184111/200000000 : ℚ), (157506017891/500000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-8399141557/2500000000 : ℚ), (79346127917/250000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (248507138377/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control817.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control817.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate817

namespace DiagonalRamsey.JointInheritedCertificate818
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(33862982319/250000000000 : ℚ), (1049629829813/5000000000 : ℚ), (-28524921272007/1000000000000 : ℚ), 11⟩,
    ⟨(136548592767/1000000000000 : ℚ), (190621888717/10000000000 : ℚ), (-164565209719/62500000000 : ℚ), 8⟩,
    ⟨(138574962673/1000000000000 : ℚ), (19729526913/5000000000 : ℚ), (-558438434419/1000000000000 : ℚ), 6⟩,
    ⟨(28244508509/200000000000 : ℚ), (-1729089563/10000000000 : ℚ), (16714399617/1000000000000 : ℚ), 6⟩,
    ⟨(144088262349/1000000000000 : ℚ), (-2315998213/1250000000 : ℚ), (125026563/488281250 : ℚ), 5⟩,
    ⟨(146735842221/1000000000000 : ℚ), (-13435427039/5000000000 : ℚ), (18864106037/50000000000 : ℚ), 5⟩,
    ⟨(148762212127/1000000000000 : ℚ), (-15639815877/5000000000 : ℚ), (442401486191/1000000000000 : ℚ), 5⟩,
    ⟨(149858875617/1000000000000 : ℚ), (-8313367723/2500000000 : ℚ), (47187088741/100000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-16745860413/5000000000 : ℚ), (9508859029/20000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (390287764529/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control818.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control818.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate818

namespace DiagonalRamsey.JointInheritedCertificate821
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22642108783/500000000000 : ℚ), (408906547829/2000000000 : ℚ), (-9287486277559/1000000000000 : ℚ), 11⟩,
    ⟨(1426240717/31250000000 : ℚ), (92578566371/5000000000 : ℚ), (-85512915817/100000000000 : ℚ), 8⟩,
    ⟨(23148277137/500000000000 : ℚ), (18898107097/5000000000 : ℚ), (-35852043159/200000000000 : ℚ), 7⟩,
    ⟨(5894346487/125000000000 : ℚ), (-607021783/2500000000 : ℚ), (8354318557/1000000000000 : ℚ), 6⟩,
    ⟨(12020924989/250000000000 : ℚ), (-18886776877/10000000000 : ℚ), (86632852097/1000000000000 : ℚ), 5⟩,
    ⟨(48941917577/1000000000000 : ℚ), (-6773618157/2500000000 : ℚ), (12642298327/100000000000 : ℚ), 5⟩,
    ⟨(12399692227/250000000000 : ℚ), (-31448445827/10000000000 : ℚ), (29573773377/200000000000 : ℚ), 5⟩,
    ⟨(24977127143/500000000000 : ℚ), (-835066227/250000000 : ℚ), (157595545241/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-8409688097/2500000000 : ℚ), (158775520537/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (634850670171/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control821.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control821.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate821

namespace DiagonalRamsey.JointInheritedCertificate822
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(45278216533/500000000000 : ℚ), (1020697794823/5000000000 : ℚ), (-9271539511459/500000000000 : ℚ), 11⟩,
    ⟨(91268308563/1000000000000 : ℚ), (92325333887/5000000000 : ℚ), (-426105713049/250000000000 : ℚ), 8⟩,
    ⟨(46291841483/500000000000 : ℚ), (9380496823/2500000000 : ℚ), (-354970607249/1000000000000 : ℚ), 7⟩,
    ⟨(47151151223/500000000000 : ℚ), (-1307998709/5000000000 : ℚ), (1213656129/62500000000 : ℚ), 6⟩,
    ⟨(48081261383/500000000000 : ℚ), (-9510945583/5000000000 : ℚ), (175462870303/1000000000000 : ℚ), 5⟩,
    ⟨(19576228449/200000000000 : ℚ), (-13596586377/5000000000 : ℚ), (254686774679/1000000000000 : ℚ), 5⟩,
    ⟨(12399564581/125000000000 : ℚ), (-15761985779/5000000000 : ℚ), (59469879671/200000000000 : ℚ), 5⟩,
    ⟨(19981678429/200000000000 : ℚ), (-33467060999/10000000000 : ℚ), (316692007291/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-8425451251/2500000000 : ℚ), (79759592427/250000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (505689408499/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control822.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control822.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate822

namespace DiagonalRamsey.JointInheritedCertificate823
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27195812751/200000000000 : ℚ), (2065010585069/10000000000 : ℚ), (-28164926521407/1000000000000 : ℚ), 11⟩,
    ⟨(34258997691/250000000000 : ℚ), (23386291721/1250000000 : ℚ), (-2592147450701/1000000000000 : ℚ), 8⟩,
    ⟨(138988937227/1000000000000 : ℚ), (7658964527/2000000000 : ℚ), (-4243385991/7812500000 : ℚ), 7⟩,
    ⟨(35385146187/250000000000 : ℚ), (-1136629569/5000000000 : ℚ), (12432105757/500000000000 : ℚ), 6⟩,
    ⟨(72151234061/500000000000 : ℚ), (-9415641159/5000000000 : ℚ), (16326515817/62500000000 : ℚ), 5⟩,
    ⟨(146854115643/1000000000000 : ℚ), (-27061701887/10000000000 : ℚ), (190479067023/500000000000 : ℚ), 5⟩,
    ⟨(74403531053/500000000000 : ℚ), (-31415460349/10000000000 : ℚ), (445301138531/1000000000000 : ℚ), 5⟩,
    ⟨(29972797823/200000000000 : ℚ), (-8341604277/2500000000 : ℚ), (7413029173/15625000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-33602003371/10000000000 : ℚ), (477966055273/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (79479149729/200000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control823.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control823.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate823

namespace DiagonalRamsey.JointInheritedCertificate829
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11370473763/250000000000 : ℚ), (2017219859611/10000000000 : ℚ), (-4601060757357/500000000000 : ℚ), 11⟩,
    ⟨(22911239547/500000000000 : ℚ), (91193868313/5000000000 : ℚ), (-845308395389/1000000000000 : ℚ), 8⟩,
    ⟨(46451796347/1000000000000 : ℚ), (36902502711/10000000000 : ℚ), (-87760034651/500000000000 : ℚ), 7⟩,
    ⟨(47274038963/1000000000000 : ℚ), (-1417250507/5000000000 : ℚ), (10381100409/1000000000000 : ℚ), 6⟩,
    ⟨(12041006989/250000000000 : ℚ), (-19104225727/10000000000 : ℚ), (87927345789/1000000000000 : ℚ), 6⟩,
    ⟨(12246567643/250000000000 : ℚ), (-5444627703/2000000000 : ℚ), (127338867187/1000000000000 : ℚ), 5⟩,
    ⟨(1984623513/40000000000 : ℚ), (-1576661351/500000000 : ℚ), (148582053803/1000000000000 : ℚ), 5⟩,
    ⟨(12489042967/250000000000 : ℚ), (-8367257907/2500000000 : ℚ), (158219000369/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-16851493171/5000000000 : ℚ), (79694130053/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (322661337531/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control829.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control829.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate829

namespace DiagonalRamsey.JointInheritedCertificate830
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11369904697/125000000000 : ℚ), (251985931619/1250000000 : ℚ), (-9195141308319/500000000000 : ℚ), 11⟩,
    ⟨(2291018721/25000000000 : ℚ), (182086630289/10000000000 : ℚ), (-1686873967229/1000000000000 : ℚ), 8⟩,
    ⟨(46450008729/500000000000 : ℚ), (18352591887/5000000000 : ℚ), (-87077857411/250000000000 : ℚ), 7⟩,
    ⟨(23636332799/250000000000 : ℚ), (-745327977/2500000000 : ℚ), (1150251471/50000000000 : ℚ), 6⟩,
    ⟨(96326205953/1000000000000 : ℚ), (-19213138127/10000000000 : ℚ), (88866067431/500000000000 : ℚ), 6⟩,
    ⟨(97971519691/1000000000000 : ℚ), (-273030097/100000000 : ℚ), (128135957169/500000000000 : ℚ), 5⟩,
    ⟨(24807697077/250000000000 : ℚ), (-7898420513/2500000000 : ℚ), (298566557123/1000000000000 : ℚ), 5⟩,
    ⟨(99912299573/1000000000000 : ℚ), (-16759987553/5000000000 : ℚ), (317745703943/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-4219094861/1250000000 : ℚ), (12802900749/40000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (128591667829/250000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control830.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control830.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate830

namespace DiagonalRamsey.JointInheritedCertificate831
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136549039393/1000000000000 : ℚ), (2034311790409/10000000000 : ℚ), (-27858714586039/1000000000000 : ℚ), 11⟩,
    ⟨(68781500233/500000000000 : ℚ), (183957282401/10000000000 : ℚ), (-2557328226679/1000000000000 : ℚ), 8⟩,
    ⟨(17429569529/125000000000 : ℚ), (37277216713/10000000000 : ℚ), (-265066404023/500000000000 : ℚ), 7⟩,
    ⟨(17735559351/125000000000 : ℚ), (-1369859957/5000000000 : ℚ), (31792599883/1000000000000 : ℚ), 6⟩,
    ⟨(144534082781/1000000000000 : ℚ), (-2385561811/1250000000 : ℚ), (265590806231/1000000000000 : ℚ), 6⟩,
    ⟨(146982001357/1000000000000 : ℚ), (-13607731421/5000000000 : ℚ), (384027534191/1000000000000 : ℚ), 5⟩,
    ⟨(74427778561/500000000000 : ℚ), (-7880123861/2500000000 : ℚ), (447689217811/1000000000000 : ℚ), 5⟩,
    ⟨(37467379549/250000000000 : ℚ), (-33451152009/10000000000 : ℚ), (95304823637/200000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-16842186671/5000000000 : ℚ), (1200052283/2500000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (404514489343/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control831.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control831.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate831

namespace DiagonalRamsey.JointInheritedCertificate838
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9139072131/200000000000 : ℚ), (498588805613/2500000000 : ℚ), (-9139221297871/1000000000000 : ℚ), 11⟩,
    ⟨(46019853221/1000000000000 : ℚ), (18011624761/1000000000 : ℚ), (-838015897723/1000000000000 : ℚ), 8⟩,
    ⟨(46619437303/1000000000000 : ℚ), (4523884901/1250000000 : ℚ), (-86357731647/500000000000 : ℚ), 7⟩,
    ⟨(47402831659/1000000000000 : ℚ), (-3144922869/10000000000 : ℚ), (2381551511/200000000000 : ℚ), 6⟩,
    ⟨(48250771599/1000000000000 : ℚ), (-4815062497/2500000000 : ℚ), (8889610689/100000000000 : ℚ), 6⟩,
    ⟨(24517082977/500000000000 : ℚ), (-27306654899/10000000000 : ℚ), (25602215901/200000000000 : ℚ), 6⟩,
    ⟨(12408437509/250000000000 : ℚ), (-31580761411/10000000000 : ℚ), (74545664761/500000000000 : ℚ), 5⟩,
    ⟨(49958242603/1000000000000 : ℚ), (-33501422227/10000000000 : ℚ), (79327430457/500000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-16866802849/5000000000 : ℚ), (19976911553/125000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (10246875813/15625000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control838.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control838.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate838

namespace DiagonalRamsey.JointInheritedCertificate839
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9135990967/100000000000 : ℚ), (993094636693/5000000000 : ℚ), (-18196607711417/1000000000000 : ℚ), 11⟩,
    ⟨(11501402181/125000000000 : ℚ), (44765697237/2500000000 : ℚ), (-1664774701689/1000000000000 : ℚ), 8⟩,
    ⟨(932146773/10000000000 : ℚ), (35726343913/10000000000 : ℚ), (-340004318377/1000000000000 : ℚ), 7⟩,
    ⟨(94787073371/1000000000000 : ℚ), (-214214279/625000000 : ℚ), (27445252351/1000000000000 : ℚ), 6⟩,
    ⟨(48244511307/500000000000 : ℚ), (-19452663989/10000000000 : ℚ), (180535372957/1000000000000 : ℚ), 6⟩,
    ⟨(49030709343/500000000000 : ℚ), (-13722854771/5000000000 : ℚ), (258238503591/1000000000000 : ℚ), 5⟩,
    ⟨(99264878537/1000000000000 : ℚ), (-15844326349/5000000000 : ℚ), (37511190557/125000000000 : ℚ), 5⟩,
    ⟨(19983237263/200000000000 : ℚ), (-16797481947/5000000000 : ℚ), (2552587221/8000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16912707499/5000000000 : ℚ), (160688472889/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (523065619889/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control839.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control839.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate839

namespace DiagonalRamsey.JointInheritedCertificate854
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22967047693/500000000000 : ℚ), (1981363352681/10000000000 : ℚ), (-4562911179067/500000000000 : ℚ), 12⟩,
    ⟨(46240591637/1000000000000 : ℚ), (178945703673/10000000000 : ℚ), (-836280151527/1000000000000 : ℚ), 8⟩,
    ⟨(9361384573/200000000000 : ℚ), (35879755263/10000000000 : ℚ), (-171956229311/1000000000000 : ℚ), 7⟩,
    ⟨(47546870273/1000000000000 : ℚ), (-3246942343/10000000000 : ℚ), (12349869587/1000000000000 : ℚ), 6⟩,
    ⟨(1933911343/40000000000 : ℚ), (-19284813079/10000000000 : ℚ), (89166274523/1000000000000 : ℚ), 6⟩,
    ⟨(49087730983/1000000000000 : ℚ), (-1091804757/400000000 : ℚ), (64083724577/500000000000 : ℚ), 6⟩,
    ⟨(49654062211/1000000000000 : ℚ), (-31551061711/10000000000 : ℚ), (37293537357/250000000000 : ℚ), 6⟩,
    ⟨(24980279231/500000000000 : ℚ), (-33463973451/10000000000 : ℚ), (158701293693/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-4211905759/1250000000 : ℚ), (1598571997/10000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (83285002991/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control854.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control854.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate854

namespace DiagonalRamsey.JointInheritedCertificate855
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(91759383943/1000000000000 : ℚ), (487992544953/2500000000 : ℚ), (-718348794091/40000000000 : ℚ), 11⟩,
    ⟨(92380578529/1000000000000 : ℚ), (35108477119/2000000000 : ℚ), (-409438575411/250000000000 : ℚ), 8⟩,
    ⟨(11691049557/125000000000 : ℚ), (1728613277/500000000 : ℚ), (-329915741503/1000000000000 : ℚ), 7⟩,
    ⟨(95028092851/1000000000000 : ℚ), (-990258201/2500000000 : ℚ), (32807210383/1000000000000 : ℚ), 6⟩,
    ⟨(96651352531/1000000000000 : ℚ), (-2468058221/1250000000 : ℚ), (91956847141/500000000000 : ℚ), 6⟩,
    ⟨(3926041957/40000000000 : ℚ), (-27623936659/10000000000 : ℚ), (8144198073/31250000000 : ℚ), 6⟩,
    ⟨(24824716713/250000000000 : ℚ), (-15905429057/5000000000 : ℚ), (301939210097/1000000000000 : ℚ), 5⟩,
    ⟨(49960030719/500000000000 : ℚ), (-16846851063/5000000000 : ℚ), (160346508509/500000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-33921412489/10000000000 : ℚ), (40371151063/125000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (531786063291/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control855.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control855.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate855

namespace DiagonalRamsey.JointInheritedCertificate861
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46119430977/1000000000000 : ℚ), (193502075877/1000000000 : ℚ), (-4473498162713/500000000000 : ℚ), 12⟩,
    ⟨(46411956251/1000000000000 : ℚ), (87040034381/5000000000 : ℚ), (-816033223969/1000000000000 : ℚ), 9⟩,
    ⟨(46952472477/1000000000000 : ℚ), (17120962023/5000000000 : ℚ), (-164424688051/1000000000000 : ℚ), 7⟩,
    ⟨(595733637/12500000000 : ℚ), (-125882263/312500000 : ℚ), (4087969087/250000000000 : ℚ), 7⟩,
    ⟨(24211548169/500000000000 : ℚ), (-19729076641/10000000000 : ℚ), (18340929407/200000000000 : ℚ), 6⟩,
    ⟨(49129314821/1000000000000 : ℚ), (-27580330077/10000000000 : ℚ), (32494601057/250000000000 : ℚ), 6⟩,
    ⟨(49669831047/1000000000000 : ℚ), (-31757724283/10000000000 : ℚ), (75304821359/500000000000 : ℚ), 6⟩,
    ⟨(49962356321/1000000000000 : ℚ), (-33637720097/10000000000 : ℚ), (159974531819/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-423314341/125000000 : ℚ), (161111238737/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (676793855509/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control861.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control861.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate861

namespace DiagonalRamsey.JointInheritedCertificate862
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46100722691/500000000000 : ℚ), (962262428723/5000000000 : ℚ), (-17788943962533/1000000000000 : ℚ), 12⟩,
    ⟨(23197329117/250000000000 : ℚ), (172779398349/10000000000 : ℚ), (-1618396470879/1000000000000 : ℚ), 9⟩,
    ⟨(18775112119/200000000000 : ℚ), (33694813547/10000000000 : ℚ), (-64531770389/200000000000 : ℚ), 7⟩,
    ⟨(95294806943/1000000000000 : ℚ), (-1087399139/2500000000 : ℚ), (18329947299/500000000000 : ℚ), 6⟩,
    ⟨(2420774703/25000000000 : ℚ), (-1246504459/625000000 : ℚ), (363894669/1953125000 : ℚ), 6⟩,
    ⟨(98250234467/1000000000000 : ℚ), (-6933740023/2500000000 : ℚ), (131131787973/500000000000 : ℚ), 6⟩,
    ⟨(19867295719/200000000000 : ℚ), (-31878062711/10000000000 : ℚ), (151592440423/500000000000 : ℚ), 6⟩,
    ⟨(1249054371/12500000000 : ℚ), (-6748497651/2000000000 : ℚ), (40219900327/125000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-8492011081/2500000000 : ℚ), (32401390827/100000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (54051349437/100000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control862.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control862.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate862

namespace DiagonalRamsey.JointInheritedCertificate869
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(362117203/7812500000 : ℚ), (59659997441/312500000 : ℚ), (-2217559691513/250000000000 : ℚ), 12⟩,
    ⟨(46626070959/1000000000000 : ℚ), (171488768829/10000000000 : ℚ), (-807231299031/1000000000000 : ℚ), 9⟩,
    ⟨(47134332151/1000000000000 : ℚ), (33427116107/10000000000 : ℚ), (-40274260169/250000000000 : ℚ), 7⟩,
    ⟨(47798407401/1000000000000 : ℚ), (-1095821723/2500000000 : ℚ), (18131358289/1000000000000 : ℚ), 7⟩,
    ⟨(6064649659/125000000000 : ℚ), (-19906278647/10000000000 : ℚ), (9281655601/100000000000 : ℚ), 6⟩,
    ⟨(49181272521/1000000000000 : ℚ), (-13836899481/5000000000 : ℚ), (130740160369/1000000000000 : ℚ), 6⟩,
    ⟨(49689533713/1000000000000 : ℚ), (-31809533477/10000000000 : ℚ), (151180771521/1000000000000 : ℚ), 6⟩,
    ⟨(780696917/15625000000 : ℚ), (-16835969443/5000000000 : ℚ), (160460113417/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-33897304801/10000000000 : ℚ), (161586543259/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (343651461891/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control869.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control869.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate869

namespace DiagonalRamsey.JointInheritedCertificate870
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46300343147/500000000000 : ℚ), (376003602547/2000000000 : ℚ), (-8725086143399/500000000000 : ℚ), 12⟩,
    ⟨(93158461779/1000000000000 : ℚ), (42031998621/2500000000 : ℚ), (-1580148042799/1000000000000 : ℚ), 9⟩,
    ⟨(47094548243/500000000000 : ℚ), (32141046303/10000000000 : ℚ), (-308507393671/1000000000000 : ℚ), 7⟩,
    ⟨(47767842813/500000000000 : ℚ), (-101659267/200000000 : ℚ), (8824279599/200000000000 : ℚ), 7⟩,
    ⟨(96993223207/1000000000000 : ℚ), (-10177611821/5000000000 : ℚ), (190998979861/1000000000000 : ℚ), 6⟩,
    ⟨(98339812347/1000000000000 : ℚ), (-3499268969/1250000000 : ℚ), (265565561333/1000000000000 : ℚ), 6⟩,
    ⟨(19874089411/200000000000 : ℚ), (-32062148727/10000000000 : ℚ), (305770721317/1000000000000 : ℚ), 6⟩,
    ⟨(99928222539/1000000000000 : ℚ), (-10846419/3200000 : ℚ), (324034604219/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-8529232779/2500000000 : ℚ), (65250504727/200000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (549277468453/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control870.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control870.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate870

namespace DiagonalRamsey.JointInheritedCertificate876
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46626587877/1000000000000 : ℚ), (1904871270849/10000000000 : ℚ), (-1780359878719/200000000000 : ℚ), 12⟩,
    ⟨(46880882621/1000000000000 : ℚ), (171310042299/10000000000 : ℚ), (-810573438267/1000000000000 : ℚ), 9⟩,
    ⟨(23675379019/500000000000 : ℚ), (16743731491/5000000000 : ℚ), (-5069603531/31250000000 : ℚ), 8⟩,
    ⟨(47964679857/1000000000000 : ℚ), (-4284038009/10000000000 : ℚ), (17557948607/1000000000000 : ℚ), 7⟩,
    ⟨(9725836809/200000000000 : ℚ), (-4949620827/2500000000 : ℚ), (23105798867/250000000000 : ℚ), 7⟩,
    ⟨(6155388233/125000000000 : ℚ), (-27562747501/10000000000 : ℚ), (1043199209/8000000000 : ℚ), 6⟩,
    ⟨(49712981281/1000000000000 : ℚ), (-3962056073/1250000000 : ℚ), (37712107753/250000000000 : ℚ), 6⟩,
    ⟨(1998691041/40000000000 : ℚ), (-335577993/100000000 : ℚ), (160124984889/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-3378303273/1000000000 : ℚ), (20156347839/125000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (697811008839/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control876.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control876.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate876

namespace DiagonalRamsey.JointInheritedCertificate877
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(93083228179/1000000000000 : ℚ), (185322005629/1000000000 : ℚ), (-4322122853887/250000000000 : ℚ), 12⟩,
    ⟨(11700578583/125000000000 : ℚ), (10340616127/625000000 : ℚ), (-1561770399979/1000000000000 : ℚ), 9⟩,
    ⟨(1477625799/15625000000 : ℚ), (78257731/25000000 : ℚ), (-301661082907/1000000000000 : ℚ), 8⟩,
    ⟨(47913411629/500000000000 : ℚ), (-5444734413/10000000000 : ℚ), (47719614353/1000000000000 : ℚ), 7⟩,
    ⟨(19437861677/200000000000 : ℚ), (-20533215417/10000000000 : ℚ), (193206456887/1000000000000 : ℚ), 6⟩,
    ⟨(98448080507/1000000000000 : ℚ), (-14042956513/5000000000 : ℚ), (133524446297/500000000000 : ℚ), 6⟩,
    ⟨(99411502979/1000000000000 : ℚ), (-8027775347/2500000000 : ℚ), (306861626259/1000000000000 : ℚ), 6⟩,
    ⟨(12491612933/125000000000 : ℚ), (-33925942919/10000000000 : ℚ), (5077338699/15625000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-34145696809/10000000000 : ℚ), (327146476811/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (558038124927/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control877.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control877.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate877

namespace DiagonalRamsey.JointInheritedCertificate882
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4686059233/100000000000 : ℚ), (934985065153/5000000000 : ℚ), (-1756237088717/200000000000 : ℚ), 12⟩,
    ⟨(5887155917/125000000000 : ℚ), (41933538821/2500000000 : ℚ), (-31875728439/40000000000 : ℚ), 9⟩,
    ⟨(4753452877/100000000000 : ℚ), (32327930163/10000000000 : ℚ), (-78567764201/500000000000 : ℚ), 8⟩,
    ⟨(48105864497/1000000000000 : ℚ), (-2404610427/5000000000 : ℚ), (20249227367/1000000000000 : ℚ), 7⟩,
    ⟨(48724273831/1000000000000 : ℚ), (-1003792747/500000000 : ℚ), (47051749667/500000000000 : ℚ), 7⟩,
    ⟨(24647804779/500000000000 : ℚ), (-27723159539/10000000000 : ℚ), (65782935841/500000000000 : ℚ), 7⟩,
    ⟨(3108305687/62500000000 : ℚ), (-15899380953/5000000000 : ℚ), (30348411923/200000000000 : ℚ), 6⟩,
    ⟨(24984772999/500000000000 : ℚ), (-16817805931/5000000000 : ℚ), (160898577083/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-16928987369/5000000000 : ℚ), (162010052137/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (708347972427/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control882.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control882.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate882

namespace DiagonalRamsey.JointInheritedCertificate887
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19012312493/500000000000 : ℚ), (11903200514549/10000000000 : ℚ), (-45412874567337/1000000000000 : ℚ), 9⟩,
    ⟨(9563543279/250000000000 : ℚ), (628880485709/5000000000 : ℚ), (-4888931344871/1000000000000 : ℚ), 6⟩,
    ⟨(38704447971/1000000000000 : ℚ), (206753967239/5000000000 : ℚ), (-411629206831/250000000000 : ℚ), 4⟩,
    ⟨(1967907287/50000000000 : ℚ), (46012999459/2500000000 : ℚ), (-2939644267/3906250000 : ℚ), 4⟩,
    ⟨(8038029037/200000000000 : ℚ), (22804013283/2500000000 : ℚ), (-383921035381/1000000000000 : ℚ), 3⟩,
    ⟨(41168473033/1000000000000 : ℚ), (140889807/31250000 : ℚ), (-39308729953/200000000000 : ℚ), 3⟩,
    ⟨(21127766347/500000000000 : ℚ), (237901433/125000000 : ℚ), (-22003550011/250000000000 : ℚ), 2⟩,
    ⟨(1736381963/40000000000 : ℚ), (2959473373/10000000000 : ℚ), (-19245741211/1000000000000 : ℚ), 2⟩,
    ⟨(44586173973/1000000000000 : ℚ), (-761479067/1000000000 : ℚ), (1702390193/62500000000 : ℚ), 2⟩,
    ⟨(9148038071/200000000000 : ℚ), (-3726179949/2500000000 : ℚ), (2936519/48828125 : ℚ), 2⟩,
    ⟨(1463351563/31250000000 : ℚ), (-5022592253/2500000000 : ℚ), (84129373101/1000000000000 : ℚ), 2⟩,
    ⟨(5975697233/125000000000 : ℚ), (-11917797411/5000000000 : ℚ), (25461142477/250000000000 : ℚ), 2⟩,
    ⟨(48637577309/1000000000000 : ℚ), (-26527817191/10000000000 : ℚ), (114824196997/1000000000000 : ℚ), 2⟩,
    ⟨(24645637539/500000000000 : ℚ), (-28397607589/10000000000 : ℚ), (123978471873/1000000000000 : ℚ), 1⟩,
    ⟨(12435387483/250000000000 : ℚ), (-7395395393/2500000000 : ℚ), (64920396789/500000000000 : ℚ), 1⟩,
    ⟨(49971098063/1000000000000 : ℚ), (-15078173579/5000000000 : ℚ), (132706328141/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-6045484199/2000000000 : ℚ), (133061594551/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (87499/1000000 : ℚ)
  x := (65169549129/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control887.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control887.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate887

namespace DiagonalRamsey.JointInheritedCertificate889
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23549184209/500000000000 : ℚ), (914925130463/5000000000 : ℚ), (-215875032127/25000000000 : ℚ), 13⟩,
    ⟨(23658549687/500000000000 : ℚ), (163585899439/10000000000 : ℚ), (-195092387339/250000000000 : ℚ), 10⟩,
    ⟨(47721261481/1000000000000 : ℚ), (967724441/312500000 : ℚ), (-75508435899/500000000000 : ℚ), 8⟩,
    ⟨(24124662361/500000000000 : ℚ), (-5434066593/10000000000 : ℚ), (23469244971/1000000000000 : ℚ), 7⟩,
    ⟨(9764179251/200000000000 : ℚ), (-20411947649/10000000000 : ℚ), (96110904483/1000000000000 : ℚ), 7⟩,
    ⟨(6168619937/125000000000 : ℚ), (-3490332377/1250000000 : ℚ), (132961762491/1000000000000 : ℚ), 7⟩,
    ⟨(49753121603/1000000000000 : ℚ), (-31930340051/10000000000 : ℚ), (152816754981/1000000000000 : ℚ), 7⟩,
    ⟨(49971852559/1000000000000 : ℚ), (-2108657687/625000000 : ℚ), (80916220303/500000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-33957525493/10000000000 : ℚ), (16292714423/100000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (28755923167/40000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control889.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control889.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate889

namespace DiagonalRamsey.JointInheritedCertificate893
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(47381585473/1000000000000 : ℚ), (1813653165327/10000000000 : ℚ), (-4304322769331/500000000000 : ℚ), 13⟩,
    ⟨(9515793389/200000000000 : ℚ), (162107722381/10000000000 : ℚ), (-777280003551/1000000000000 : ℚ), 10⟩,
    ⟨(47943680349/1000000000000 : ℚ), (15288939079/5000000000 : ℚ), (-14982811921/100000000000 : ℚ), 9⟩,
    ⟨(1513131293/31250000000 : ℚ), (-5552851569/10000000000 : ℚ), (24089947253/1000000000000 : ℚ), 8⟩,
    ⟨(48935984019/1000000000000 : ℚ), (-20429571999/10000000000 : ℚ), (96458932153/1000000000000 : ℚ), 7⟩,
    ⟨(24706252523/500000000000 : ℚ), (-27893143421/10000000000 : ℚ), (66573334799/500000000000 : ℚ), 7⟩,
    ⟨(995544369/20000000000 : ℚ), (-31877114873/10000000000 : ℚ), (38225499899/250000000000 : ℚ), 7⟩,
    ⟨(24987299961/500000000000 : ℚ), (-33675137011/10000000000 : ℚ), (161869472367/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-33892940697/10000000000 : ℚ), (32591642719/200000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (729450792399/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control893.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control893.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate893

namespace DiagonalRamsey.JointInheritedCertificate898
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23835695779/500000000000 : ℚ), (1795685331533/10000000000 : ℚ), (-8574062322623/1000000000000 : ℚ), 13⟩,
    ⟨(11961731713/250000000000 : ℚ), (6417808999/400000000 : ℚ), (-773289673907/1000000000000 : ℚ), 10⟩,
    ⟨(48171273781/1000000000000 : ℚ), (15065297849/5000000000 : ℚ), (-1186586171/8000000000 : ℚ), 9⟩,
    ⟨(48595053467/1000000000000 : ℚ), (-2847709911/5000000000 : ℚ), (6216832871/250000000000 : ℚ), 8⟩,
    ⟨(24526874647/500000000000 : ℚ), (-20457463823/10000000000 : ℚ), (4844987859/50000000000 : ℚ), 8⟩,
    ⟨(49477528979/1000000000000 : ℚ), (-13933779473/5000000000 : ℚ), (133393881907/1000000000000 : ℚ), 7⟩,
    ⟨(49801875909/1000000000000 : ℚ), (-7956175737/2500000000 : ℚ), (153034274111/1000000000000 : ℚ), 7⟩,
    ⟨(24988705601/500000000000 : ℚ), (-8402812869/2500000000 : ℚ), (161947013609/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-33827702267/10000000000 : ℚ), (163029022577/1000000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (740019053707/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control898.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control898.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate898

namespace DiagonalRamsey.JointInheritedCertificate906
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48010694477/1000000000000 : ℚ), (1815829618301/10000000000 : ℚ), (-4365232748449/500000000000 : ℚ), 14⟩,
    ⟨(48160652419/1000000000000 : ℚ), (81521906767/5000000000 : ℚ), (-790701223731/1000000000000 : ℚ), 11⟩,
    ⟨(9687547713/200000000000 : ℚ), (6247630323/2000000000 : ℚ), (-30932526257/200000000000 : ℚ), 9⟩,
    ⟨(48799769061/1000000000000 : ℚ), (-2512717319/5000000000 : ℚ), (21519359021/1000000000000 : ℚ), 9⟩,
    ⟨(24595814023/500000000000 : ℚ), (-9986438337/5000000000 : ℚ), (9471874309/100000000000 : ℚ), 8⟩,
    ⟨(24776829271/500000000000 : ℚ), (-13736662429/5000000000 : ℚ), (131739888159/1000000000000 : ℚ), 8⟩,
    ⟨(3114421543/62500000000 : ℚ), (-983600187/312500000 : ℚ), (37905932309/250000000000 : ℚ), 8⟩,
    ⟨(49980702629/1000000000000 : ℚ), (-33280415553/10000000000 : ℚ), (160632508631/1000000000000 : ℚ), 8⟩,
    ⟨(1/20 : ℚ), (-16749521433/5000000000 : ℚ), (161725433797/1000000000000 : ℚ), 8⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (93824367289/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control906.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control906.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate906

namespace DiagonalRamsey.JointInheritedCertificate915
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38076948411/1000000000000 : ℚ), (1476009932533/1250000000 : ℚ), (-45111069889161/1000000000000 : ℚ), 9⟩,
    ⟨(9576373397/250000000000 : ℚ), (623856804043/5000000000 : ℚ), (-4855915700273/1000000000000 : ℚ), 6⟩,
    ⟨(38753801079/1000000000000 : ℚ), (51269184979/1250000000 : ℚ), (-1634962571453/1000000000000 : ℚ), 5⟩,
    ⟨(19702321339/500000000000 : ℚ), (91242347689/5000000000 : ℚ), (-149371819101/200000000000 : ℚ), 4⟩,
    ⟨(10058251727/250000000000 : ℚ), (18069792983/2000000000 : ℚ), (-190298518611/500000000000 : ℚ), 3⟩,
    ⟨(8241412039/200000000000 : ℚ), (44548241339/10000000000 : ℚ), (-194374550033/1000000000000 : ℚ), 3⟩,
    ⟨(42289370219/1000000000000 : ℚ), (1866904201/1000000000 : ℚ), (-86473086817/1000000000000 : ℚ), 2⟩,
    ⟨(43438344413/1000000000000 : ℚ), (1346671879/5000000000 : ℚ), (-9034475679/500000000000 : ℚ), 2⟩,
    ⟨(44609828341/1000000000000 : ℚ), (-7824613433/10000000000 : ℚ), (28195345053/1000000000000 : ℚ), 2⟩,
    ⟨(22879401267/500000000000 : ℚ), (-3770291951/2500000000 : ℚ), (60961863941/1000000000000 : ℚ), 2⟩,
    ⟨(23420556279/500000000000 : ℚ), (-20246940187/10000000000 : ℚ), (84867847803/1000000000000 : ℚ), 2⟩,
    ⟨(23907582923/500000000000 : ℚ), (-4796090667/2000000000 : ℚ), (25633016619/250000000000 : ℚ), 2⟩,
    ⟨(12160882519/250000000000 : ℚ), (-13332979511/5000000000 : ℚ), (23096284143/200000000000 : ℚ), 2⟩,
    ⟨(1971774867/40000000000 : ℚ), (-28532074213/10000000000 : ℚ), (31154638967/250000000000 : ℚ), 2⟩,
    ⟨(24871339583/500000000000 : ℚ), (-7428548581/2500000000 : ℚ), (130471950819/1000000000000 : ℚ), 2⟩,
    ⟨(49971224343/1000000000000 : ℚ), (-1514410157/500000000 : ℚ), (133333748829/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-30359190169/10000000000 : ℚ), (33422145443/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (99999/1000000 : ℚ)
  x := (74859405957/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control915.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control915.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate915

namespace DiagonalRamsey.JointInheritedCertificate917
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19103201617/500000000000 : ℚ), (5823026741297/5000000000 : ℚ), (-22320581251287/500000000000 : ℚ), 9⟩,
    ⟨(1201014593/31250000000 : ℚ), (246129316873/2000000000 : ℚ), (-2402110895367/500000000000 : ℚ), 6⟩,
    ⟨(38875906957/1000000000000 : ℚ), (202231552027/5000000000 : ℚ), (-808331793077/500000000000 : ℚ), 5⟩,
    ⟨(9879920507/250000000000 : ℚ), (179821975587/10000000000 : ℚ), (-14753785529/20000000000 : ℚ), 4⟩,
    ⟨(40339052273/1000000000000 : ℚ), (5554282469/625000000 : ℚ), (-375114724443/1000000000000 : ℚ), 3⟩,
    ⟨(41302529753/1000000000000 : ℚ), (43624684073/10000000000 : ℚ), (-19069737497/100000000000 : ℚ), 3⟩,
    ⟨(4237308857/100000000000 : ℚ), (18037545881/10000000000 : ℚ), (-83782676401/1000000000000 : ℚ), 2⟩,
    ⟨(10877396937/250000000000 : ℚ), (2225554269/10000000000 : ℚ), (-997251373/62500000000 : ℚ), 2⟩,
    ⟨(44668352261/1000000000000 : ℚ), (-8196707459/10000000000 : ℚ), (14977760973/500000000000 : ℚ), 2⟩,
    ⟨(45804851439/1000000000000 : ℚ), (-15395945341/10000000000 : ℚ), (31250595211/500000000000 : ℚ), 2⟩,
    ⟨(2929713141/62500000000 : ℚ), (-4105416421/2000000000 : ℚ), (86267680281/1000000000000 : ℚ), 2⟩,
    ⟨(5979860967/125000000000 : ℚ), (-12119901397/5000000000 : ℚ), (20768878039/200000000000 : ℚ), 2⟩,
    ⟨(48658257981/1000000000000 : ℚ), (-26913112203/10000000000 : ℚ), (23348024079/200000000000 : ℚ), 2⟩,
    ⟨(12325508263/250000000000 : ℚ), (-28772375493/10000000000 : ℚ), (1006766453/8000000000 : ℚ), 2⟩,
    ⟨(49745473033/1000000000000 : ℚ), (-29950940101/10000000000 : ℚ), (131682217747/1000000000000 : ℚ), 2⟩,
    ⟨(1998861471/40000000000 : ℚ), (-15261730961/5000000000 : ℚ), (134536691747/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-6118855287/2000000000 : ℚ), (134890663467/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (124999/1000000 : ℚ)
  x := (9436290201/100000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control917.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control917.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate917
