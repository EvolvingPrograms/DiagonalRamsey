import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate193
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25824837821/100000000000 : ℚ), (18536727283/20000000 : ℚ), (-24012014525149/100000000000 : ℚ), 11⟩,
    ⟨(259411776819/1000000000000 : ℚ), (1005719780761/10000000000 : ℚ), (-13280940317823/500000000000 : ℚ), 8⟩,
    ⟨(261727369873/1000000000000 : ℚ), (34909084277/1000000000 : ℚ), (-592323416073/62500000000 : ℚ), 6⟩,
    ⟨(16573303559/62500000000 : ℚ), (21270164117/1250000000 : ℚ), (-59626269/12500000 : ℚ), 5⟩,
    ⟨(67428764027/250000000000 : ℚ), (97626770739/10000000000 : ℚ), (-708239038399/250000000000 : ℚ), 5⟩,
    ⟨(55062044701/200000000000 : ℚ), (61590949177/10000000000 : ℚ), (-463070627111/250000000000 : ℚ), 4⟩,
    ⟨(140952237307/500000000000 : ℚ), (41315568351/10000000000 : ℚ), (-1288141207569/1000000000000 : ℚ), 4⟩,
    ⟨(36179287899/125000000000 : ℚ), (28905579831/10000000000 : ℚ), (-467036186101/500000000000 : ℚ), 4⟩,
    ⟨(148913596437/500000000000 : ℚ), (5208168479/2500000000 : ℚ), (-697309693571/1000000000000 : ℚ), 3⟩,
    ⟨(307002315543/1000000000000 : ℚ), (38330723/25000000 : ℚ), (-531156219881/1000000000000 : ℚ), 3⟩,
    ⟨(158435654877/500000000000 : ℚ), (11445153841/10000000000 : ℚ), (-25626790093/62500000000 : ℚ), 3⟩,
    ⟨(20458695731/62500000000 : ℚ), (4307571297/5000000000 : ℚ), (-318960336971/1000000000000 : ℚ), 3⟩,
    ⟨(169152485261/500000000000 : ℚ), (3251492893/5000000000 : ℚ), (-49745027483/200000000000 : ℚ), 3⟩,
    ⟨(34966321921/100000000000 : ℚ), (2446488511/5000000000 : ℚ), (-38677553081/200000000000 : ℚ), 2⟩,
    ⟨(72260898323/200000000000 : ℚ), (1821607437/5000000000 : ℚ), (-74496379011/500000000000 : ℚ), 2⟩,
    ⟨(186558337961/500000000000 : ℚ), (2657646873/10000000000 : ℚ), (-56412451301/500000000000 : ℚ), 2⟩,
    ⟨(384986014337/1000000000000 : ℚ), (373932499/2000000000 : ℚ), (-82973177051/1000000000000 : ℚ), 2⟩,
    ⟨(396798198643/1000000000000 : ℚ), (123210069/1000000000 : ℚ), (-7257965513/125000000000 : ℚ), 2⟩,
    ⟨(408439471049/1000000000000 : ℚ), (5687741/80000000 : ℚ), (-18545446943/500000000000 : ℚ), 2⟩,
    ⟨(419797719737/1000000000000 : ℚ), (70344243/2500000000 : ℚ), (-19307234619/1000000000000 : ℚ), 2⟩,
    ⟨(430763558563/1000000000000 : ℚ), (-1878427/250000000 : ℚ), (-4150038417/1000000000000 : ℚ), 2⟩,
    ⟨(88246276101/200000000000 : ℚ), (-372435923/10000000000 : ℚ), (4404406973/500000000000 : ℚ), 2⟩,
    ⟨(90220074943/200000000000 : ℚ), (-155256703/2500000000 : ℚ), (19897787531/1000000000000 : ℚ), 2⟩,
    ⟨(57534437173/125000000000 : ℚ), (-207234413/2500000000 : ℚ), (14685230799/500000000000 : ℚ), 2⟩,
    ⟨(234334193533/500000000000 : ℚ), (-6264611/62500000 : ℚ), (7484673689/200000000000 : ℚ), 2⟩,
    ⟨(119049553911/250000000000 : ℚ), (-11459837/100000000 : ℚ), (8841803549/200000000000 : ℚ), 2⟩,
    ⟨(482792466753/1000000000000 : ℚ), (-315885649/2500000000 : ℚ), (24922756067/500000000000 : ℚ), 2⟩,
    ⟨(9767752683/20000000000 : ℚ), (-339457039/2500000000 : ℚ), (2721185101/50000000000 : ℚ), 2⟩,
    ⟨(98585966663/200000000000 : ℚ), (-28619467/200000000 : ℚ), (7251565497/125000000000 : ℚ), 2⟩,
    ⟨(248187660193/500000000000 : ℚ), (-371139037/2500000000 : ℚ), (60662965177/1000000000000 : ℚ), 2⟩,
    ⟨(498690913439/1000000000000 : ℚ), (-1519689537/10000000000 : ℚ), (62410954303/1000000000000 : ℚ), 2⟩,
    ⟨(31240894503/62500000000 : ℚ), (-61483337/400000000 : ℚ), (63279381843/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1539249651/10000000000 : ℚ), (15846919347/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (160576500533/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control193.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control193.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate193
