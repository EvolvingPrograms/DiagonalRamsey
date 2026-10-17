import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate76
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(253871249353/1000000000000 : ℚ), (741089411213/1000000000 : ℚ), (-37799277007287/200000000000 : ℚ), 10⟩,
    ⟨(6388423737/25000000000 : ℚ), (798093804169/10000000000 : ℚ), (-20913879049883/1000000000000 : ℚ), 7⟩,
    ⟨(258852308131/1000000000000 : ℚ), (274167843419/10000000000 : ℚ), (-1866862133937/250000000000 : ℚ), 6⟩,
    ⟨(263785396589/1000000000000 : ℚ), (66055291397/5000000000 : ℚ), (-235188608601/62500000000 : ℚ), 5⟩,
    ⟨(270288706517/1000000000000 : ℚ), (74913019097/10000000000 : ℚ), (-1119377615529/500000000000 : ℚ), 4⟩,
    ⟨(69574901871/250000000000 : ℚ), (11683514951/2500000000 : ℚ), (-733674415049/500000000000 : ℚ), 4⟩,
    ⟨(57548190027/200000000000 : ℚ), (31033010973/10000000000 : ℚ), (-1023816651259/1000000000000 : ℚ), 3⟩,
    ⟨(14926090459/50000000000 : ℚ), (21526335407/10000000000 : ℚ), (-372822718659/500000000000 : ℚ), 3⟩,
    ⟨(77634589763/250000000000 : ℚ), (15413587167/10000000000 : ℚ), (-111961506301/200000000000 : ℚ), 3⟩,
    ⟨(161837436903/500000000000 : ℚ), (11299035221/10000000000 : ℚ), (-429537374063/1000000000000 : ℚ), 2⟩,
    ⟨(2702438733/8000000000 : ℚ), (2106783383/2500000000 : ℚ), (-8367252897/25000000000 : ℚ), 2⟩,
    ⟨(70558436639/200000000000 : ℚ), (3181050203/5000000000 : ℚ), (-131739883449/500000000000 : ℚ), 2⟩,
    ⟨(368492562223/1000000000000 : ℚ), (37809933/78125000 : ℚ), (-26080118877/125000000000 : ℚ), 2⟩,
    ⟨(96188693869/250000000000 : ℚ), (3692968863/10000000000 : ℚ), (-165500479289/1000000000000 : ℚ), 2⟩,
    ⟨(401422208951/1000000000000 : ℚ), (1406517571/5000000000 : ℚ), (-130944946171/1000000000000 : ℚ), 2⟩,
    ⟨(418334346153/1000000000000 : ℚ), (1063354827/5000000000 : ℚ), (-102838165177/1000000000000 : ℚ), 2⟩,
    ⟨(217664156977/500000000000 : ℚ), (197960293/1250000000 : ℚ), (-79677540187/1000000000000 : ℚ), 2⟩,
    ⟨(90448090231/200000000000 : ℚ), (229727411/2000000000 : ℚ), (-60383546861/1000000000000 : ℚ), 2⟩,
    ⟨(468907884631/1000000000000 : ℚ), (796333481/10000000000 : ℚ), (-44166475587/1000000000000 : ℚ), 2⟩,
    ⟨(121292524471/250000000000 : ℚ), (25422263/500000000 : ℚ), (-30439640247/1000000000000 : ℚ), 2⟩,
    ⟨(31304404807/62500000000 : ℚ), (271479453/10000000000 : ℚ), (-3752284291/200000000000 : ℚ), 2⟩,
    ⟨(515857818481/1000000000000 : ℚ), (37689777/5000000000 : ℚ), (-549731533/62500000000 : ℚ), 2⟩,
    ⟨(5299877863/10000000000 : ℚ), (-87429367/10000000000 : ℚ), (-284345949/1000000000000 : ℚ), 1⟩,
    ⟨(108624860211/200000000000 : ℚ), (-44540717/2000000000 : ℚ), (697231637/100000000000 : ℚ), 1⟩,
    ⟨(555140850927/1000000000000 : ℚ), (-334847257/10000000000 : ℚ), (13129461951/1000000000000 : ℚ), 1⟩,
    ⟨(565921709971/1000000000000 : ℚ), (-21362229/500000000 : ℚ), (18307967499/1000000000000 : ℚ), 1⟩,
    ⟨(287681526311/500000000000 : ℚ), (-50249849/1000000000 : ℚ), (11300940717/500000000000 : ℚ), 1⟩,
    ⟨(58337395359/100000000000 : ℚ), (-562603287/10000000000 : ℚ), (5216789023/200000000000 : ℚ), 1⟩,
    ⟨(589877263517/1000000000000 : ℚ), (-304534881/5000000000 : ℚ), (14404839409/500000000000 : ℚ), 1⟩,
    ⟨(74351293997/125000000000 : ℚ), (-643015487/10000000000 : ℚ), (30820388073/1000000000000 : ℚ), 1⟩,
    ⟨(299062855313/500000000000 : ℚ), (-665228909/10000000000 : ℚ), (401816683/12500000000 : ℚ), 1⟩,
    ⟨(599791410753/1000000000000 : ℚ), (-676213119/10000000000 : ℚ), (6560648333/200000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-338790233/5000000000 : ℚ), (3288526823/100000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (65217691819/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control76.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control76.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate76
