import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate497
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49243946139/200000000000 : ℚ), (13329042454387/10000000000 : ℚ), (-328808528873993/1000000000000 : ℚ), 12⟩,
    ⟨(246863531047/1000000000000 : ℚ), (291226796499/2000000000 : ℚ), (-7266684681811/200000000000 : ℚ), 9⟩,
    ⟨(124072465801/500000000000 : ℚ), (509963739099/10000000000 : ℚ), (-1293524844233/100000000000 : ℚ), 7⟩,
    ⟨(62512897943/250000000000 : ℚ), (250945631149/10000000000 : ℚ), (-6488600435047/1000000000000 : ℚ), 6⟩,
    ⟨(252565149377/1000000000000 : ℚ), (36320857583/2500000000 : ℚ), (-3835420287253/1000000000000 : ℚ), 6⟩,
    ⟨(255661397483/1000000000000 : ℚ), (23094726197/2500000000 : ℚ), (-1246064963409/500000000000 : ℚ), 5⟩,
    ⟨(259310517529/1000000000000 : ℚ), (62340061183/10000000000 : ℚ), (-1719274545741/1000000000000 : ℚ), 5⟩,
    ⟨(131738683247/500000000000 : ℚ), (10941376731/2500000000 : ℚ), (-1234110007151/1000000000000 : ℚ), 4⟩,
    ⟨(16757613459/62500000000 : ℚ), (15773954289/5000000000 : ℚ), (-909598117589/1000000000000 : ℚ), 4⟩,
    ⟨(136599567749/500000000000 : ℚ), (23125579503/10000000000 : ℚ), (-681792576301/1000000000000 : ℚ), 4⟩,
    ⟨(69665107397/250000000000 : ℚ), (17100979377/10000000000 : ℚ), (-20626442517/40000000000 : ℚ), 4⟩,
    ⟨(56890620473/200000000000 : ℚ), (12660474737/10000000000 : ℚ), (-390709286191/1000000000000 : ℚ), 3⟩,
    ⟨(11620854689/40000000000 : ℚ), (581577359/625000000 : ℚ), (-294302966403/1000000000000 : ℚ), 3⟩,
    ⟨(14840339173/50000000000 : ℚ), (6716311563/10000000000 : ℚ), (-109156677651/500000000000 : ℚ), 3⟩,
    ⟨(151624409537/500000000000 : ℚ), (2341268599/5000000000 : ℚ), (-78661011831/500000000000 : ℚ), 3⟩,
    ⟨(61957086749/200000000000 : ℚ), (3059991343/10000000000 : ℚ), (-6725524183/62500000000 : ℚ), 3⟩,
    ⟨(158176838149/500000000000 : ℚ), (1748132377/10000000000 : ℚ), (-4159555433/62500000000 : ℚ), 3⟩,
    ⟨(322890290969/1000000000000 : ℚ), (337618089/5000000000 : ℚ), (-32271639673/1000000000000 : ℚ), 3⟩,
    ⟨(329332326583/1000000000000 : ℚ), (-52697093/2500000000 : ℚ), (-846334767/250000000000 : ℚ), 3⟩,
    ⟨(167808871409/500000000000 : ℚ), (-29636147/312500000 : ℚ), (2641396199/125000000000 : ℚ), 3⟩,
    ⟨(170843003839/500000000000 : ℚ), (-4894279/31250000 : ℚ), (1051233119/25000000000 : ℚ), 3⟩,
    ⟨(69495736091/200000000000 : ℚ), (-2085902939/10000000000 : ℚ), (29977723793/500000000000 : ℚ), 3⟩,
    ⟨(70587994909/200000000000 : ℚ), (-1262037693/5000000000 : ℚ), (37649283329/500000000000 : ℚ), 3⟩,
    ⟨(358017294699/1000000000000 : ℚ), (-723339801/2500000000 : ℚ), (4421219347/50000000000 : ℚ), 2⟩,
    ⟨(362661743549/1000000000000 : ℚ), (-3203521999/10000000000 : ℚ), (99599827671/1000000000000 : ℚ), 2⟩,
    ⟨(183414296257/500000000000 : ℚ), (-3462107821/10000000000 : ℚ), (54515506993/500000000000 : ℚ), 2⟩,
    ⟨(4630971407/12500000000 : ℚ), (-146997451/400000000 : ℚ), (116876635689/1000000000000 : ℚ), 2⟩,
    ⟨(186786980333/500000000000 : ℚ), (-3846470741/10000000000 : ℚ), (123257956341/1000000000000 : ℚ), 2⟩,
    ⟨(376087518271/1000000000000 : ℚ), (-1990045347/5000000000 : ℚ), (128266341119/1000000000000 : ℚ), 2⟩,
    ⟨(377994178441/1000000000000 : ℚ), (-2039146043/5000000000 : ℚ), (16496111589/125000000000 : ℚ), 2⟩,
    ⟨(94818894749/250000000000 : ℚ), (-4142832213/10000000000 : ℚ), (26882518963/200000000000 : ℚ), 2⟩,
    ⟨(94979844837/250000000000 : ℚ), (-2087415081/5000000000 : ℚ), (135627227367/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-2089408649/5000000000 : ℚ), (135778722469/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (361310469103/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control497.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control497.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate497
