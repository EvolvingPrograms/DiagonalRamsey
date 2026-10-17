import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate431
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74589914439/250000000000 : ℚ), (6116327158167/5000000000 : ℚ), (-2857401386307/7812500000 : ℚ), 12⟩,
    ⟨(149616889279/500000000000 : ℚ), (66754971243/500000000 : ℚ), (-10108251993793/250000000000 : ℚ), 9⟩,
    ⟨(3009736019/10000000000 : ℚ), (467063072587/10000000000 : ℚ), (-7203880052951/500000000000 : ℚ), 7⟩,
    ⟨(151781186167/500000000000 : ℚ), (229620370439/10000000000 : ℚ), (-3618706393567/500000000000 : ℚ), 6⟩,
    ⟨(38371894823/125000000000 : ℚ), (33216235023/2500000000 : ℚ), (-4286509527381/1000000000000 : ℚ), 5⟩,
    ⟨(155589546827/500000000000 : ℚ), (84487209727/10000000000 : ℚ), (-1396306387757/500000000000 : ℚ), 5⟩,
    ⟨(316133691349/1000000000000 : ℚ), (57064768131/10000000000 : ℚ), (-1933239389499/1000000000000 : ℚ), 5⟩,
    ⟨(321791236187/1000000000000 : ℚ), (2508834077/625000000 : ℚ), (-696948252937/500000000000 : ℚ), 4⟩,
    ⟨(164048621459/500000000000 : ℚ), (29034712627/10000000000 : ℚ), (-32289994871/31250000000 : ℚ), 4⟩,
    ⟨(53598557/160000000 : ℚ), (10698720317/5000000000 : ℚ), (-780260865127/1000000000000 : ℚ), 4⟩,
    ⟨(342406060713/1000000000000 : ℚ), (3987385547/2500000000 : ℚ), (-297935710309/500000000000 : ℚ), 3⟩,
    ⟨(350271070039/1000000000000 : ℚ), (11946267897/10000000000 : ℚ), (-457313553789/1000000000000 : ℚ), 3⟩,
    ⟨(35851026489/100000000000 : ℚ), (8931329811/10000000000 : ℚ), (-350531669743/1000000000000 : ℚ), 3⟩,
    ⟨(183522148657/500000000000 : ℚ), (6613187537/10000000000 : ℚ), (-33310168889/125000000000 : ℚ), 3⟩,
    ⟨(75158195983/200000000000 : ℚ), (2399492069/5000000000 : ℚ), (-24891565091/125000000000 : ℚ), 3⟩,
    ⟨(96166519339/250000000000 : ℚ), (3357375913/10000000000 : ℚ), (-144343233731/1000000000000 : ℚ), 3⟩,
    ⟨(393584117599/1000000000000 : ℚ), (87867203/400000000 : ℚ), (-99195805529/1000000000000 : ℚ), 3⟩,
    ⟨(402459215041/1000000000000 : ℚ), (1251537851/10000000000 : ℚ), (-12318082431/200000000000 : ℚ), 3⟩,
    ⟨(411205897641/1000000000000 : ℚ), (23725399/500000000 : ℚ), (-29988044123/1000000000000 : ℚ), 3⟩,
    ⟨(209869965033/500000000000 : ℚ), (-169382703/10000000000 : ℚ), (-324321123/100000000000 : ℚ), 2⟩,
    ⟨(106994781229/250000000000 : ℚ), (-141251909/2000000000 : ℚ), (97538603/5000000000 : ℚ), 2⟩,
    ⟨(435844134243/1000000000000 : ℚ), (-1155857749/10000000000 : ℚ), (38922755567/1000000000000 : ℚ), 2⟩,
    ⟨(221629606853/500000000000 : ℚ), (-766611499/5000000000 : ℚ), (6938420539/125000000000 : ℚ), 2⟩,
    ⟨(450152952037/1000000000000 : ℚ), (-231238537/1250000000 : ℚ), (8706518533/125000000000 : ℚ), 2⟩,
    ⟨(28528684923/62500000000 : ℚ), (-2114828893/10000000000 : ℚ), (81660000653/1000000000000 : ℚ), 2⟩,
    ⟨(231058251803/500000000000 : ℚ), (-2918601/12500000 : ℚ), (91765977383/1000000000000 : ℚ), 2⟩,
    ⟨(233535550651/500000000000 : ℚ), (-50307859/200000000 : ℚ), (25038003723/250000000000 : ℚ), 2⟩,
    ⟨(117818759093/250000000000 : ℚ), (-665115027/2500000000 : ℚ), (417804401/3906250000 : ℚ), 2⟩,
    ⟨(237343911311/500000000000 : ℚ), (-346648577/1250000000 : ℚ), (14036206517/125000000000 : ℚ), 2⟩,
    ⟨(95455318611/200000000000 : ℚ), (-28558769/100000000 : ℚ), (29056354093/250000000000 : ℚ), 2⟩,
    ⟨(239508208199/500000000000 : ℚ), (-2910145779/10000000000 : ℚ), (118820249013/1000000000000 : ℚ), 2⟩,
    ⟨(1199726343/2500000000 : ℚ), (-2937028723/10000000000 : ℚ), (60054579631/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1470188717/5000000000 : ℚ), (30067469759/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (332016893969/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control431.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control431.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate431
