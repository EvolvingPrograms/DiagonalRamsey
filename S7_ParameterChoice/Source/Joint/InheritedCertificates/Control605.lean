import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate605
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276144569027/1000000000000 : ℚ), (7153623884349/5000000000 : ℚ), (-395707107955247/1000000000000 : ℚ), 12⟩,
    ⟨(27674060737/100000000000 : ℚ), (391385201123/2500000000 : ℚ), (-5464000980257/125000000000 : ℚ), 9⟩,
    ⟨(138963471941/500000000000 : ℚ), (274726053449/5000000000 : ℚ), (-3110450461767/200000000000 : ℚ), 8⟩,
    ⟨(69923038373/250000000000 : ℚ), (270985864691/10000000000 : ℚ), (-1558753020523/200000000000 : ℚ), 7⟩,
    ⟨(70504809067/250000000000 : ℚ), (157219558071/10000000000 : ℚ), (-4600762418069/1000000000000 : ℚ), 6⟩,
    ⟨(28488578113/100000000000 : ℚ), (50075987371/5000000000 : ℚ), (-1492123595329/500000000000 : ℚ), 6⟩,
    ⟨(72066045421/250000000000 : ℚ), (67679992019/10000000000 : ℚ), (-1027141257107/500000000000 : ℚ), 5⟩,
    ⟨(146060951043/500000000000 : ℚ), (4755336913/1000000000 : ℚ), (-1470584563003/1000000000000 : ℚ), 5⟩,
    ⟨(296421790381/1000000000000 : ℚ), (274251891/80000000 : ℚ), (-540130950813/500000000000 : ℚ), 4⟩,
    ⟨(75280609073/250000000000 : ℚ), (5021708983/2000000000 : ℚ), (-403176977203/500000000000 : ℚ), 4⟩,
    ⟨(30617857003/100000000000 : ℚ), (3705973481/2000000000 : ℚ), (-75837208279/125000000000 : ℚ), 4⟩,
    ⟨(311541498263/1000000000000 : ℚ), (13668577851/10000000000 : ℚ), (-228312976531/500000000000 : ℚ), 4⟩,
    ⟨(317159573061/1000000000000 : ℚ), (4993220583/5000000000 : ℚ), (-340930685573/1000000000000 : ℚ), 4⟩,
    ⟨(322978689293/1000000000000 : ℚ), (7138827267/10000000000 : ℚ), (-124912800217/500000000000 : ℚ), 3⟩,
    ⟨(328942805687/1000000000000 : ℚ), (4897217581/10000000000 : ℚ), (-176785823359/1000000000000 : ℚ), 3⟩,
    ⟨(334994484543/1000000000000 : ℚ), (194098569/625000000 : ℚ), (-23465889029/200000000000 : ℚ), 3⟩,
    ⟨(68215088977/200000000000 : ℚ), (827343689/5000000000 : ℚ), (-68299355961/1000000000000 : ℚ), 3⟩,
    ⟨(347127123741/1000000000000 : ℚ), (116617069/2500000000 : ℚ), (-27423658761/1000000000000 : ℚ), 3⟩,
    ⟨(44136405017/125000000000 : ℚ), (-515914313/10000000000 : ℚ), (174058383/25000000000 : ℚ), 3⟩,
    ⟨(358910356367/1000000000000 : ℚ), (-266893827/2000000000 : ℚ), (36097029917/1000000000000 : ℚ), 3⟩,
    ⟨(72905686233/200000000000 : ℚ), (-1010325909/5000000000 : ℚ), (15228327261/250000000000 : ℚ), 3⟩,
    ⟨(369891359399/1000000000000 : ℚ), (-2598270891/10000000000 : ℚ), (16424200051/200000000000 : ℚ), 3⟩,
    ⟨(374947493137/1000000000000 : ℚ), (-3085503639/10000000000 : ℚ), (100264353929/1000000000000 : ℚ), 3⟩,
    ⟨(47456017381/125000000000 : ℚ), (-437039893/1250000000 : ℚ), (28940716659/250000000000 : ℚ), 3⟩,
    ⟨(191974013671/500000000000 : ℚ), (-3841498547/10000000000 : ℚ), (64470387607/500000000000 : ℚ), 3⟩,
    ⟨(12118929617/31250000000 : ℚ), (-2064688227/5000000000 : ℚ), (17506087003/125000000000 : ℚ), 3⟩,
    ⟨(391184148299/1000000000000 : ℚ), (-2183192827/5000000000 : ℚ), (5971188353/40000000000 : ℚ), 3⟩,
    ⟨(394050693161/1000000000000 : ℚ), (-2278730213/5000000000 : ℚ), (3919535683/25000000000 : ℚ), 3⟩,
    ⟨(6193402749/15625000000 : ℚ), (-4706336003/10000000000 : ℚ), (81332548829/500000000000 : ℚ), 3⟩,
    ⟨(398142985547/1000000000000 : ℚ), (-96315397/200000000 : ℚ), (41753106939/250000000000 : ℚ), 3⟩,
    ⟨(199664661029/500000000000 : ℚ), (-4887702297/10000000000 : ℚ), (33976124387/200000000000 : ℚ), 3⟩,
    ⟨(399925360401/1000000000000 : ℚ), (-4923368337/10000000000 : ℚ), (171305932843/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-2463906343/5000000000 : ℚ), (171483690213/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (14678973227/40000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control605.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control605.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate605
