import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate512
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(565177559251/1000000000000 : ℚ), (16944081803059/10000000000 : ℚ), (-959067411736921/1000000000000 : ℚ), 12⟩,
    ⟨(566307612067/1000000000000 : ℚ), (1857239915731/10000000000 : ℚ), (-53039578179971/500000000000 : ℚ), 9⟩,
    ⟨(35534802167/62500000000 : ℚ), (326936032129/5000000000 : ℚ), (-37840675774339/1000000000000 : ℚ), 7⟩,
    ⟨(139624894/244140625 : ℚ), (161986635529/5000000000 : ℚ), (-1190063476651/62500000000 : ℚ), 6⟩,
    ⟨(576315574671/1000000000000 : ℚ), (189145833117/10000000000 : ℚ), (-11305359864423/1000000000000 : ℚ), 6⟩,
    ⟨(581750371157/1000000000000 : ℚ), (121493155153/10000000000 : ℚ), (-7390472877043/1000000000000 : ℚ), 5⟩,
    ⟨(588155615221/1000000000000 : ℚ), (20748325019/2500000000 : ℚ), (-5139763578389/1000000000000 : ℚ), 5⟩,
    ⟨(29773481043/50000000000 : ℚ), (59134940287/10000000000 : ℚ), (-932152834831/250000000000 : ℚ), 4⟩,
    ⟨(603621950203/1000000000000 : ℚ), (4341250747/1000000000 : ℚ), (-2786500419661/1000000000000 : ℚ), 4⟩,
    ⟨(612534091861/1000000000000 : ℚ), (16279878883/5000000000 : ℚ), (-1063457627143/500000000000 : ℚ), 4⟩,
    ⟨(311060108519/500000000000 : ℚ), (1239627053/500000000 : ℚ), (-205957724947/125000000000 : ℚ), 3⟩,
    ⟨(158072001527/250000000000 : ℚ), (19070503513/10000000000 : ℚ), (-25778806851/20000000000 : ℚ), 3⟩,
    ⟨(80367442213/125000000000 : ℚ), (7377278091/5000000000 : ℚ), (-1013868991909/1000000000000 : ℚ), 3⟩,
    ⟨(130794446351/200000000000 : ℚ), (11435051363/10000000000 : ℚ), (-399350079669/500000000000 : ℚ), 3⟩,
    ⟨(332639918693/500000000000 : ℚ), (110499567/125000000 : ℚ), (-31379231851/50000000000 : ℚ), 3⟩,
    ⟨(169188364043/250000000000 : ℚ), (3391599759/5000000000 : ℚ), (-489618581029/1000000000000 : ℚ), 3⟩,
    ⟨(688282590893/1000000000000 : ℚ), (641770063/1250000000 : ℚ), (-377102846299/1000000000000 : ℚ), 3⟩,
    ⟨(8746952621/12500000000 : ℚ), (3799176493/10000000000 : ℚ), (-142238763827/500000000000 : ℚ), 3⟩,
    ⟨(71106381531/100000000000 : ℚ), (2709770553/10000000000 : ℚ), (-25956028967/125000000000 : ℚ), 2⟩,
    ⟨(722096509361/1000000000000 : ℚ), (907524969/5000000000 : ℚ), (-28709567851/200000000000 : ℚ), 2⟩,
    ⟨(366374020479/500000000000 : ℚ), (538321887/5000000000 : ℚ), (-89844317479/1000000000000 : ℚ), 2⟩,
    ⟨(185728957507/250000000000 : ℚ), (9305253/200000000 : ℚ), (-44741666867/1000000000000 : ℚ), 2⟩,
    ⟨(150500391041/200000000000 : ℚ), (-41683943/10000000000 : ℚ), (-1368348481/200000000000 : ℚ), 2⟩,
    ⟨(380707048431/500000000000 : ℚ), (-461764799/10000000000 : ℚ), (24953231389/1000000000000 : ℚ), 2⟩,
    ⟨(153913285241/200000000000 : ℚ), (-808724429/10000000000 : ℚ), (12877599217/250000000000 : ℚ), 2⟩,
    ⟨(194220107961/250000000000 : ℚ), (-1093348201/10000000000 : ℚ), (73516729241/1000000000000 : ℚ), 2⟩,
    ⟨(195821418977/250000000000 : ℚ), (-662046707/5000000000 : ℚ), (45757948693/500000000000 : ℚ), 2⟩,
    ⟨(394360236197/500000000000 : ℚ), (-1507552773/10000000000 : ℚ), (105935369459/1000000000000 : ℚ), 2⟩,
    ⟨(793132481241/1000000000000 : ℚ), (-103049731/625000000 : ℚ), (117106401943/1000000000000 : ℚ), 2⟩,
    ⟨(796479212393/1000000000000 : ℚ), (-1751618667/10000000000 : ℚ), (31319682717/250000000000 : ℚ), 2⟩,
    ⟨(399364217499/500000000000 : ℚ), (-1818725931/10000000000 : ℚ), (130631202449/1000000000000 : ℚ), 2⟩,
    ⟨(399929243907/500000000000 : ℚ), (-185185481/1000000000 : ℚ), (13327916847/100000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-927988097/5000000000 : ℚ), (133608850021/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (43246134293/250000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control512.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control512.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate512
