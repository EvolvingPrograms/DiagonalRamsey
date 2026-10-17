import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate758
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(196374848229/500000000000 : ℚ), (7031692711987/5000000000 : ℚ), (-276485673207289/500000000000 : ℚ), 13⟩,
    ⟨(393362072189/1000000000000 : ℚ), (771213413641/5000000000 : ℚ), (-3816870706987/62500000000 : ℚ), 10⟩,
    ⟨(197290463069/500000000000 : ℚ), (543062937527/10000000000 : ℚ), (-21717855975083/1000000000000 : ℚ), 8⟩,
    ⟨(15855780803/40000000000 : ℚ), (13439289161/500000000 : ℚ), (-5438003455729/500000000000 : ℚ), 7⟩,
    ⟨(3987853881/10000000000 : ℚ), (156513727863/10000000000 : ℚ), (-1603599349009/250000000000 : ℚ), 7⟩,
    ⟨(200865252423/500000000000 : ℚ), (50031435683/5000000000 : ℚ), (-4156000919939/1000000000000 : ℚ), 6⟩,
    ⟨(101300376807/250000000000 : ℚ), (67855613689/10000000000 : ℚ), (-2857157535951/1000000000000 : ℚ), 6⟩,
    ⟨(204582483799/500000000000 : ℚ), (23917597853/5000000000 : ℚ), (-510582088781/250000000000 : ℚ), 5⟩,
    ⟨(25848919729/62500000000 : ℚ), (34593804453/10000000000 : ℚ), (-748923995833/500000000000 : ℚ), 5⟩,
    ⟨(418412206097/1000000000000 : ℚ), (2541479097/1000000000 : ℚ), (-558080292867/500000000000 : ℚ), 5⟩,
    ⟨(84721385653/200000000000 : ℚ), (1881324311/1000000000 : ℚ), (-838337198427/1000000000000 : ℚ), 5⟩,
    ⟨(214558427077/500000000000 : ℚ), (1740332407/1250000000 : ℚ), (-629897395229/1000000000000 : ℚ), 4⟩,
    ⟨(86977784033/200000000000 : ℚ), (5105160573/5000000000 : ℚ), (-14674305159/31250000000 : ℚ), 4⟩,
    ⟨(440867538147/1000000000000 : ℚ), (7334476409/10000000000 : ℚ), (-343690263627/1000000000000 : ℚ), 4⟩,
    ⟨(446995130741/1000000000000 : ℚ), (5067999209/10000000000 : ℚ), (-60775779917/250000000000 : ℚ), 4⟩,
    ⟨(11330317147/25000000000 : ℚ), (3255393699/10000000000 : ℚ), (-161538283633/1000000000000 : ℚ), 4⟩,
    ⟨(45946032511/100000000000 : ℚ), (1787487197/10000000000 : ℚ), (-11821002739/125000000000 : ℚ), 4⟩,
    ⟨(465677880249/1000000000000 : ℚ), (58596477/1000000000 : ℚ), (-39000861827/1000000000000 : ℚ), 4⟩,
    ⟨(471805472843/1000000000000 : ℚ), (-81278747/2000000000 : ℚ), (7506623383/1000000000000 : ℚ), 4⟩,
    ⟨(19111363633/40000000000 : ℚ), (-1232053953/10000000000 : ℚ), (46702334293/1000000000000 : ℚ), 4⟩,
    ⟨(120889039209/250000000000 : ℚ), (-961474297/5000000000 : ℚ), (15981416887/200000000000 : ℚ), 3⟩,
    ⟨(19562643309/40000000000 : ℚ), (-1251675733/5000000000 : ℚ), (108129513537/1000000000000 : ℚ), 3⟩,
    ⟨(494260804893/1000000000000 : ℚ), (-2991873459/10000000000 : ℚ), (33036525703/250000000000 : ℚ), 3⟩,
    ⟨(499090295327/1000000000000 : ℚ), (-1701436939/5000000000 : ℚ), (30511589059/200000000000 : ℚ), 3⟩,
    ⟨(503508043393/1000000000000 : ℚ), (-936868673/2500000000 : ℚ), (33966345869/200000000000 : ℚ), 3⟩,
    ⟨(253735751881/500000000000 : ℚ), (-806859999/2000000000 : ℚ), (92164900097/500000000000 : ℚ), 3⟩,
    ⟨(102188501229/200000000000 : ℚ), (-170800869/400000000 : ℚ), (196332520449/1000000000000 : ℚ), 3⟩,
    ⟨(51388762289/100000000000 : ℚ), (-4459766031/10000000000 : ℚ), (41211016757/200000000000 : ℚ), 3⟩,
    ⟨(103255698183/200000000000 : ℚ), (-287963569/625000000 : ℚ), (213660230707/1000000000000 : ℚ), 3⟩,
    ⟨(129523021213/250000000000 : ℚ), (-471584343/1000000000 : ℚ), (43853567107/200000000000 : ℚ), 3⟩,
    ⟨(259655469401/500000000000 : ℚ), (-1196765841/2500000000 : ℚ), (222962011119/1000000000000 : ℚ), 3⟩,
    ⟨(519923314533/1000000000000 : ℚ), (-964472247/2000000000 : ℚ), (112398073659/500000000000 : ℚ), 3⟩,
    ⟨(13/25 : ℚ), (-4826759013/10000000000 : ℚ), (225024814917/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (91427958969/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control758.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control758.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate758
