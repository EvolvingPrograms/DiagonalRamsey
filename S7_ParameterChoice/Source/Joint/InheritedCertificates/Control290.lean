import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate290
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(76332457971/1000000000000 : ℚ), (25380594861121/5000000000 : ℚ), (-387890482295201/1000000000000 : ℚ), 11⟩,
    ⟨(3057854199/40000000000 : ℚ), (2780556380363/5000000000 : ℚ), (-21386207209167/500000000000 : ℚ), 8⟩,
    ⟨(76673052093/1000000000000 : ℚ), (1953082233363/10000000000 : ℚ), (-7581438911643/500000000000 : ℚ), 6⟩,
    ⟨(19252591527/250000000000 : ℚ), (38506735831/400000000 : ℚ), (-7556045558787/1000000000000 : ℚ), 5⟩,
    ⟨(77455048501/1000000000000 : ℚ), (557138133021/10000000000 : ℚ), (-4425512844449/1000000000000 : ℚ), 5⟩,
    ⟨(78002816737/1000000000000 : ℚ), (353149948649/10000000000 : ℚ), (-1420334605579/500000000000 : ℚ), 4⟩,
    ⟨(7864839551/100000000000 : ℚ), (473393807/20000000 : ℚ), (-1205595901/625000000 : ℚ), 4⟩,
    ⟨(39692783771/500000000000 : ℚ), (164246307089/10000000000 : ℚ), (-678359200731/500000000000 : ℚ), 3⟩,
    ⟨(10025904183/125000000000 : ℚ), (116270689147/10000000000 : ℚ), (-48702435393/50000000000 : ℚ), 3⟩,
    ⟨(16221096037/200000000000 : ℚ), (20739848729/2500000000 : ℚ), (-176369399707/250000000000 : ℚ), 3⟩,
    ⟨(10258957137/125000000000 : ℚ), (58949613191/10000000000 : ℚ), (-63707233263/125000000000 : ℚ), 2⟩,
    ⟨(41548229693/500000000000 : ℚ), (41112011489/10000000000 : ℚ), (-362398819237/1000000000000 : ℚ), 2⟩,
    ⟨(1683400353/20000000000 : ℚ), (3440382579/1250000000 : ℚ), (-248786605859/1000000000000 : ℚ), 2⟩,
    ⟨(42640996467/500000000000 : ℚ), (8474664349/5000000000 : ℚ), (-19903265067/125000000000 : ℚ), 2⟩,
    ⟨(86421676307/1000000000000 : ℚ), (1714354807/2000000000 : ℚ), (-87322675681/1000000000000 : ℚ), 2⟩,
    ⟨(87578091997/1000000000000 : ℚ), (457602357/2500000000 : ℚ), (-28687151307/1000000000000 : ℚ), 2⟩,
    ⟨(5546256443/62500000000 : ℚ), (-91679317/250000000 : ℚ), (19768511209/1000000000000 : ℚ), 2⟩,
    ⟨(44948259389/500000000000 : ℚ), (-1640348993/2000000000 : ℚ), (60262781917/1000000000000 : ℚ), 2⟩,
    ⟨(11379525269/125000000000 : ℚ), (-1497224817/1250000000 : ℚ), (94417654579/1000000000000 : ℚ), 2⟩,
    ⟨(23037044359/250000000000 : ℚ), (-15146531097/10000000000 : ℚ), (61718297221/500000000000 : ℚ), 2⟩,
    ⟨(93221735699/1000000000000 : ℚ), (-4455293559/2500000000 : ℚ), (148223486251/1000000000000 : ℚ), 1⟩,
    ⟨(9424653799/100000000000 : ℚ), (-10043720421/5000000000 : ℚ), (169463974533/1000000000000 : ℚ), 1⟩,
    ⟨(95212714901/1000000000000 : ℚ), (-22010785747/10000000000 : ℚ), (93841112481/500000000000 : ℚ), 1⟩,
    ⟨(96110961621/1000000000000 : ℚ), (-2364153789/1000000000 : ℚ), (101640625837/500000000000 : ℚ), 1⟩,
    ⟨(12116578443/125000000000 : ℚ), (-25018581153/10000000000 : ℚ), (216572021119/1000000000000 : ℚ), 1⟩,
    ⟨(12208724947/125000000000 : ℚ), (-1635751651/625000000 : ℚ), (227794735527/1000000000000 : ℚ), 1⟩,
    ⟨(98315378349/1000000000000 : ℚ), (-2712516947/1000000000 : ℚ), (47426911909/200000000000 : ℚ), 1⟩,
    ⟨(19772629317/200000000000 : ℚ), (-27895934043/10000000000 : ℚ), (9789332737/40000000000 : ℚ), 1⟩,
    ⟨(49653914489/500000000000 : ℚ), (-28497936511/10000000000 : ℚ), (250698213323/1000000000000 : ℚ), 1⟩,
    ⟨(6227821437/62500000000 : ℚ), (-14470633289/5000000000 : ℚ), (63777068411/250000000000 : ℚ), 1⟩,
    ⟨(9987184011/100000000000 : ℚ), (-29233049269/10000000000 : ℚ), (25801904459/100000000000 : ℚ), 1⟩,
    ⟨(49992868557/500000000000 : ℚ), (-29377832921/10000000000 : ℚ), (259465848943/1000000000000 : ℚ), 1⟩,
    ⟨(1/10 : ℚ), (-183724247/62500000 : ℚ), (12982315103/50000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (49999/1000000 : ℚ)
  x := (5196195367/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control290.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control290.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate290
