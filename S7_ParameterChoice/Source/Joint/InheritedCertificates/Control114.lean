import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate114
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6598460221/25000000000 : ℚ), (4896746726913/5000000000 : ℚ), (-64835956127561/250000000000 : ℚ), 11⟩,
    ⟨(132585336169/500000000000 : ℚ), (531020358201/5000000000 : ℚ), (-1147573506669/40000000000 : ℚ), 8⟩,
    ⟨(133811665981/500000000000 : ℚ), (14732999163/400000000 : ℚ), (-511849480171/50000000000 : ℚ), 6⟩,
    ⟨(271272767259/1000000000000 : ℚ), (179366672233/10000000000 : ℚ), (-1288296083049/250000000000 : ℚ), 5⟩,
    ⟨(276083832173/1000000000000 : ℚ), (4112411421/400000000 : ℚ), (-612215031421/200000000000 : ℚ), 5⟩,
    ⟨(141005096759/500000000000 : ℚ), (64803936149/10000000000 : ℚ), (-1001013355883/500000000000 : ℚ), 4⟩,
    ⟨(57798955439/200000000000 : ℚ), (8687691429/2000000000 : ℚ), (-69643522089/50000000000 : ℚ), 4⟩,
    ⟨(59394063569/200000000000 : ℚ), (1898396983/625000000 : ℚ), (-1010613775777/1000000000000 : ℚ), 3⟩,
    ⟨(76465001663/250000000000 : ℚ), (10942703813/5000000000 : ℚ), (-151011935519/200000000000 : ℚ), 3⟩,
    ⟨(315578231053/1000000000000 : ℚ), (3221707241/2000000000 : ℚ), (-575769034913/1000000000000 : ℚ), 3⟩,
    ⟨(163015699617/500000000000 : ℚ), (6015602287/5000000000 : ℚ), (-4451072563/10000000000 : ℚ), 3⟩,
    ⟨(2633740949/7812500000 : ℚ), (9066626327/10000000000 : ℚ), (-346907037683/1000000000000 : ℚ), 2⟩,
    ⟨(87183444909/250000000000 : ℚ), (3428493921/5000000000 : ℚ), (-135600873059/500000000000 : ℚ), 2⟩,
    ⟨(360764355523/1000000000000 : ℚ), (5174915237/10000000000 : ℚ), (-42315939657/200000000000 : ℚ), 2⟩,
    ⟨(373094708111/1000000000000 : ℚ), (3870925793/10000000000 : ℚ), (-163768033881/1000000000000 : ℚ), 2⟩,
    ⟨(385606089363/1000000000000 : ℚ), (1421953717/5000000000 : ℚ), (-124833841791/1000000000000 : ℚ), 2⟩,
    ⟨(398178007839/1000000000000 : ℚ), (2023795791/10000000000 : ℚ), (-11589135451/125000000000 : ℚ), 2⟩,
    ⟨(410689389091/1000000000000 : ℚ), (1361025767/10000000000 : ℚ), (-65922091789/1000000000000 : ℚ), 2⟩,
    ⟨(423019741679/1000000000000 : ℚ), (819901283/10000000000 : ℚ), (-43374995763/1000000000000 : ℚ), 2⟩,
    ⟨(217525158783/500000000000 : ℚ), (46789007/1250000000 : ℚ), (-4852966499/200000000000 : ℚ), 2⟩,
    ⟨(446665255731/1000000000000 : ℚ), (4899823/10000000000 : ℚ), (-1596830481/200000000000 : ℚ), 2⟩,
    ⟨(28609543623/62500000000 : ℚ), (-302855961/10000000000 : ℚ), (5929193213/1000000000000 : ℚ), 2⟩,
    ⟨(468205866149/1000000000000 : ℚ), (-559955169/10000000000 : ℚ), (17829810573/1000000000000 : ℚ), 2⟩,
    ⟨(9558481811/20000000000 : ℚ), (-96849723/1250000000 : ℚ), (2799152727/100000000000 : ℚ), 2⟩,
    ⟨(486813779357/1000000000000 : ℚ), (-953836699/10000000000 : ℚ), (36626659043/1000000000000 : ℚ), 2⟩,
    ⟨(494789320007/1000000000000 : ℚ), (-275511517/2500000000 : ℚ), (5487508273/125000000000 : ℚ), 2⟩,
    ⟨(125443475921/250000000000 : ℚ), (-244652107/2000000000 : ℚ), (6242439889/125000000000 : ℚ), 2⟩,
    ⟨(50770026503/100000000000 : ℚ), (-330105639/2500000000 : ℚ), (54843400597/1000000000000 : ℚ), 2⟩,
    ⟨(512511329943/1000000000000 : ℚ), (-348940773/2500000000 : ℚ), (29343221391/500000000000 : ℚ), 2⟩,
    ⟨(516160765241/1000000000000 : ℚ), (-725466499/5000000000 : ℚ), (61523979507/1000000000000 : ℚ), 2⟩,
    ⟨(103722684973/200000000000 : ℚ), (-743548483/5000000000 : ℚ), (15848760463/250000000000 : ℚ), 2⟩,
    ⟨(259922844181/500000000000 : ℚ), (-47031189/312500000 : ℚ), (64324517121/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1507227297/10000000000 : ℚ), (64440420873/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (272556098911/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control114.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control114.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate114
