import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate351
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(265817328601/1000000000000 : ℚ), (1590811759519/1250000000 : ℚ), (-339018753420873/1000000000000 : ℚ), 12⟩,
    ⟨(53321487321/200000000000 : ℚ), (1388655016091/10000000000 : ℚ), (-18737248757293/500000000000 : ℚ), 8⟩,
    ⟨(268180043443/1000000000000 : ℚ), (2428016119/50000000 : ℚ), (-3337705051889/250000000000 : ℚ), 7⟩,
    ⟨(270520004049/1000000000000 : ℚ), (238605843201/10000000000 : ℚ), (-1340865150833/200000000000 : ℚ), 6⟩,
    ⟨(136802391663/500000000000 : ℚ), (34492194617/2500000000 : ℚ), (-3968943950823/1000000000000 : ℚ), 5⟩,
    ⟨(6935116829/25000000000 : ℚ), (43828231169/5000000000 : ℚ), (-2584083427273/1000000000000 : ℚ), 5⟩,
    ⟨(140941539269/500000000000 : ℚ), (3696286139/625000000 : ℚ), (-1787358322733/1000000000000 : ℚ), 4⟩,
    ⟨(57399373993/200000000000 : ℚ), (20771829167/5000000000 : ℚ), (-128725528597/100000000000 : ℚ), 4⟩,
    ⟨(73174199709/250000000000 : ℚ), (2999515289/1000000000 : ℚ), (-952795192937/1000000000000 : ℚ), 4⟩,
    ⟨(7473199293/25000000000 : ℚ), (11026704447/5000000000 : ℚ), (-89755920991/125000000000 : ℚ), 4⟩,
    ⟨(61126075803/200000000000 : ℚ), (4096800393/2500000000 : ℚ), (-136722979017/250000000000 : ℚ), 3⟩,
    ⟨(2501915783/8000000000 : ℚ), (2444415587/2000000000 : ℚ), (-418198009451/1000000000000 : ℚ), 3⟩,
    ⟨(320186788841/1000000000000 : ℚ), (4541819819/5000000000 : ℚ), (-318938775687/1000000000000 : ℚ), 3⟩,
    ⟨(327900605187/1000000000000 : ℚ), (1667212107/2500000000 : ℚ), (-48146551501/200000000000 : ℚ), 3⟩,
    ⟨(335806633647/1000000000000 : ℚ), (2388651893/5000000000 : ℚ), (-177992972039/1000000000000 : ℚ), 3⟩,
    ⟨(85957183711/250000000000 : ℚ), (102268057/312500000 : ℚ), (-126882971783/1000000000000 : ℚ), 3⟩,
    ⟨(175944825779/500000000000 : ℚ), (128717783/625000000 : ℚ), (-84701448007/1000000000000 : ℚ), 3⟩,
    ⟨(71982350551/200000000000 : ℚ), (214041393/2000000000 : ℚ), (-49505483607/1000000000000 : ℚ), 3⟩,
    ⟨(183908890607/500000000000 : ℚ), (255553117/10000000000 : ℚ), (-4968058887/250000000000 : ℚ), 2⟩,
    ⟨(375531597561/1000000000000 : ℚ), (-420712311/10000000000 : ℚ), (2628097857/500000000000 : ℚ), 2⟩,
    ⟨(191489456763/500000000000 : ℚ), (-985633473/10000000000 : ℚ), (26676338893/1000000000000 : ℚ), 2⟩,
    ⟨(195044003693/500000000000 : ℚ), (-182452453/1250000000 : ℚ), (2249704007/50000000000 : ℚ), 2⟩,
    ⟨(396790414681/1000000000000 : ℚ), (-371642779/2000000000 : ℚ), (3792122183/62500000000 : ℚ), 2⟩,
    ⟨(80604317513/200000000000 : ℚ), (-219333803/1000000000 : ℚ), (9259267093/125000000000 : ℚ), 2⟩,
    ⟨(102180379109/250000000000 : ℚ), (-12370907/50000000 : ℚ), (85471685311/1000000000000 : ℚ), 2⟩,
    ⟨(51729413483/125000000000 : ℚ), (-33848051/125000000 : ℚ), (23770258703/250000000000 : ℚ), 2⟩,
    ⟨(418313713241/1000000000000 : ℚ), (-579961359/2000000000 : ℚ), (103067696221/1000000000000 : ℚ), 2⟩,
    ⟨(105528400769/250000000000 : ℚ), (-763569193/2500000000 : ℚ), (109558502261/1000000000000 : ℚ), 2⟩,
    ⟨(26574898897/62500000000 : ℚ), (-198402679/625000000 : ℚ), (114649294709/1000000000000 : ℚ), 2⟩,
    ⟨(427538342959/1000000000000 : ℚ), (-1631331403/5000000000 : ℚ), (23682133203/200000000000 : ℚ), 2⟩,
    ⟨(107277737449/250000000000 : ℚ), (-132823931/400000000 : ℚ), (15111521373/125000000000 : ℚ), 2⟩,
    ⟨(429901057801/1000000000000 : ℚ), (-837327087/2500000000 : ℚ), (6106264207/50000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1676442583/5000000000 : ℚ), (61139534809/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (326509821209/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control351.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control351.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate351
