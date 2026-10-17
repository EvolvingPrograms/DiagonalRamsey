import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate65
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(222830483171/1000000000000 : ℚ), (7019066223687/10000000000 : ℚ), (-157166117057833/1000000000000 : ℚ), 10⟩,
    ⟨(112202472211/500000000000 : ℚ), (754512435669/10000000000 : ℚ), (-8695720074147/500000000000 : ℚ), 7⟩,
    ⟨(227538704001/1000000000000 : ℚ), (258544026117/10000000000 : ℚ), (-97025164359/15625000000 : ℚ), 6⟩,
    ⟨(23220158209/100000000000 : ℚ), (124228417399/10000000000 : ℚ), (-782266882237/250000000000 : ℚ), 5⟩,
    ⟨(1906789381/8000000000 : ℚ), (3511712019/500000000 : ℚ), (-1861511396997/1000000000000 : ℚ), 4⟩,
    ⟨(122960387881/500000000000 : ℚ), (2730271357/625000000 : ℚ), (-305002127557/250000000000 : ℚ), 4⟩,
    ⟨(254844968011/1000000000000 : ℚ), (5784511883/2000000000 : ℚ), (-425573528679/500000000000 : ℚ), 3⟩,
    ⟨(6625882613/25000000000 : ℚ), (20004699931/10000000000 : ℚ), (-619780493891/1000000000000 : ℚ), 3⟩,
    ⟨(138196823389/500000000000 : ℚ), (14283496543/10000000000 : ℚ), (-232588961353/500000000000 : ℚ), 3⟩,
    ⟨(144405303871/500000000000 : ℚ), (5220401839/5000000000 : ℚ), (-178382197901/500000000000 : ℚ), 2⟩,
    ⟨(37770825661/125000000000 : ℚ), (7763913183/10000000000 : ℚ), (-277787436297/1000000000000 : ℚ), 2⟩,
    ⟨(316333013859/1000000000000 : ℚ), (2921167569/5000000000 : ℚ), (-109223258033/500000000000 : ℚ), 2⟩,
    ⟨(331173403197/1000000000000 : ℚ), (4427554779/10000000000 : ℚ), (-17270109201/100000000000 : ℚ), 2⟩,
    ⟨(346544852239/1000000000000 : ℚ), (3362932977/10000000000 : ℚ), (-34166701933/250000000000 : ℚ), 2⟩,
    ⟨(45287415691/125000000000 : ℚ), (1273202851/5000000000 : ℚ), (-21551364549/200000000000 : ℚ), 2⟩,
    ⟨(3026280791/8000000000 : ℚ), (190958963/1000000000 : ℚ), (-84197241263/1000000000000 : ℚ), 2⟩,
    ⟨(3080845473/7812500000 : ℚ), (14055657/100000000 : ℚ), (-404632863/6250000000 : ℚ), 2⟩,
    ⟨(410333993891/1000000000000 : ℚ), (250368403/2500000000 : ℚ), (-48494018169/1000000000000 : ℚ), 2⟩,
    ⟨(426088467181/1000000000000 : ℚ), (67388221/1000000000 : ℚ), (-543777207/15625000000 : ℚ), 2⟩,
    ⟨(441459916223/1000000000000 : ℚ), (202908723/5000000000 : ℚ), (-11589750609/500000000000 : ℚ), 2⟩,
    ⟨(11407507639/25000000000 : ℚ), (46202491/2500000000 : ℚ), (-13262990241/1000000000000 : ℚ), 2⟩,
    ⟨(117616678533/250000000000 : ℚ), (396603/2500000000 : ℚ), (-2387793011/500000000000 : ℚ), 1⟩,
    ⟨(241911355839/500000000000 : ℚ), (-18852933/1250000000 : ℚ), (2494576349/1000000000000 : ℚ), 1⟩,
    ⟨(496239672641/1000000000000 : ℚ), (-17356601/625000000 : ℚ), (4355421159/500000000000 : ℚ), 1⟩,
    ⟨(5075980149/10000000000 : ℚ), (-15323857/400000000 : ℚ), (6999855401/500000000000 : ℚ), 1⟩,
    ⟨(517788351409/1000000000000 : ℚ), (-94018339/2000000000 : ℚ), (9229665407/500000000000 : ℚ), 1⟩,
    ⟨(526712543657/1000000000000 : ℚ), (-541068369/10000000000 : ℚ), (22165748993/1000000000000 : ℚ), 1⟩,
    ⟨(106856929359/200000000000 : ℚ), (-597844657/10000000000 : ℚ), (12588766371/500000000000 : ℚ), 1⟩,
    ⟨(540431737329/1000000000000 : ℚ), (-320897979/5000000000 : ℚ), (13769598707/500000000000 : ℚ), 1⟩,
    ⟨(545094615419/1000000000000 : ℚ), (-336969211/5000000000 : ℚ), (2928373309/100000000000 : ℚ), 1⟩,
    ⟨(548228374997/1000000000000 : ℚ), (-694988219/10000000000 : ℚ), (30434433093/1000000000000 : ℚ), 1⟩,
    ⟨(68725354531/125000000000 : ℚ), (-705401981/10000000000 : ℚ), (6201232699/200000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-14133971/200000000 : ℚ), (31077462027/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (66392642863/250000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control65.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control65.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate65
