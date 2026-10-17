import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control0.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control0.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate0
