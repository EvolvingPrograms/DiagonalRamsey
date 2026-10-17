import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate242
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(70455319053/125000000000 : ℚ), (20244332037409/10000000000 : ℚ), (-142846368146277/125000000000 : ℚ), 11⟩,
    ⟨(564779992263/1000000000000 : ℚ), (1109386317549/5000000000 : ℚ), (-126396331437101/1000000000000 : ℚ), 8⟩,
    ⟨(567043917773/1000000000000 : ℚ), (390522847787/5000000000 : ℚ), (-45087146818533/1000000000000 : ℚ), 7⟩,
    ⟨(114082505223/200000000000 : ℚ), (386918146041/10000000000 : ℚ), (-11343315135967/500000000000 : ℚ), 6⟩,
    ⟨(143713343937/250000000000 : ℚ), (225852992837/10000000000 : ℚ), (-1683677627917/125000000000 : ℚ), 5⟩,
    ⟨(580323698863/1000000000000 : ℚ), (3626082971/250000000 : ℚ), (-8804864223317/1000000000000 : ℚ), 5⟩,
    ⟨(293385406629/500000000000 : ℚ), (24765554809/2500000000 : ℚ), (-1224654901313/200000000000 : ℚ), 4⟩,
    ⟨(9283322339/15625000000 : ℚ), (112915869/16000000 : ℚ), (-277629368487/62500000000 : ℚ), 4⟩,
    ⟨(301169124931/500000000000 : ℚ), (25900765179/5000000000 : ℚ), (-1659877553913/500000000000 : ℚ), 4⟩,
    ⟨(152827162287/250000000000 : ℚ), (19423658417/5000000000 : ℚ), (-2534079797801/1000000000000 : ℚ), 3⟩,
    ⟨(620957437703/1000000000000 : ℚ), (29578238823/10000000000 : ℚ), (-49081680793/25000000000 : ℚ), 3⟩,
    ⟨(631191692421/1000000000000 : ℚ), (22751390561/10000000000 : ℚ), (-307211283103/200000000000 : ℚ), 3⟩,
    ⟨(320956425917/500000000000 : ℚ), (17603271481/10000000000 : ℚ), (-1208495170369/1000000000000 : ℚ), 3⟩,
    ⟨(163254416329/250000000000 : ℚ), (13644507927/10000000000 : ℚ), (-952282774697/1000000000000 : ℚ), 3⟩,
    ⟨(664399187441/1000000000000 : ℚ), (10550159261/10000000000 : ℚ), (-374265599493/500000000000 : ℚ), 2⟩,
    ⟨(168986951983/250000000000 : ℚ), (4048976351/5000000000 : ℚ), (-584246461001/1000000000000 : ℚ), 2⟩,
    ⟨(343776153629/500000000000 : ℚ), (6131939647/10000000000 : ℚ), (-450254490601/1000000000000 : ℚ), 2⟩,
    ⟨(174775231937/250000000000 : ℚ), (567536453/1250000000 : ℚ), (-169965740149/500000000000 : ℚ), 2⟩,
    ⟨(355241224937/500000000000 : ℚ), (810322017/2500000000 : ℚ), (-248400961679/1000000000000 : ℚ), 2⟩,
    ⟨(144317452671/200000000000 : ℚ), (2174221069/10000000000 : ℚ), (-86005721117/500000000000 : ℚ), 2⟩,
    ⟨(45769276423/62500000000 : ℚ), (646672309/5000000000 : ℚ), (-53994023599/500000000000 : ℚ), 2⟩,
    ⟨(371271338743/500000000000 : ℚ), (56376159/1000000000 : ℚ), (-27097558901/500000000000 : ℚ), 2⟩,
    ⟨(376095733021/500000000000 : ℚ), (-8285053/2000000000 : ℚ), (-8971341249/1000000000000 : ℚ), 2⟩,
    ⟨(761161865327/1000000000000 : ℚ), (-27155967/500000000 : ℚ), (14493313489/500000000000 : ℚ), 2⟩,
    ⟨(769367485493/1000000000000 : ℚ), (-11970783/125000000 : ℚ), (30353730043/500000000000 : ℚ), 2⟩,
    ⟨(194182325483/250000000000 : ℚ), (-1297870803/10000000000 : ℚ), (17401093627/200000000000 : ℚ), 2⟩,
    ⟨(783176416327/1000000000000 : ℚ), (-1573787973/10000000000 : ℚ), (54262329667/500000000000 : ℚ), 2⟩,
    ⟨(394323369721/500000000000 : ℚ), (-896620443/5000000000 : ℚ), (31442782809/250000000000 : ℚ), 2⟩,
    ⟨(31723503563/40000000000 : ℚ), (-392449299/2000000000 : ℚ), (69568468721/500000000000 : ℚ), 2⟩,
    ⟨(99557024677/125000000000 : ℚ), (-2085310493/10000000000 : ℚ), (148917597263/1000000000000 : ℚ), 2⟩,
    ⟨(798720122927/1000000000000 : ℚ), (-2165642347/10000000000 : ℚ), (19415591947/125000000000 : ℚ), 2⟩,
    ⟨(399928781383/500000000000 : ℚ), (-68915753/312500000 : ℚ), (19811856317/125000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1381399/6250000 : ℚ), (39722389937/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (108227522949/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control242.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control242.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate242
