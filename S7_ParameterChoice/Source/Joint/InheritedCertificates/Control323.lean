import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate323
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(124439865517/500000000000 : ℚ), (1660836248191/1250000000 : ℚ), (-331376528310891/1000000000000 : ℚ), 12⟩,
    ⟨(49921395581/200000000000 : ℚ), (1449963302831/10000000000 : ℚ), (-9156495746231/250000000000 : ℚ), 8⟩,
    ⟨(31381808483/125000000000 : ℚ), (253552247829/5000000000 : ℚ), (-13045780793063/1000000000000 : ℚ), 7⟩,
    ⟨(25320826079/100000000000 : ℚ), (7787078749/312500000 : ℚ), (-6548991616391/1000000000000 : ℚ), 6⟩,
    ⟨(256047614481/1000000000000 : ℚ), (7204050343/500000000 : ℚ), (-1937592890777/500000000000 : ℚ), 5⟩,
    ⟨(259545184407/1000000000000 : ℚ), (45761186571/5000000000 : ℚ), (-630365387539/250000000000 : ℚ), 5⟩,
    ⟨(131833643529/500000000000 : ℚ), (15431144739/2500000000 : ℚ), (-1742609591937/1000000000000 : ℚ), 4⟩,
    ⟨(134187112167/500000000000 : ℚ), (43330056393/10000000000 : ℚ), (-31342112733/25000000000 : ℚ), 4⟩,
    ⟨(136810332927/500000000000 : ℚ), (31252989513/10000000000 : ℚ), (-463329214327/500000000000 : ℚ), 4⟩,
    ⟨(139678042759/500000000000 : ℚ), (4588727701/2000000000 : ℚ), (-69708651227/100000000000 : ℚ), 4⟩,
    ⟨(285525248101/1000000000000 : ℚ), (17011742477/10000000000 : ℚ), (-26483160297/50000000000 : ℚ), 3⟩,
    ⟨(146034370597/500000000000 : ℚ), (12648437031/10000000000 : ℚ), (-80746894237/200000000000 : ℚ), 3⟩,
    ⟨(149461773691/500000000000 : ℚ), (1169775343/1250000000 : ℚ), (-306567805439/1000000000000 : ℚ), 3⟩,
    ⟨(306023651133/1000000000000 : ℚ), (54595869/80000000 : ℚ), (-57492907307/250000000000 : ℚ), 3⟩,
    ⟨(313300674567/1000000000000 : ℚ), (2418962407/5000000000 : ℚ), (-168486049673/1000000000000 : ℚ), 3⟩,
    ⟨(320684535971/1000000000000 : ℚ), (651199/2000000 : ℚ), (-118362437839/1000000000000 : ℚ), 3⟩,
    ⟨(328104124723/1000000000000 : ℚ), (1979247403/10000000000 : ℚ), (-76961888363/1000000000000 : ℚ), 3⟩,
    ⟨(167743993063/500000000000 : ℚ), (37473219/400000000 : ℚ), (-5298368189/125000000000 : ℚ), 2⟩,
    ⟨(342765009561/1000000000000 : ℚ), (38677127/5000000000 : ℚ), (-105989079/8000000000 : ℚ), 2⟩,
    ⟨(10933284791/31250000000 : ℚ), (-31851551/500000000 : ℚ), (11485198439/1000000000000 : ℚ), 2⟩,
    ⟨(356719919499/1000000000000 : ℚ), (-1234569251/10000000000 : ℚ), (16295579451/500000000000 : ℚ), 2⟩,
    ⟨(22703963287/62500000000 : ℚ), (-10853561/62500000 : ℚ), (50659470179/1000000000000 : ℚ), 2⟩,
    ⟨(14777303007/40000000000 : ℚ), (-215925601/1000000000 : ℚ), (33071096743/500000000000 : ℚ), 2⟩,
    ⟨(9379199871/25000000000 : ℚ), (-628766719/2500000000 : ℚ), (79387465863/1000000000000 : ℚ), 2⟩,
    ⟨(9510360909/25000000000 : ℚ), (-562717251/2000000000 : ℚ), (90664218637/1000000000000 : ℚ), 2⟩,
    ⟨(77024274727/200000000000 : ℚ), (-3062215633/10000000000 : ℚ), (20036057031/200000000000 : ℚ), 2⟩,
    ⟨(389243476287/1000000000000 : ℚ), (-3266665671/10000000000 : ℚ), (108095827809/1000000000000 : ℚ), 2⟩,
    ⟨(392741046213/1000000000000 : ℚ), (-3431318039/10000000000 : ℚ), (114533382617/1000000000000 : ℚ), 2⟩,
    ⟨(395580399903/1000000000000 : ℚ), (-1779746163/5000000000 : ℚ), (119585397459/1000000000000 : ℚ), 2⟩,
    ⟨(397734192829/1000000000000 : ℚ), (-3653641959/10000000000 : ℚ), (61659932549/500000000000 : ℚ), 2⟩,
    ⟨(99795420697/250000000000 : ℚ), (-1857747741/5000000000 : ℚ), (6289222717/50000000000 : ℚ), 2⟩,
    ⟨(19995446483/50000000000 : ℚ), (-46826929/125000000 : ℚ), (127009412157/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1874987129/5000000000 : ℚ), (127162192247/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (321777943701/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control323.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control323.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate323
