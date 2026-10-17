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

-- Control64
namespace DiagonalRamsey.JointInheritedCertificate64
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(206411428921/1000000000000 : ℚ), (6782025660853/10000000000 : ℚ), (-8793134626421/62500000000 : ℚ), 10⟩,
    ⟨(41584106723/200000000000 : ℚ), (364199372249/5000000000 : ℚ), (-15568442135001/1000000000000 : ℚ), 7⟩,
    ⟨(105462104751/500000000000 : ℚ), (124650474281/5000000000 : ℚ), (-5558824715619/1000000000000 : ℚ), 6⟩,
    ⟨(215393529539/1000000000000 : ℚ), (11962903313/1000000000 : ℚ), (-1400603641053/500000000000 : ℚ), 5⟩,
    ⟨(55321362933/250000000000 : ℚ), (33770614311/5000000000 : ℚ), (-416627251953/250000000000 : ℚ), 4⟩,
    ⟨(228543233649/1000000000000 : ℚ), (20975871461/5000000000 : ℚ), (-136528096539/125000000000 : ℚ), 3⟩,
    ⟨(118548489441/500000000000 : ℚ), (13868981377/5000000000 : ℚ), (-190497749819/250000000000 : ℚ), 3⟩,
    ⟨(24686431019/100000000000 : ℚ), (19159875417/10000000000 : ℚ), (-138707076499/250000000000 : ℚ), 3⟩,
    ⟨(16109447677/62500000000 : ℚ), (13662090911/10000000000 : ℚ), (-416372107661/1000000000000 : ℚ), 3⟩,
    ⟨(269652690467/1000000000000 : ℚ), (2493203847/2500000000 : ℚ), (-159626398919/500000000000 : ℚ), 2⟩,
    ⟨(70613568719/250000000000 : ℚ), (3702403999/5000000000 : ℚ), (-248474526021/1000000000000 : ℚ), 2⟩,
    ⟨(74008157451/250000000000 : ℚ), (1112505201/2000000000 : ℚ), (-97632440361/500000000000 : ℚ), 2⟩,
    ⟨(31025698827/100000000000 : ℚ), (4206698191/10000000000 : ℚ), (-38554372449/250000000000 : ℚ), 2⟩,
    ⟨(324990361927/1000000000000 : ℚ), (3186647623/10000000000 : ℚ), (-30464074443/250000000000 : ℚ), 2⟩,
    ⟨(85022715083/250000000000 : ℚ), (601072603/2500000000 : ℚ), (-1917337277/20000000000 : ℚ), 2⟩,
    ⟨(355413057431/1000000000000 : ℚ), (448494179/2500000000 : ℚ), (-74662552453/1000000000000 : ℚ), 2⟩,
    ⟨(370809392089/1000000000000 : ℚ), (1310709817/10000000000 : ℚ), (-5712861633/100000000000 : ℚ), 2⟩,
    ⟨(96532897297/250000000000 : ℚ), (461504353/5000000000 : ℚ), (-42465394827/1000000000000 : ℚ), 2⟩,
    ⟨(401232087593/1000000000000 : ℚ), (152112253/2500000000 : ℚ), (-30089045039/1000000000000 : ℚ), 2⟩,
    ⟨(415965461249/1000000000000 : ℚ), (21925159/625000000 : ℚ), (-9783438591/500000000000 : ℚ), 2⟩,
    ⟨(107547454929/250000000000 : ℚ), (34539921/2500000000 : ℚ), (-10574163873/1000000000000 : ℚ), 2⟩,
    ⟨(110942043661/250000000000 : ℚ), (-38328137/10000000000 : ℚ), (-716161593/250000000000 : ℚ), 1⟩,
    ⟨(456569759053/1000000000000 : ℚ), (-46326427/2500000000 : ℚ), (117187583/31250000000 : ℚ), 1⟩,
    ⟨(468471286687/1000000000000 : ℚ), (-6156153/200000000 : ℚ), (9414728699/1000000000000 : ℚ), 1⟩,
    ⟨(47935813933/100000000000 : ℚ), (-409675123/10000000000 : ℚ), (7120779647/500000000000 : ℚ), 1⟩,
    ⟨(244562735319/500000000000 : ℚ), (-493851793/10000000000 : ℚ), (18317225639/1000000000000 : ℚ), 1⟩,
    ⟨(497679215871/1000000000000 : ℚ), (-112519211/2000000000 : ℚ), (4341754183/200000000000 : ℚ), 1⟩,
    ⟨(126234249447/250000000000 : ℚ), (-61763421/1000000000 : ℚ), (6116926013/250000000000 : ℚ), 1⟩,
    ⟨(510828919981/1000000000000 : ℚ), (-82533913/1250000000 : ℚ), (2663308293/100000000000 : ℚ), 1⟩,
    ⟨(257649120009/500000000000 : ℚ), (-34573549/500000000 : ℚ), (14116894513/500000000000 : ℚ), 1⟩,
    ⟨(103660383181/200000000000 : ℚ), (-711912103/10000000000 : ℚ), (7322544021/250000000000 : ℚ), 1⟩,
    ⟨(519811020599/1000000000000 : ℚ), (-180506843/2500000000 : ℚ), (7453803589/250000000000 : ℚ), 1⟩,
    ⟨(13/25 : ℚ), (-7232869/100000000 : ℚ), (7470174471/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (68487472787/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control64.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control64.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate64

-- Control65
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
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

-- Control66
namespace DiagonalRamsey.JointInheritedCertificate66
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252024517089/1000000000000 : ℚ), (30023848755987/10000000000 : ℚ), (-757757970182279/1000000000000 : ℚ), 12⟩,
    ⟨(63110901417/250000000000 : ℚ), (660502941907/2000000000 : ℚ), (-8410883887329/100000000000 : ℚ), 9⟩,
    ⟨(63320193301/250000000000 : ℚ), (36564915911/312500000 : ℚ), (-30216959416687/1000000000000 : ℚ), 8⟩,
    ⟨(254534002889/1000000000000 : ℚ), (116997872807/2000000000 : ℚ), (-15369260348561/1000000000000 : ℚ), 7⟩,
    ⟨(256200275581/1000000000000 : ℚ), (345592117971/10000000000 : ℚ), (-2314791428543/250000000000 : ℚ), 6⟩,
    ⟨(64568894271/250000000000 : ℚ), (225294250241/10000000000 : ℚ), (-6166317577053/1000000000000 : ℚ), 5⟩,
    ⟨(52150981563/200000000000 : ℚ), (156715469921/10000000000 : ℚ), (-4387543608391/1000000000000 : ℚ), 5⟩,
    ⟨(263632294849/1000000000000 : ℚ), (22291228/1953125 : ℚ), (-408949581939/125000000000 : ℚ), 5⟩,
    ⟨(66725201577/250000000000 : ℚ), (86003712147/10000000000 : ℚ), (-2525858733913/1000000000000 : ℚ), 4⟩,
    ⟨(270552568063/1000000000000 : ℚ), (66537823343/10000000000 : ℚ), (-1001512612459/500000000000 : ℚ), 4⟩,
    ⟨(137289391349/500000000000 : ℚ), (52565690077/10000000000 : ℚ), (-1622383405079/1000000000000 : ℚ), 4⟩,
    ⟨(34871218839/125000000000 : ℚ), (21119376311/5000000000 : ℚ), (-1336700350271/1000000000000 : ℚ), 3⟩,
    ⟨(70928723469/250000000000 : ℚ), (688407379/200000000 : ℚ), (-279210341201/250000000000 : ℚ), 3⟩,
    ⟨(11552111229/40000000000 : ℚ), (3547641611/1250000000 : ℚ), (-94404351223/100000000000 : ℚ), 3⟩,
    ⟨(58844230819/200000000000 : ℚ), (23636023873/10000000000 : ℚ), (-5036129033/6250000000 : ℚ), 3⟩,
    ⟨(299956960649/1000000000000 : ℚ), (19852688417/10000000000 : ℚ), (-86678921177/125000000000 : ℚ), 3⟩,
    ⟨(305996382327/1000000000000 : ℚ), (3359491297/2000000000 : ℚ), (-600904436663/1000000000000 : ℚ), 3⟩,
    ⟨(312324869633/1000000000000 : ℚ), (7151174597/5000000000 : ℚ), (-261898665089/500000000000 : ℚ), 3⟩,
    ⟨(19932948543/62500000000 : ℚ), (12244248569/10000000000 : ℚ), (-229432066709/500000000000 : ℚ), 2⟩,
    ⟨(162893698977/500000000000 : ℚ), (10531366953/10000000000 : ℚ), (-403669262839/1000000000000 : ℚ), 2⟩,
    ⟨(166444503279/500000000000 : ℚ), (2273558793/2500000000 : ℚ), (-356356404687/1000000000000 : ℚ), 2⟩,
    ⟨(170107447051/500000000000 : ℚ), (1575913099/2000000000 : ℚ), (-78872711257/250000000000 : ℚ), 2⟩,
    ⟨(347747411883/1000000000000 : ℚ), (6845988489/10000000000 : ℚ), (-139974852977/500000000000 : ℚ), 2⟩,
    ⟨(71093682681/200000000000 : ℚ), (5961038291/10000000000 : ℚ), (-62211036169/250000000000 : ℚ), 2⟩,
    ⟨(363359298099/1000000000000 : ℚ), (5198986093/10000000000 : ℚ), (-1771706419/8000000000 : ℚ), 2⟩,
    ⟨(371401056133/1000000000000 : ℚ), (4539260271/10000000000 : ℚ), (-98616659323/500000000000 : ℚ), 2⟩,
    ⟨(189787157103/500000000000 : ℚ), (3965278891/10000000000 : ℚ), (-8784347699/50000000000 : ℚ), 2⟩,
    ⟨(193929691113/500000000000 : ℚ), (3463576411/10000000000 : ℚ), (-7822039659/50000000000 : ℚ), 2⟩,
    ⟨(6191192199/15625000000 : ℚ), (755785783/2500000000 : ℚ), (-139177940499/1000000000000 : ℚ), 2⟩,
    ⟨(404684889007/1000000000000 : ℚ), (1317460221/5000000000 : ℚ), (-7727171539/62500000000 : ℚ), 2⟩,
    ⟨(413184793649/1000000000000 : ℚ), (2291411463/10000000000 : ℚ), (-109590514999/1000000000000 : ℚ), 2⟩,
    ⟨(26357221103/62500000000 : ℚ), (1986378087/10000000000 : ℚ), (-1937189637/20000000000 : ℚ), 2⟩,
    ⟨(215128284847/500000000000 : ℚ), (107162709/625000000 : ℚ), (-21321114563/250000000000 : ℚ), 2⟩,
    ⟨(438787313693/1000000000000 : ℚ), (1471703611/10000000000 : ℚ), (-14946360697/200000000000 : ℚ), 2⟩,
    ⟨(89457443667/200000000000 : ℚ), (1253979177/10000000000 : ℚ), (-16271847691/250000000000 : ℚ), 2⟩,
    ⟨(227867903303/500000000000 : ℚ), (1058294569/10000000000 : ℚ), (-28126678761/500000000000 : ℚ), 2⟩,
    ⟨(116028181279/250000000000 : ℚ), (55123883/625000000 : ℚ), (-3009091793/62500000000 : ℚ), 2⟩,
    ⟨(94479558627/200000000000 : ℚ), (722763883/10000000000 : ℚ), (-813819291/20000000000 : ℚ), 2⟩,
    ⟨(480571051209/1000000000000 : ℚ), (7233599/125000000 : ℚ), (-54122871/1600000000 : ℚ), 2⟩,
    ⟨(488612809243/1000000000000 : ℚ), (448076291/10000000000 : ℚ), (-2749815777/100000000000 : ℚ), 2⟩,
    ⟨(31031480871/62500000000 : ℚ), (32948219/1000000000 : ℚ), (-21657295939/1000000000000 : ℚ), 2⟩,
    ⟨(252112347729/500000000000 : ℚ), (8866183/400000000 : ℚ), (-16262483161/1000000000000 : ℚ), 2⟩,
    ⟨(511757213239/1000000000000 : ℚ), (61754421/5000000000 : ℚ), (-5638591863/500000000000 : ℚ), 1⟩,
    ⟨(32442693799/62500000000 : ℚ), (34102407/10000000000 : ℚ), (-1667335631/250000000000 : ℚ), 1⟩,
    ⟨(131546177347/250000000000 : ℚ), (-47385693/10000000000 : ℚ), (-1205393171/500000000000 : ℚ), 1⟩,
    ⟨(266522465327/500000000000 : ℚ), (-121671891/10000000000 : ℚ), (1523282413/1000000000000 : ℚ), 1⟩,
    ⟨(134911809427/250000000000 : ℚ), (-189382467/10000000000 : ℚ), (5154716731/1000000000000 : ℚ), 1⟩,
    ⟨(109195145003/200000000000 : ℚ), (-251065663/10000000000 : ℚ), (1700558309/200000000000 : ℚ), 1⟩,
    ⟨(552015146693/1000000000000 : ℚ), (-307201929/10000000000 : ℚ), (5792258761/500000000000 : ℚ), 1⟩,
    ⟨(557750953247/1000000000000 : ℚ), (-179106301/5000000000 : ℚ), (14414909599/1000000000000 : ℚ), 1⟩,
    ⟨(563169326617/1000000000000 : ℚ), (-404467273/10000000000 : ℚ), (17007217383/1000000000000 : ℚ), 1⟩,
    ⟨(284128606733/500000000000 : ℚ), (-446290051/10000000000 : ℚ), (2421640399/125000000000 : ℚ), 1⟩,
    ⟨(57300235663/100000000000 : ℚ), (-15123903/312500000 : ℚ), (21522912587/1000000000000 : ℚ), 1⟩,
    ⟨(577393324643/1000000000000 : ℚ), (-258870081/5000000000 : ℚ), (5866405319/250000000000 : ℚ), 1⟩,
    ⟨(581419539279/1000000000000 : ℚ), (-27391623/500000000 : ℚ), (1575572553/62500000000 : ℚ), 1⟩,
    ⟨(585071301033/1000000000000 : ℚ), (-11488599/200000000 : ℚ), (2676042753/100000000000 : ℚ), 1⟩,
    ⟨(588339812493/1000000000000 : ℚ), (-149423783/2500000000 : ℚ), (2812539503/100000000000 : ℚ), 1⟩,
    ⟨(591217199527/1000000000000 : ℚ), (-123553441/2000000000 : ℚ), (1831824607/62500000000 : ℚ), 1⟩,
    ⟨(593696530257/1000000000000 : ℚ), (-12695281/200000000 : ℚ), (6063235561/200000000000 : ℚ), 1⟩,
    ⟨(595771831761/1000000000000 : ℚ), (-648783881/10000000000 : ℚ), (15574990929/500000000000 : ℚ), 1⟩,
    ⟨(597438104453/1000000000000 : ℚ), (-164976649/2500000000 : ℚ), (31813566941/1000000000000 : ℚ), 1⟩,
    ⟨(598691334137/1000000000000 : ℚ), (-133638973/2000000000 : ℚ), (32309258343/1000000000000 : ℚ), 1⟩,
    ⟨(299764250837/500000000000 : ℚ), (-673694977/10000000000 : ℚ), (8159693827/250000000000 : ℚ), 1⟩,
    ⟨(599947590253/1000000000000 : ℚ), (-676437453/10000000000 : ℚ), (1640162601/50000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-169194977/2500000000 : ℚ), (2051487401/62500000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (62620042539/250000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control66.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control66.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate66

-- Control67
namespace DiagonalRamsey.JointInheritedCertificate67
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(160079067563/500000000000 : ℚ), (17474718318663/5000000000 : ℚ), (-35010235023363/31250000000 : ℚ), 12⟩,
    ⟨(40076950297/125000000000 : ℚ), (3848762441377/10000000000 : ℚ), (-62176201181847/500000000000 : ℚ), 9⟩,
    ⟨(160764717399/500000000000 : ℚ), (682990650871/5000000000 : ℚ), (-4467447964723/100000000000 : ℚ), 8⟩,
    ⟨(322897430889/1000000000000 : ℚ), (136874900187/2000000000 : ℚ), (-2840313593301/125000000000 : ℚ), 7⟩,
    ⟨(324716295027/1000000000000 : ℚ), (405262487697/10000000000 : ℚ), (-547555891393/40000000000 : ℚ), 6⟩,
    ⟨(326981645409/1000000000000 : ℚ), (264866282391/10000000000 : ℚ), (-9116225074123/1000000000000 : ℚ), 5⟩,
    ⟨(329688024607/1000000000000 : ℚ), (184733343751/10000000000 : ℚ), (-3243195420209/500000000000 : ℚ), 5⟩,
    ⟨(166414456359/500000000000 : ℚ), (134905207971/10000000000 : ℚ), (-302283823001/62500000000 : ℚ), 5⟩,
    ⟨(67279348613/200000000000 : ℚ), (101942122681/10000000000 : ℚ), (-1867023932623/500000000000 : ℚ), 4⟩,
    ⟨(170191460217/500000000000 : ℚ), (19772717041/2500000000 : ℚ), (-1480562647101/500000000000 : ℚ), 4⟩,
    ⟨(172388920887/500000000000 : ℚ), (62658916813/10000000000 : ℚ), (-1199221203603/500000000000 : ℚ), 4⟩,
    ⟨(174785459667/500000000000 : ℚ), (50490556271/10000000000 : ℚ), (-98808361229/50000000000 : ℚ), 4⟩,
    ⟨(354750606171/1000000000000 : ℚ), (4125964289/1000000000 : ℚ), (-1651225498573/1000000000000 : ℚ), 3⟩,
    ⟨(180152211983/500000000000 : ℚ), (17057346073/5000000000 : ℚ), (-697938640411/500000000000 : ℚ), 3⟩,
    ⟨(73243798617/200000000000 : ℚ), (28489148673/10000000000 : ℚ), (-1191603444999/1000000000000 : ℚ), 3⟩,
    ⟨(372480064813/1000000000000 : ℚ), (11997254357/5000000000 : ℚ), (-1025657812791/1000000000000 : ℚ), 3⟩,
    ⟨(2369203473/6250000000 : ℚ), (20357401583/10000000000 : ℚ), (-111129353063/125000000000 : ℚ), 3⟩,
    ⟨(192990291899/500000000000 : ℚ), (17381128541/10000000000 : ℚ), (-155045104801/200000000000 : ℚ), 3⟩,
    ⟨(196593753561/500000000000 : ℚ), (14921374227/10000000000 : ℚ), (-42464426197/62500000000 : ℚ), 2⟩,
    ⟨(200337981771/500000000000 : ℚ), (160880323/125000000 : ℚ), (-299024769713/500000000000 : ℚ), 2⟩,
    ⟨(408427912711/1000000000000 : ℚ), (5573329923/5000000000 : ℚ), (-264168411727/500000000000 : ℚ), 2⟩,
    ⟨(208212339753/500000000000 : ℚ), (9687380409/10000000000 : ℚ), (-234085508831/500000000000 : ℚ), 2⟩,
    ⟨(424646999013/1000000000000 : ℚ), (8443842989/10000000000 : ℚ), (-415891404343/1000000000000 : ℚ), 2⟩,
    ⟨(86615012589/200000000000 : ℚ), (922216749/1250000000 : ℚ), (-370183187201/1000000000000 : ℚ), 2⟩,
    ⟨(220844283679/500000000000 : ℚ), (1614659969/2500000000 : ℚ), (-6599892639/20000000000 : ℚ), 2⟩,
    ⟨(90093352313/200000000000 : ℚ), (5662200733/10000000000 : ℚ), (-147238240767/500000000000 : ℚ), 2⟩,
    ⟨(459388498127/1000000000000 : ℚ), (1242186279/2500000000 : ℚ), (-262937054773/1000000000000 : ℚ), 2⟩,
    ⟨(468432283801/1000000000000 : ℚ), (136320883/312500000 : ℚ), (-11740427539/50000000000 : ℚ), 2⟩,
    ⟨(477576331313/1000000000000 : ℚ), (382965869/1000000000 : ℚ), (-209621473433/1000000000000 : ℚ), 2⟩,
    ⟨(486798611853/1000000000000 : ℚ), (3360106841/10000000000 : ℚ), (-186985012869/1000000000000 : ℚ), 2⟩,
    ⟨(248038454069/500000000000 : ℚ), (2944648409/10000000000 : ℚ), (-166571846709/1000000000000 : ℚ), 2⟩,
    ⟨(505388867941/1000000000000 : ℚ), (515161751/2000000000 : ℚ), (-74053130181/500000000000 : ℚ), 2⟩,
    ⟨(102942411587/200000000000 : ℚ), (449464733/2000000000 : ℚ), (-65677390477/500000000000 : ℚ), 2⟩,
    ⟨(262012008869/500000000000 : ℚ), (1953918429/10000000000 : ℚ), (-116118734607/1000000000000 : ℚ), 2⟩,
    ⟨(66662789253/125000000000 : ℚ), (845565919/5000000000 : ℚ), (-51114144823/500000000000 : ℚ), 2⟩,
    ⟨(542524594563/1000000000000 : ℚ), (727587517/5000000000 : ℚ), (-44768827171/500000000000 : ℚ), 2⟩,
    ⟨(137917160519/250000000000 : ℚ), (1242817633/10000000000 : ℚ), (-77921181909/1000000000000 : ℚ), 2⟩,
    ⟨(560712427749/1000000000000 : ℚ), (65705957/625000000 : ℚ), (-67270190133/1000000000000 : ℚ), 2⟩,
    ⟨(71204270539/125000000000 : ℚ), (439117219/5000000000 : ℚ), (-7186294079/125000000000 : ℚ), 2⟩,
    ⟨(578412358519/1000000000000 : ℚ), (144318053/2000000000 : ℚ), (-2424977219/50000000000 : ℚ), 2⟩,
    ⟨(146756465733/250000000000 : ℚ), (289798021/5000000000 : ℚ), (-40226056259/1000000000000 : ℚ), 2⟩,
    ⟨(37215870429/62500000000 : ℚ), (225360453/5000000000 : ℚ), (-16303553159/500000000000 : ℚ), 1⟩,
    ⟨(603676246371/1000000000000 : ℚ), (166817457/5000000000 : ℚ), (-799612333/31250000000 : ℚ), 1⟩,
    ⟨(122334602633/200000000000 : ℚ), (227179889/10000000000 : ℚ), (-597470541/31250000000 : ℚ), 1⟩,
    ⟨(309712481167/500000000000 : ℚ), (6517251/500000000 : ℚ), (-6579391561/500000000000 : ℚ), 1⟩,
    ⟨(125382683751/200000000000 : ℚ), (42246389/10000000000 : ℚ), (-958633453/125000000000 : ℚ), 1⟩,
    ⟨(634120342079/1000000000000 : ℚ), (-1515611/400000000 : ℚ), (-2616578653/1000000000000 : ℚ), 1⟩,
    ⟨(160257092549/250000000000 : ℚ), (-13843019/1250000000 : ℚ), (1014091519/500000000000 : ℚ), 1⟩,
    ⟨(647620861063/1000000000000 : ℚ), (-176911651/10000000000 : ℚ), (6291344011/1000000000000 : ℚ), 1⟩,
    ⟨(653881932791/1000000000000 : ℚ), (-1850913/78125000 : ℚ), (2039210441/200000000000 : ℚ), 1⟩,
    ⟨(65979650191/100000000000 : ℚ), (-145610223/5000000000 : ℚ), (688140699/50000000000 : ℚ), 1⟩,
    ⟨(133070063941/200000000000 : ℚ), (-10632099/312500000 : ℚ), (1700978263/100000000000 : ℚ), 1⟩,
    ⟨(335265003271/500000000000 : ℚ), (-9607309/250000000 : ℚ), (19953007251/1000000000000 : ℚ), 1⟩,
    ⟨(675323084103/1000000000000 : ℚ), (-423727391/10000000000 : ℚ), (4521328981/200000000000 : ℚ), 1⟩,
    ⟨(679718005443/1000000000000 : ℚ), (-458804343/10000000000 : ℚ), (12491571691/500000000000 : ℚ), 1⟩,
    ⟨(683704182811/1000000000000 : ℚ), (-30609999/625000000 : ℚ), (27093397177/1000000000000 : ℚ), 1⟩,
    ⟨(687272013159/1000000000000 : ℚ), (-516799141/10000000000 : ℚ), (14473440393/500000000000 : ℚ), 1⟩,
    ⟨(690412901269/1000000000000 : ℚ), (-540097551/10000000000 : ℚ), (15275880987/500000000000 : ℚ), 1⟩,
    ⟨(693119280467/1000000000000 : ℚ), (-17493883/312500000 : ℚ), (31914997399/1000000000000 : ℚ), 1⟩,
    ⟨(695384630849/1000000000000 : ℚ), (-288021797/5000000000 : ℚ), (16521206143/500000000000 : ℚ), 1⟩,
    ⟨(697203494987/1000000000000 : ℚ), (-18403651/312500000 : ℚ), (1060586437/31250000000 : ℚ), 1⟩,
    ⟨(698571491079/1000000000000 : ℚ), (-14962587/250000000 : ℚ), (17303902599/500000000000 : ℚ), 1⟩,
    ⟨(1398970647/2000000000 : ℚ), (-151215577/2500000000 : ℚ), (35052305067/1000000000000 : ℚ), 1⟩,
    ⟨(699942790751/1000000000000 : ℚ), (-608032089/10000000000 : ℚ), (7054819813/200000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-304213931/5000000000 : ℚ), (2206362631/62500000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (107474974673/500000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control67.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control67.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate67

-- Control68
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

-- Control69
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

-- Control70
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

-- Control71
namespace DiagonalRamsey.JointInheritedCertificate71
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(310767962559/1000000000000 : ℚ), (891331577469/200000000 : ℚ), (-1386355985135117/1000000000000 : ℚ), 13⟩,
    ⟨(155558151371/500000000000 : ℚ), (2457704701229/5000000000 : ℚ), (-76935280191587/500000000000 : ℚ), 9⟩,
    ⟨(311812143927/1000000000000 : ℚ), (1748591143881/10000000000 : ℚ), (-27635887019831/500000000000 : ℚ), 8⟩,
    ⟨(312853809771/1000000000000 : ℚ), (219632073119/2500000000 : ℚ), (-3513357789877/125000000000 : ℚ), 7⟩,
    ⟨(314238790809/1000000000000 : ℚ), (521865871239/10000000000 : ℚ), (-8463976137333/500000000000 : ℚ), 6⟩,
    ⟨(157981875251/500000000000 : ℚ), (342217509153/10000000000 : ℚ), (-2817318740291/250000000000 : ℚ), 6⟩,
    ⟨(31802453327/100000000000 : ℚ), (11975630887/500000000 : ℚ), (-4007383585701/500000000000 : ℚ), 5⟩,
    ⟨(320416174507/1000000000000 : ℚ), (17552656077/1000000000 : ℚ), (-5972932308647/1000000000000 : ℚ), 5⟩,
    ⟨(323132912539/1000000000000 : ℚ), (66552708979/5000000000 : ℚ), (-4608409641889/1000000000000 : ℚ), 5⟩,
    ⟨(326168202507/1000000000000 : ℚ), (51813115173/5000000000 : ℚ), (-730339782689/200000000000 : ℚ), 4⟩,
    ⟨(82378683033/250000000000 : ℚ), (41185981681/5000000000 : ℚ), (-2955134134299/1000000000000 : ℚ), 4⟩,
    ⟨(33316443933/100000000000 : ℚ), (16646836169/2500000000 : ℚ), (-2432302740293/1000000000000 : ℚ), 4⟩,
    ⟨(168554265819/500000000000 : ℚ), (13644095649/2500000000 : ℚ), (-2029903917279/1000000000000 : ℚ), 4⟩,
    ⟨(34133750739/100000000000 : ℚ), (45249386383/10000000000 : ℚ), (-1713612455101/1000000000000 : ℚ), 3⟩,
    ⟨(69168235723/200000000000 : ℚ), (7576150497/2000000000 : ℚ), (-730256747151/500000000000 : ℚ), 3⟩,
    ⟨(175304347787/500000000000 : ℚ), (31972487687/10000000000 : ℚ), (-627417938319/500000000000 : ℚ), 3⟩,
    ⟨(355628572901/1000000000000 : ℚ), (13586921901/5000000000 : ℚ), (-542718594107/500000000000 : ℚ), 3⟩,
    ⟨(360888717271/1000000000000 : ℚ), (23232177543/10000000000 : ℚ), (-236066080847/250000000000 : ℚ), 3⟩,
    ⟨(366376456537/1000000000000 : ℚ), (19961908649/10000000000 : ℚ), (-825379916299/1000000000000 : ℚ), 3⟩,
    ⟨(372078570253/1000000000000 : ℚ), (17224344857/10000000000 : ℚ), (-724328829873/1000000000000 : ℚ), 3⟩,
    ⟨(377981321529/1000000000000 : ℚ), (14914236631/10000000000 : ℚ), (-127543085659/200000000000 : ℚ), 2⟩,
    ⟨(384070490119/1000000000000 : ℚ), (6475307529/5000000000 : ℚ), (-562915129419/1000000000000 : ℚ), 2⟩,
    ⟨(390331406683/1000000000000 : ℚ), (11270422897/10000000000 : ℚ), (-124468402723/250000000000 : ℚ), 2⟩,
    ⟨(634798381/1600000000 : ℚ), (4912003629/5000000000 : ℚ), (-4409644967/10000000000 : ℚ), 2⟩,
    ⟨(50413471741/125000000000 : ℚ), (8571877673/10000000000 : ℚ), (-97721708899/250000000000 : ℚ), 2⟩,
    ⟨(102497990851/250000000000 : ℚ), (1870584941/2500000000 : ℚ), (-86647536183/250000000000 : ℚ), 2⟩,
    ⟨(208392726877/500000000000 : ℚ), (6529744683/10000000000 : ℚ), (-61443771999/200000000000 : ℚ), 2⟩,
    ⟨(84734375773/200000000000 : ℚ), (711647259/1250000000 : ℚ), (-68017663507/250000000000 : ℚ), 2⟩,
    ⟨(86126929747/200000000000 : ℚ), (4955467057/10000000000 : ℚ), (-240564801247/1000000000000 : ℚ), 2⟩,
    ⟨(437656989443/1000000000000 : ℚ), (134450633/312500000 : ℚ), (-10610895607/50000000000 : ℚ), 2⟩,
    ⟨(88944396711/200000000000 : ℚ), (3722240529/10000000000 : ℚ), (-46656284697/250000000000 : ℚ), 2⟩,
    ⟨(1411914409/3125000000 : ℚ), (1602533573/5000000000 : ℚ), (-163445483969/1000000000000 : ℚ), 2⟩,
    ⟨(458911789477/1000000000000 : ℚ), (2742615899/10000000000 : ℚ), (-35597555057/250000000000 : ℚ), 2⟩,
    ⟨(466002416803/1000000000000 : ℚ), (1163947019/5000000000 : ℚ), (-7700855551/62500000000 : ℚ), 2⟩,
    ⟨(236533705457/500000000000 : ℚ), (97748643/500000000 : ℚ), (-52852967631/500000000000 : ℚ), 2⟩,
    ⟨(240044875811/500000000000 : ℚ), (161880507/1000000000 : ℚ), (-89686772693/1000000000000 : ℚ), 2⟩,
    ⟨(487052521493/1000000000000 : ℚ), (657538603/5000000000 : ℚ), (-75000966829/1000000000000 : ℚ), 2⟩,
    ⟨(123484736651/250000000000 : ℚ), (260022423/2500000000 : ℚ), (-15378576407/250000000000 : ℚ), 2⟩,
    ⟨(250366218477/500000000000 : ℚ), (790658819/10000000000 : ℚ), (-24555186369/500000000000 : ℚ), 2⟩,
    ⟨(50741662643/100000000000 : ℚ), (564036243/10000000000 : ℚ), (-37687884947/1000000000000 : ℚ), 2⟩,
    ⟨(513975412233/1000000000000 : ℚ), (7156851/200000000 : ℚ), (-27158483327/1000000000000 : ℚ), 2⟩,
    ⟨(20815719747/40000000000 : ℚ), (34002437/2000000000 : ℚ), (-348897839/20000000000 : ℚ), 2⟩,
    ⟨(526653910239/1000000000000 : ℚ), (-1252377/10000000000 : ℚ), (-132490273/15625000000 : ℚ), 2⟩,
    ⟨(532743078829/1000000000000 : ℚ), (-157518941/10000000000 : ℚ), (-20245243/100000000000 : ℚ), 2⟩,
    ⟨(107729166021/200000000000 : ℚ), (-300157709/10000000000 : ℚ), (1859554477/250000000000 : ℚ), 2⟩,
    ⟨(544347943821/1000000000000 : ℚ), (-86073663/2000000000 : ℚ), (7244371281/500000000000 : ℚ), 2⟩,
    ⟨(549835683087/1000000000000 : ℚ), (-549202637/10000000000 : ℚ), (5247447947/250000000000 : ℚ), 2⟩,
    ⟨(555095827457/1000000000000 : ℚ), (-657584119/10000000000 : ℚ), (26977269269/1000000000000 : ℚ), 2⟩,
    ⟨(35007231549/62500000000 : ℚ), (-189081041/2500000000 : ℚ), (812072153/25000000000 : ℚ), 2⟩,
    ⟨(564883221743/1000000000000 : ℚ), (-846136083/10000000000 : ℚ), (7506930667/200000000000 : ℚ), 2⟩,
    ⟨(71173361621/125000000000 : ℚ), (-46382349/500000000 : ℚ), (4215730427/100000000000 : ℚ), 2⟩,
    ⟨(7170198359/12500000000 : ℚ), (-250351977/2500000000 : ℚ), (23186329663/500000000000 : ℚ), 1⟩,
    ⟨(144389990257/250000000000 : ℚ), (-533951269/5000000000 : ℚ), (50199938891/1000000000000 : ℚ), 1⟩,
    ⟨(290604834113/500000000000 : ℚ), (-563777289/5000000000 : ℚ), (53656033861/1000000000000 : ℚ), 1⟩,
    ⟨(584556197851/1000000000000 : ℚ), (-236146823/2000000000 : ℚ), (56755738733/1000000000000 : ℚ), 1⟩,
    ⟨(587591487819/1000000000000 : ℚ), (-1227763027/10000000000 : ℚ), (2975597593/50000000000 : ℚ), 1⟩,
    ⟨(590308225851/1000000000000 : ℚ), (-317229899/2500000000 : ℚ), (61935847723/1000000000000 : ℚ), 1⟩,
    ⟨(37043741693/62500000000 : ℚ), (-1304442421/10000000000 : ℚ), (64037024147/1000000000000 : ℚ), 1⟩,
    ⟨(4646567577/7812500000 : ℚ), (-333633429/2500000000 : ℚ), (32911813623/500000000000 : ℚ), 1⟩,
    ⟨(149121402387/250000000000 : ℚ), (-1359362063/10000000000 : ℚ), (13460491277/200000000000 : ℚ), 1⟩,
    ⟨(597870590587/1000000000000 : ℚ), (-344766169/2500000000 : ℚ), (4279940683/62500000000 : ℚ), 1⟩,
    ⟨(598912256431/1000000000000 : ℚ), (-1393749227/10000000000 : ℚ), (69357760863/1000000000000 : ℚ), 1⟩,
    ⟨(119921619523/200000000000 : ℚ), (-43859227/312500000 : ℚ), (69941801743/1000000000000 : ℚ), 1⟩,
    ⟨(599956437799/1000000000000 : ℚ), (-352088813/2500000000 : ℚ), (70233295217/1000000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-1408962141/10000000000 : ℚ), (8783713403/125000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (101899652323/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control71.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control71.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate71
