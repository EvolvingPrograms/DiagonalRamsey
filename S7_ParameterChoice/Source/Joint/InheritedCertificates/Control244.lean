import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate244
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(247395769023/1000000000000 : ℚ), (6075970513009/5000000000 : ℚ), (-301359751405807/1000000000000 : ℚ), 11⟩,
    ⟨(248226404701/1000000000000 : ℚ), (132407920413/1000000000 : ℚ), (-16658769753279/500000000000 : ℚ), 8⟩,
    ⟨(249879676581/1000000000000 : ℚ), (231067967351/5000000000 : ℚ), (-11874030729151/1000000000000 : ℚ), 7⟩,
    ⟨(252339662751/1000000000000 : ℚ), (14162643771/625000000 : ℚ), (-5965954977579/1000000000000 : ℚ), 6⟩,
    ⟨(1277913361/5000000000 : ℚ), (65378799193/5000000000 : ℚ), (-706890546313/200000000000 : ℚ), 5⟩,
    ⟨(129788736487/500000000000 : ℚ), (5182246199/625000000 : ℚ), (-575854179209/250000000000 : ℚ), 5⟩,
    ⟨(264285592957/1000000000000 : ℚ), (446794681/80000000 : ℚ), (-1595161631797/1000000000000 : ℚ), 4⟩,
    ⟨(269661690381/1000000000000 : ℚ), (39180087779/10000000000 : ℚ), (-575280075939/500000000000 : ℚ), 4⟩,
    ⟨(34456748811/125000000000 : ℚ), (883238841/312500000 : ℚ), (-85318389277/100000000000 : ℚ), 4⟩,
    ⟨(282204784153/1000000000000 : ℚ), (2596626527/1250000000 : ℚ), (-128885275421/200000000000 : ℚ), 3⟩,
    ⟨(289250983651/1000000000000 : ℚ), (7720200903/5000000000 : ℚ), (-492180407041/1000000000000 : ℚ), 3⟩,
    ⟨(29672473023/100000000000 : ℚ), (180139109/156250000 : ℚ), (-377663100661/1000000000000 : ℚ), 3⟩,
    ⟨(38069255953/125000000000 : ℚ), (8587584173/10000000000 : ℚ), (-7232393011/25000000000 : ℚ), 3⟩,
    ⟨(78165883807/250000000000 : ℚ), (1265749433/2000000000 : ℚ), (-54907335451/250000000000 : ℚ), 3⟩,
    ⟨(320975094241/1000000000000 : ℚ), (912480089/2000000000 : ℚ), (-16369948977/100000000000 : ℚ), 3⟩,
    ⟨(329408679809/1000000000000 : ℚ), (394925461/1250000000 : ℚ), (-59049050837/500000000000 : ℚ), 2⟩,
    ⟨(33788307189/100000000000 : ℚ), (1014904381/5000000000 : ℚ), (-80426411727/1000000000000 : ℚ), 2⟩,
    ⟨(346316657457/1000000000000 : ℚ), (69352931/625000000 : ℚ), (-48959968657/1000000000000 : ℚ), 2⟩,
    ⟨(354628216471/1000000000000 : ℚ), (44075627/1250000000 : ℚ), (-22436705317/1000000000000 : ℚ), 2⟩,
    ⟨(181368852037/500000000000 : ℚ), (-137683123/5000000000 : ℚ), (81040567/1000000000000 : ℚ), 2⟩,
    ⟨(370567021469/1000000000000 : ℚ), (-799631679/10000000000 : ℚ), (3859733273/200000000000 : ℚ), 2⟩,
    ⟨(23627548003/62500000000 : ℚ), (-619649357/5000000000 : ℚ), (35752238469/1000000000000 : ℚ), 2⟩,
    ⟨(192543483773/500000000000 : ℚ), (-1608894877/10000000000 : ℚ), (4985235883/100000000000 : ℚ), 2⟩,
    ⟨(391637761211/1000000000000 : ℚ), (-959773271/5000000000 : ℚ), (1934853251/31250000000 : ℚ), 2⟩,
    ⟨(198815030659/500000000000 : ℚ), (-1089909691/5000000000 : ℚ), (1443709863/20000000000 : ℚ), 2⟩,
    ⟨(201503079371/500000000000 : ℚ), (-2396325109/10000000000 : ℚ), (40425966807/500000000000 : ℚ), 2⟩,
    ⟨(16308571149/40000000000 : ℚ), (-2574163869/10000000000 : ℚ), (22015100371/250000000000 : ℚ), 2⟩,
    ⟨(411709079499/1000000000000 : ℚ), (-169828063/625000000 : ℚ), (93922538893/1000000000000 : ℚ), 2⟩,
    ⟨(414952088947/1000000000000 : ℚ), (-707136501/2500000000 : ℚ), (9852267079/100000000000 : ℚ), 2⟩,
    ⟨(208706037559/500000000000 : ℚ), (-363780921/1250000000 : ℚ), (20384577687/200000000000 : ℚ), 2⟩,
    ⟨(209532673499/500000000000 : ℚ), (-59277969/200000000 : ℚ), (20833354143/200000000000 : ℚ), 2⟩,
    ⟨(104973995669/250000000000 : ℚ), (-373810539/1250000000 : ℚ), (4211279781/40000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2993796437/10000000000 : ℚ), (13177635821/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (313207331399/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control244.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control244.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate244
