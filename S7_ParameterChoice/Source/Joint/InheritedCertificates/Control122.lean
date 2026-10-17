import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate122
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(93745009339/500000000000 : ℚ), (6154613625707/10000000000 : ℚ), (-57983370960603/500000000000 : ℚ), 10⟩,
    ⟨(188849561653/1000000000000 : ℚ), (661222061671/10000000000 : ℚ), (-12833841937637/1000000000000 : ℚ), 7⟩,
    ⟨(191555554463/1000000000000 : ℚ), (113209995089/5000000000 : ℚ), (-2291611066243/500000000000 : ℚ), 6⟩,
    ⟨(195581936917/1000000000000 : ℚ), (21742991233/2000000000 : ℚ), (-1155048902163/500000000000 : ℚ), 5⟩,
    ⟨(803559731/4000000000 : ℚ), (61419591651/10000000000 : ℚ), (-687323422127/500000000000 : ℚ), 4⟩,
    ⟨(207428423061/1000000000000 : ℚ), (38173881419/10000000000 : ℚ), (-225273704849/250000000000 : ℚ), 4⟩,
    ⟨(43026887723/200000000000 : ℚ), (25253757563/10000000000 : ℚ), (-628682352963/1000000000000 : ℚ), 3⟩,
    ⟨(223933766269/1000000000000 : ℚ), (4362478609/2500000000 : ℚ), (-57212153073/125000000000 : ℚ), 3⟩,
    ⟨(233741663687/1000000000000 : ℚ), (12443168441/10000000000 : ℚ), (-343334511479/1000000000000 : ℚ), 3⟩,
    ⟨(3819744929/15625000000 : ℚ), (4539619589/5000000000 : ℚ), (-263039337049/1000000000000 : ℚ), 3⟩,
    ⟨(255996542741/1000000000000 : ℚ), (3367170697/5000000000 : ℚ), (-204455110417/1000000000000 : ℚ), 2⟩,
    ⟨(10729167909/40000000000 : ℚ), (2524703669/5000000000 : ℚ), (-32070820551/200000000000 : ℚ), 2⟩,
    ⟨(56208766651/200000000000 : ℚ), (951796137/2500000000 : ℚ), (-31570578419/250000000000 : ℚ), 2⟩,
    ⟨(36789629673/125000000000 : ℚ), (1435410309/5000000000 : ℚ), (-99376201629/1000000000000 : ℚ), 2⟩,
    ⟨(153960490951/500000000000 : ℚ), (43023907/200000000 : ℚ), (-4858076371/62500000000 : ℚ), 2⟩,
    ⟨(160862326693/500000000000 : ℚ), (397157383/2500000000 : ℚ), (-60034392893/1000000000000 : ℚ), 2⟩,
    ⟨(335595114933/1000000000000 : ℚ), (571097981/5000000000 : ℚ), (-5671684057/125000000000 : ℚ), 2⟩,
    ⟨(21837424151/62500000000 : ℚ), (783243481/10000000000 : ℚ), (-6617561799/200000000000 : ℚ), 2⟩,
    ⟨(181501365467/500000000000 : ℚ), (122837687/2500000000 : ℚ), (-22696590667/1000000000000 : ℚ), 2⟩,
    ⟨(376275935063/1000000000000 : ℚ), (2013841/80000000 : ℚ), (-3460899237/250000000000 : ℚ), 2⟩,
    ⟨(389090570593/1000000000000 : ℚ), (2676153/500000000 : ℚ), (-3130815299/500000000000 : ℚ), 2⟩,
    ⟨(401323225577/1000000000000 : ℚ), (-111342039/10000000000 : ℚ), (62943709/250000000000 : ℚ), 2⟩,
    ⟨(206428046431/500000000000 : ℚ), (-248928827/10000000000 : ℚ), (22856557/3906250000 : ℚ), 2⟩,
    ⟨(423578104631/1000000000000 : ℚ), (-363832809/10000000000 : ℚ), (5327865739/500000000000 : ℚ), 2⟩,
    ⟨(433386002049/1000000000000 : ℚ), (-14361267/312500000 : ℚ), (14756813917/1000000000000 : ℚ), 2⟩,
    ⟨(442185329703/1000000000000 : ℚ), (-269399613/5000000000 : ℚ), (4556334587/250000000000 : ℚ), 2⟩,
    ⟨(449891345257/1000000000000 : ℚ), (-150902543/2500000000 : ℚ), (21115895371/1000000000000 : ℚ), 2⟩,
    ⟨(28526864723/62500000000 : ℚ), (-163892157/2500000000 : ℚ), (23470303159/1000000000000 : ℚ), 2⟩,
    ⟨(461737831401/1000000000000 : ℚ), (-695865047/10000000000 : ℚ), (395627731/15625000000 : ℚ), 2⟩,
    ⟨(93152842771/200000000000 : ℚ), (-145075627/2000000000 : ℚ), (13344408843/500000000000 : ℚ), 2⟩,
    ⟨(93694041333/200000000000 : ℚ), (-7447267/100000000 : ℚ), (13796306917/500000000000 : ℚ), 2⟩,
    ⟨(469829749641/1000000000000 : ℚ), (-754305051/10000000000 : ℚ), (1402099053/50000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-755497899/10000000000 : ℚ), (28098034763/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (68611974499/200000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control122.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control122.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate122
